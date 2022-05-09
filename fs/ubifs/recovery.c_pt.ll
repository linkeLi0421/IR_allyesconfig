; ModuleID = '/llk/IR_all_yes/fs/ubifs/recovery.c_pt.bc'
source_filename = "../fs/ubifs/recovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_unclean_leb = type { %struct.list_head, i32, i32 }
%struct.ubifs_cs_node = type { %struct.ubifs_ch, i64 }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.list_head }
%struct.size_entry = type { %struct.rb_node, i32, i64, i64, i32, ptr }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.76 = type { ptr }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }

@ubifs_recover_master_node.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ubifs_recover_master_node\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/ubifs/recovery.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG rcvry (pid %d): recovery\0A\00", [60 x i8] zeroinitializer }, align 32
@ubifs_recover_master_node.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG rcvry (pid %d): recovery recovery\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"recovered master node from LEB %d\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to recover master node\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dumping first master node\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dumping second master node\00", [37 x i8] zeroinitializer }, align 32
@ubifs_recover_leb.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_recover_leb\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG rcvry (pid %d): %d:%d, jhead %d, grouped %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"len >= 8\00", [23 x i8] zeroinitializer }, align 32
@ubifs_recover_leb.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG scan (pid %d): look at LEB %d:%d (%d bytes left)\0A\00", [36 x i8] zeroinitializer }, align 32
@ubifs_recover_leb.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBIFS DBG rcvry (pid %d): found corruption (%d) at %d:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unexpected return value %d\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"corrupt empty space LEB %d:%d, corruption starts at %d\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"corruption %d\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LEB %d scanning failed\00", [41 x i8] zeroinitializer }, align 32
@ubifs_recover_log_leb.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_recover_log_leb\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UBIFS DBG rcvry (pid %d): LEB %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unrecoverable log corruption in LEB %d\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!c->ro_mount || c->remounting_rw\00", [63 x i8] zeroinitializer }, align 32
@ubifs_recover_inl_heads.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ubifs_recover_inl_heads\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG rcvry (pid %d): checking index head at %d:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ubifs_recover_inl_heads.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UBIFS DBG rcvry (pid %d): checking LPT head at %d:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ubifs_clean_lebs.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.3, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_clean_lebs\00", [47 x i8] zeroinitializer }, align 32
@ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_rcvry_gc_commit\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG rcvry (pid %d): GC head LEB %d, offs %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UBIFS DBG rcvry (pid %d): could not find a dirty LEB\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"!(lp.flags & LPROPS_INDEX)\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lp.free + lp.dirty >= wbuf->offs\00", [63 x i8] zeroinitializer }, align 32
@ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.31, i8 1, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UBIFS DBG rcvry (pid %d): committing\0A\00", [58 x i8] zeroinitializer }, align 32
@ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.32, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG rcvry (pid %d): GC'ing LEB %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GC failed, error %d\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"err == LEB_RETAINED\00", [44 x i8] zeroinitializer }, align 32
@ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.35, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG rcvry (pid %d): allocated LEB %d for GC\0A\00", [45 x i8] zeroinitializer }, align 32
@ubifs_recover_size.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubifs_recover_size\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBIFS DBG rcvry (pid %d): removing ino %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"!(c->ro_mount && in_place)\00", [37 x i8] zeroinitializer }, align 32
@get_master_node.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_master_node\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG rcvry (pid %d): found a master node at %d:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@get_master_node.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBIFS DBG rcvry (pid %d): found corruption at %d:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@write_rcvrd_mst_node.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.3, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"write_rcvrd_mst_node\00", [43 x i8] zeroinitializer }, align 32
@no_more_nodes.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no_more_nodes\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBIFS DBG rcvry (pid %d): unexpected bad common header at %d:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@no_more_nodes.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UBIFS DBG rcvry (pid %d): unexpected data at %d:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@drop_last_group.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drop_last_group\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBIFS DBG rcvry (pid %d): dropping grouped node at %d:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@drop_last_node.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drop_last_node\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG rcvry (pid %d): dropping last node at %d:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@clean_buf.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clean_buf\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG rcvry (pid %d): cleaning corruption at %d:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"!(*offs & 7)\00", [19 x i8] zeroinitializer }, align 32
@fix_unclean_leb.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fix_unclean_leb\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UBIFS DBG rcvry (pid %d): need to fix LEB %d start %d endpt %d\0A\00", [32 x i8] zeroinitializer }, align 32
@fix_unclean_leb.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG rcvry (pid %d): fixing LEB %d start %d endpt %d\0A\00", [37 x i8] zeroinitializer }, align 32
@get_cs_sqnum.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_cs_sqnum\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBIFS DBG rcvry (pid %d): at %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Not a valid node\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Not a CS node, type is %d\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CS node cmt_no %llu != current cmt_no %llu\00", [53 x i8] zeroinitializer }, align 32
@get_cs_sqnum.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.61, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG rcvry (pid %d): commit start sqnum %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get CS sqnum\00", [41 x i8] zeroinitializer }, align 32
@recover_head.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"recover_head\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBIFS DBG rcvry (pid %d): cleaning head at %d:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@clean_an_unclean_leb.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clean_an_unclean_leb\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG rcvry (pid %d): LEB %d len %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unexpected empty space at %d:%d\00", [32 x i8] zeroinitializer }, align 32
@clean_an_unclean_leb.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.68, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UBIFS DBG rcvry (pid %d): cleaned LEB %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not find an empty LEB\00", [36 x i8] zeroinitializer }, align 32
@grab_empty_leb.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"grab_empty_leb\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBIFS DBG rcvry (pid %d): found empty LEB %d, run commit\0A\00", [38 x i8] zeroinitializer }, align 32
@fix_size_in_place.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 1, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fix_size_in_place\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UBIFS DBG rcvry (pid %d): inode %lu at %d:%d size %lld -> %lld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"inode %lu failed to fix size %lld -> %lld error %d\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"!e->inode\00", [22 x i8] zeroinitializer }, align 32
@inode_fix_size.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 1, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inode_fix_size\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBIFS DBG rcvry (pid %d): ino %lu size %lld -> %lld\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967292, i64 4294967293, i64 4294967295]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967292, i64 4294967293]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 234, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 252, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 297, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 352, i32 15 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 354, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 358, i32 16 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 630, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 636, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 638, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 669, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 673, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 693, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 779, i32 15 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 785, i32 15 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 862, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 890, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 958, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 960, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 965, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1077, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1164, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1175, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1179, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1180, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1186, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1191, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1202, i32 16 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1208, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1216, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1549, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1563, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 152, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 163, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 198, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 473, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 481, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 574, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 599, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 434, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 436, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 509, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 521, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 805, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 817, i32 16 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 821, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 825, i32 16 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 831, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 838, i32 15 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 925, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 988, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1028, i32 17 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1059, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1122, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1135, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1443, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1448, i32 16 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1465, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.317 = private constant [23 x i8] c"../fs/ubifs/recovery.c\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1484, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_recover_master_node(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %buf1 = alloca ptr, align 4
  %buf2 = alloca ptr, align 4
  %cor1 = alloca ptr, align 4
  %cor2 = alloca ptr, align 4
  %mst1 = alloca ptr, align 4
  %mst2 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf1) #8
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %buf1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf2) #8
  %1 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %buf2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cor1) #8
  %2 = ptrtoint ptr %cor1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cor1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cor2) #8
  %3 = ptrtoint ptr %cor2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cor2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mst1) #8
  %4 = ptrtoint ptr %mst1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mst1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mst2) #8
  %5 = ptrtoint ptr %mst2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mst2, align 4
  %mst_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 90
  %6 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mst_node_alsz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_master_node.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_master_node, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_master_node.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.3, i32 noundef %13) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call fastcc i32 @get_master_node(ptr noundef %c, i32 noundef 1, ptr noundef nonnull %buf1, ptr noundef nonnull %mst1, ptr noundef nonnull %cor1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.out_free_crit_edge

do.end.out_free_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end7:                                          ; preds = %do.end
  %call8 = call fastcc i32 @get_master_node(ptr noundef %c, i32 noundef 2, ptr noundef nonnull %buf2, ptr noundef nonnull %mst2, ptr noundef nonnull %cor2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_free_crit_edge

if.end7.out_free_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end11:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %mst1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mst1, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.else74, label %if.then13

if.then13:                                        ; preds = %if.end11
  %16 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %flags = getelementptr inbounds %struct.ubifs_mst_node, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %flags, align 1
  %20 = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp ne i32 %20, 0
  %cmp = icmp eq ptr %15, %17
  %or.cond = select i1 %tobool14.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true15, label %if.then13.if.else_crit_edge

if.then13.if.else_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true15:                                  ; preds = %if.then13
  %21 = ptrtoint ptr %cor1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cor1, align 4
  %tobool16.not = icmp eq ptr %22, null
  br i1 %tobool16.not, label %do.body18, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.body18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_master_node.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_master_node, %if.then30)) #8
          to label %if.end87 [label %if.then30], !srcloc !179

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i179 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i179 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid33, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_master_node.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.4, i32 noundef %28) #8
  br label %if.end87

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %if.then13.if.else_crit_edge
  %29 = ptrtoint ptr %mst2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mst2, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %if.else67, label %if.then38

if.then38:                                        ; preds = %if.else
  %31 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf2, align 4
  %sub.ptr.lhs.cast39 = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast40 = ptrtoint ptr %32 to i32
  %sub.ptr.sub41 = sub i32 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %sub.ptr.sub41)
  %cmp42 = icmp eq i32 %sub.ptr.sub, %sub.ptr.sub41
  br i1 %cmp42, label %if.then43, label %if.else48

if.then43:                                        ; preds = %if.then38
  %call44 = tail call i32 @ubifs_compare_master_node(ptr noundef %c, ptr noundef nonnull %15, ptr noundef nonnull %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end87_crit_edge, label %if.then43.out_free_crit_edge

if.then43.out_free_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then43.if.end87_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.else48:                                        ; preds = %if.then38
  %add = add i32 %sub.ptr.sub41, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub)
  %cmp49 = icmp eq i32 %add, %sub.ptr.sub
  br i1 %cmp49, label %if.then50, label %if.else54

if.then50:                                        ; preds = %if.else48
  %33 = ptrtoint ptr %cor1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cor1, align 4
  %tobool51.not = icmp eq ptr %34, null
  br i1 %tobool51.not, label %if.then50.if.end87_crit_edge, label %if.then50.out_free_crit_edge

if.then50.out_free_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then50.if.end87_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.else54:                                        ; preds = %if.else48
  br i1 %cmp, label %land.lhs.true56, label %if.else54.out_free_crit_edge

if.else54.out_free_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

land.lhs.true56:                                  ; preds = %if.else54
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %35 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %leb_size, align 8
  %sub57 = sub i32 %36, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %sub57, i32 %7)
  %cmp58 = icmp slt i32 %sub57, %7
  br i1 %cmp58, label %if.then59, label %land.lhs.true56.out_free_crit_edge

land.lhs.true56.out_free_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then59:                                        ; preds = %land.lhs.true56
  %37 = ptrtoint ptr %cor1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cor1, align 4
  %tobool60.not = icmp eq ptr %38, null
  br i1 %tobool60.not, label %if.then59.if.end87_crit_edge, label %if.then59.out_free_crit_edge

if.then59.out_free_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then59.if.end87_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.else67:                                        ; preds = %if.else
  br i1 %cmp, label %lor.lhs.false, label %if.else67.out_free_crit_edge

if.else67.out_free_crit_edge:                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

lor.lhs.false:                                    ; preds = %if.else67
  %39 = ptrtoint ptr %cor1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cor1, align 4
  %tobool69.not = icmp eq ptr %40, null
  br i1 %tobool69.not, label %lor.lhs.false.if.end87_crit_edge, label %lor.lhs.false.out_free_crit_edge

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

lor.lhs.false.if.end87_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.else74:                                        ; preds = %if.end11
  %41 = ptrtoint ptr %mst2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mst2, align 4
  %tobool75.not = icmp eq ptr %42, null
  br i1 %tobool75.not, label %if.else74.out_free_crit_edge, label %if.end77

if.else74.out_free_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end77:                                         ; preds = %if.else74
  %43 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf2, align 4
  %sub.ptr.lhs.cast78 = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast79 = ptrtoint ptr %44 to i32
  %reass.add = shl i32 %7, 1
  %sub.ptr.sub80 = add i32 %reass.add, %sub.ptr.lhs.cast78
  %add82 = sub i32 %sub.ptr.sub80, %sub.ptr.rhs.cast79
  %leb_size83 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %45 = ptrtoint ptr %leb_size83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %leb_size83, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add82, i32 %46)
  %cmp84.not = icmp sgt i32 %add82, %46
  br i1 %cmp84.not, label %if.end77.if.end87_crit_edge, label %if.end77.out_free_crit_edge

if.end77.out_free_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end77.if.end87_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end87:                                         ; preds = %if.end77.if.end87_crit_edge, %lor.lhs.false.if.end87_crit_edge, %if.then59.if.end87_crit_edge, %if.then50.if.end87_crit_edge, %if.then43.if.end87_crit_edge, %if.then30, %do.body18
  %mst.0 = phi ptr [ %42, %if.end77.if.end87_crit_edge ], [ %15, %do.body18 ], [ %15, %if.then30 ], [ %15, %if.then43.if.end87_crit_edge ], [ %15, %if.then50.if.end87_crit_edge ], [ %15, %if.then59.if.end87_crit_edge ], [ %15, %lor.lhs.false.if.end87_crit_edge ]
  %cmp88 = icmp eq ptr %mst.0, %15
  %cond = select i1 %cmp88, i32 1, i32 2
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.5, i32 noundef %cond) #8
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %47 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mst_node, align 4
  %49 = call ptr @memcpy(ptr %48, ptr %mst.0, i32 512)
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %50 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %ro_mount, align 8
  %51 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool89.not = icmp eq i8 %51, 0
  br i1 %tobool89.not, label %if.else100, label %if.end8.i

if.end8.i:                                        ; preds = %if.end87
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #11
  %rcvrd_mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 191
  %52 = ptrtoint ptr %rcvrd_mst_node to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call9.i, ptr %rcvrd_mst_node, align 8
  %tobool93.not = icmp eq ptr %call9.i, null
  br i1 %tobool93.not, label %if.end8.i.out_free_crit_edge, label %if.end95

if.end8.i.out_free_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end95:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mst_node, align 4
  %55 = call ptr @memcpy(ptr %call9.i, ptr %54, i32 512)
  %flags99 = getelementptr inbounds %struct.ubifs_mst_node, ptr %54, i32 0, i32 3
  %56 = ptrtoint ptr %flags99 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %flags99, align 1
  %or = or i32 %57, 16777216
  store i32 %or, ptr %flags99, align 1
  br label %cleanup

if.else100:                                       ; preds = %if.end87
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %mst.0, i32 0, i32 2
  %58 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %sqnum, align 1
  %60 = tail call i64 @llvm.bswap.i64(i64 %59)
  %sub101 = add i64 %60, -1
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %61 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sub101, ptr %max_sqnum, align 8
  %62 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mst_node, align 4
  %call103 = tail call fastcc i32 @write_rcvrd_mst_node(ptr noundef %c, ptr noundef %63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.else100.cleanup_crit_edge, label %if.else100.out_free_crit_edge

if.else100.out_free_crit_edge:                    ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.else100.cleanup_crit_edge:                     ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_free:                                         ; preds = %if.else100.out_free_crit_edge, %if.end8.i.out_free_crit_edge, %if.end77.out_free_crit_edge, %if.else74.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %if.else67.out_free_crit_edge, %if.then59.out_free_crit_edge, %land.lhs.true56.out_free_crit_edge, %if.else54.out_free_crit_edge, %if.then50.out_free_crit_edge, %if.then43.out_free_crit_edge, %if.end7.out_free_crit_edge, %do.end.out_free_crit_edge
  %err.0 = phi i32 [ %call4, %do.end.out_free_crit_edge ], [ %call8, %if.end7.out_free_crit_edge ], [ %call103, %if.else100.out_free_crit_edge ], [ -12, %if.end8.i.out_free_crit_edge ], [ -22, %if.end77.out_free_crit_edge ], [ -22, %if.else74.out_free_crit_edge ], [ -22, %if.else67.out_free_crit_edge ], [ -22, %lor.lhs.false.out_free_crit_edge ], [ -22, %if.else54.out_free_crit_edge ], [ -22, %land.lhs.true56.out_free_crit_edge ], [ -22, %if.then59.out_free_crit_edge ], [ -22, %if.then50.out_free_crit_edge ], [ -22, %if.then43.out_free_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.6) #8
  %64 = ptrtoint ptr %mst1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mst1, align 4
  %tobool108.not = icmp eq ptr %65, null
  br i1 %tobool108.not, label %out_free.if.end115_crit_edge, label %if.then109

out_free.if.end115_crit_edge:                     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then109:                                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.7) #8
  %leb_size110 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %66 = ptrtoint ptr %leb_size110 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %leb_size110, align 8
  %68 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf1, align 4
  %sub.ptr.lhs.cast111 = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast112 = ptrtoint ptr %69 to i32
  %sub.ptr.sub113.neg = sub i32 %67, %sub.ptr.lhs.cast111
  %sub114 = add i32 %sub.ptr.sub113.neg, %sub.ptr.rhs.cast112
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %65, i32 noundef %sub114) #8
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %out_free.if.end115_crit_edge
  %70 = ptrtoint ptr %mst2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mst2, align 4
  %tobool116.not = icmp eq ptr %71, null
  br i1 %tobool116.not, label %if.end115.cleanup_crit_edge, label %if.then117

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.8) #8
  %leb_size118 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %72 = ptrtoint ptr %leb_size118 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %leb_size118, align 8
  %74 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf2, align 4
  %sub.ptr.lhs.cast119 = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast120 = ptrtoint ptr %75 to i32
  %sub.ptr.sub121.neg = sub i32 %73, %sub.ptr.lhs.cast119
  %sub122 = add i32 %sub.ptr.sub121.neg, %sub.ptr.rhs.cast120
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %71, i32 noundef %sub122) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %if.end115.cleanup_crit_edge, %if.else100.cleanup_crit_edge, %if.end95
  %retval.0 = phi i32 [ 0, %if.else100.cleanup_crit_edge ], [ 0, %if.end95 ], [ %err.0, %if.then117 ], [ %err.0, %if.end115.cleanup_crit_edge ]
  %76 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.sink186 = load ptr, ptr %buf2, align 4
  tail call void @vfree(ptr noundef %.sink186) #8
  %77 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.sink = load ptr, ptr %buf1, align 4
  tail call void @vfree(ptr noundef %.sink) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mst2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mst1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cor2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cor1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf1) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_master_node(ptr noundef %c, i32 noundef %lnum, ptr nocapture noundef writeonly %pbuf, ptr nocapture noundef writeonly %mst, ptr nocapture noundef writeonly %cor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 90
  %0 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mst_node_alsz, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  %call = tail call noalias ptr @vmalloc(i32 noundef %3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup100_crit_edge, label %if.end

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup100

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %leb_size, align 8
  %call2 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef nonnull %call, i32 noundef 0, i32 noundef %5, i32 noundef 0) #8
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.end.out_free_crit_edge [
    i32 0, label %if.end.if.end5_crit_edge
    i32 -74, label %if.end.if.end5_crit_edge239
  ]

if.end.if.end5_crit_edge239:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.if.end5_crit_edge239
  %7 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %8)
  %cmp8.not226 = icmp ult i32 %8, 512
  br i1 %cmp8.not226, label %if.end5.if.end56_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5.if.end56_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end5.while.body_crit_edge
  %offs.0229 = phi i32 [ %add12, %cleanup.while.body_crit_edge ], [ 0, %if.end5.while.body_crit_edge ]
  %len.0228 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %8, %if.end5.while.body_crit_edge ]
  %buf.0227 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %call, %if.end5.while.body_crit_edge ]
  %9 = ptrtoint ptr %buf.0227 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %buf.0227, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 823660550, i32 %10)
  %cmp9.not = icmp eq i32 %10, 823660550
  br i1 %cmp9.not, label %cleanup, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup:                                          ; preds = %while.body
  %add12 = add i32 %offs.0229, %1
  %add.ptr = getelementptr i8, ptr %buf.0227, i32 %1
  %sub = sub i32 %len.0228, %1
  %add = add i32 %add12, 512
  %cmp8.not = icmp ugt i32 %add, %8
  br i1 %cmp8.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge
  %buf.0.lcssa = phi ptr [ %add.ptr, %cleanup.while.end_crit_edge ], [ %buf.0227, %while.body.while.end_crit_edge ]
  %len.0.lcssa = phi i32 [ %sub, %cleanup.while.end_crit_edge ], [ %len.0228, %while.body.while.end_crit_edge ]
  %offs.0.lcssa = phi i32 [ %add12, %cleanup.while.end_crit_edge ], [ %offs.0229, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offs.0.lcssa)
  %tobool13.not = icmp eq i32 %offs.0.lcssa, 0
  br i1 %tobool13.not, label %while.end.if.end56_crit_edge, label %if.then14

while.end.if.end56_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then14:                                        ; preds = %while.end
  %sub15 = sub i32 %offs.0.lcssa, %1
  %idx.neg = sub i32 0, %1
  %add.ptr16 = getelementptr i8, ptr %buf.0.lcssa, i32 %idx.neg
  %add17 = add i32 %len.0.lcssa, %1
  %call18 = tail call i32 @ubifs_scan_a_node(ptr noundef %c, ptr noundef %add.ptr16, i32 noundef %add17, i32 noundef %lnum, i32 noundef %sub15, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, -2
  br i1 %cmp19.not, label %if.then14.if.then33_crit_edge, label %land.lhs.true20

if.then14.if.then33_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

land.lhs.true20:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %tobool21.not = icmp eq i32 %sub15, 0
  br i1 %tobool21.not, label %land.lhs.true20.if.end56_crit_edge, label %if.then22

land.lhs.true20.if.end56_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then22:                                        ; preds = %land.lhs.true20
  %sub23 = sub i32 %sub15, %1
  %add.ptr25 = getelementptr i8, ptr %add.ptr16, i32 %idx.neg
  %add26 = add i32 %add17, %1
  %call27 = tail call i32 @ubifs_scan_a_node(ptr noundef %c, ptr noundef %add.ptr25, i32 noundef %add26, i32 noundef %lnum, i32 noundef %sub23, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, -2
  br i1 %cmp28.not, label %if.then22.if.then33_crit_edge, label %if.then22.out_free_crit_edge

if.then22.out_free_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then22.if.then33_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.then33:                                        ; preds = %if.then22.if.then33_crit_edge, %if.then14.if.then33_crit_edge
  %buf.3.ph = phi ptr [ %add.ptr16, %if.then14.if.then33_crit_edge ], [ %add.ptr25, %if.then22.if.then33_crit_edge ]
  %len.3.ph = phi i32 [ %add17, %if.then14.if.then33_crit_edge ], [ %add26, %if.then22.if.then33_crit_edge ]
  %offs.3.ph = phi i32 [ %sub15, %if.then14.if.then33_crit_edge ], [ %sub23, %if.then22.if.then33_crit_edge ]
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf.3.ph, i32 0, i32 4
  %11 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %node_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp35.not = icmp eq i8 %12, 7
  br i1 %cmp35.not, label %do.body, label %if.then33.out_free_crit_edge

if.then33.out_free_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

do.body:                                          ; preds = %if.then33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_master_node.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_master_node, %if.then43)) #8
          to label %cleanup49.thread [label %if.then43], !srcloc !179

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_master_node.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.40, i32 noundef %18, i32 noundef %lnum, i32 noundef %offs.3.ph) #8
  br label %cleanup49.thread

cleanup49.thread:                                 ; preds = %if.then43, %do.body
  %19 = ptrtoint ptr %mst to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.3.ph, ptr %mst, align 4
  %add46 = add i32 %offs.3.ph, %1
  %add.ptr47 = getelementptr i8, ptr %buf.3.ph, i32 %1
  %sub48 = sub i32 %len.3.ph, %1
  br label %if.end56

if.end56:                                         ; preds = %cleanup49.thread, %land.lhs.true20.if.end56_crit_edge, %while.end.if.end56_crit_edge, %if.end5.if.end56_crit_edge
  %buf.7 = phi ptr [ %buf.0.lcssa, %while.end.if.end56_crit_edge ], [ %add.ptr47, %cleanup49.thread ], [ %add.ptr16, %land.lhs.true20.if.end56_crit_edge ], [ %call, %if.end5.if.end56_crit_edge ]
  %len.7 = phi i32 [ %len.0.lcssa, %while.end.if.end56_crit_edge ], [ %sub48, %cleanup49.thread ], [ %add17, %land.lhs.true20.if.end56_crit_edge ], [ %8, %if.end5.if.end56_crit_edge ]
  %offs.7 = phi i32 [ 0, %while.end.if.end56_crit_edge ], [ %add46, %cleanup49.thread ], [ 0, %land.lhs.true20.if.end56_crit_edge ], [ 0, %if.end5.if.end56_crit_edge ]
  %20 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.7, i32 %21)
  %cmp58 = icmp slt i32 %offs.7, %21
  br i1 %cmp58, label %if.then60, label %if.end56.if.end90_crit_edge

if.end56.if.end90_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then60:                                        ; preds = %if.end56
  %22 = tail call i32 @llvm.smin.i32(i32 %len.7, i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp5.i = icmp sgt i32 %22, 0
  br i1 %cmp5.i, label %if.then60.for.body.i_crit_edge, label %if.then60.if.end86_crit_edge

if.then60.if.end86_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then60.for.body.i_crit_edge:                   ; preds = %if.then60
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then60.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then60.for.body.i_crit_edge ]
  %p.06.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %buf.7, %if.then60.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %p.06.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %p.06.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp1.not.i = icmp eq i8 %24, -1
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then66

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %p.06.i, i32 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %for.inc.i.if.end86_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end86_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then66:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %cor to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.7, ptr %cor, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_master_node.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_master_node, %if.then79)) #8
          to label %if.end86 [label %if.then79], !srcloc !179

if.then79:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i186 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i186 to ptr
  %task81 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task81, align 8
  %pid82 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid82, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_master_node.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.41, i32 noundef %31, i32 noundef %lnum, i32 noundef %offs.7) #8
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %if.then66, %for.inc.i.if.end86_crit_edge, %if.then60.if.end86_crit_edge
  %add87 = add i32 %offs.7, %1
  %add.ptr88 = getelementptr i8, ptr %buf.7, i32 %1
  %sub89 = sub i32 %len.7, %1
  br label %if.end90

if.end90:                                         ; preds = %if.end86, %if.end56.if.end90_crit_edge
  %buf.8 = phi ptr [ %add.ptr88, %if.end86 ], [ %buf.7, %if.end56.if.end90_crit_edge ]
  %len.8 = phi i32 [ %sub89, %if.end86 ], [ %len.7, %if.end56.if.end90_crit_edge ]
  %offs.8 = phi i32 [ %add87, %if.end86 ], [ %offs.7, %if.end56.if.end90_crit_edge ]
  %32 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.8, i32 %33)
  %cmp92 = icmp slt i32 %offs.8, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.8)
  %cmp5.i187 = icmp sgt i32 %len.8, 0
  %or.cond = select i1 %cmp92, i1 %cmp5.i187, i1 false
  br i1 %or.cond, label %if.end90.for.body.i191_crit_edge, label %if.end90.if.end99_crit_edge

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end90.for.body.i191_crit_edge:                 ; preds = %if.end90
  br label %for.body.i191

for.body.i191:                                    ; preds = %for.inc.i195.for.body.i191_crit_edge, %if.end90.for.body.i191_crit_edge
  %i.07.i188 = phi i32 [ %inc.i193, %for.inc.i195.for.body.i191_crit_edge ], [ 0, %if.end90.for.body.i191_crit_edge ]
  %p.06.i189 = phi ptr [ %incdec.ptr.i192, %for.inc.i195.for.body.i191_crit_edge ], [ %buf.8, %if.end90.for.body.i191_crit_edge ]
  %34 = ptrtoint ptr %p.06.i189 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %p.06.i189, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp1.not.i190 = icmp eq i8 %35, -1
  br i1 %cmp1.not.i190, label %for.inc.i195, label %for.body.i191.out_free_crit_edge

for.body.i191.out_free_crit_edge:                 ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

for.inc.i195:                                     ; preds = %for.body.i191
  %incdec.ptr.i192 = getelementptr i8, ptr %p.06.i189, i32 1
  %inc.i193 = add nuw nsw i32 %i.07.i188, 1
  %exitcond.not.i194 = icmp eq i32 %inc.i193, %len.8
  br i1 %exitcond.not.i194, label %for.inc.i195.if.end99_crit_edge, label %for.inc.i195.for.body.i191_crit_edge

for.inc.i195.for.body.i191_crit_edge:             ; preds = %for.inc.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i191

for.inc.i195.if.end99_crit_edge:                  ; preds = %for.inc.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end99:                                         ; preds = %for.inc.i195.if.end99_crit_edge, %if.end90.if.end99_crit_edge
  %36 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call, ptr %pbuf, align 4
  br label %cleanup100

out_free:                                         ; preds = %for.body.i191.out_free_crit_edge, %if.then33.out_free_crit_edge, %if.then22.out_free_crit_edge, %if.end.out_free_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.out_free_crit_edge ], [ -22, %if.then33.out_free_crit_edge ], [ -22, %if.then22.out_free_crit_edge ], [ -22, %for.body.i191.out_free_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call) #8
  %37 = ptrtoint ptr %mst to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %mst, align 4
  %38 = ptrtoint ptr %cor to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %cor, align 4
  br label %cleanup100

cleanup100:                                       ; preds = %out_free, %if.end99, %entry.cleanup100_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ 0, %if.end99 ], [ -12, %entry.cleanup100_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_compare_master_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_rcvrd_mst_node(ptr noundef %c, ptr noundef %mst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 90
  %0 = ptrtoint ptr %mst_node_alsz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mst_node_alsz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_rcvrd_mst_node.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_rcvrd_mst_node, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_rcvrd_mst_node.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.3, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.ubifs_mst_node, ptr %mst, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %flags, align 1
  %or = or i32 %9, 67108864
  store i32 %or, ptr %flags, align 1
  %call5 = tail call i32 @ubifs_prepare_node_hmac(ptr noundef %c, ptr noundef %mst, i32 noundef 512, i32 noundef 296, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %do.end
  %call9 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef 1, ptr noundef %mst, i32 noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef 2, ptr noundef %mst, i32 noundef %1) #8
  br label %out

out:                                              ; preds = %if.end12, %if.end8.out_crit_edge, %do.end.out_crit_edge
  %err.0 = phi i32 [ %call5, %do.end.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ], [ %call13, %if.end12 ]
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %flags, align 1
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_rcvrd_mst_node(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rcvrd_mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 191
  %0 = ptrtoint ptr %rcvrd_mst_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcvrd_mst_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %flags, align 1
  %or = or i32 %3, 16777216
  store i32 %or, ptr %flags, align 1
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %4 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mst_node, align 4
  %flags2 = getelementptr inbounds %struct.ubifs_mst_node, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %flags2, align 1
  %or3 = or i32 %7, 16777216
  store i32 %or3, ptr %flags2, align 1
  %8 = ptrtoint ptr %rcvrd_mst_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rcvrd_mst_node, align 8
  %call = tail call fastcc i32 @write_rcvrd_mst_node(ptr noundef %c, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %rcvrd_mst_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rcvrd_mst_node, align 8
  tail call void @kfree(ptr noundef %11) #8
  %12 = ptrtoint ptr %rcvrd_mst_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rcvrd_mst_node, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_recover_leb(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef %sbuf, i32 noundef %jhead) local_unnamed_addr #0 align 64 {
entry:
  %offs.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offs.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %offs, ptr %offs.addr, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %1 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %leb_size, align 8
  %sub = sub i32 %2, %offs
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %jhead)
  %cmp = icmp eq i32 %jhead, -1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %3 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jheads, align 8
  %grouped1 = getelementptr %struct.ubifs_jhead, ptr %4, i32 %jhead, i32 2
  %5 = ptrtoint ptr %grouped1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %grouped1, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %bf.cast, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %sbuf, i32 %offs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_leb.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_leb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %12 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offs.addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_leb.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef %lnum, i32 noundef %13, i32 noundef %jhead, i32 noundef %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %14 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offs.addr, align 4
  %call5 = tail call ptr @ubifs_start_scan(ptr noundef %c, i32 noundef %lnum, i32 noundef %15, ptr noundef %sbuf) #8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.cleanup144_crit_edge, label %do.body9

do.end.cleanup144_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 8
  br i1 %cmp10, label %while.end.thread, label %do.body9.do.body24_crit_edge, !prof !180

do.body9.do.body24_crit_edge:                     ; preds = %do.body9
  br label %do.body24

while.end.thread:                                 ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 636) #8
  br label %if.then95

do.body24:                                        ; preds = %if.end91.do.body24_crit_edge, %do.body9.do.body24_crit_edge
  %buf.0318 = phi ptr [ %buf.2, %if.end91.do.body24_crit_edge ], [ %add.ptr, %do.body9.do.body24_crit_edge ]
  %len.0316 = phi i32 [ %len.2, %if.end91.do.body24_crit_edge ], [ %sub, %do.body9.do.body24_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_leb.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_leb, %if.then36)) #8
          to label %do.end42 [label %if.then36], !srcloc !179

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i224 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i224 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task38, align 8
  %pid39 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid39, align 8
  %22 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offs.addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_leb.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef %lnum, i32 noundef %23, i32 noundef %len.0316) #8
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.body24
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 641, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %24 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offs.addr, align 4
  %call45 = tail call i32 @ubifs_scan_a_node(ptr noundef %c, ptr noundef %buf.0318, i32 noundef %len.0316, i32 noundef %lnum, i32 noundef %25, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call45)
  %cmp46 = icmp eq i32 %call45, -2
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %do.end42
  %26 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offs.addr, align 4
  %call48 = tail call i32 @ubifs_add_snod(ptr noundef %c, ptr noundef %call5, ptr noundef %buf.0318, i32 noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup.thread, label %if.then47.error_crit_edge

if.then47.error_crit_edge:                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

cleanup.thread:                                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %len52 = getelementptr inbounds %struct.ubifs_ch, ptr %buf.0318, i32 0, i32 3
  %28 = ptrtoint ptr %len52 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %len52, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %add = add i32 %30, 7
  %and = and i32 %add, -8
  %31 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offs.addr, align 4
  %add53 = add i32 %and, %32
  br label %if.end91

if.else:                                          ; preds = %do.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp57 = icmp sgt i32 %call45, 0
  br i1 %cmp57, label %if.then58, label %if.else62

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offs.addr, align 4
  %add59 = add i32 %34, %call45
  br label %if.end91

if.else62:                                        ; preds = %if.else
  %35 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call45, label %if.else89 [
    i32 -1, label %if.else62.do.body70_crit_edge
    i32 0, label %if.else62.do.body70_crit_edge375
    i32 -4, label %if.else62.do.body70_crit_edge376
    i32 -3, label %if.else62.do.body70_crit_edge377
  ]

if.else62.do.body70_crit_edge377:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

if.else62.do.body70_crit_edge376:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

if.else62.do.body70_crit_edge375:                 ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

if.else62.do.body70_crit_edge:                    ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

do.body70:                                        ; preds = %if.else62.do.body70_crit_edge, %if.else62.do.body70_crit_edge375, %if.else62.do.body70_crit_edge376, %if.else62.do.body70_crit_edge377
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_leb.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_leb, %if.then82)) #8
          to label %while.end [label %if.then82], !srcloc !179

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %36 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i225 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i225 to ptr
  %task84 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task84, align 8
  %pid85 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid85, align 8
  %42 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offs.addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_leb.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.13, i32 noundef %41, i32 noundef %call45, i32 noundef %lnum, i32 noundef %43) #8
  br label %while.end

if.else89:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.14, i32 noundef %call45) #8
  br label %error

if.end91:                                         ; preds = %if.then58, %cleanup.thread
  %storemerge = phi i32 [ %add53, %cleanup.thread ], [ %add59, %if.then58 ]
  %call45.pn = phi i32 [ %and, %cleanup.thread ], [ %call45, %if.then58 ]
  %44 = ptrtoint ptr %offs.addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge, ptr %offs.addr, align 4
  %buf.2 = getelementptr i8, ptr %buf.0318, i32 %call45.pn
  %len.2 = sub i32 %len.0316, %call45.pn
  %cmp23 = icmp sgt i32 %len.2, 7
  br i1 %cmp23, label %if.end91.do.body24_crit_edge, label %if.end91.while.end_crit_edge

if.end91.while.end_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end91.do.body24_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

while.end:                                        ; preds = %if.end91.while.end_crit_edge, %if.then82, %do.body70
  %len.0313 = phi i32 [ %len.0316, %if.then82 ], [ %len.0316, %do.body70 ], [ %len.2, %if.end91.while.end_crit_edge ]
  %buf.0308 = phi ptr [ %buf.0318, %if.then82 ], [ %buf.0318, %do.body70 ], [ %buf.2, %if.end91.while.end_crit_edge ]
  %45 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call45, label %if.else107 [
    i32 0, label %while.end.if.then95_crit_edge
    i32 -4, label %while.end.if.then95_crit_edge378
    i32 -3, label %if.then102
  ]

while.end.if.then95_crit_edge378:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

while.end.if.then95_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

if.then95:                                        ; preds = %while.end.if.then95_crit_edge, %while.end.if.then95_crit_edge378, %while.end.thread
  %ret.1340 = phi i32 [ 0, %while.end.thread ], [ %call45, %while.end.if.then95_crit_edge ], [ %call45, %while.end.if.then95_crit_edge378 ]
  %buf.0308337 = phi ptr [ %add.ptr, %while.end.thread ], [ %buf.0308, %while.end.if.then95_crit_edge ], [ %buf.0308, %while.end.if.then95_crit_edge378 ]
  %len.0313336 = phi i32 [ %sub, %while.end.thread ], [ %len.0313, %while.end.if.then95_crit_edge ], [ %len.0313, %while.end.if.then95_crit_edge378 ]
  %46 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offs.addr, align 4
  %max_write_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 73
  %48 = ptrtoint ptr %max_write_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_write_size.i, align 8
  %add1.i = add i32 %49, %47
  %neg.i = sub i32 0, %49
  %and.i226 = and i32 %add1.i, %neg.i
  %50 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %leb_size, align 8
  %sub4.i = sub i32 %51, %and.i226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %cmp5.i.i = icmp sgt i32 %sub4.i, 0
  br i1 %cmp5.i.i, label %for.body.i.preheader.i, label %if.then95.if.end121_crit_edge

if.then95.if.end121_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

for.body.i.preheader.i:                           ; preds = %if.then95
  %add.ptr.i = getelementptr i8, ptr %buf.0308337, i32 %and.i226
  %idx.neg.i = sub i32 0, %47
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.07.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %p.06.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr5.i, %for.body.i.preheader.i ]
  %52 = ptrtoint ptr %p.06.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %p.06.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp1.not.i.i = icmp eq i8 %53, -1
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %for.body.i.i.corrupted_rescan_crit_edge

for.body.i.i.corrupted_rescan_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %corrupted_rescan

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %p.06.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub4.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end121_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.end121_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then102:                                       ; preds = %while.end
  %54 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offs.addr, align 4
  %call103 = tail call fastcc i32 @no_more_nodes(ptr noundef %c, ptr noundef %buf.0308, i32 noundef %len.0313, i32 noundef %lnum, i32 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then102.corrupted_rescan_crit_edge, label %if.then102.if.end121_crit_edge

if.then102.if.end121_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then102.corrupted_rescan_crit_edge:            ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %corrupted_rescan

if.else107:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0313)
  %cmp5.i = icmp sgt i32 %len.0313, 0
  br i1 %cmp5.i, label %if.else107.for.body.i_crit_edge, label %if.else107.if.end121_crit_edge

if.else107.if.end121_crit_edge:                   ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.else107.for.body.i_crit_edge:                  ; preds = %if.else107
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else107.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else107.for.body.i_crit_edge ]
  %p.06.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %buf.0308, %if.else107.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %p.06.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %p.06.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %cmp1.not.i = icmp eq i8 %57, -1
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then110

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %p.06.i, i32 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len.0313
  br i1 %exitcond.not.i, label %for.inc.i.if.end121_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end121_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then110:                                       ; preds = %for.body.i
  %58 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offs.addr, align 4
  %max_write_size.i228 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 73
  %60 = ptrtoint ptr %max_write_size.i228 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_write_size.i228, align 8
  %add1.i229 = add i32 %61, %59
  %neg.i230 = sub i32 0, %61
  %and.i231 = and i32 %add1.i229, %neg.i230
  %62 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %leb_size, align 8
  %sub4.i233 = sub i32 %63, %and.i231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i233)
  %cmp5.i.i234 = icmp sgt i32 %sub4.i233, 0
  br i1 %cmp5.i.i234, label %for.body.i.preheader.i238, label %if.then110.if.end121_crit_edge

if.then110.if.end121_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

for.body.i.preheader.i238:                        ; preds = %if.then110
  %add.ptr.i235 = getelementptr i8, ptr %buf.0308, i32 %and.i231
  %idx.neg.i236 = sub i32 0, %59
  %add.ptr5.i237 = getelementptr i8, ptr %add.ptr.i235, i32 %idx.neg.i236
  br label %for.body.i.i242

for.body.i.i242:                                  ; preds = %for.inc.i.i246.for.body.i.i242_crit_edge, %for.body.i.preheader.i238
  %i.07.i.i239 = phi i32 [ %inc.i.i244, %for.inc.i.i246.for.body.i.i242_crit_edge ], [ 0, %for.body.i.preheader.i238 ]
  %p.06.i.i240 = phi ptr [ %incdec.ptr.i.i243, %for.inc.i.i246.for.body.i.i242_crit_edge ], [ %add.ptr5.i237, %for.body.i.preheader.i238 ]
  %64 = ptrtoint ptr %p.06.i.i240 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %p.06.i.i240, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp1.not.i.i241 = icmp eq i8 %65, -1
  br i1 %cmp1.not.i.i241, label %for.inc.i.i246, label %for.body.i.i242.for.body.i250_crit_edge

for.body.i.i242.for.body.i250_crit_edge:          ; preds = %for.body.i.i242
  br label %for.body.i250

for.inc.i.i246:                                   ; preds = %for.body.i.i242
  %incdec.ptr.i.i243 = getelementptr i8, ptr %p.06.i.i240, i32 1
  %inc.i.i244 = add nuw nsw i32 %i.07.i.i239, 1
  %exitcond.not.i.i245 = icmp eq i32 %inc.i.i244, %sub4.i233
  br i1 %exitcond.not.i.i245, label %for.inc.i.i246.if.end121_crit_edge, label %for.inc.i.i246.for.body.i.i242_crit_edge

for.inc.i.i246.for.body.i.i242_crit_edge:         ; preds = %for.inc.i.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i242

for.inc.i.i246.if.end121_crit_edge:               ; preds = %for.inc.i.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

for.body.i250:                                    ; preds = %for.inc.i254.for.body.i250_crit_edge, %for.body.i.i242.for.body.i250_crit_edge
  %i.08.i = phi i32 [ %inc.i252, %for.inc.i254.for.body.i250_crit_edge ], [ 0, %for.body.i.i242.for.body.i250_crit_edge ]
  %p.07.i = phi ptr [ %incdec.ptr.i251, %for.inc.i254.for.body.i250_crit_edge ], [ %buf.0308, %for.body.i.i242.for.body.i250_crit_edge ]
  %66 = ptrtoint ptr %p.07.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %p.07.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp1.not.i249 = icmp eq i8 %67, -1
  br i1 %cmp1.not.i249, label %for.inc.i254, label %for.body.i250.first_non_ff.exit_crit_edge

for.body.i250.first_non_ff.exit_crit_edge:        ; preds = %for.body.i250
  call void @__sanitizer_cov_trace_pc() #10
  br label %first_non_ff.exit

for.inc.i254:                                     ; preds = %for.body.i250
  %incdec.ptr.i251 = getelementptr i8, ptr %p.07.i, i32 1
  %inc.i252 = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i253 = icmp eq i32 %inc.i252, %len.0313
  br i1 %exitcond.not.i253, label %for.inc.i254.first_non_ff.exit_crit_edge, label %for.inc.i254.for.body.i250_crit_edge

for.inc.i254.for.body.i250_crit_edge:             ; preds = %for.inc.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i250

for.inc.i254.first_non_ff.exit_crit_edge:         ; preds = %for.inc.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %first_non_ff.exit

first_non_ff.exit:                                ; preds = %for.inc.i254.first_non_ff.exit_crit_edge, %for.body.i250.first_non_ff.exit_crit_edge
  %retval.0.i255.ph = phi i32 [ -1, %for.inc.i254.first_non_ff.exit_crit_edge ], [ %i.08.i, %for.body.i250.first_non_ff.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.15, i32 noundef %lnum, i32 noundef %59, i32 noundef %retval.0.i255.ph) #8
  %68 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offs.addr, align 4
  %add115 = add i32 %69, %retval.0.i255.ph
  store i32 %add115, ptr %offs.addr, align 4
  %add.ptr116 = getelementptr i8, ptr %buf.0308, i32 %retval.0.i255.ph
  br label %corrupted

if.end121:                                        ; preds = %for.inc.i.i246.if.end121_crit_edge, %if.then110.if.end121_crit_edge, %for.inc.i.if.end121_crit_edge, %if.else107.if.end121_crit_edge, %if.then102.if.end121_crit_edge, %for.inc.i.i.if.end121_crit_edge, %if.then95.if.end121_crit_edge
  %70 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offs.addr, align 4
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %72 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %min_io_size, align 8
  %neg = sub i32 0, %73
  %and123 = and i32 %71, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool124.not = icmp eq i32 %cond, 0
  br i1 %tobool124.not, label %if.end121.if.end126_crit_edge, label %if.then125

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @drop_last_group(ptr noundef %call5, ptr noundef nonnull %offs.addr)
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end121.if.end126_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jhead)
  %cmp127 = icmp eq i32 %jhead, 0
  br i1 %cmp127, label %while.cond129.preheader, label %if.end126.if.end133_crit_edge

if.end126.if.end133_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

while.cond129.preheader:                          ; preds = %if.end126
  %74 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offs.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %and123)
  %cmp130322 = icmp sgt i32 %75, %and123
  br i1 %cmp130322, label %while.body131.lr.ph, label %while.cond129.preheader.if.end133_crit_edge

while.cond129.preheader.if.end133_crit_edge:      ; preds = %while.cond129.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

while.body131.lr.ph:                              ; preds = %while.cond129.preheader
  %nodes.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call5, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call5, i32 0, i32 2, i32 1
  %nodes_cnt.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call5, i32 0, i32 1
  br label %while.body131

while.body131:                                    ; preds = %drop_last_node.exit.while.body131_crit_edge, %while.body131.lr.ph
  %76 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %nodes.i, align 4
  %cmp.i.not.i = icmp eq ptr %77, %nodes.i
  br i1 %cmp.i.not.i, label %while.body131.drop_last_node.exit_crit_edge, label %if.then.i

while.body131.drop_last_node.exit_crit_edge:      ; preds = %while.body131
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_last_node.exit

if.then.i:                                        ; preds = %while.body131
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drop_last_node.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_leb, %if.then7.i)) #8
          to label %do.end.i [label %if.then7.i], !srcloc !179

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 68
  %84 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pid.i, align 8
  %86 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %call5, align 4
  %offs9.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %79, i32 0, i32 4
  %88 = ptrtoint ptr %offs9.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offs9.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @drop_last_node.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.49, i32 noundef %85, i32 noundef %87, i32 noundef %89) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %if.then.i
  %offs10.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %79, i32 0, i32 4
  %90 = ptrtoint ptr %offs10.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offs10.i, align 4
  %92 = ptrtoint ptr %offs.addr to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %offs.addr, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %79) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_del.exit.i_crit_edge

do.end.i.list_del.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i, align 4
  %95 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %79, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.list_del.exit.i_crit_edge
  %99 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %79, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %79) #8
  %101 = ptrtoint ptr %nodes_cnt.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nodes_cnt.i, align 4
  %sub.i = add i32 %102, -1
  store i32 %sub.i, ptr %nodes_cnt.i, align 4
  br label %drop_last_node.exit

drop_last_node.exit:                              ; preds = %list_del.exit.i, %while.body131.drop_last_node.exit_crit_edge
  %103 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offs.addr, align 4
  %cmp130 = icmp sgt i32 %104, %and123
  br i1 %cmp130, label %drop_last_node.exit.while.body131_crit_edge, label %drop_last_node.exit.if.end133_crit_edge

drop_last_node.exit.if.end133_crit_edge:          ; preds = %drop_last_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

drop_last_node.exit.while.body131_crit_edge:      ; preds = %drop_last_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body131

if.end133:                                        ; preds = %drop_last_node.exit.if.end133_crit_edge, %while.cond129.preheader.if.end133_crit_edge, %if.end126.if.end133_crit_edge
  %105 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offs.addr, align 4
  %add.ptr134 = getelementptr i8, ptr %sbuf, i32 %106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clean_buf.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_leb, %if.then.i259)) #8
          to label %do.body4.i [label %if.then.i259], !srcloc !179

if.then.i259:                                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %107 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i.i256 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i256 to ptr
  %task.i257 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task.i257 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i257, align 8
  %pid.i258 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 68
  %111 = ptrtoint ptr %pid.i258 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pid.i258, align 8
  %113 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %offs.addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clean_buf.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.51, i32 noundef %112, i32 noundef %lnum, i32 noundef %114) #8
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i259, %if.end133
  %115 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %offs.addr, align 4
  %and.i260 = and i32 %116, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i260)
  %tobool5.not.i = icmp eq i32 %and.i260, 0
  br i1 %tobool5.not.i, label %do.body4.i.clean_buf.exit_crit_edge, label %if.then16.i, !prof !181

do.body4.i.clean_buf.exit_crit_edge:              ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_buf.exit

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.2, i32 noundef 436) #8
  br label %clean_buf.exit

clean_buf.exit:                                   ; preds = %if.then16.i, %do.body4.i.clean_buf.exit_crit_edge
  %117 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %offs.addr, align 4
  %119 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %min_io_size, align 8
  %sub.i261 = add i32 %118, -1
  %add.i = add i32 %sub.i261, %120
  %neg.i262 = sub i32 0, %120
  %and22.i = and i32 %add.i, %neg.i262
  %sub23.i = sub i32 %and22.i, %118
  tail call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr134, i32 noundef %sub23.i) #8
  %121 = ptrtoint ptr %offs.addr to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and22.i, ptr %offs.addr, align 4
  %add.ptr.i263 = getelementptr i8, ptr %add.ptr134, i32 %sub23.i
  %122 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %leb_size, align 8
  %sub26.i = sub i32 %123, %and22.i
  %124 = call ptr @memset(ptr %add.ptr.i263, i32 255, i32 %sub26.i)
  tail call void @ubifs_end_scan(ptr noundef %c, ptr noundef %call5, i32 noundef %lnum, i32 noundef %and22.i) #8
  %call137 = tail call fastcc i32 @fix_unclean_leb(ptr noundef %c, ptr noundef %call5, i32 noundef %offs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %clean_buf.exit.cleanup144_crit_edge, label %clean_buf.exit.error_crit_edge

clean_buf.exit.error_crit_edge:                   ; preds = %clean_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

clean_buf.exit.cleanup144_crit_edge:              ; preds = %clean_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup144

corrupted_rescan:                                 ; preds = %if.then102.corrupted_rescan_crit_edge, %for.body.i.i.corrupted_rescan_crit_edge
  %ret.1339 = phi i32 [ -3, %if.then102.corrupted_rescan_crit_edge ], [ %ret.1340, %for.body.i.i.corrupted_rescan_crit_edge ]
  %buf.0308338 = phi ptr [ %buf.0308, %if.then102.corrupted_rescan_crit_edge ], [ %buf.0308337, %for.body.i.i.corrupted_rescan_crit_edge ]
  %len.0313335 = phi i32 [ %len.0313, %if.then102.corrupted_rescan_crit_edge ], [ %len.0313336, %for.body.i.i.corrupted_rescan_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.16, i32 noundef %ret.1339) #8
  %125 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %offs.addr, align 4
  %call141 = tail call i32 @ubifs_scan_a_node(ptr noundef %c, ptr noundef %buf.0308338, i32 noundef %len.0313335, i32 noundef %lnum, i32 noundef %126, i32 noundef 0) #8
  br label %corrupted

corrupted:                                        ; preds = %corrupted_rescan, %first_non_ff.exit
  %buf.3 = phi ptr [ %add.ptr116, %first_non_ff.exit ], [ %buf.0308338, %corrupted_rescan ]
  %127 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %offs.addr, align 4
  tail call void @ubifs_scanned_corruption(ptr noundef %c, i32 noundef %lnum, i32 noundef %128, ptr noundef %buf.3) #8
  br label %error

error:                                            ; preds = %corrupted, %clean_buf.exit.error_crit_edge, %if.else89, %if.then47.error_crit_edge
  %err.0 = phi i32 [ %call137, %clean_buf.exit.error_crit_edge ], [ -117, %corrupted ], [ -22, %if.else89 ], [ %call48, %if.then47.error_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.17, i32 noundef %lnum) #8
  tail call void @ubifs_scan_destroy(ptr noundef %call5) #8
  %129 = inttoptr i32 %err.0 to ptr
  br label %cleanup144

cleanup144:                                       ; preds = %error, %clean_buf.exit.cleanup144_crit_edge, %do.end.cleanup144_crit_edge
  %retval.0 = phi ptr [ %129, %error ], [ %call5, %do.end.cleanup144_crit_edge ], [ %call5, %clean_buf.exit.cleanup144_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_start_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_scan_a_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_snod(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @no_more_nodes(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %len1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %max_write_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 73
  %3 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_write_size, align 8
  %sub = add i32 %offs, 23
  %add2 = add i32 %sub, %4
  %neg = sub i32 0, %4
  %and = and i32 %add2, %neg
  %sub5 = sub i32 %and, %offs
  %sub6 = sub i32 %len, %sub5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %cmp5.i = icmp sgt i32 %sub6, 0
  br i1 %cmp5.i, label %for.body.i.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %p.06.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr, %for.body.i.preheader ]
  %5 = ptrtoint ptr %p.06.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %p.06.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp1.not.i = icmp eq i8 %6, -1
  br i1 %cmp1.not.i, label %for.inc.i, label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %p.06.i, i32 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub6
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %call7 = tail call i32 @ubifs_check_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call7)
  %cmp.not = icmp eq i32 %call7, -117
  br i1 %cmp.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @no_more_nodes.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@no_more_nodes, %if.then13)) #8
          to label %cleanup [label %if.then13], !srcloc !179

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @no_more_nodes.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.44, i32 noundef %12, i32 noundef %lnum, i32 noundef %offs) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %13 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_write_size, align 8
  %sub19 = add i32 %offs, -1
  %add17 = add i32 %sub19, %2
  %add20 = add i32 %add17, %14
  %neg23 = sub i32 0, %14
  %and24 = and i32 %add20, %neg23
  %sub25 = sub i32 %and24, %offs
  %sub27 = sub i32 %len, %sub25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27)
  %cmp5.i79 = icmp sgt i32 %sub27, 0
  br i1 %cmp5.i79, label %for.body.i83.preheader, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i83.preheader:                           ; preds = %if.end16
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %sub25
  br label %for.body.i83

for.body.i83:                                     ; preds = %for.inc.i87.for.body.i83_crit_edge, %for.body.i83.preheader
  %i.07.i80 = phi i32 [ %inc.i85, %for.inc.i87.for.body.i83_crit_edge ], [ 0, %for.body.i83.preheader ]
  %p.06.i81 = phi ptr [ %incdec.ptr.i84, %for.inc.i87.for.body.i83_crit_edge ], [ %add.ptr26, %for.body.i83.preheader ]
  %15 = ptrtoint ptr %p.06.i81 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p.06.i81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp1.not.i82 = icmp eq i8 %16, -1
  br i1 %cmp1.not.i82, label %for.inc.i87, label %do.body32

for.inc.i87:                                      ; preds = %for.body.i83
  %incdec.ptr.i84 = getelementptr i8, ptr %p.06.i81, i32 1
  %inc.i85 = add nuw nsw i32 %i.07.i80, 1
  %exitcond.not.i86 = icmp eq i32 %inc.i85, %sub27
  br i1 %exitcond.not.i86, label %for.inc.i87.cleanup_crit_edge, label %for.inc.i87.for.body.i83_crit_edge

for.inc.i87.for.body.i83_crit_edge:               ; preds = %for.inc.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i83

for.inc.i87.cleanup_crit_edge:                    ; preds = %for.inc.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body32:                                        ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @no_more_nodes.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@no_more_nodes, %if.then44)) #8
          to label %cleanup [label %if.then44], !srcloc !179

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i90 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i90 to ptr
  %task46 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task46, align 8
  %pid47 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid47, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @no_more_nodes.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.45, i32 noundef %22, i32 noundef %lnum, i32 noundef %and24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.body32, %for.inc.i87.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %do.body, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.then44 ], [ 0, %do.body ], [ 0, %do.body32 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end16.cleanup_crit_edge ], [ 1, %for.inc.i87.cleanup_crit_edge ], [ 1, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drop_last_group(ptr noundef %sleb, ptr nocapture noundef writeonly %offs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prev = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2, i32 1
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %nodes, align 4
  %cmp.i.not25 = icmp eq ptr %1, %nodes
  br i1 %cmp.i.not25, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %nodes_cnt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %group_type = getelementptr inbounds %struct.ubifs_ch, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %group_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %group_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %do.body, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body:                                          ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drop_last_group.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@drop_last_group, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !179

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %14 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sleb, align 4
  %offs11 = getelementptr inbounds %struct.ubifs_scan_node, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %offs11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs11, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @drop_last_group.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.47, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %offs13 = getelementptr inbounds %struct.ubifs_scan_node, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %offs13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offs13, align 4
  %20 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %offs, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.cleanup_crit_edge
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %3) #8
  %29 = ptrtoint ptr %nodes_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nodes_cnt, align 4
  %sub = add i32 %30, -1
  store i32 %sub, ptr %nodes_cnt, align 4
  %31 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %nodes, align 4
  %cmp.i.not = icmp eq ptr %32, %nodes
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_end_scan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fix_unclean_leb(ptr noundef %c, ptr noundef %sleb, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sleb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sleb, align 4
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2
  %2 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %nodes, align 4
  %cmp.i.not = icmp eq ptr %3, %nodes
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %offs = getelementptr inbounds %struct.ubifs_scan_node, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offs, align 4
  %len = getelementptr inbounds %struct.ubifs_scan_node, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  %add = add i32 %9, %7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %endpt.0 = phi i32 [ %start, %entry.if.end_crit_edge ], [ %add, %if.then ]
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %10 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %ro_mount, align 8
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %remounting_rw = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %12 = ptrtoint ptr %remounting_rw to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load4 = load i8, ptr %remounting_rw, align 4
  %13 = and i8 %bf.load4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fix_unclean_leb.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fix_unclean_leb, %if.then15)) #8
          to label %do.end [label %if.then15], !srcloc !179

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  %endpt17 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 3
  %20 = ptrtoint ptr %endpt17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %endpt17, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fix_unclean_leb.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.54, i32 noundef %19, i32 noundef %1, i32 noundef %start, i32 noundef %21) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3392, i32 noundef 16) #12
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %do.end.cleanup88_crit_edge, label %if.end22

do.end.cleanup88_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end22:                                         ; preds = %do.end
  %lnum23 = getelementptr inbounds %struct.ubifs_unclean_leb, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %lnum23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %1, ptr %lnum23, align 8
  %endpt24 = getelementptr inbounds %struct.ubifs_unclean_leb, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %endpt24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %endpt.0, ptr %endpt24, align 4
  %unclean_leb_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 190
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 190, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %26, ptr noundef %unclean_leb_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.cleanup88_crit_edge

if.end22.cleanup88_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %unclean_leb_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i, ptr %26, align 4
  br label %cleanup88

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fix_unclean_leb.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fix_unclean_leb, %if.then37)) #8
          to label %do.end44 [label %if.then37], !srcloc !179

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i139 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i139 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task39, align 8
  %pid40 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid40, align 8
  %endpt41 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 3
  %37 = ptrtoint ptr %endpt41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %endpt41, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fix_unclean_leb.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.55, i32 noundef %36, i32 noundef %1, i32 noundef %start, i32 noundef %38) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %endpt.0)
  %cmp = icmp eq i32 %endpt.0, 0
  br i1 %cmp, label %if.then45, label %if.else50

if.then45:                                        ; preds = %do.end44
  %call46 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then45.cleanup88_crit_edge, label %if.then45.cleanup84.thread_crit_edge

if.then45.cleanup84.thread_crit_edge:             ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84.thread

if.then45.cleanup88_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.else50:                                        ; preds = %do.end44
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %39 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %min_io_size, align 8
  %sub = add i32 %endpt.0, -1
  %add52 = add i32 %sub, %40
  %neg = sub i32 0, %40
  %and = and i32 %add52, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool55.not = icmp eq i32 %start, 0
  br i1 %tobool55.not, label %if.else50.if.end61_crit_edge, label %if.then56

if.else50.if.end61_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then56:                                        ; preds = %if.else50
  %buf = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 4
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf, align 4
  %call57 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %1, ptr noundef %42, i32 noundef 0, i32 noundef %start, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then56.if.end61_crit_edge, label %if.then56.cleanup84.thread_crit_edge

if.then56.cleanup84.thread_crit_edge:             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84.thread

if.then56.if.end61_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end61:                                         ; preds = %if.then56.if.end61_crit_edge, %if.else50.if.end61_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %endpt.0)
  %cmp62 = icmp sgt i32 %and, %endpt.0
  br i1 %cmp62, label %if.then63, label %if.end61.cleanup80_crit_edge

if.end61.cleanup80_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.then63:                                        ; preds = %if.end61
  %add64 = add i32 %endpt.0, 7
  %and65 = and i32 %add64, -8
  %sub66 = sub i32 %and, %and65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub66)
  %cmp67 = icmp sgt i32 %sub66, 0
  br i1 %cmp67, label %if.then68, label %if.then63.cleanup80_crit_edge

if.then63.cleanup80_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.then68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %buf70 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 4
  %43 = ptrtoint ptr %buf70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf70, align 4
  %add.ptr71 = getelementptr i8, ptr %44, i32 %and
  %idx.neg = sub nsw i32 0, %sub66
  %add.ptr72 = getelementptr i8, ptr %add.ptr71, i32 %idx.neg
  tail call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr72, i32 noundef %sub66) #8
  br label %cleanup80

cleanup80:                                        ; preds = %if.then68, %if.then63.cleanup80_crit_edge, %if.end61.cleanup80_crit_edge
  %buf75 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 4
  %45 = ptrtoint ptr %buf75 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf75, align 4
  %call76 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %1, ptr noundef %46, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup80.cleanup88_crit_edge, label %cleanup80.cleanup84.thread_crit_edge

cleanup80.cleanup84.thread_crit_edge:             ; preds = %cleanup80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84.thread

cleanup80.cleanup88_crit_edge:                    ; preds = %cleanup80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

cleanup84.thread:                                 ; preds = %cleanup80.cleanup84.thread_crit_edge, %if.then56.cleanup84.thread_crit_edge, %if.then45.cleanup84.thread_crit_edge
  %retval.3.ph = phi i32 [ %call46, %if.then45.cleanup84.thread_crit_edge ], [ %call76, %cleanup80.cleanup84.thread_crit_edge ], [ %call57, %if.then56.cleanup84.thread_crit_edge ]
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup84.thread, %cleanup80.cleanup88_crit_edge, %if.then45.cleanup88_crit_edge, %if.end.i.i, %if.end22.cleanup88_crit_edge, %do.end.cleanup88_crit_edge
  %retval.4 = phi i32 [ -12, %do.end.cleanup88_crit_edge ], [ %retval.3.ph, %cleanup84.thread ], [ 0, %cleanup80.cleanup88_crit_edge ], [ 0, %if.then45.cleanup88_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.end22.cleanup88_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scanned_corruption(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_recover_log_leb(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef %sbuf) local_unnamed_addr #0 align 64 {
entry:
  %cs_sqnum = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_log_leb.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_log_leb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_log_leb.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef %lnum) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add = add i32 %lnum, 1
  %log_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 53
  %6 = ptrtoint ptr %log_lebs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %log_lebs, align 8
  %add4 = add i32 %7, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add4)
  %cmp.not = icmp slt i32 %add, %add4
  %spec.store.select = select i1 %cmp.not, i32 %add, i32 3
  %ltail_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %8 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ltail_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %9)
  %cmp7.not = icmp eq i32 %spec.store.select, %9
  br i1 %cmp7.not, label %do.end.if.end34_crit_edge, label %if.then8

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then8:                                         ; preds = %do.end
  %call9 = tail call ptr @ubifs_scan(ptr noundef %c, i32 noundef %spec.store.select, i32 noundef 0, ptr noundef %sbuf, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8.cleanup36_crit_edge, label %if.end12

if.then8.cleanup36_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.end12:                                         ; preds = %if.then8
  %nodes_cnt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call9, i32 0, i32 1
  %10 = ptrtoint ptr %nodes_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nodes_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.end12.if.end33_crit_edge, label %if.then14

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then14:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cs_sqnum) #8
  %cs_sqnum15 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 189
  %12 = ptrtoint ptr %cs_sqnum15 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cs_sqnum15, align 8
  %14 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %cs_sqnum, align 8
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call9, i32 0, i32 2
  %15 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp17 = icmp eq i64 %13, 0
  br i1 %cmp17, label %if.then18, label %if.then14.if.end24_crit_edge

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then18:                                        ; preds = %if.then14
  %call19 = call fastcc i32 @get_cs_sqnum(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef nonnull %cs_sqnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end24_crit_edge, label %cleanup

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

cleanup:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_scan_destroy(ptr noundef %call9) #8
  %17 = inttoptr i32 %call19 to ptr
  br label %cleanup29.thread

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %if.then14.if.end24_crit_edge
  %sqnum = getelementptr inbounds %struct.ubifs_scan_node, ptr %16, i32 0, i32 2
  %18 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sqnum, align 8
  %20 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cs_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp25 = icmp ugt i64 %19, %21
  br i1 %cmp25, label %if.then26, label %cleanup29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.20, i32 noundef %lnum) #8
  tail call void @ubifs_scan_destroy(ptr noundef %call9) #8
  br label %cleanup29.thread

cleanup29.thread:                                 ; preds = %if.then26, %cleanup
  %retval.2.ph = phi ptr [ inttoptr (i32 -117 to ptr), %if.then26 ], [ %17, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cs_sqnum) #8
  br label %cleanup36

cleanup29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cs_sqnum) #8
  br label %if.end33

if.end33:                                         ; preds = %cleanup29, %if.end12.if.end33_crit_edge
  tail call void @ubifs_scan_destroy(ptr noundef %call9) #8
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %do.end.if.end34_crit_edge
  %call35 = tail call ptr @ubifs_recover_leb(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef %sbuf, i32 noundef -1)
  br label %cleanup36

cleanup36:                                        ; preds = %if.end34, %cleanup29.thread, %if.then8.cleanup36_crit_edge
  %retval.3 = phi ptr [ %call35, %if.end34 ], [ %call9, %if.then8.cleanup36_crit_edge ], [ %retval.2.ph, %cleanup29.thread ]
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_cs_sqnum(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr nocapture noundef %cs_sqnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cs_sqnum.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cs_sqnum, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cs_sqnum.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.57, i32 noundef %5, i32 noundef %lnum, i32 noundef %offs) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 32) #12
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %7 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %leb_size, align 8
  %sub = sub i32 %8, %offs
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp = icmp ult i32 %sub, 32
  br i1 %cmp, label %if.end7.out_free_crit_edge, label %if.end9

if.end7.out_free_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end9:                                          ; preds = %if.end7
  %call10 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef nonnull %call7.i, i32 noundef %offs, i32 noundef 32, i32 noundef 0) #8
  %9 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call10, label %if.end9.out_free_crit_edge [
    i32 0, label %if.end9.if.end14_crit_edge
    i32 -74, label %if.end9.if.end14_crit_edge87
  ]

if.end9.if.end14_crit_edge87:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end9.out_free_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.end9.if.end14_crit_edge87
  %call15 = tail call i32 @ubifs_scan_a_node(ptr noundef %c, ptr noundef nonnull %call7.i, i32 noundef 32, i32 noundef %lnum, i32 noundef %offs, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, -2
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.58) #8
  br label %out_free

if.end18:                                         ; preds = %if.end14
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %node_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp19.not = icmp eq i8 %11, 10
  br i1 %cmp19.not, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.59, i32 noundef %conv) #8
  br label %out_free

if.end25:                                         ; preds = %if.end18
  %cmt_no = getelementptr inbounds %struct.ubifs_cs_node, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cmt_no, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %cmt_no26 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %15 = ptrtoint ptr %cmt_no26 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cmt_no26, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp27.not = icmp eq i64 %14, %16
  br i1 %cmp27.not, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.60, i64 noundef %14, i64 noundef %16) #8
  br label %out_free

if.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %call7.i, i32 0, i32 2
  %17 = ptrtoint ptr %sqnum to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sqnum, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %20 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %cs_sqnum, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cs_sqnum.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cs_sqnum, %if.then46)) #8
          to label %cleanup.sink.split [label %if.then46], !srcloc !179

if.then46:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i84 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i84 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task48, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid49, align 8
  %27 = ptrtoint ptr %cs_sqnum to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cs_sqnum, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cs_sqnum.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.61, i32 noundef %26, i64 noundef %28) #8
  br label %cleanup.sink.split

out_free:                                         ; preds = %if.then29, %if.then21, %if.then17, %if.end9.out_free_crit_edge, %if.end7.out_free_crit_edge
  %err.0 = phi i32 [ %call10, %if.end9.out_free_crit_edge ], [ -22, %if.end7.out_free_crit_edge ], [ -22, %if.then29 ], [ -22, %if.then21 ], [ -22, %if.then17 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.62) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_free, %if.then46, %if.end32
  %retval.0.ph = phi i32 [ %err.0, %out_free ], [ 0, %if.end32 ], [ 0, %if.then46 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_recover_inl_heads(ptr noundef %c, ptr noundef %sbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_mount, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %lor.rhs

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

lor.rhs:                                          ; preds = %entry
  %remounting_rw = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %2 = ptrtoint ptr %remounting_rw to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load1 = load i8, ptr %remounting_rw, align 4
  %3 = and i8 %bf.load1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5 = icmp eq i8 %3, 0
  br i1 %tobool5, label %if.then, label %lor.rhs.do.body9_crit_edge, !prof !180

lor.rhs.do.body9_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

if.then:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 958) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then, %lor.rhs.do.body9_crit_edge, %entry.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_inl_heads.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_inl_heads, %if.then17)) #8
          to label %do.end21 [label %if.then17], !srcloc !179

if.then17:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  %ihead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %10 = ptrtoint ptr %ihead_lnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ihead_lnum, align 8
  %ihead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %12 = ptrtoint ptr %ihead_offs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ihead_offs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_inl_heads.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.23, i32 noundef %9, i32 noundef %11, i32 noundef %13) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body9
  %ihead_lnum22 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 39
  %14 = ptrtoint ptr %ihead_lnum22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ihead_lnum22, align 8
  %ihead_offs23 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 40
  %16 = ptrtoint ptr %ihead_offs23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ihead_offs23, align 4
  %call24 = tail call fastcc i32 @recover_head(ptr noundef %c, i32 noundef %15, i32 noundef %17, ptr noundef %sbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body28, label %do.end21.cleanup_crit_edge

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body28:                                        ; preds = %do.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_inl_heads.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_inl_heads, %if.then40)) #8
          to label %do.end46 [label %if.then40], !srcloc !179

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i67 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i67 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid43, align 8
  %nhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %24 = ptrtoint ptr %nhead_lnum to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nhead_lnum, align 4
  %nhead_offs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %26 = ptrtoint ptr %nhead_offs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nhead_offs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_inl_heads.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.24, i32 noundef %23, i32 noundef %25, i32 noundef %27) #8
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  %nhead_lnum47 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 147
  %28 = ptrtoint ptr %nhead_lnum47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nhead_lnum47, align 4
  %nhead_offs48 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 148
  %30 = ptrtoint ptr %nhead_offs48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nhead_offs48, align 8
  %call49 = tail call fastcc i32 @recover_head(ptr noundef %c, i32 noundef %29, i32 noundef %31, ptr noundef %sbuf)
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %do.end46 ], [ %call24, %do.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recover_head(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef %sbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_write_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 73
  %0 = ptrtoint ptr %max_write_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_write_size, align 8
  %add = add i32 %1, %offs
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp sgt i32 %add, %3
  %sub = sub i32 %3, %offs
  %spec.select = select i1 %cmp, i32 %sub, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef %sbuf, i32 noundef %offs, i32 noundef %spec.select, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.do.body_crit_edge

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp5.i = icmp sgt i32 %spec.select, 0
  br i1 %cmp5.i, label %lor.lhs.false.for.body.i_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.for.body.i_crit_edge:               ; preds = %lor.lhs.false
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %lor.lhs.false.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %p.06.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %sbuf, %lor.lhs.false.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %p.06.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.06.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp1.not.i = icmp eq i8 %5, -1
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.do.body_crit_edge

for.body.i.do.body_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %p.06.i, i32 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.select
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %for.body.i.do.body_crit_edge, %if.end3.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @recover_head.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@recover_head, %if.then12)) #8
          to label %do.end [label %if.then12], !srcloc !179

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @recover_head.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.64, i32 noundef %11, i32 noundef %lnum, i32 noundef %offs) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offs)
  %cmp15 = icmp eq i32 %offs, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %lnum) #8
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %call19 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef %sbuf, i32 noundef 0, i32 noundef %offs, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %lnum, ptr noundef %sbuf, i32 noundef %offs) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %if.then16, %for.inc.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then16 ], [ %call23, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_clean_lebs(ptr noundef %c, ptr noundef %sbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_clean_lebs.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_clean_lebs, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_clean_lebs.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %unclean_leb_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 190
  %6 = ptrtoint ptr %unclean_leb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %unclean_leb_list, align 4
  %cmp.i.not22 = icmp eq ptr %7, %unclean_leb_list
  br i1 %cmp.i.not22, label %do.end.return_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %do.end.while.body_crit_edge
  %8 = phi ptr [ %18, %cleanup.while.body_crit_edge ], [ %7, %do.end.while.body_crit_edge ]
  %call10 = tail call fastcc i32 @clean_an_unclean_leb(ptr noundef %c, ptr noundef %8, ptr noundef %sbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %while.body.return_crit_edge

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end13:                                         ; preds = %while.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end13.cleanup_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %8) #8
  %17 = ptrtoint ptr %unclean_leb_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %unclean_leb_list, align 4
  %cmp.i.not = icmp eq ptr %18, %unclean_leb_list
  br i1 %cmp.i.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %while.body.return_crit_edge, %do.end.return_crit_edge
  %retval.2 = phi i32 [ 0, %do.end.return_crit_edge ], [ %call10, %while.body.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clean_an_unclean_leb(ptr noundef %c, ptr nocapture noundef readonly %ucleb, ptr noundef %sbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lnum1 = getelementptr inbounds %struct.ubifs_unclean_leb, ptr %ucleb, i32 0, i32 1
  %0 = ptrtoint ptr %lnum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lnum1, align 4
  %endpt = getelementptr inbounds %struct.ubifs_unclean_leb, ptr %ucleb, i32 0, i32 2
  %2 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %endpt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clean_an_unclean_leb.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clean_an_unclean_leb, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clean_an_unclean_leb.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.66, i32 noundef %9, i32 noundef %1, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %1) #8
  br label %cleanup77

if.end7:                                          ; preds = %do.end
  %call8 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %1, ptr noundef %sbuf, i32 noundef 0, i32 noundef %3, i32 noundef 0) #8
  %10 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call8, label %if.end7.cleanup77_crit_edge [
    i32 0, label %if.end7.if.end12_crit_edge
    i32 -74, label %if.end7.if.end12_crit_edge180
  ]

if.end7.if.end12_crit_edge180:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end7.cleanup77_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end12:                                         ; preds = %if.end7.if.end12_crit_edge, %if.end7.if.end12_crit_edge180
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp13155 = icmp sgt i32 %3, 7
  br i1 %cmp13155, label %if.end12.while.body_crit_edge, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end12.while.body_crit_edge
  %offs.0159 = phi i32 [ %offs.1, %cleanup.while.body_crit_edge ], [ 0, %if.end12.while.body_crit_edge ]
  %len.0158 = phi i32 [ %len.1, %cleanup.while.body_crit_edge ], [ %3, %if.end12.while.body_crit_edge ]
  %quiet.0157 = phi i32 [ %quiet.1, %cleanup.while.body_crit_edge ], [ 1, %if.end12.while.body_crit_edge ]
  %buf.0156 = phi ptr [ %buf.1, %cleanup.while.body_crit_edge ], [ %sbuf, %if.end12.while.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1002, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  %call16 = tail call i32 @ubifs_scan_a_node(ptr noundef %c, ptr noundef %buf.0156, i32 noundef %len.0158, i32 noundef %1, i32 noundef %offs.0159, i32 noundef %quiet.0157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call16)
  %cmp17 = icmp eq i32 %call16, -2
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %len19 = getelementptr inbounds %struct.ubifs_ch, ptr %buf.0156, i32 0, i32 3
  %11 = ptrtoint ptr %len19 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %len19, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %add = add i32 %13, 7
  %and = and i32 %add, -8
  %add20 = add i32 %and, %offs.0159
  %add.ptr = getelementptr i8, ptr %buf.0156, i32 %and
  %sub = sub i32 %len.0158, %and
  br label %cleanup

if.end21:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp22 = icmp sgt i32 %call16, 0
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %add24 = add i32 %call16, %offs.0159
  %add.ptr25 = getelementptr i8, ptr %buf.0156, i32 %call16
  %sub26 = sub nsw i32 %len.0158, %call16
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp28 = icmp eq i32 %call16, -1
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.67, i32 noundef %1, i32 noundef %offs.0159) #8
  br label %cleanup77

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet.0157)
  %tobool31.not = icmp eq i32 %quiet.0157, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_scanned_corruption(ptr noundef %c, i32 noundef %1, i32 noundef %offs.0159, ptr noundef %buf.0156) #8
  br label %cleanup77

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %if.then23, %if.then18
  %buf.1 = phi ptr [ %add.ptr, %if.then18 ], [ %add.ptr25, %if.then23 ], [ %buf.0156, %if.end30.cleanup_crit_edge ]
  %quiet.1 = phi i32 [ %quiet.0157, %if.then18 ], [ %quiet.0157, %if.then23 ], [ 0, %if.end30.cleanup_crit_edge ]
  %len.1 = phi i32 [ %sub, %if.then18 ], [ %sub26, %if.then23 ], [ %len.0158, %if.end30.cleanup_crit_edge ]
  %offs.1 = phi i32 [ %add20, %if.then18 ], [ %add24, %if.then23 ], [ %offs.0159, %if.end30.cleanup_crit_edge ]
  %cmp13 = icmp sgt i32 %len.1, 7
  br i1 %cmp13, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end12.while.end_crit_edge
  %14 = ptrtoint ptr %endpt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %endpt, align 4
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %16 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_io_size, align 8
  %sub35 = add i32 %15, -1
  %add36 = add i32 %sub35, %17
  %neg = sub i32 0, %17
  %and39 = and i32 %add36, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and39, i32 %15)
  %cmp41 = icmp sgt i32 %and39, %15
  br i1 %cmp41, label %if.then42, label %while.end.if.end53_crit_edge

while.end.if.end53_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then42:                                        ; preds = %while.end
  %add44 = add i32 %15, 7
  %and45 = and i32 %add44, -8
  %sub46 = sub i32 %and39, %and45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub46)
  %cmp47 = icmp sgt i32 %sub46, 0
  br i1 %cmp47, label %if.then48, label %if.then42.if.end53_crit_edge

if.then42.if.end53_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %sbuf49 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %18 = ptrtoint ptr %sbuf49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sbuf49, align 8
  %add.ptr50 = getelementptr i8, ptr %19, i32 %and39
  %idx.neg = sub nsw i32 0, %sub46
  %add.ptr51 = getelementptr i8, ptr %add.ptr50, i32 %idx.neg
  tail call void @ubifs_pad(ptr noundef %c, ptr noundef %add.ptr51, i32 noundef %sub46) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.then42.if.end53_crit_edge, %while.end.if.end53_crit_edge
  %call54 = tail call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %1, ptr noundef %sbuf, i32 noundef %and39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body58, label %if.end53.cleanup77_crit_edge

if.end53.cleanup77_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

do.body58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clean_an_unclean_leb.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clean_an_unclean_leb, %if.then70)) #8
          to label %cleanup77 [label %if.then70], !srcloc !179

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i143 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i143 to ptr
  %task72 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task72 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task72, align 8
  %pid73 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid73, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clean_an_unclean_leb.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.68, i32 noundef %25, i32 noundef %1) #8
  br label %cleanup77

cleanup77:                                        ; preds = %if.then70, %do.body58, %if.end53.cleanup77_crit_edge, %if.end33, %if.then29, %if.end7.cleanup77_crit_edge, %if.then5
  %retval.2 = phi i32 [ %call6, %if.then5 ], [ %call8, %if.end7.cleanup77_crit_edge ], [ %call54, %if.end53.cleanup77_crit_edge ], [ 0, %if.then70 ], [ 0, %do.body58 ], [ -117, %if.then29 ], [ -117, %if.end33 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_rcvry_gc_commit(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %lp = alloca %struct.ubifs_lprops, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %0 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jheads, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lp) #8
  %2 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ubifs_lprops, ptr %lp, i32 0, i32 3
  %5 = call ptr @memset(ptr %lp, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_rcvry_gc_commit, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %lnum = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lnum, align 8
  %offs = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.27, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %16 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %gc_lnum, align 4
  %lnum5 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %lnum5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lnum5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp = icmp eq i32 %18, -1
  br i1 %cmp, label %do.end.if.then8_crit_edge, label %lor.lhs.false

do.end.if.then8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false:                                    ; preds = %do.end
  %offs6 = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %offs6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offs6, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %21 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp7 = icmp eq i32 %20, %22
  br i1 %cmp7, label %lor.lhs.false.if.then8_crit_edge, label %if.end10

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %do.end.if.then8_crit_edge
  %call9 = tail call fastcc i32 @grab_empty_leb(ptr noundef %c)
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call12 = call i32 @ubifs_find_dirty_leb(ptr noundef %c, ptr noundef nonnull %lp, i32 noundef %20, i32 noundef 2) #8
  %23 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call12, label %if.end10.cleanup_crit_edge [
    i32 0, label %do.body39
    i32 -28, label %do.body18
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body18:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_rcvry_gc_commit, %if.then30)) #8
          to label %do.end36 [label %if.then30], !srcloc !179

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %24 = call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i221 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i221 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid33, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.28, i32 noundef %29) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body18
  %call37 = call fastcc i32 @grab_empty_leb(ptr noundef %c)
  br label %cleanup

do.body39:                                        ; preds = %if.end10
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %and = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %do.body39.do.body55_crit_edge, label %if.then51, !prof !181

do.body39.do.body55_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 1179) #8
  br label %do.body55

do.body55:                                        ; preds = %if.then51, %do.body39.do.body55_crit_edge
  %32 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lp, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %2, align 4
  %add = add i32 %35, %33
  %36 = ptrtoint ptr %offs6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offs6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %37)
  %cmp57.not = icmp slt i32 %add, %37
  br i1 %cmp57.not, label %if.then66, label %do.body55.do.body70_crit_edge, !prof !180

do.body55.do.body70_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body70

if.then66:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 1180) #8
  br label %do.body70

do.body70:                                        ; preds = %if.then66, %do.body55.do.body70_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_rcvry_gc_commit, %if.then82)) #8
          to label %do.end88 [label %if.then82], !srcloc !179

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %38 = call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i222 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i222 to ptr
  %task84 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task84, align 8
  %pid85 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid85, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.31, i32 noundef %43) #8
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.body70
  %call89 = call i32 @ubifs_run_commit(ptr noundef %c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %do.body93, label %do.end88.cleanup_crit_edge

do.end88.cleanup_crit_edge:                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body93:                                        ; preds = %do.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_rcvry_gc_commit, %if.then105)) #8
          to label %do.end112 [label %if.then105], !srcloc !179

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  %44 = call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i223 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i223 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task107, align 8
  %pid108 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid108, align 8
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.32, i32 noundef %49, i32 noundef %51) #8
  br label %do.end112

do.end112:                                        ; preds = %if.then105, %do.body93
  %io_mutex = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 9
  %jhead = getelementptr inbounds %struct.ubifs_wbuf, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %jhead to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %jhead, align 4
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef %53) #8
  %call113 = call i32 @ubifs_garbage_collect_leb(ptr noundef %c, ptr noundef nonnull %lp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call113)
  %cmp114 = icmp sgt i32 %call113, -1
  br i1 %cmp114, label %if.then115, label %if.end120.thread

if.end120.thread:                                 ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br label %if.then123

if.then115:                                       ; preds = %do.end112
  %call116 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  call void @mutex_unlock(ptr noundef %io_mutex) #8
  br i1 %tobool117.not, label %if.then115.do.body128_crit_edge, label %if.end120

if.then115.do.body128_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body128

if.end120:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp122 = icmp slt i32 %call116, 0
  br i1 %cmp122, label %if.end120.if.then123_crit_edge, label %if.end120.do.body128_crit_edge

if.end120.do.body128_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body128

if.end120.if.then123_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then123

if.then123:                                       ; preds = %if.end120.if.then123_crit_edge, %if.end120.thread
  %err.1231 = phi i32 [ %call113, %if.end120.thread ], [ %call116, %if.end120.if.then123_crit_edge ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.33, i32 noundef %err.1231) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.1231)
  %cmp124 = icmp eq i32 %err.1231, -11
  %spec.select208 = select i1 %cmp124, i32 -22, i32 %err.1231
  br label %cleanup

do.body128:                                       ; preds = %if.end120.do.body128_crit_edge, %if.then115.do.body128_crit_edge
  %err.1235 = phi i32 [ %call116, %if.end120.do.body128_crit_edge ], [ %call113, %if.then115.do.body128_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %err.1235)
  %cond = icmp eq i32 %err.1235, 2
  br i1 %cond, label %if.end144, label %if.then138, !prof !181

if.then138:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 1208) #8
  br label %cleanup

if.end144:                                        ; preds = %do.body128
  %54 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gc_lnum, align 4
  %call146 = call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %do.body150, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body150:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_rcvry_gc_commit, %if.then162)) #8
          to label %cleanup [label %if.then162], !srcloc !179

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  %56 = call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i224 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i224 to ptr
  %task164 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task164 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task164, align 8
  %pid165 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid165 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid165, align 8
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.35, i32 noundef %61, i32 noundef %63) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then162, %do.body150, %if.end144.cleanup_crit_edge, %if.then138, %if.then123, %do.end88.cleanup_crit_edge, %do.end36, %if.end10.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ %call37, %do.end36 ], [ %spec.select208, %if.then123 ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call89, %do.end88.cleanup_crit_edge ], [ -22, %if.then138 ], [ %call146, %if.end144.cleanup_crit_edge ], [ 0, %if.then162 ], [ 0, %do.body150 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @grab_empty_leb(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ubifs_find_free_leb_for_idx(ptr noundef %c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.69) #8
  tail call void @ubifs_dump_lprops(ptr noundef %c) #8
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %c, ptr noundef %bi) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %call, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %0 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %gc_lnum, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grab_empty_leb.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@grab_empty_leb, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !179

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @grab_empty_leb.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.71, i32 noundef %6, i32 noundef %call) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end3
  %call11 = tail call i32 @ubifs_run_commit(ptr noundef %c) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call11, %do.end ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_dirty_leb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_run_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_garbage_collect_leb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_destroy_size_tree(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size_tree = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 192
  %call = tail call ptr @rb_first_postorder(ptr noundef %size_tree) #8
  %tobool2.not24 = icmp eq ptr %call, null
  br i1 %tobool2.not24, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %e.025 = phi ptr [ %call4, %land.rhs.land.rhs_crit_edge ], [ %call, %entry.land.rhs_crit_edge ]
  %call4 = tail call ptr @rb_next_postorder(ptr noundef nonnull %e.025) #8
  %inode = getelementptr inbounds %struct.size_entry, ptr %e.025, i32 0, i32 5
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  tail call void @iput(ptr noundef %1) #8
  tail call void @kfree(ptr noundef nonnull %e.025) #8
  %tobool2.not = icmp eq ptr %call4, null
  br i1 %tobool2.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %2 = ptrtoint ptr %size_tree to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %size_tree, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_recover_size_accum(ptr noundef %c, ptr nocapture noundef readonly %key, i32 noundef %deletion, i64 noundef %new_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 8
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %3, 29
  %4 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %shr.i, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 4, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deletion)
  %tobool.not = icmp eq i32 %deletion, 0
  %size_tree.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 192
  %5 = ptrtoint ptr %size_tree.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.014.i = load ptr, ptr %size_tree.i, align 4
  %tobool.not15.i = icmp eq ptr %p.014.i, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  br i1 %tobool.not15.i, label %if.then.cleanup_crit_edge, label %if.then.while.body.i.i_crit_edge

if.then.while.body.i.i_crit_edge:                 ; preds = %if.then
  br label %while.body.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.then.while.body.i.i_crit_edge
  %p.016.i.i = phi ptr [ %p.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %p.014.i, %if.then.while.body.i.i_crit_edge ]
  %inum1.i.i = getelementptr inbounds %struct.size_entry, ptr %p.016.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %inum1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inum1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp.i.i = icmp ugt i32 %7, %1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp3.i.i = icmp ult i32 %7, %1
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %p.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %8 = ptrtoint ptr %p.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.0.i.i = load ptr, ptr %p.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end6.i.i.cleanup_crit_edge, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rb_erase(ptr noundef nonnull %p.016.i.i, ptr noundef %size_tree.i) #8
  tail call void @kfree(ptr noundef nonnull %p.016.i.i) #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  br i1 %tobool.not15.i, label %if.else.while.end.i_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.while.end.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %p.016.i = phi ptr [ %p.0.i, %if.end6.i.while.body.i_crit_edge ], [ %p.014.i, %if.else.while.body.i_crit_edge ]
  %inum1.i = getelementptr inbounds %struct.size_entry, ptr %p.016.i, i32 0, i32 1
  %9 = ptrtoint ptr %inum1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp.i = icmp ugt i32 %10, %1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp3.i = icmp ult i32 %10, %1
  br i1 %cmp3.i, label %if.then4.i, label %if.then4

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.016.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %11 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.while.body.i66_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end6.i.while.body.i66_crit_edge:               ; preds = %if.end6.i
  br label %while.body.i66

if.then4:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_size = getelementptr inbounds %struct.size_entry, ptr %p.016.i, i32 0, i32 2
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %new_size, ptr %i_size, align 8
  %exists = getelementptr inbounds %struct.size_entry, ptr %p.016.i, i32 0, i32 4
  %13 = ptrtoint ptr %exists to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %exists, align 8
  br label %cleanup

while.body.i66:                                   ; preds = %while.body.i66.while.body.i66_crit_edge, %if.end6.i.while.body.i66_crit_edge
  %14 = phi ptr [ %18, %while.body.i66.while.body.i66_crit_edge ], [ %p.014.i, %if.end6.i.while.body.i66_crit_edge ]
  %inum1.i61 = getelementptr inbounds %struct.size_entry, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %inum1.i61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inum1.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp.i62 = icmp ugt i32 %16, %1
  %rb_left.i63 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  %rb_right.i64 = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  %p.1.i = select i1 %cmp.i62, ptr %rb_left.i63, ptr %rb_right.i64
  %17 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i65 = icmp eq ptr %18, null
  br i1 %tobool.not.i65, label %while.cond.while.end_crit_edge.i, label %while.body.i66.while.body.i66_crit_edge

while.body.i66.while.body.i66_crit_edge:          ; preds = %while.body.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i66

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i66
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %14 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.else.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.else.while.end.i_crit_edge ]
  %p.0.lcssa.i67 = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %size_tree.i, %if.else.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 40) #12
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %while.end.i.cleanup_crit_edge, label %add_ino.exit.thread

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

add_ino.exit.thread:                              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inum5.i = getelementptr inbounds %struct.size_entry, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %inum5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %1, ptr %inum5.i, align 4
  %i_size6.i = getelementptr inbounds %struct.size_entry, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %i_size6.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %new_size, ptr %i_size6.i, align 8
  %d_size7.i = getelementptr inbounds %struct.size_entry, ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %d_size7.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %d_size7.i, align 8
  %exists8.i = getelementptr inbounds %struct.size_entry, ptr %call7.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %exists8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %exists8.i, align 8
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i68 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %rb_right.i.i68 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_right.i.i68, align 4
  %rb_left.i.i69 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left.i.i69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_left.i.i69, align 8
  %27 = ptrtoint ptr %p.0.lcssa.i67 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i67, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %size_tree.i) #8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %size_tree.i70 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 192
  %28 = ptrtoint ptr %size_tree.i70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %p.014.i71 = load ptr, ptr %size_tree.i70, align 4
  %tobool.not15.i72 = icmp eq ptr %p.014.i71, null
  br i1 %tobool.not15.i72, label %sw.bb11.while.end.i104_crit_edge, label %sw.bb11.while.body.i76_crit_edge

sw.bb11.while.body.i76_crit_edge:                 ; preds = %sw.bb11
  br label %while.body.i76

sw.bb11.while.end.i104_crit_edge:                 ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i104

while.body.i76:                                   ; preds = %if.end6.i86.while.body.i76_crit_edge, %sw.bb11.while.body.i76_crit_edge
  %p.016.i73 = phi ptr [ %p.0.i84, %if.end6.i86.while.body.i76_crit_edge ], [ %p.014.i71, %sw.bb11.while.body.i76_crit_edge ]
  %inum1.i74 = getelementptr inbounds %struct.size_entry, ptr %p.016.i73, i32 0, i32 1
  %29 = ptrtoint ptr %inum1.i74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inum1.i74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %1)
  %cmp.i75 = icmp ugt i32 %30, %1
  br i1 %cmp.i75, label %if.then.i78, label %if.else.i80

if.then.i78:                                      ; preds = %while.body.i76
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i77 = getelementptr inbounds %struct.rb_node, ptr %p.016.i73, i32 0, i32 2
  br label %if.end6.i86

if.else.i80:                                      ; preds = %while.body.i76
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %1)
  %cmp3.i79 = icmp ult i32 %30, %1
  br i1 %cmp3.i79, label %if.then4.i82, label %if.then14

if.then4.i82:                                     ; preds = %if.else.i80
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i81 = getelementptr inbounds %struct.rb_node, ptr %p.016.i73, i32 0, i32 1
  br label %if.end6.i86

if.end6.i86:                                      ; preds = %if.then4.i82, %if.then.i78
  %p.1.in.i83 = phi ptr [ %rb_left.i77, %if.then.i78 ], [ %rb_right.i81, %if.then4.i82 ]
  %31 = ptrtoint ptr %p.1.in.i83 to i32
  call void @__asan_load4_noabort(i32 %31)
  %p.0.i84 = load ptr, ptr %p.1.in.i83, align 4
  %tobool.not.i85 = icmp eq ptr %p.0.i84, null
  br i1 %tobool.not.i85, label %if.end6.i86.while.body.i97_crit_edge, label %if.end6.i86.while.body.i76_crit_edge

if.end6.i86.while.body.i76_crit_edge:             ; preds = %if.end6.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i76

if.end6.i86.while.body.i97_crit_edge:             ; preds = %if.end6.i86
  br label %while.body.i97

if.then14:                                        ; preds = %if.else.i80
  %d_size = getelementptr inbounds %struct.size_entry, ptr %p.016.i73, i32 0, i32 3
  %32 = ptrtoint ptr %d_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %d_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %new_size)
  %cmp = icmp slt i64 %33, %new_size
  br i1 %cmp, label %if.then15, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %d_size to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %new_size, ptr %d_size, align 8
  br label %cleanup

while.body.i97:                                   ; preds = %while.body.i97.while.body.i97_crit_edge, %if.end6.i86.while.body.i97_crit_edge
  %35 = phi ptr [ %39, %while.body.i97.while.body.i97_crit_edge ], [ %p.014.i71, %if.end6.i86.while.body.i97_crit_edge ]
  %inum1.i91 = getelementptr inbounds %struct.size_entry, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %inum1.i91 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inum1.i91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %1)
  %cmp.i92 = icmp ugt i32 %37, %1
  %rb_left.i93 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 2
  %rb_right.i94 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1
  %p.1.i95 = select i1 %cmp.i92, ptr %rb_left.i93, ptr %rb_right.i94
  %38 = ptrtoint ptr %p.1.i95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p.1.i95, align 4
  %tobool.not.i96 = icmp eq ptr %39, null
  br i1 %tobool.not.i96, label %while.cond.while.end_crit_edge.i99, label %while.body.i97.while.body.i97_crit_edge

while.body.i97.while.body.i97_crit_edge:          ; preds = %while.body.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i97

while.cond.while.end_crit_edge.i99:               ; preds = %while.body.i97
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i98 = ptrtoint ptr %35 to i32
  br label %while.end.i104

while.end.i104:                                   ; preds = %while.cond.while.end_crit_edge.i99, %sw.bb11.while.end.i104_crit_edge
  %parent.0.lcssa.i100 = phi i32 [ %phi.cast.le.i98, %while.cond.while.end_crit_edge.i99 ], [ 0, %sw.bb11.while.end.i104_crit_edge ]
  %p.0.lcssa.i101 = phi ptr [ %p.1.i95, %while.cond.while.end_crit_edge.i99 ], [ %size_tree.i70, %sw.bb11.while.end.i104_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i102 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 40) #12
  %tobool2.not.i103 = icmp eq ptr %call7.i.i.i102, null
  br i1 %tobool2.not.i103, label %while.end.i104.cleanup_crit_edge, label %add_ino.exit113.thread

while.end.i104.cleanup_crit_edge:                 ; preds = %while.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

add_ino.exit113.thread:                           ; preds = %while.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  %inum5.i105 = getelementptr inbounds %struct.size_entry, ptr %call7.i.i.i102, i32 0, i32 1
  %41 = ptrtoint ptr %inum5.i105 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %1, ptr %inum5.i105, align 4
  %i_size6.i106 = getelementptr inbounds %struct.size_entry, ptr %call7.i.i.i102, i32 0, i32 2
  %42 = ptrtoint ptr %i_size6.i106 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %i_size6.i106, align 8
  %d_size7.i107 = getelementptr inbounds %struct.size_entry, ptr %call7.i.i.i102, i32 0, i32 3
  %43 = ptrtoint ptr %d_size7.i107 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %new_size, ptr %d_size7.i107, align 8
  %exists8.i108 = getelementptr inbounds %struct.size_entry, ptr %call7.i.i.i102, i32 0, i32 4
  %44 = ptrtoint ptr %exists8.i108 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %exists8.i108, align 8
  %45 = ptrtoint ptr %call7.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %parent.0.lcssa.i100, ptr %call7.i.i.i102, align 8
  %rb_right.i.i109 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i102, i32 0, i32 1
  %46 = ptrtoint ptr %rb_right.i.i109 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rb_right.i.i109, align 4
  %rb_left.i.i110 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i102, i32 0, i32 2
  %47 = ptrtoint ptr %rb_left.i.i110 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rb_left.i.i110, align 8
  %48 = ptrtoint ptr %p.0.lcssa.i101 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i.i102, ptr %p.0.lcssa.i101, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i102, ptr noundef %size_tree.i70) #8
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %size_tree.i114 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 192
  %49 = ptrtoint ptr %size_tree.i114 to i32
  call void @__asan_load4_noabort(i32 %49)
  %p.014.i115 = load ptr, ptr %size_tree.i114, align 4
  %tobool.not15.i116 = icmp eq ptr %p.014.i115, null
  br i1 %tobool.not15.i116, label %sw.bb24.cleanup_crit_edge, label %sw.bb24.while.body.i120_crit_edge

sw.bb24.while.body.i120_crit_edge:                ; preds = %sw.bb24
  br label %while.body.i120

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i120:                                  ; preds = %if.end6.i130.while.body.i120_crit_edge, %sw.bb24.while.body.i120_crit_edge
  %p.016.i117 = phi ptr [ %p.0.i128, %if.end6.i130.while.body.i120_crit_edge ], [ %p.014.i115, %sw.bb24.while.body.i120_crit_edge ]
  %inum1.i118 = getelementptr inbounds %struct.size_entry, ptr %p.016.i117, i32 0, i32 1
  %50 = ptrtoint ptr %inum1.i118 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %inum1.i118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %1)
  %cmp.i119 = icmp ugt i32 %51, %1
  br i1 %cmp.i119, label %if.then.i122, label %if.else.i124

if.then.i122:                                     ; preds = %while.body.i120
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i121 = getelementptr inbounds %struct.rb_node, ptr %p.016.i117, i32 0, i32 2
  br label %if.end6.i130

if.else.i124:                                     ; preds = %while.body.i120
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %1)
  %cmp3.i123 = icmp ult i32 %51, %1
  br i1 %cmp3.i123, label %if.then4.i126, label %if.then27

if.then4.i126:                                    ; preds = %if.else.i124
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i125 = getelementptr inbounds %struct.rb_node, ptr %p.016.i117, i32 0, i32 1
  br label %if.end6.i130

if.end6.i130:                                     ; preds = %if.then4.i126, %if.then.i122
  %p.1.in.i127 = phi ptr [ %rb_left.i121, %if.then.i122 ], [ %rb_right.i125, %if.then4.i126 ]
  %52 = ptrtoint ptr %p.1.in.i127 to i32
  call void @__asan_load4_noabort(i32 %52)
  %p.0.i128 = load ptr, ptr %p.1.in.i127, align 4
  %tobool.not.i129 = icmp eq ptr %p.0.i128, null
  br i1 %tobool.not.i129, label %if.end6.i130.cleanup_crit_edge, label %if.end6.i130.while.body.i120_crit_edge

if.end6.i130.while.body.i120_crit_edge:           ; preds = %if.end6.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i120

if.end6.i130.cleanup_crit_edge:                   ; preds = %if.end6.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.else.i124
  call void @__sanitizer_cov_trace_pc() #10
  %d_size28 = getelementptr inbounds %struct.size_entry, ptr %p.016.i117, i32 0, i32 3
  %53 = ptrtoint ptr %d_size28 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %new_size, ptr %d_size28, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end6.i130.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %add_ino.exit113.thread, %while.end.i104.cleanup_crit_edge, %if.then15, %if.then14.cleanup_crit_edge, %add_ino.exit.thread, %while.end.i.cleanup_crit_edge, %if.then4, %if.end.i, %if.end6.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.end.i.cleanup_crit_edge ], [ -12, %while.end.i104.cleanup_crit_edge ], [ 0, %add_ino.exit113.thread ], [ 0, %add_ino.exit.thread ], [ 0, %if.end.i ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.then15 ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb24.cleanup_crit_edge ], [ 0, %if.end6.i.i.cleanup_crit_edge ], [ 0, %if.end6.i130.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_recover_size(ptr noundef %c, i1 noundef zeroext %in_place) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size_tree = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 192
  %call = tail call ptr @rb_first(ptr noundef %size_tree) #8
  %tobool.not114 = icmp eq ptr %call, null
  br i1 %tobool.not114, label %entry.cleanup68_crit_edge, label %while.body.lr.ph

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  br label %while.body

while.body:                                       ; preds = %cleanup64.while.body_crit_edge, %while.body.lr.ph
  %this.0115 = phi ptr [ %call, %while.body.lr.ph ], [ %call1, %cleanup64.while.body_crit_edge ]
  %call1 = call ptr @rb_next(ptr noundef nonnull %this.0115) #8
  %exists = getelementptr inbounds %struct.size_entry, ptr %this.0115, i32 0, i32 4
  %0 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exists, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.then, label %while.body.land.lhs.true29_crit_edge

while.body.land.lhs.true29_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true29

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  %inum = getelementptr inbounds %struct.size_entry, ptr %this.0115, i32 0, i32 1
  %2 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inum, align 4
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %key, align 8
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx1.i, align 4
  %6 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sbuf, align 8
  %call.i = call i32 @ubifs_tnc_locate(ptr noundef %c, ptr noundef nonnull %key, ptr noundef %7, ptr noundef null, ptr noundef null) #8
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call.i, label %if.then.cleanup.thread_crit_edge [
    i32 -2, label %do.body
    i32 0, label %if.else
  ]

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_recover_size.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_recover_size, %if.then14)) #8
          to label %do.end [label %if.then14], !srcloc !179

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call i32 @llvm.read_register.i32(metadata !169) #8
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
  %15 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inum, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_recover_size.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.37, i32 noundef %14, i32 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %17 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inum, align 4
  %call19 = call i32 @ubifs_tnc_remove_ino(ptr noundef %c, i32 noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end.if.end26_crit_edge, label %do.end.cleanup.thread_crit_edge

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sbuf, align 8
  %21 = ptrtoint ptr %exists to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %exists, align 8
  %size = getelementptr inbounds %struct.ubifs_ino_node, ptr %20, i32 0, i32 3
  %22 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %size, align 1
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %i_size = getelementptr inbounds %struct.size_entry, ptr %this.0115, i32 0, i32 2
  %25 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %i_size, align 8
  br label %if.end26

cleanup.thread:                                   ; preds = %do.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call19, %do.end.cleanup.thread_crit_edge ], [ %call.i, %if.then.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  br label %cleanup68

if.end26:                                         ; preds = %if.else, %do.end.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  %26 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %exists, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool28.not = icmp eq i32 %.pr, 0
  br i1 %tobool28.not, label %if.end26.if.end62_crit_edge, label %if.end26.land.lhs.true29_crit_edge

if.end26.land.lhs.true29_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true29

if.end26.if.end62_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true29:                                  ; preds = %if.end26.land.lhs.true29_crit_edge, %while.body.land.lhs.true29_crit_edge
  %i_size30 = getelementptr inbounds %struct.size_entry, ptr %this.0115, i32 0, i32 2
  %27 = ptrtoint ptr %i_size30 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size30, align 8
  %d_size = getelementptr inbounds %struct.size_entry, ptr %this.0115, i32 0, i32 3
  %29 = ptrtoint ptr %d_size to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %d_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp31 = icmp slt i64 %28, %30
  br i1 %cmp31, label %do.body33, label %land.lhs.true29.if.end62_crit_edge

land.lhs.true29.if.end62_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.body33:                                        ; preds = %land.lhs.true29
  %31 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %ro_mount, align 8
  %32 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool34.not = icmp ne i8 %32, 0
  %spec.select = and i1 %tobool34.not, %in_place
  br i1 %spec.select, label %if.then46, label %do.body33.do.end49_crit_edge, !prof !180

do.body33.do.end49_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

if.then46:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 1563) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %do.body33.do.end49_crit_edge
  br i1 %in_place, label %if.then51, label %if.else56

if.then51:                                        ; preds = %do.end49
  %call52 = call fastcc i32 @fix_size_in_place(ptr noundef %c, ptr noundef nonnull %this.0115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then51.cleanup68_crit_edge

if.then51.cleanup68_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end55:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %inode = getelementptr inbounds %struct.size_entry, ptr %this.0115, i32 0, i32 5
  %33 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inode, align 4
  call void @iput(ptr noundef %34) #8
  br label %if.end62

if.else56:                                        ; preds = %do.end49
  %call57 = call fastcc i32 @inode_fix_size(ptr noundef %c, ptr noundef nonnull %this.0115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.else56.cleanup64_crit_edge, label %if.else56.cleanup68_crit_edge

if.else56.cleanup68_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.else56.cleanup64_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end62:                                         ; preds = %if.end55, %land.lhs.true29.if.end62_crit_edge, %if.end26.if.end62_crit_edge
  call void @rb_erase(ptr noundef nonnull %this.0115, ptr noundef %size_tree) #8
  call void @kfree(ptr noundef nonnull %this.0115) #8
  br label %cleanup64

cleanup64:                                        ; preds = %if.end62, %if.else56.cleanup64_crit_edge
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cleanup64.cleanup68_crit_edge, label %cleanup64.while.body_crit_edge

cleanup64.while.body_crit_edge:                   ; preds = %cleanup64
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup64.cleanup68_crit_edge:                    ; preds = %cleanup64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

cleanup68:                                        ; preds = %cleanup64.cleanup68_crit_edge, %if.else56.cleanup68_crit_edge, %if.then51.cleanup68_crit_edge, %cleanup.thread, %entry.cleanup68_crit_edge
  %retval.4 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup68_crit_edge ], [ 0, %cleanup64.cleanup68_crit_edge ], [ %call52, %if.then51.cleanup68_crit_edge ], [ %call57, %if.else56.cleanup68_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_ino(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fix_size_in_place(ptr noundef %c, ptr nocapture noundef readonly %e) unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  %lnum = alloca i32, align 4
  %offs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %0 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbuf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lnum) #8
  %2 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lnum, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #8
  %3 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %offs, align 4, !annotation !182
  %inum = getelementptr inbounds %struct.size_entry, ptr %e, i32 0, i32 1
  %4 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inum, align 4
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx1.i, align 4
  %call = call i32 @ubifs_tnc_locate(ptr noundef %c, ptr noundef nonnull %key, ptr noundef %1, ptr noundef nonnull %lnum, ptr noundef nonnull %offs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %size, align 1
  %10 = call i64 @llvm.bswap.i64(i64 %9)
  %d_size = getelementptr inbounds %struct.size_entry, ptr %e, i32 0, i32 3
  %11 = ptrtoint ptr %d_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %d_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.not = icmp slt i64 %10, %12
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %13 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lnum, align 4
  %15 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sbuf, align 8
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %17 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %leb_size, align 8
  %call4 = call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %14, ptr noundef %16, i32 noundef 0, i32 noundef %18, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.out_crit_edge

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end2
  %19 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sbuf, align 8
  %21 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offs, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %22
  %23 = ptrtoint ptr %d_size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %d_size, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  %size10 = getelementptr inbounds %struct.ubifs_ino_node, ptr %add.ptr, i32 0, i32 3
  %26 = ptrtoint ptr %size10 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %size10, align 1
  %len11 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 3
  %27 = ptrtoint ptr %len11 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %len11, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 8
  %sub = add i32 %29, -8
  %call13 = call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr12, i32 noundef %sub) #13
  %30 = call i32 @llvm.bswap.i32(i32 %call13)
  %crc15 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 1
  %31 = ptrtoint ptr %crc15 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %crc15, align 1
  %32 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sbuf, align 8
  %34 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %leb_size, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end7
  %len.0.in = phi i32 [ %35, %if.end7 ], [ %len.0, %while.cond.while.cond_crit_edge ]
  %len.0 = add i32 %len.0.in, -1
  %arrayidx = getelementptr i8, ptr %33, i32 %len.0
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %cmp19 = icmp eq i8 %37, -1
  br i1 %cmp19, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %38 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %min_io_size, align 8
  %add23 = add i32 %39, %len.0
  %neg = sub i32 0, %39
  %and = and i32 %add23, %neg
  %40 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lnum, align 4
  %call27 = call i32 @ubifs_leb_change(ptr noundef %c, i32 noundef %41, ptr noundef %33, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fix_size_in_place.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fix_size_in_place, %if.then35)) #8
          to label %cleanup [label %if.then35], !srcloc !179

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %42 = call i32 @llvm.read_register.i32(metadata !169) #8
  %and.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid, align 8
  %48 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %inum, align 4
  %50 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lnum, align 4
  %52 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offs, align 4
  %54 = ptrtoint ptr %d_size to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %d_size, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fix_size_in_place.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.73, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i64 noundef %10, i64 noundef %55) #8
  br label %cleanup

out:                                              ; preds = %while.end.out_crit_edge, %if.end2.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end2.out_crit_edge ], [ %call27, %while.end.out_crit_edge ]
  %56 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %inum, align 4
  %i_size41 = getelementptr inbounds %struct.size_entry, ptr %e, i32 0, i32 2
  %58 = ptrtoint ptr %i_size41 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_size41, align 8
  %d_size42 = getelementptr inbounds %struct.size_entry, ptr %e, i32 0, i32 3
  %60 = ptrtoint ptr %d_size42 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %d_size42, align 8
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.74, i32 noundef %57, i64 noundef %59, i64 noundef %61, i32 noundef %err.0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then35, %do.body, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lnum) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inode_fix_size(ptr noundef %c, ptr noundef %e) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %0 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ro_mount, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.body:                                          ; preds = %entry
  %inode1 = getelementptr inbounds %struct.size_entry, ptr %e, i32 0, i32 5
  %2 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.body.if.end8_crit_edge, label %if.then7, !prof !181

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.2, i32 noundef 1465) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  %inode9 = getelementptr inbounds %struct.size_entry, ptr %e, i32 0, i32 5
  %4 = ptrtoint ptr %inode9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode9, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.else, label %if.end8.if.end42_crit_edge

if.end8.if.end42_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.else:                                          ; preds = %if.end8
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 8
  %inum = getelementptr inbounds %struct.size_entry, ptr %e, i32 0, i32 1
  %8 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inum, align 4
  %call = tail call ptr @ubifs_iget(ptr noundef %7, i32 noundef %9) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size, align 8
  %d_size = getelementptr inbounds %struct.size_entry, ptr %e, i32 0, i32 3
  %13 = ptrtoint ptr %d_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %d_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp.not = icmp slt i64 %12, %14
  br i1 %cmp.not, label %do.body19, label %if.then17

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iput(ptr noundef %call) #8
  br label %cleanup

do.body19:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inode_fix_size.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inode_fix_size, %if.then28)) #8
          to label %do.end35 [label %if.then28], !srcloc !179

if.then28:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.read_register.i32(metadata !169) #8
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
  %21 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inum, align 4
  %23 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size, align 8
  %25 = ptrtoint ptr %d_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %d_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inode_fix_size.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.77, i32 noundef %20, i32 noundef %22, i64 noundef %24, i64 noundef %26) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then28, %do.body19
  %27 = ptrtoint ptr %d_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %d_size, align 8
  %29 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %i_size, align 8
  %30 = load i64, ptr %d_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 11
  %31 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %ui_size, align 8
  %32 = load i64, ptr %d_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 10
  %33 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %synced_i_size, align 8
  %34 = ptrtoint ptr %inode9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %inode9, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.end35, %if.end8.if.end42_crit_edge
  %inode.0 = phi ptr [ %call, %do.end35 ], [ %5, %if.end8.if.end42_crit_edge ]
  %35 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load44 = load i8, ptr %ro_mount, align 8
  %36 = and i8 %bf.load44, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool48.not = icmp eq i8 %36, 0
  br i1 %tobool48.not, label %if.end50, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  %call51 = tail call i32 @ubifs_jnl_write_inode(ptr noundef %c, ptr noundef %inode.0) #8
  tail call void @iput(ptr noundef %inode.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %size_tree = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 192
  tail call void @rb_erase(ptr noundef %e, ptr noundef %size_tree) #8
  tail call void @kfree(ptr noundef %e) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end50.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then17, %if.then14
  %retval.0 = phi i32 [ 0, %if.end54 ], [ %10, %if.then14 ], [ 0, %if.then17 ], [ 0, %if.end42.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_prepare_node_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_check_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_free_leb_for_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_write_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !66, !68, !69, !71, !72, !74, !76, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !131, !133, !135, !136, !138, !140, !141, !142, !144, !145, !146, !148, !150, !151, !153, !155, !156, !157, !159, !160, !161, !163, !165, !167, !168}
!llvm.named.register.sp = !{!169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/recovery.c", i32 234, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubifs_recover_master_node.__UNIQUE_ID_ddebug281, !1, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/recovery.c", i32 252, i32 4}
!8 = !{ptr @ubifs_recover_master_node.__UNIQUE_ID_ddebug282, !7, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/recovery.c", i32 297, i32 15}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/recovery.c", i32 352, i32 15}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/recovery.c", i32 354, i32 16}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ubifs/recovery.c", i32 358, i32 16}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ubifs/recovery.c", i32 630, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ubifs_recover_leb.__UNIQUE_ID_ddebug290, !18, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/recovery.c", i32 636, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/recovery.c", i32 638, i32 3}
!25 = !{ptr @ubifs_recover_leb.__UNIQUE_ID_ddebug291, !24, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/recovery.c", i32 669, i32 4}
!28 = !{ptr @ubifs_recover_leb.__UNIQUE_ID_ddebug292, !27, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ubifs/recovery.c", i32 673, i32 17}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/recovery.c", i32 693, i32 17}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ubifs/recovery.c", i32 779, i32 15}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/recovery.c", i32 785, i32 15}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ubifs/recovery.c", i32 862, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ubifs_recover_log_leb.__UNIQUE_ID_ddebug295, !38, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/recovery.c", i32 890, i32 18}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ubifs/recovery.c", i32 958, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/recovery.c", i32 960, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ubifs_recover_inl_heads.__UNIQUE_ID_ddebug297, !46, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/recovery.c", i32 965, i32 2}
!51 = !{ptr @ubifs_recover_inl_heads.__UNIQUE_ID_ddebug298, !50, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/recovery.c", i32 1077, i32 2}
!54 = !{ptr @ubifs_clean_lebs.__UNIQUE_ID_ddebug301, !53, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/recovery.c", i32 1164, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug303, !56, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/recovery.c", i32 1175, i32 3}
!61 = !{ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug304, !60, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ubifs/recovery.c", i32 1179, i32 2}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/recovery.c", i32 1180, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ubifs/recovery.c", i32 1186, i32 2}
!68 = !{ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug305, !67, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/recovery.c", i32 1191, i32 2}
!71 = !{ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug306, !70, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ubifs/recovery.c", i32 1202, i32 16}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ubifs/recovery.c", i32 1208, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/recovery.c", i32 1216, i32 2}
!78 = !{ptr @ubifs_rcvry_gc_commit.__UNIQUE_ID_ddebug307, !77, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ubifs/recovery.c", i32 1549, i32 5}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ubifs_recover_size.__UNIQUE_ID_ddebug310, !80, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ubifs/recovery.c", i32 1563, i32 4}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ubifs/recovery.c", i32 152, i32 4}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @get_master_node.__UNIQUE_ID_ddebug276, !86, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ubifs/recovery.c", i32 163, i32 4}
!91 = !{ptr @get_master_node.__UNIQUE_ID_ddebug279, !90, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ubifs/recovery.c", i32 198, i32 2}
!94 = !{ptr @write_rcvrd_mst_node.__UNIQUE_ID_ddebug280, !93, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ubifs/recovery.c", i32 473, i32 3}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @no_more_nodes.__UNIQUE_ID_ddebug284, !96, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ubifs/recovery.c", i32 481, i32 2}
!101 = !{ptr @no_more_nodes.__UNIQUE_ID_ddebug285, !100, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ubifs/recovery.c", i32 574, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @drop_last_group.__UNIQUE_ID_ddebug288, !103, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ubifs/recovery.c", i32 599, i32 3}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @drop_last_node.__UNIQUE_ID_ddebug289, !107, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ubifs/recovery.c", i32 434, i32 2}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @clean_buf.__UNIQUE_ID_ddebug283, !111, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ubifs/recovery.c", i32 436, i32 2}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ubifs/recovery.c", i32 509, i32 3}
!118 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @fix_unclean_leb.__UNIQUE_ID_ddebug286, !117, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ubifs/recovery.c", i32 521, i32 3}
!122 = !{ptr @fix_unclean_leb.__UNIQUE_ID_ddebug287, !121, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ubifs/recovery.c", i32 805, i32 2}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @get_cs_sqnum.__UNIQUE_ID_ddebug293, !124, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ubifs/recovery.c", i32 817, i32 16}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ubifs/recovery.c", i32 821, i32 16}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ubifs/recovery.c", i32 825, i32 16}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ubifs/recovery.c", i32 831, i32 2}
!135 = !{ptr @get_cs_sqnum.__UNIQUE_ID_ddebug294, !134, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ubifs/recovery.c", i32 838, i32 15}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ubifs/recovery.c", i32 925, i32 3}
!140 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @recover_head.__UNIQUE_ID_ddebug296, !139, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ubifs/recovery.c", i32 988, i32 2}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @clean_an_unclean_leb.__UNIQUE_ID_ddebug299, !143, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ubifs/recovery.c", i32 1028, i32 17}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ubifs/recovery.c", i32 1059, i32 2}
!150 = !{ptr @clean_an_unclean_leb.__UNIQUE_ID_ddebug300, !149, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ubifs/recovery.c", i32 1122, i32 16}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ubifs/recovery.c", i32 1135, i32 2}
!155 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @grab_empty_leb.__UNIQUE_ID_ddebug302, !154, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ubifs/recovery.c", i32 1443, i32 2}
!159 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @fix_size_in_place.__UNIQUE_ID_ddebug308, !158, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ubifs/recovery.c", i32 1448, i32 16}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ubifs/recovery.c", i32 1465, i32 3}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ubifs/recovery.c", i32 1484, i32 3}
!167 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @inode_fix_size.__UNIQUE_ID_ddebug309, !166, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!169 = !{!"sp"}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 2148249909, i64 2148249914, i64 2148249927, i64 2148249971, i64 2148250005, i64 2148250026}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{!"auto-init"}
