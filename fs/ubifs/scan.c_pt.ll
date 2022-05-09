; ModuleID = '/llk/IR_all_yes/fs/ubifs/scan.c_pt.bc'
source_filename = "../fs/ubifs/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.ubifs_pad_node = type <{ %struct.ubifs_ch, i32 }>
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }

@ubifs_scan_a_node.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_scan_a_node\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/scan.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG scan (pid %d): hit empty space at LEB %d:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@ubifs_scan_a_node.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG scan (pid %d): scanning %s at LEB %d:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bad pad node at LEB %d:%d\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad padding length %d - %d\00", [37 x i8] zeroinitializer }, align 32
@ubifs_scan_a_node.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"UBIFS DBG scan (pid %d): %d bytes padded at LEB %d:%d, offset now %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ubifs_start_scan.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_start_scan\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG scan (pid %d): scan LEB %d:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cannot read %d bytes from LEB %d:%d, error %d\00", [50 x i8] zeroinitializer }, align 32
@ubifs_end_scan.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubifs_end_scan\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG scan (pid %d): stop scanning LEB %d at offset %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"offs % c->min_io_size == 0\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"corruption at LEB %d:%d\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"first %d bytes from LEB %d:%d\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ubifs_scan.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ubifs_scan\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG scan (pid %d): look at LEB %d:%d (%d bytes left)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"garbage\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad node\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"empty space starts at non-aligned offset %d\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"corrupt empty space at LEB %d:%d\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LEB %d scanning failed\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LEB %d scanning failed, error %d\00", [63 x i8] zeroinitializer }, align 32
@scan_padding_bytes.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scan_padding_bytes\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UBIFS DBG scan (pid %d): not a node\0A\00", [59 x i8] zeroinitializer }, align 32
@scan_padding_bytes.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG scan (pid %d): %d padding bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 823660550, i64 4294967295]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967292, i64 4294967293, i64 4294967294, i64 4294967295]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 66, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 76, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 91, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 101, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 106, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 131, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 143, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 166, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 167, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 230, i32 15 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 234, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 235, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 235, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 269, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 289, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 295, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 298, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 315, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 328, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 338, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 345, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 33, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [19 x i8] c"../fs/ubifs/scan.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 41, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_scan_a_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef %quiet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then8 [
    i32 -1, label %do.body
    i32 823660550, label %if.end10
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_scan_a_node.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_scan_a_node, %if.then4)) #5
          to label %cleanup91 [label %if.then4], !srcloc !71

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %3 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_scan_a_node.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.3, i32 noundef %8, i32 noundef %lnum, i32 noundef %offs) #5
  br label %cleanup91

if.then8:                                         ; preds = %entry
  %9 = tail call i32 @llvm.smin.i32(i32 %len, i32 28) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_padding_bytes.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_scan_a_node, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !71

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scan_padding_bytes.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.28, i32 noundef %15) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp546.i = icmp sgt i32 %len, 0
  br i1 %cmp546.i, label %land.rhs.preheader.i, label %do.end.i.cleanup91_crit_edge

do.end.i.cleanup91_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

land.rhs.preheader.i:                             ; preds = %do.end.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %9, i32 1) #5
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %pad_len.048.i = phi i32 [ %add.i, %while.body.i.land.rhs.i_crit_edge ], [ 0, %land.rhs.preheader.i ]
  %p.047.i = phi ptr [ %incdec.ptr.i, %while.body.i.land.rhs.i_crit_edge ], [ %buf, %land.rhs.preheader.i ]
  %16 = ptrtoint ptr %p.047.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p.047.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -50, i8 %17)
  %cmp6.i = icmp eq i8 %17, -50
  br i1 %cmp6.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, ptr %p.047.i, i32 1
  %add.i = add nuw nsw i32 %pad_len.048.i, 1
  %exitcond.not.i = icmp eq i32 %add.i, %smax.i
  br i1 %exitcond.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %pad_len.0.lcssa.i = phi i32 [ %pad_len.048.i, %land.rhs.i.while.end.i_crit_edge ], [ %smax.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pad_len.0.lcssa.i)
  %tobool8.not.i = icmp ne i32 %pad_len.0.lcssa.i, 0
  %and.i139 = and i32 %pad_len.0.lcssa.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool9.not.i = icmp eq i32 %and.i139, 0
  %or.cond.i = and i1 %tobool8.not.i, %tobool9.not.i
  br i1 %or.cond.i, label %do.body12.i, label %while.end.i.cleanup91_crit_edge

while.end.i.cleanup91_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

do.body12.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_padding_bytes.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_scan_a_node, %if.then24.i)) #5
          to label %cleanup91 [label %if.then24.i], !srcloc !71

if.then24.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i43.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i43.i to ptr
  %task26.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task26.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task26.i, align 8
  %pid27.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid27.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid27.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scan_padding_bytes.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.29, i32 noundef %23, i32 noundef %pad_len.0.lcssa.i) #5
  br label %cleanup91

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp11 = icmp ult i32 %len, 24
  br i1 %cmp11, label %if.end10.cleanup91_crit_edge, label %do.body14

if.end10.cleanup91_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

do.body14:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_scan_a_node.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_scan_a_node, %if.then26)) #5
          to label %do.end33 [label %if.then26], !srcloc !71

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i141 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i141 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task28, align 8
  %pid29 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid29, align 8
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %30 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %node_type, align 1
  %conv = zext i8 %31 to i32
  %call30 = tail call ptr @dbg_ntype(i32 noundef %conv) #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_scan_a_node.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.4, i32 noundef %29, ptr noundef %call30, i32 noundef %lnum, i32 noundef %offs) #5
  br label %do.end33

do.end33:                                         ; preds = %if.then26, %do.body14
  %call34 = tail call i32 @ubifs_check_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs, i32 noundef %quiet, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %do.end33.cleanup91_crit_edge

do.end33.cleanup91_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

if.end37:                                         ; preds = %do.end33
  %node_type38 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %32 = ptrtoint ptr %node_type38 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %node_type38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp40 = icmp eq i8 %33, 5
  br i1 %cmp40, label %if.then42, label %if.end37.cleanup91_crit_edge

if.end37.cleanup91_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

if.then42:                                        ; preds = %if.end37
  %pad_len43 = getelementptr inbounds %struct.ubifs_pad_node, ptr %buf, i32 0, i32 1
  %34 = ptrtoint ptr %pad_len43 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %pad_len43, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp45 = icmp slt i32 %36, 0
  br i1 %cmp45, label %if.then42.if.then50_crit_edge, label %lor.lhs.false

if.then42.if.then50_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

lor.lhs.false:                                    ; preds = %if.then42
  %len44 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %37 = ptrtoint ptr %len44 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %len44, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %add = add i32 %39, %36
  %add47 = add i32 %add, %offs
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %40 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add47, i32 %41)
  %cmp48 = icmp sgt i32 %add47, %41
  br i1 %cmp48, label %lor.lhs.false.if.then50_crit_edge, label %if.end54

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %if.then42.if.then50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool51.not = icmp eq i32 %quiet, 0
  br i1 %tobool51.not, label %if.then52, label %if.then50.cleanup91_crit_edge

if.then50.cleanup91_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.5, i32 noundef %lnum, i32 noundef %offs) #5
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %buf, i32 noundef %len) #5
  br label %cleanup91

if.end54:                                         ; preds = %lor.lhs.false
  %and = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %do.body64, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool58.not = icmp eq i32 %quiet, 0
  br i1 %tobool58.not, label %if.then59, label %if.then57.cleanup91_crit_edge

if.then57.cleanup91_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.6, i32 noundef %offs, i32 noundef %add47) #5
  br label %cleanup91

do.body64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_scan_a_node.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_scan_a_node, %if.then76)) #5
          to label %cleanup91 [label %if.then76], !srcloc !71

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  %42 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i142 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i142 to ptr
  %task78 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task78, align 8
  %pid79 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid79, align 8
  %add82 = add i32 %add47, 7
  %and83 = and i32 %add82, -8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_scan_a_node.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.7, i32 noundef %47, i32 noundef %36, i32 noundef %lnum, i32 noundef %offs, i32 noundef %and83) #5
  br label %cleanup91

cleanup91:                                        ; preds = %if.then76, %do.body64, %if.then59, %if.then57.cleanup91_crit_edge, %if.then52, %if.then50.cleanup91_crit_edge, %if.end37.cleanup91_crit_edge, %do.end33.cleanup91_crit_edge, %if.end10.cleanup91_crit_edge, %if.then24.i, %do.body12.i, %while.end.i.cleanup91_crit_edge, %do.end.i.cleanup91_crit_edge, %if.then4, %do.body
  %retval.1 = phi i32 [ -1, %if.then4 ], [ 0, %if.end10.cleanup91_crit_edge ], [ -3, %do.end33.cleanup91_crit_edge ], [ -4, %if.then52 ], [ -4, %if.then50.cleanup91_crit_edge ], [ -4, %if.then59 ], [ -4, %if.then57.cleanup91_crit_edge ], [ %add, %if.then76 ], [ -2, %if.end37.cleanup91_crit_edge ], [ -1, %do.body ], [ 0, %while.end.i.cleanup91_crit_edge ], [ %pad_len.0.lcssa.i, %if.then24.i ], [ %pad_len.0.lcssa.i, %do.body12.i ], [ 0, %do.end.i.cleanup91_crit_edge ], [ %add, %do.body64 ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_ntype(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_check_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_start_scan(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef %sbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_start_scan.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_start_scan, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #5
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_start_scan.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.9, i32 noundef %5, i32 noundef %lnum, i32 noundef %offs) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3392, i32 noundef 24) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lnum, ptr %call7.i.i, align 8
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %nodes, ptr %nodes, align 8
  %prev.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %nodes, ptr %prev.i, align 4
  %buf = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sbuf, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %sbuf, i32 %offs
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %11 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %leb_size, align 8
  %sub = sub i32 %12, %offs
  %call10 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %lnum, ptr noundef %add.ptr, i32 noundef %offs, i32 noundef %sub, i32 noundef 0) #5
  %13 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call10, label %if.then12 [
    i32 0, label %if.end8.cleanup_crit_edge
    i32 -74, label %if.end8.cleanup_crit_edge39
  ]

if.end8.cleanup_crit_edge39:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %leb_size, align 8
  %sub14 = sub i32 %15, %offs
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.10, i32 noundef %sub14, i32 noundef %lnum, i32 noundef %offs, i32 noundef %call10) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %16 = inttoptr i32 %call10 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %if.end8.cleanup_crit_edge39, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.then12 ], [ %call7.i.i, %if.end8.cleanup_crit_edge ], [ %call7.i.i, %if.end8.cleanup_crit_edge39 ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_end_scan(ptr noundef %c, ptr nocapture noundef writeonly %sleb, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_end_scan.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_end_scan, %if.then)) #5
          to label %do.body4 [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #5
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_end_scan.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %lnum, i32 noundef %offs) #5
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %6 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %offs, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %do.body4.do.end15_crit_edge, label %if.then13, !prof !72

do.body4.do.end15_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

if.then13:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 167) #5
  br label %do.end15

do.end15:                                         ; preds = %if.then13, %do.body4.do.end15_crit_edge
  %8 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_io_size, align 8
  %sub = add i32 %offs, -1
  %add = add i32 %sub, %9
  %neg = sub i32 0, %9
  %and = and i32 %add, %neg
  %endpt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 3
  %10 = ptrtoint ptr %endpt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %endpt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_add_snod(ptr nocapture readnone %c, ptr noundef %sleb, ptr noundef %buf, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 2
  %1 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %sqnum, align 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %sqnum1 = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %sqnum1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %sqnum1, align 8
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %5 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %node_type, align 1
  %conv = zext i8 %6 to i32
  %type = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %type, align 8
  %offs2 = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %offs2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %offs, ptr %offs2, align 4
  %len = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %9 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %len, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %len3 = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i, i32 0, i32 5
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len3, align 8
  %node = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i, i32 0, i32 6
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %node, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %switch = icmp ult i8 %6, 4
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %key = getelementptr inbounds %struct.ubifs_ino_node, ptr %buf, i32 0, i32 1
  %key6 = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %17 = ptrtoint ptr %key6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %key6, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_ino_node, ptr %buf, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %key7 = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %key7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -559038801, ptr %key7, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %.sink = phi i32 [ 4, %sw.default ], [ %20, %sw.bb ]
  %22 = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i, i32 0, i32 1
  %arrayidx1.i = getelementptr [2 x i32], ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %arrayidx1.i, align 4
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %25, ptr noundef %nodes) #5
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_add_tail.exit_crit_edge

sw.epilog.list_add_tail.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %prev.i, align 4
  %27 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %nodes, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_add_tail.exit_crit_edge
  %nodes_cnt = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 1
  %30 = ptrtoint ptr %nodes_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nodes_cnt, align 4
  %add = add i32 %31, 1
  store i32 %add, ptr %nodes_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_scanned_corruption(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.14, i32 noundef %lnum, i32 noundef %offs) #5
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %0 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leb_size, align 8
  %sub = sub i32 %1, %offs
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 8192)
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.15, i32 noundef %2, i32 noundef %lnum, i32 noundef %offs) #5
  tail call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef %buf, i32 noundef %2, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_scan(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef %sbuf, i32 noundef %quiet) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sbuf, i32 %offs
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %0 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leb_size, align 8
  %sub = sub i32 %1, %offs
  %call = tail call ptr @ubifs_start_scan(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs, ptr noundef %sbuf)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup61_crit_edge, label %while.cond.preheader

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub)
  %cmp207 = icmp sgt i32 %sub, 7
  br i1 %cmp207, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %nodes.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call, i32 0, i32 2, i32 1
  %nodes_cnt.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offs.addr.0212 = phi i32 [ %offs, %while.body.lr.ph ], [ %offs.addr.1, %cleanup.while.body_crit_edge ]
  %buf.0210 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %buf.1, %cleanup.while.body_crit_edge ]
  %len.0208 = phi i32 [ %sub, %while.body.lr.ph ], [ %len.1, %cleanup.while.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_scan.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_scan, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !71

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #5
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_scan.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.19, i32 noundef %7, i32 noundef %lnum, i32 noundef %offs.addr.0212, i32 noundef %len.0208) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %while.body
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 272, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %call10 = tail call i32 @ubifs_scan_a_node(ptr noundef %c, ptr noundef %buf.0210, i32 noundef %len.0208, i32 noundef %lnum, i32 noundef %offs.addr.0212, i32 noundef %quiet)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %do.end.cleanup_crit_edge, label %if.end15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %8 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call10, label %sw.default [
    i32 -1, label %if.end15.while.end_crit_edge
    i32 0, label %if.end15.corrupted_crit_edge
    i32 -2, label %sw.epilog
    i32 -3, label %if.end15.corrupted.loopexit287_crit_edge
    i32 -4, label %if.end15.corrupted.loopexit287_crit_edge313
  ]

if.end15.corrupted.loopexit287_crit_edge313:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %corrupted.loopexit287

if.end15.corrupted.loopexit287_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %corrupted.loopexit287

if.end15.corrupted_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %corrupted

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.22) #5
  br label %error

sw.epilog:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3136, i32 noundef 40) #8
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.error_crit_edge, label %if.end.i

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end.i:                                         ; preds = %sw.epilog
  %sqnum.i = getelementptr inbounds %struct.ubifs_ch, ptr %buf.0210, i32 0, i32 2
  %10 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %sqnum.i, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #5
  %sqnum1.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %sqnum1.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %sqnum1.i, align 8
  %node_type.i = getelementptr inbounds %struct.ubifs_ch, ptr %buf.0210, i32 0, i32 4
  %14 = ptrtoint ptr %node_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %node_type.i, align 1
  %conv.i = zext i8 %15 to i32
  %type.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %type.i, align 8
  %offs2.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %offs2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %offs.addr.0212, ptr %offs2.i, align 4
  %len.i = getelementptr inbounds %struct.ubifs_ch, ptr %buf.0210, i32 0, i32 3
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %len.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %len3.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %len3.i, align 8
  %node.i = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.0210, ptr %node.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %switch.i = icmp ult i8 %15, 4
  br i1 %switch.i, label %sw.bb.i, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %key.i = getelementptr inbounds %struct.ubifs_ino_node, ptr %buf.0210, i32 0, i32 1
  %23 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %arrayidx2.i.i = getelementptr %struct.ubifs_ino_node, ptr %buf.0210, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink = phi i32 [ %25, %sw.bb.i ], [ -559038801, %if.end.i.sw.epilog.i_crit_edge ]
  %.sink.i = phi i32 [ %28, %sw.bb.i ], [ 4, %if.end.i.sw.epilog.i_crit_edge ]
  %29 = getelementptr inbounds %struct.ubifs_scan_node, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 8
  %arrayidx1.i.i = getelementptr [2 x i32], ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink.i, ptr %arrayidx1.i.i, align 4
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %33, ptr noundef %nodes.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.epilog.i.if.end23_crit_edge

sw.epilog.i.if.end23_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end.i.i.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %nodes.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call7.i.i, ptr %33, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end.i.i.i, %sw.epilog.i.if.end23_crit_edge
  %38 = ptrtoint ptr %nodes_cnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nodes_cnt.i, align 4
  %add.i = add i32 %39, 1
  store i32 %add.i, ptr %nodes_cnt.i, align 4
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %len.i, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %add25 = add i32 %42, 7
  %and = and i32 %add25, -8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end.cleanup_crit_edge
  %call10.pn = phi i32 [ %and, %if.end23 ], [ %call10, %do.end.cleanup_crit_edge ]
  %offs.addr.1 = add i32 %call10.pn, %offs.addr.0212
  %buf.1 = getelementptr i8, ptr %buf.0210, i32 %call10.pn
  %len.1 = sub i32 %len.0208, %call10.pn
  %cmp = icmp sgt i32 %len.1, 7
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end15.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %len.0.lcssa = phi i32 [ %sub, %while.cond.preheader.while.end_crit_edge ], [ %len.0208, %if.end15.while.end_crit_edge ], [ %len.1, %cleanup.while.end_crit_edge ]
  %buf.0.lcssa = phi ptr [ %add.ptr, %while.cond.preheader.while.end_crit_edge ], [ %buf.0210, %if.end15.while.end_crit_edge ], [ %buf.1, %cleanup.while.end_crit_edge ]
  %offs.addr.0.lcssa = phi i32 [ %offs, %while.cond.preheader.while.end_crit_edge ], [ %offs.addr.0212, %if.end15.while.end_crit_edge ], [ %offs.addr.1, %cleanup.while.end_crit_edge ]
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %43 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %min_io_size, align 8
  %rem = srem i32 %offs.addr.0.lcssa, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool31.not = icmp eq i32 %rem, 0
  br i1 %tobool31.not, label %if.end36, label %if.then32

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool33.not = icmp eq i32 %quiet, 0
  br i1 %tobool33.not, label %if.then34, label %if.then32.if.end58_crit_edge

if.then32.if.end58_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.23, i32 noundef %offs.addr.0.lcssa) #5
  br label %if.then57

if.end36:                                         ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_end_scan.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_scan, %if.then.i)) #5
          to label %do.body4.i [label %if.then.i], !srcloc !71

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %45 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 68
  %49 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_end_scan.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.12, i32 noundef %50, i32 noundef %lnum, i32 noundef %offs.addr.0.lcssa) #5
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %if.end36
  %51 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %min_io_size, align 8
  %rem.i = srem i32 %offs.addr.0.lcssa, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %do.body4.i.ubifs_end_scan.exit_crit_edge, label %if.then13.i, !prof !72

do.body4.i.ubifs_end_scan.exit_crit_edge:         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ubifs_end_scan.exit

if.then13.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 167) #5
  br label %ubifs_end_scan.exit

ubifs_end_scan.exit:                              ; preds = %if.then13.i, %do.body4.i.ubifs_end_scan.exit_crit_edge
  %53 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %min_io_size, align 8
  %sub.i = add i32 %offs.addr.0.lcssa, -1
  %add.i137 = add i32 %sub.i, %54
  %neg.i = sub i32 0, %54
  %and.i138 = and i32 %add.i137, %neg.i
  %endpt.i = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call, i32 0, i32 3
  %55 = ptrtoint ptr %endpt.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and.i138, ptr %endpt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.0.lcssa)
  %cmp37219 = icmp sgt i32 %len.0.lcssa, 4
  br i1 %cmp37219, label %ubifs_end_scan.exit.for.body_crit_edge, label %ubifs_end_scan.exit.for.end_crit_edge

ubifs_end_scan.exit.for.end_crit_edge:            ; preds = %ubifs_end_scan.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

ubifs_end_scan.exit.for.body_crit_edge:           ; preds = %ubifs_end_scan.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ubifs_end_scan.exit.for.body_crit_edge
  %offs.addr.3222 = phi i32 [ %add41, %for.inc.for.body_crit_edge ], [ %offs.addr.0.lcssa, %ubifs_end_scan.exit.for.body_crit_edge ]
  %buf.3221 = phi ptr [ %add.ptr42, %for.inc.for.body_crit_edge ], [ %buf.0.lcssa, %ubifs_end_scan.exit.for.body_crit_edge ]
  %len.3220 = phi i32 [ %sub43, %for.inc.for.body_crit_edge ], [ %len.0.lcssa, %ubifs_end_scan.exit.for.body_crit_edge ]
  %56 = ptrtoint ptr %buf.3221 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf.3221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp38.not = icmp eq i32 %57, -1
  br i1 %cmp38.not, label %for.inc, label %for.body.for.body46.preheader_crit_edge

for.body.for.body46.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body46.preheader

for.inc:                                          ; preds = %for.body
  %add41 = add i32 %offs.addr.3222, 4
  %add.ptr42 = getelementptr i8, ptr %buf.3221, i32 4
  %sub43 = add nsw i32 %len.3220, -4
  %cmp37 = icmp sgt i32 %len.3220, 8
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ubifs_end_scan.exit.for.end_crit_edge
  %len.3.lcssa = phi i32 [ %len.0.lcssa, %ubifs_end_scan.exit.for.end_crit_edge ], [ %sub43, %for.inc.for.end_crit_edge ]
  %buf.3.lcssa = phi ptr [ %buf.0.lcssa, %ubifs_end_scan.exit.for.end_crit_edge ], [ %add.ptr42, %for.inc.for.end_crit_edge ]
  %offs.addr.3.lcssa = phi i32 [ %offs.addr.0.lcssa, %ubifs_end_scan.exit.for.end_crit_edge ], [ %add41, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.3.lcssa)
  %tobool45.not229 = icmp eq i32 %len.3.lcssa, 0
  br i1 %tobool45.not229, label %for.end.cleanup61_crit_edge, label %for.end.for.body46.preheader_crit_edge

for.end.for.body46.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body46.preheader

for.end.cleanup61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

for.body46.preheader:                             ; preds = %for.end.for.body46.preheader_crit_edge, %for.body.for.body46.preheader_crit_edge
  %offs.addr.4232.ph = phi i32 [ %offs.addr.3.lcssa, %for.end.for.body46.preheader_crit_edge ], [ %offs.addr.3222, %for.body.for.body46.preheader_crit_edge ]
  %buf.4231.ph = phi ptr [ %buf.3.lcssa, %for.end.for.body46.preheader_crit_edge ], [ %buf.3221, %for.body.for.body46.preheader_crit_edge ]
  %len.4230.ph = phi i32 [ %len.3.lcssa, %for.end.for.body46.preheader_crit_edge ], [ %len.3220, %for.body.for.body46.preheader_crit_edge ]
  br label %for.body46

for.body46:                                       ; preds = %for.inc54.for.body46_crit_edge, %for.body46.preheader
  %offs.addr.4232 = phi i32 [ %inc, %for.inc54.for.body46_crit_edge ], [ %offs.addr.4232.ph, %for.body46.preheader ]
  %buf.4231 = phi ptr [ %incdec.ptr, %for.inc54.for.body46_crit_edge ], [ %buf.4231.ph, %for.body46.preheader ]
  %len.4230 = phi i32 [ %dec, %for.inc54.for.body46_crit_edge ], [ %len.4230.ph, %for.body46.preheader ]
  %58 = ptrtoint ptr %buf.4231 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buf.4231, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp47.not = icmp eq i8 %59, -1
  br i1 %cmp47.not, label %for.inc54, label %if.then49

if.then49:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool50.not = icmp eq i32 %quiet, 0
  br i1 %tobool50.not, label %if.then51, label %if.then49.if.end58_crit_edge

if.then49.if.end58_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.24, i32 noundef %lnum, i32 noundef %offs.addr.4232) #5
  br label %if.then57

for.inc54:                                        ; preds = %for.body46
  %inc = add i32 %offs.addr.4232, 1
  %incdec.ptr = getelementptr i8, ptr %buf.4231, i32 1
  %dec = add i32 %len.4230, -1
  %tobool45.not = icmp eq i32 %dec, 0
  br i1 %tobool45.not, label %for.inc54.cleanup61_crit_edge, label %for.inc54.for.body46_crit_edge

for.inc54.for.body46_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body46

for.inc54.cleanup61_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

corrupted.loopexit287:                            ; preds = %if.end15.corrupted.loopexit287_crit_edge, %if.end15.corrupted.loopexit287_crit_edge313
  br label %corrupted

corrupted:                                        ; preds = %corrupted.loopexit287, %if.end15.corrupted_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %corrupted.loopexit287 ], [ @.str.20, %if.end15.corrupted_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull %.str.21.sink) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool56.not = icmp eq i32 %quiet, 0
  br i1 %tobool56.not, label %corrupted.if.then57_crit_edge, label %corrupted.if.end58_crit_edge

corrupted.if.end58_crit_edge:                     ; preds = %corrupted
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

corrupted.if.then57_crit_edge:                    ; preds = %corrupted
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then57

if.then57:                                        ; preds = %corrupted.if.then57_crit_edge, %if.then51, %if.then34
  %offs.addr.5181 = phi i32 [ %offs.addr.0212, %corrupted.if.then57_crit_edge ], [ %offs.addr.4232, %if.then51 ], [ %offs.addr.0.lcssa, %if.then34 ]
  %buf.5180 = phi ptr [ %buf.0210, %corrupted.if.then57_crit_edge ], [ %buf.4231, %if.then51 ], [ %buf.0.lcssa, %if.then34 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.14, i32 noundef %lnum, i32 noundef %offs.addr.5181) #5
  %60 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %leb_size, align 8
  %sub.i139 = sub i32 %61, %offs.addr.5181
  %62 = tail call i32 @llvm.smin.i32(i32 %sub.i139, i32 8192) #5
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.15, i32 noundef %62, i32 noundef %lnum, i32 noundef %offs.addr.5181) #5
  tail call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef %buf.5180, i32 noundef %62, i1 noundef zeroext true) #5
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.25, i32 noundef %lnum) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %corrupted.if.end58_crit_edge, %if.then49.if.end58_crit_edge, %if.then32.if.end58_crit_edge
  %nodes.i140 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %call, i32 0, i32 2
  %63 = ptrtoint ptr %nodes.i140 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %nodes.i140, align 4
  %cmp.i.not4.i = icmp eq ptr %64, %nodes.i140
  br i1 %cmp.i.not4.i, label %if.end58.ubifs_scan_destroy.exit_crit_edge, label %if.end58.while.body.i_crit_edge

if.end58.while.body.i_crit_edge:                  ; preds = %if.end58
  br label %while.body.i

if.end58.ubifs_scan_destroy.exit_crit_edge:       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %ubifs_scan_destroy.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end58.while.body.i_crit_edge
  %65 = phi ptr [ %75, %list_del.exit.i.while.body.i_crit_edge ], [ %64, %if.end58.while.body.i_crit_edge ]
  %call.i.i.i141 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %65) #5
  br i1 %call.i.i.i141, label %if.end.i.i.i142, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i142:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i142, %while.body.i.list_del.exit.i_crit_edge
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 256 to ptr), ptr %65, align 4
  %prev.i.i143 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i143 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i143, align 4
  tail call void @kfree(ptr noundef %65) #5
  %74 = ptrtoint ptr %nodes.i140 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %nodes.i140, align 4
  %cmp.i.not.i = icmp eq ptr %75, %nodes.i140
  br i1 %cmp.i.not.i, label %list_del.exit.i.ubifs_scan_destroy.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

list_del.exit.i.ubifs_scan_destroy.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ubifs_scan_destroy.exit

ubifs_scan_destroy.exit:                          ; preds = %list_del.exit.i.ubifs_scan_destroy.exit_crit_edge, %if.end58.ubifs_scan_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %call) #5
  br label %cleanup61

error:                                            ; preds = %sw.epilog.error_crit_edge, %sw.default
  %err.1.ph = phi i32 [ -22, %sw.default ], [ -12, %sw.epilog.error_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.26, i32 noundef %lnum, i32 noundef %err.1.ph) #5
  %76 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %nodes.i, align 4
  %cmp.i.not4.i145 = icmp eq ptr %77, %nodes.i
  br i1 %cmp.i.not4.i145, label %error.ubifs_scan_destroy.exit154_crit_edge, label %error.while.body.i147_crit_edge

error.while.body.i147_crit_edge:                  ; preds = %error
  br label %while.body.i147

error.ubifs_scan_destroy.exit154_crit_edge:       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  br label %ubifs_scan_destroy.exit154

while.body.i147:                                  ; preds = %list_del.exit.i153.while.body.i147_crit_edge, %error.while.body.i147_crit_edge
  %78 = phi ptr [ %88, %list_del.exit.i153.while.body.i147_crit_edge ], [ %77, %error.while.body.i147_crit_edge ]
  %call.i.i.i146 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %78) #5
  br i1 %call.i.i.i146, label %if.end.i.i.i150, label %while.body.i147.list_del.exit.i153_crit_edge

while.body.i147.list_del.exit.i153_crit_edge:     ; preds = %while.body.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i153

if.end.i.i.i150:                                  ; preds = %while.body.i147
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i148 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i148, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 4
  %prev1.i.i.i.i149 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i149, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit.i153

list_del.exit.i153:                               ; preds = %if.end.i.i.i150, %while.body.i147.list_del.exit.i153_crit_edge
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %78, align 4
  %prev.i.i151 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i151 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i151, align 4
  tail call void @kfree(ptr noundef %78) #5
  %87 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %nodes.i, align 4
  %cmp.i.not.i152 = icmp eq ptr %88, %nodes.i
  br i1 %cmp.i.not.i152, label %list_del.exit.i153.ubifs_scan_destroy.exit154_crit_edge, label %list_del.exit.i153.while.body.i147_crit_edge

list_del.exit.i153.while.body.i147_crit_edge:     ; preds = %list_del.exit.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i147

list_del.exit.i153.ubifs_scan_destroy.exit154_crit_edge: ; preds = %list_del.exit.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %ubifs_scan_destroy.exit154

ubifs_scan_destroy.exit154:                       ; preds = %list_del.exit.i153.ubifs_scan_destroy.exit154_crit_edge, %error.ubifs_scan_destroy.exit154_crit_edge
  tail call void @kfree(ptr noundef %call) #5
  %89 = inttoptr i32 %err.1.ph to ptr
  br label %cleanup61

cleanup61:                                        ; preds = %ubifs_scan_destroy.exit154, %ubifs_scan_destroy.exit, %for.inc54.cleanup61_crit_edge, %for.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi ptr [ %89, %ubifs_scan_destroy.exit154 ], [ inttoptr (i32 -117 to ptr), %ubifs_scan_destroy.exit ], [ %call, %entry.cleanup61_crit_edge ], [ %call, %for.end.cleanup61_crit_edge ], [ %call, %for.inc54.cleanup61_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_scan_destroy(ptr noundef %sleb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes = getelementptr inbounds %struct.ubifs_scan_leb, ptr %sleb, i32 0, i32 2
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %nodes, align 4
  %cmp.i.not4 = icmp eq ptr %1, %nodes
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #5
  %11 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %nodes, align 4
  %cmp.i.not = icmp eq ptr %12, %nodes
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @kfree(ptr noundef %sleb) #5
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/scan.c", i32 66, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubifs_scan_a_node.__UNIQUE_ID_ddebug280, !1, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/scan.c", i32 76, i32 2}
!8 = !{ptr @ubifs_scan_a_node.__UNIQUE_ID_ddebug281, !7, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ubifs/scan.c", i32 91, i32 18}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/scan.c", i32 101, i32 18}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ubifs/scan.c", i32 106, i32 3}
!15 = !{ptr @ubifs_scan_a_node.__UNIQUE_ID_ddebug282, !14, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/scan.c", i32 131, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ubifs_start_scan.__UNIQUE_ID_ddebug283, !17, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ubifs/scan.c", i32 143, i32 16}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/scan.c", i32 166, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ubifs_end_scan.__UNIQUE_ID_ddebug284, !23, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ubifs/scan.c", i32 167, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/scan.c", i32 230, i32 15}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ubifs/scan.c", i32 234, i32 15}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/scan.c", i32 235, i32 17}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ubifs/scan.c", i32 235, i32 29}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ubifs/scan.c", i32 269, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ubifs_scan.__UNIQUE_ID_ddebug285, !37, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ubifs/scan.c", i32 289, i32 17}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/scan.c", i32 295, i32 17}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ubifs/scan.c", i32 298, i32 17}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ubifs/scan.c", i32 315, i32 17}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ubifs/scan.c", i32 328, i32 18}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/scan.c", i32 338, i32 16}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ubifs/scan.c", i32 345, i32 15}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ubifs/scan.c", i32 33, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @scan_padding_bytes.__UNIQUE_ID_ddebug278, !55, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ubifs/scan.c", i32 41, i32 2}
!60 = !{ptr @scan_padding_bytes.__UNIQUE_ID_ddebug279, !59, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2149067779, i64 2149067784, i64 2149067797, i64 2149067841, i64 2149067875, i64 2149067896}
!72 = !{!"branch_weights", i32 2000, i32 1}
