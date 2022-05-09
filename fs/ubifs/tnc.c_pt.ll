; ModuleID = '/llk/IR_all_yes/fs/ubifs/tnc.c_pt.bc'
source_filename = "../fs/ubifs/tnc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
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
%struct.ubifs_old_idx = type { %struct.rb_node, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
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
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.76 = type { ptr }

@ubifs_lookup_level0.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_lookup_level0\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/tnc.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UBIFS DBG tnc (pid %d): search key %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"key_type(c, key) < UBIFS_INVALID_KEY\00", [59 x i8] zeroinitializer }, align 32
@ubifs_lookup_level0.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"UBIFS DBG tnc (pid %d): found %d, lvl %d, n %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ubifs_lookup_level0.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBIFS DBG tnc (pid %d): found 0, lvl %d, n -1\0A\00", [49 x i8] zeroinitializer }, align 32
@ubifs_lookup_level0.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ubifs_lookup_level0.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBIFS DBG tnc (pid %d): found 1, lvl %d, n %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"buffer too small %d vs %d\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to read from LEB %d:%d, error %d\00", [56 x i8] zeroinitializer }, align 32
@ubifs_tnc_bulk_read.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_tnc_bulk_read\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UBIFS DBG tnc (pid %d): key %s\0A\00", [32 x i8] zeroinitializer }, align 32
@ubifs_tnc_add.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 2, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubifs_tnc_add\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBIFS DBG tnc (pid %d): %d:%d, len %d, key %s\0A\00", [49 x i8] zeroinitializer }, align 32
@ubifs_tnc_replace.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 2, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_tnc_replace\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"UBIFS DBG tnc (pid %d): old LEB %d:%d, new LEB %d:%d, len %d, key %s\0A\00", [58 x i8] zeroinitializer }, align 32
@ubifs_tnc_replace.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 2, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBIFS DBG tnc (pid %d): rc returned %d, znode %p, n %d, LEB %d:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_tnc_add_nm.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 2, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_tnc_add_nm\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG tnc (pid %d): LEB %d:%d, key %s\0A\00", [53 x i8] zeroinitializer }, align 32
@ubifs_tnc_add_nm.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 2, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG tnc (pid %d): rc returned %d, znode %p, n %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__const.ubifs_tnc_add_nm.noname = private unnamed_addr constant { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8, [3 x i8] } { ptr null, %struct.fscrypt_str { ptr @.str.20, i32 1 }, i32 0, i32 0, %struct.fscrypt_str zeroinitializer, i8 0, [3 x i8] zeroinitializer }, align 4
@ubifs_tnc_remove.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.11, i8 2, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_tnc_remove\00", [47 x i8] zeroinitializer }, align 32
@ubifs_tnc_remove_nm.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.11, i8 2, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ubifs_tnc_remove_nm\00", [44 x i8] zeroinitializer }, align 32
@ubifs_tnc_remove_nm.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.19, i8 2, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ubifs_tnc_remove_range.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 2, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ubifs_tnc_remove_range\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG tnc (pid %d): removing key %s\0A\00", [55 x i8] zeroinitializer }, align 32
@ubifs_tnc_remove_ino.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 2, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubifs_tnc_remove_ino\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UBIFS DBG tnc (pid %d): ino %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@ubifs_tnc_remove_ino.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 2, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBIFS DBG tnc (pid %d): xent '%s', ino %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@ubifs_tnc_next_ent.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.11, i8 2, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubifs_tnc_next_ent\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"is_hash_key(c, key)\00", [44 x i8] zeroinitializer }, align 32
@ubifs_tnc_next_ent.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.19, i8 2, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"freed == n\00", [21 x i8] zeroinitializer }, align 32
@ubifs_clean_zn_cnt = external dso_local global %struct.atomic_t, align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"err == 0\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"inode %lu has size %lld, but there are data at offset %lld\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"old idx added twice!\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"is_hash_key(c, &zbr->key)\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zbr->len != 0\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"!zbr->leaf\00", [21 x i8] zeroinitializer }, align 32
@fallible_read_node.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.18, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fallible_read_node\00", [45 x i8] zeroinitializer }, align 32
@fallible_read_node.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UBIFS DBG mnt (pid %d): dangling branch LEB %d:%d len %d, key %s\0A\00", [62 x i8] zeroinitializer }, align 32
@try_read_node.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"try_read_node\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG io (pid %d): LEB %d:%d, %s, length %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cannot read node type %d from LEB %d:%d, error %d\00", [46 x i8] zeroinitializer }, align 32
@read_wbuf.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_wbuf\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG io (pid %d): LEB %d:%d, length %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"!(offs & 7) && offs < c->leb_size\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offs + len <= c->leb_size\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bad node type (%d but expected %d)\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"expected node type %d\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad node length %d, expected %d\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad key in node at LEB %d:%d\00", [35 x i8] zeroinitializer }, align 32
@validate_data_node.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"validate_data_node\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG tnc (pid %d): looked for key %s\0A\00", [53 x i8] zeroinitializer }, align 32
@validate_data_node.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 1, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG tnc (pid %d): found node's key %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad node at LEB %d:%d\00", [42 x i8] zeroinitializer }, align 32
@do_lookup_nm.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.11, i8 1, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_lookup_nm\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"n >= 0\00", [25 x i8] zeroinitializer }, align 32
@do_lookup_nm.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.19, i8 1, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lookup_level0_dirty.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lookup_level0_dirty\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG tnc (pid %d): search and dirty key %s\0A\00", [47 x i8] zeroinitializer }, align 32
@lookup_level0_dirty.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.5, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lookup_level0_dirty.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.6, i8 1, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lookup_level0_dirty.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.6, i8 1, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lookup_level0_dirty.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.7, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!ubifs_zn_obsolete(znode)\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"n >= 0 && n <= c->fanout\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"n != c->fanout\00", [17 x i8] zeroinitializer }, align 32
@tnc_insert.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 2, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tnc_insert\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBIFS DBG tnc (pid %d): inserted at %d level %d, key %s\0A\00", [39 x i8] zeroinitializer }, align 32
@tnc_insert.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.64, i8 2, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UBIFS DBG tnc (pid %d): splitting level %d, key %s\0A\00", [44 x i8] zeroinitializer }, align 32
@tnc_insert.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.65, i8 2, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBIFS DBG tnc (pid %d): moving %d, keeping %d\0A\00", [49 x i8] zeroinitializer }, align 32
@tnc_insert.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.66, i8 2, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBIFS DBG tnc (pid %d): inserting at %d level %d, key %s\0A\00", [38 x i8] zeroinitializer }, align 32
@tnc_insert.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.67, i8 2, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG tnc (pid %d): creating new zroot at level %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_zn_dirty(znode)\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"znode->parent\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"znode->iip == 0\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c->zroot.znode\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"znode\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"p < c->zroot.znode->level\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"path[p - 1] >= 0\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"path[p - 1] < zp->child_cnt\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"znode == c->zroot.znode\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"path[p - 1] < znode->child_cnt\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"*n == 0\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@fallible_resolve_collision.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fallible_resolve_collision\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UBIFS DBG mnt (pid %d): dangling match LEB %d:%d len %d key %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"err == 1\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"err == NAME_GREATER\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"err == NAME_LESS\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"znode->level == 0\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"n >= 0 && n < c->fanout\00", [40 x i8] zeroinitializer }, align 32
@tnc_delete.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 2, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tnc_delete\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG tnc (pid %d): deleting key %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"znode->level != 0\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"!ubifs_zn_obsolete(zp)\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubifs_zn_dirty(zp)\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"c->cmt_state == COMMIT_BROKEN\00", [34 x i8] zeroinitializer }, align 32
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!(block & ~UBIFS_S_KEY_BLOCK_MASK)\00", [61 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/key.h\00", [17 x i8] zeroinitializer }, align 32
@switch.table.ubifs_tnc_has_node = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1176, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1177, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1214, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1263, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1275, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1760, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1776, i32 16 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1779, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2280, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2331, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2355, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2416, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2429, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2476, i32 58 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2621, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2652, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2835, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2871, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2892, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2960, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2961, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3071, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3514, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3521, i32 15 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 94, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 388, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 392, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 312, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 501, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 514, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 450, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 454, i32 16 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1652, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1653, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1654, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1655, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1697, i32 16 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1704, i32 16 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1716, i32 16 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1723, i32 16 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1725, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1726, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1735, i32 15 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1814, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1825, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1312, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 202, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2087, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2093, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2094, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2109, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2189, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2203, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2227, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2033, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2000, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2001, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1095, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1096, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1115, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1129, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1130, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1134, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1140, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 918, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 930, i32 7 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 991, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 838, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 773, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 797, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2509, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2510, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2511, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2559, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2592, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 2593, i32 4 }
@___asan_gen_.385 = private constant [18 x i8] c"../fs/ubifs/tnc.c\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 3048, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [18 x i8] c"../fs/ubifs/key.h\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 270, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [32 x i8] c"switch.table.ubifs_tnc_has_node\00", align 1
@llvm.compiler.used = appending global [96 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @switch.table.ubifs_tnc_has_node], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ubifs_tnc_has_node to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @insert_old_idx_znode(ptr noundef %c, ptr nocapture noundef readonly %znode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %znode, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 8
  %2 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iip, align 8
  %len = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %3, i32 4
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then.return_crit_edge, label %cleanup

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %lnum = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %3, i32 2
  %offs = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %3, i32 3
  br label %return.sink.split

if.else:                                          ; preds = %entry
  %len4 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 4
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.else.return_crit_edge, label %if.then6

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %lnum8 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 2
  %offs10 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 3
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then6, %cleanup
  %offs.sink = phi ptr [ %offs, %cleanup ], [ %offs10, %if.then6 ]
  %.sink.in = phi ptr [ %lnum, %cleanup ], [ %lnum8, %if.then6 ]
  %8 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.sink = load i32, ptr %.sink.in, align 4
  %9 = ptrtoint ptr %offs.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offs.sink, align 8
  %call = tail call fastcc i32 @insert_old_idx(ptr noundef %c, i32 noundef %.sink, i32 noundef %10)
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.else.return_crit_edge ], [ 0, %if.then.return_crit_edge ], [ %call, %return.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_old_idx(ptr noundef %c, i32 noundef %lnum, i32 noundef %offs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 20) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !230

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lnum4 = getelementptr inbounds %struct.ubifs_old_idx, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %lnum4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %lnum, ptr %lnum4, align 4
  %offs5 = getelementptr inbounds %struct.ubifs_old_idx, ptr %call7.i, i32 0, i32 2
  %2 = ptrtoint ptr %offs5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %offs, ptr %offs5, align 8
  %old_idx6 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 44
  %3 = ptrtoint ptr %old_idx6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %old_idx6, align 4
  %tobool7.not58 = icmp eq ptr %4, null
  br i1 %tobool7.not58, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %if.end.while.body_crit_edge
  %5 = phi ptr [ %11, %if.end27.while.body_crit_edge ], [ %4, %if.end.while.body_crit_edge ]
  %lnum8 = getelementptr inbounds %struct.ubifs_old_idx, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lnum8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lnum8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lnum)
  %cmp = icmp sgt i32 %7, %lnum
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  br label %if.end27

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lnum)
  %cmp11 = icmp slt i32 %7, %lnum
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  br label %if.end27

if.else13:                                        ; preds = %if.else
  %offs14 = getelementptr inbounds %struct.ubifs_old_idx, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %offs14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offs14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %offs)
  %cmp15 = icmp sgt i32 %9, %offs
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left17 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  br label %if.end27

if.else18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %offs)
  %cmp20 = icmp slt i32 %9, %offs
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right22 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  br label %if.end27

if.else23:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.33) #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

if.end27:                                         ; preds = %if.then21, %if.then16, %if.then12, %if.then9
  %p.1 = phi ptr [ %rb_left, %if.then9 ], [ %rb_right, %if.then12 ], [ %rb_left17, %if.then16 ], [ %rb_right22, %if.then21 ]
  %10 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p.1, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %while.cond.while.end_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le = ptrtoint ptr %5 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %old_idx6, %if.end.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %parent.0.lcssa, ptr %call7.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_left.i, align 8
  %15 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i, ptr noundef %old_idx6) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else23 ], [ 0, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @destroy_old_idx(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %old_idx1 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 44
  %call = tail call ptr @rb_first_postorder(ptr noundef %old_idx1) #12
  %tobool3.not24 = icmp eq ptr %call, null
  br i1 %tobool3.not24, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %old_idx.025 = phi ptr [ %call5, %land.rhs.land.rhs_crit_edge ], [ %call, %entry.land.rhs_crit_edge ]
  %call5 = tail call ptr @rb_next_postorder(ptr noundef nonnull %old_idx.025) #12
  tail call void @kfree(ptr noundef nonnull %old_idx.025) #12
  %tobool3.not = icmp eq ptr %call5, null
  br i1 %tobool3.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %0 = ptrtoint ptr %old_idx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %old_idx1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef %key, ptr nocapture noundef writeonly %zn, ptr noundef %n) local_unnamed_addr #0 align 64 {
entry:
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %call = tail call i64 @ktime_get_seconds() #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %0 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lookup_level0, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call6 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lookup_level0.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.3, i32 noundef %6, ptr noundef %call6) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then19, label %do.end.do.end22_crit_edge, !prof !230

do.end.do.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1177) #12
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.end.do.end22_crit_edge
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %znode, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %if.then32, label %do.end22.if.end39_crit_edge, !prof !230

do.end22.if.end39_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then32:                                        ; preds = %do.end22
  %zroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  %call34 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %zroot, ptr noundef null, i32 noundef 0) #12
  %13 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call34, ptr %znode, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.then32.if.end39_crit_edge

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call34 to i32
  br label %cleanup164

if.end39:                                         ; preds = %if.then32.if.end39_crit_edge, %do.end22.if.end39_crit_edge
  %15 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %znode, align 4
  %time40 = getelementptr inbounds %struct.ubifs_znode, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %time40 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call, ptr %time40, align 8
  %call41237 = call i32 @ubifs_search_zbranch(ptr noundef %c, ptr noundef %16, ptr noundef %key, ptr noundef %n) #12
  %level238 = getelementptr inbounds %struct.ubifs_znode, ptr %16, i32 0, i32 6
  %18 = ptrtoint ptr %level238 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level238, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp42239 = icmp eq i32 %19, 0
  br i1 %cmp42239, label %if.end39.while.end_crit_edge, label %if.end39.if.end44_crit_edge

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  br label %if.end44

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end44:                                         ; preds = %cleanup.if.end44_crit_edge, %if.end39.if.end44_crit_edge
  %call52234240 = phi ptr [ %call52235, %cleanup.if.end44_crit_edge ], [ %16, %if.end39.if.end44_crit_edge ]
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp45 = icmp slt i32 %21, 0
  br i1 %cmp45, label %if.then46, label %if.end44.if.end47_crit_edge

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %n, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44.if.end47_crit_edge
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  %25 = getelementptr %struct.ubifs_znode, ptr %call52234240, i32 0, i32 13, i32 %24, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %time50 = getelementptr inbounds %struct.ubifs_znode, ptr %call52234240, i32 0, i32 5
  %28 = ptrtoint ptr %time50 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call, ptr %time50, align 8
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 8
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %call52234240, i32 0, i32 13, i32 %24
  %call52 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %call52234240, i32 noundef %24) #12
  %cmp.i213 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %cleanup.thread, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %call52 to i32
  br label %cleanup164

cleanup:                                          ; preds = %if.end51.cleanup_crit_edge, %if.then49
  %call52235 = phi ptr [ %call52, %if.end51.cleanup_crit_edge ], [ %30, %if.then49 ]
  %call41 = call i32 @ubifs_search_zbranch(ptr noundef %c, ptr noundef %call52235, ptr noundef %key, ptr noundef %n) #12
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %call52235, i32 0, i32 6
  %32 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level, align 8
  %cmp42 = icmp eq i32 %33, 0
  br i1 %cmp42, label %cleanup.while.end_crit_edge, label %cleanup.if.end44_crit_edge

cleanup.if.end44_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end39.while.end_crit_edge
  %call52234.lcssa = phi ptr [ %16, %if.end39.while.end_crit_edge ], [ %call52235, %cleanup.while.end_crit_edge ]
  %call41.lcssa = phi i32 [ %call41237, %if.end39.while.end_crit_edge ], [ %call41, %cleanup.while.end_crit_edge ]
  %34 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call52234.lcssa, ptr %znode, align 4
  %35 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call52234.lcssa, ptr %zn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.lcssa)
  %tobool57.not = icmp eq i32 %call41.lcssa, 0
  br i1 %tobool57.not, label %lor.lhs.false, label %while.end.do.body63_crit_edge

while.end.do.body63_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

lor.lhs.false:                                    ; preds = %while.end
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %38 = and i32 %37, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %38)
  %.not = icmp eq i32 %38, 1073741824
  br i1 %.not, label %lor.lhs.false60, label %lor.lhs.false.do.body63_crit_edge

lor.lhs.false.do.body63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

lor.lhs.false60:                                  ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp61.not = icmp eq i32 %40, -1
  br i1 %cmp61.not, label %if.end83, label %lor.lhs.false60.do.body63_crit_edge

lor.lhs.false60.do.body63_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

do.body63:                                        ; preds = %lor.lhs.false60.do.body63_crit_edge, %lor.lhs.false.do.body63_crit_edge, %while.end.do.body63_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lookup_level0, %if.then75)) #12
          to label %cleanup164 [label %if.then75], !srcloc !231

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  %41 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i214 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i214 to ptr
  %task77 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task77, align 8
  %pid78 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid78 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid78, align 8
  %level79 = getelementptr inbounds %struct.ubifs_znode, ptr %call52234.lcssa, i32 0, i32 6
  %47 = ptrtoint ptr %level79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %level79, align 8
  %49 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lookup_level0.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.5, i32 noundef %46, i32 noundef %call41.lcssa, i32 noundef %48, i32 noundef %50) #12
  br label %cleanup164

if.end83:                                         ; preds = %lor.lhs.false60
  %call84 = call fastcc i32 @tnc_prev(ptr noundef %c, ptr noundef nonnull %znode, ptr noundef %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call84)
  %cmp85 = icmp eq i32 %call84, -2
  br i1 %cmp85, label %do.body87, label %if.end107

do.body87:                                        ; preds = %if.end83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lookup_level0, %if.then99)) #12
          to label %do.end106 [label %if.then99], !srcloc !231

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  %51 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i215 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i215 to ptr
  %task101 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task101 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task101, align 8
  %pid102 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid102 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid102, align 8
  %57 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %znode, align 4
  %level103 = getelementptr inbounds %struct.ubifs_znode, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %level103 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %level103, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lookup_level0.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.6, i32 noundef %56, i32 noundef %60) #12
  br label %do.end106

do.end106:                                        ; preds = %if.then99, %do.body87
  %61 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %n, align 4
  br label %cleanup164

if.end107:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp108 = icmp slt i32 %call84, 0
  br i1 %cmp108, label %if.end107.cleanup164_crit_edge, label %if.end116, !prof !230

if.end107.cleanup164_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.end116:                                        ; preds = %if.end107
  %62 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %znode, align 4
  %64 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n, align 4
  %arrayidx118 = getelementptr %struct.ubifs_znode, ptr %63, i32 0, i32 13, i32 %65
  %66 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %key, align 8
  %68 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx118, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %.not232 = icmp eq i32 %67, %69
  br i1 %.not232, label %if.end6.i, label %if.end116.do.body123_crit_edge

if.end116.do.body123_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body123

if.end6.i:                                        ; preds = %if.end116
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i, align 4
  %arrayidx8.i = getelementptr [2 x i32], ptr %arrayidx118, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %.not242 = icmp eq i32 %71, %73
  br i1 %.not242, label %do.body144, label %if.end6.i.do.body123_crit_edge

if.end6.i.do.body123_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body123

do.body123:                                       ; preds = %if.end6.i.do.body123_crit_edge, %if.end116.do.body123_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lookup_level0, %if.then135)) #12
          to label %do.end142 [label %if.then135], !srcloc !231

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #14
  %74 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i218 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i218 to ptr
  %task137 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task137 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task137, align 8
  %pid138 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 68
  %78 = ptrtoint ptr %pid138 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pid138, align 8
  %level139 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 6
  %80 = ptrtoint ptr %level139 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %level139, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lookup_level0.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.6, i32 noundef %79, i32 noundef %81) #12
  br label %do.end142

do.end142:                                        ; preds = %if.then135, %do.body123
  %82 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %n, align 4
  br label %cleanup164

do.body144:                                       ; preds = %if.end6.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_lookup_level0, %if.then156)) #12
          to label %do.end163 [label %if.then156], !srcloc !231

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  %83 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i219 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i219 to ptr
  %task158 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task158 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task158, align 8
  %pid159 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 68
  %87 = ptrtoint ptr %pid159 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pid159, align 8
  %level160 = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 6
  %89 = ptrtoint ptr %level160 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %level160, align 8
  %91 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_lookup_level0.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.7, i32 noundef %88, i32 noundef %90, i32 noundef %92) #12
  br label %do.end163

do.end163:                                        ; preds = %if.then156, %do.body144
  %93 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %63, ptr %zn, align 4
  br label %cleanup164

cleanup164:                                       ; preds = %do.end163, %do.end142, %if.end107.cleanup164_crit_edge, %do.end106, %if.then75, %do.body63, %cleanup.thread, %if.then36
  %retval.2 = phi i32 [ %14, %if.then36 ], [ 0, %do.end106 ], [ 0, %do.end142 ], [ 1, %do.end163 ], [ %call41.lcssa, %if.then75 ], [ %call84, %if.end107.cleanup164_crit_edge ], [ %31, %cleanup.thread ], [ %call41.lcssa, %do.body63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_snprintf_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_load_znode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_search_zbranch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tnc_prev(ptr noundef %c, ptr nocapture noundef %zn, ptr nocapture noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zn, align 4
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i32 %1, -1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %n, align 4
  br label %cleanup23

while.cond:                                       ; preds = %if.end2.while.cond_crit_edge, %while.cond.preheader
  %znode.0 = phi ptr [ %6, %if.end2.while.cond_crit_edge ], [ %3, %while.cond.preheader ]
  %5 = ptrtoint ptr %znode.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %znode.0, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %while.cond.cleanup23_crit_edge, label %if.end2

while.cond.cleanup23_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

if.end2:                                          ; preds = %while.cond
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 8
  %7 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iip, align 8
  %sub3 = add i32 %8, -1
  %cmp4 = icmp sgt i32 %sub3, -1
  br i1 %cmp4, label %if.then5, label %if.end2.while.cond_crit_edge

if.end2.while.cond_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then5:                                         ; preds = %if.end2
  %9 = getelementptr %struct.ubifs_znode, ptr %6, i32 0, i32 13, i32 %sub3, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.get_znode.exit_crit_edge

if.then5.get_znode.exit_crit_edge:                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.ubifs_znode, ptr %6, i32 0, i32 13, i32 %sub3
  %call.i = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i, ptr noundef nonnull %6, i32 noundef %sub3) #12
  br label %get_znode.exit

get_znode.exit:                                   ; preds = %if.else.i, %if.then5.get_znode.exit_crit_edge
  %znode.addr.0.i = phi ptr [ %call.i, %if.else.i ], [ %11, %if.then5.get_znode.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %znode.addr.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %get_znode.exit.while.cond10_crit_edge

get_znode.exit.while.cond10_crit_edge:            ; preds = %get_znode.exit
  br label %while.cond10

if.then7:                                         ; preds = %get_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %znode.addr.0.i to i32
  br label %cleanup23

while.cond10:                                     ; preds = %get_znode.exit52.while.cond10_crit_edge, %get_znode.exit.while.cond10_crit_edge
  %znode.1 = phi ptr [ %znode.addr.0.i51, %get_znode.exit52.while.cond10_crit_edge ], [ %znode.addr.0.i, %get_znode.exit.while.cond10_crit_edge ]
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1, i32 0, i32 6
  %13 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.not = icmp eq i32 %14, 0
  %child_cnt19 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1, i32 0, i32 7
  %15 = ptrtoint ptr %child_cnt19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %child_cnt19, align 4
  %sub20 = add i32 %16, -1
  br i1 %cmp11.not, label %while.end22, label %while.body12

while.body12:                                     ; preds = %while.cond10
  %17 = getelementptr %struct.ubifs_znode, ptr %znode.1, i32 0, i32 13, i32 %sub20, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %tobool.not.i47 = icmp eq ptr %19, null
  br i1 %tobool.not.i47, label %if.else.i50, label %while.body12.get_znode.exit52_crit_edge

while.body12.get_znode.exit52_crit_edge:          ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit52

if.else.i50:                                      ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i48 = getelementptr %struct.ubifs_znode, ptr %znode.1, i32 0, i32 13, i32 %sub20
  %call.i49 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i48, ptr noundef %znode.1, i32 noundef %sub20) #12
  br label %get_znode.exit52

get_znode.exit52:                                 ; preds = %if.else.i50, %while.body12.get_znode.exit52_crit_edge
  %znode.addr.0.i51 = phi ptr [ %call.i49, %if.else.i50 ], [ %19, %while.body12.get_znode.exit52_crit_edge ]
  %cmp.i53 = icmp ugt ptr %znode.addr.0.i51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.then16, label %get_znode.exit52.while.cond10_crit_edge

get_znode.exit52.while.cond10_crit_edge:          ; preds = %get_znode.exit52
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond10

if.then16:                                        ; preds = %get_znode.exit52
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %znode.addr.0.i51 to i32
  br label %cleanup23

while.end22:                                      ; preds = %while.cond10
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %znode.1, ptr %zn, align 4
  %22 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub20, ptr %n, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %while.end22, %if.then16, %if.then7, %while.cond.cleanup23_crit_edge, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %while.end22 ], [ %20, %if.then16 ], [ %12, %if.then7 ], [ -2, %while.cond.cleanup23_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_locate(ptr noundef %c, ptr noundef %key, ptr noundef %node, ptr noundef writeonly %lnum, ptr nocapture noundef writeonly %offs) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %zbr = alloca %struct.ubifs_zbranch, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %zbr) #12
  %2 = call ptr @memset(ptr %zbr, i32 255, i32 88)
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %call78 = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool.not79 = icmp eq i32 %call78, 0
  br i1 %tobool.not79, label %entry.out_crit_edge, label %if.else.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else.lr.ph:                                    ; preds = %entry
  %tobool3.not = icmp eq ptr %lnum, null
  %arrayidx.i.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %gc_seq = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 125
  %lnum20 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %gced_lnum1.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp = icmp slt i32 %call78, 0
  br i1 %cmp, label %if.else.lr.ph.out_crit_edge, label %if.end2

if.else.lr.ph.out_crit_edge:                      ; preds = %if.else.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end2:                                          ; preds = %if.else.lr.ph
  %3 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %znode, align 4
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %4, i32 0, i32 13, i32 %6
  br i1 %tobool3.not, label %if.end2.if.end7_crit_edge, label %if.then4

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %lnum5 = getelementptr %struct.ubifs_znode, ptr %4, i32 0, i32 13, i32 %6, i32 2
  %7 = ptrtoint ptr %lnum5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lnum5, align 4
  %9 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %lnum, align 4
  %offs6 = getelementptr %struct.ubifs_znode, ptr %4, i32 0, i32 13, i32 %6, i32 3
  %10 = ptrtoint ptr %offs6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offs6, align 8
  %12 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %offs, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end2.if.end7_crit_edge
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %15 = and i32 %14, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %15)
  %.not = icmp eq i32 %15, 1073741824
  br i1 %.not, label %if.end7.if.then10_crit_edge, label %if.end12

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %if.end7.1.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %if.end7.if.then10_crit_edge ], [ %arrayidx.1, %if.end7.1.if.then10_crit_edge ]
  %call11 = call fastcc i32 @tnc_read_hashed_node(ptr noundef %c, ptr noundef %arrayidx.lcssa, ptr noundef %node)
  br label %out

if.end12:                                         ; preds = %if.end7
  %16 = call ptr @memcpy(ptr %zbr, ptr %arrayidx, i32 88)
  %17 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gc_seq, align 8
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  %19 = ptrtoint ptr %lnum20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lnum20, align 4
  %call21 = call ptr @ubifs_get_wbuf(ptr noundef %c, i32 noundef %20) #12
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then14:                                        ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %arrayidx.1, ptr noundef %node) #12
  br label %out

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef nonnull %zbr, ptr noundef %node) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  %call26 = call fastcc i32 @fallible_read_node(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %zbr, ptr noundef %node)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %if.end25.if.then31_crit_edge, label %lor.lhs.false

if.end25.if.then31_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end25
  %21 = ptrtoint ptr %lnum20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lnum20, align 4
  %23 = ptrtoint ptr %gced_lnum1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gced_lnum1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  %25 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gc_seq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %18)
  %cmp.i = icmp eq i32 %26, %18
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false
  %add.i = add i32 %18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp5.not.i = icmp eq i32 %add.i, %26
  br i1 %cmp5.not.i, label %do.end11.i, label %if.end.i.if.then31_crit_edge

if.end.i.if.then31_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

do.end11.i:                                       ; preds = %if.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !234
  %27 = ptrtoint ptr %gced_lnum1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gced_lnum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %28)
  %cmp15.not.i = icmp ne i32 %24, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp18.i.not = icmp eq i32 %24, %22
  %or.cond = select i1 %cmp15.not.i, i1 true, i1 %cmp18.i.not
  br i1 %or.cond, label %do.end11.i.if.then31_crit_edge, label %do.end11.i.cleanup_crit_edge

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.if.then31_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.then31:                                        ; preds = %do.end11.i.if.then31_crit_edge, %if.end.i.if.then31_crit_edge, %if.end25.if.then31_crit_edge
  call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %call = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then31.out_crit_edge, label %if.else.1

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else.1:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.1 = icmp slt i32 %call, 0
  br i1 %cmp.1, label %if.else.1.out_crit_edge, label %if.end2.1

if.else.1.out_crit_edge:                          ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end2.1:                                        ; preds = %if.else.1
  %29 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %znode, align 4
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %arrayidx.1 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32
  br i1 %tobool3.not, label %if.end2.1.if.end7.1_crit_edge, label %if.then4.1

if.end2.1.if.end7.1_crit_edge:                    ; preds = %if.end2.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.1

if.then4.1:                                       ; preds = %if.end2.1
  call void @__sanitizer_cov_trace_pc() #14
  %lnum5.1 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 2
  %33 = ptrtoint ptr %lnum5.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lnum5.1, align 4
  %35 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %lnum, align 4
  %offs6.1 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 3
  %36 = ptrtoint ptr %offs6.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offs6.1, align 8
  %38 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %offs, align 4
  br label %if.end7.1

if.end7.1:                                        ; preds = %if.then4.1, %if.end2.1.if.end7.1_crit_edge
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %41 = and i32 %40, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %41)
  %.not.1 = icmp eq i32 %41, 1073741824
  br i1 %.not.1, label %if.end7.1.if.then10_crit_edge, label %if.then14

if.end7.1.if.then10_crit_edge:                    ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

out:                                              ; preds = %if.else.1.out_crit_edge, %if.then31.out_crit_edge, %if.then14, %if.then10, %if.else.lr.ph.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call11, %if.then10 ], [ %call15, %if.then14 ], [ -2, %entry.out_crit_edge ], [ %call78, %if.else.lr.ph.out_crit_edge ], [ -2, %if.then31.out_crit_edge ], [ %call, %if.else.1.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end11.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then23
  %retval.0 = phi i32 [ %err.0, %out ], [ %call24, %if.then23 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end11.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %zbr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tnc_read_hashed_node(ptr noundef %c, ptr noundef %zbr, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr [2 x i32], ptr %zbr, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %2 = and i32 %1, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %2)
  %.not = icmp eq i32 %2, 1073741824
  br i1 %.not, label %entry.do.end_crit_edge, label %if.then, !prof !235

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 388) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %3 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end20, label %do.body6

do.body6:                                         ; preds = %do.end
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.then15, label %do.body6.do.end18_crit_edge, !prof !230

do.body6.do.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

if.then15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 392) #12
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body6.do.end18_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = call ptr @memcpy(ptr %node, ptr %9, i32 %11)
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %replaying = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %13 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %replaying, align 4
  %14 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %if.end33, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call24 = tail call fastcc i32 @fallible_read_node(ptr noundef %c, ptr noundef %zbr, ptr noundef %zbr, ptr noundef %node)
  %15 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call24, label %cleanup.fold.split [
    i32 0, label %if.then22.cleanup_crit_edge
    i32 1, label %if.then22.if.end36_crit_edge
  ]

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.end20
  %call32 = tail call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %zbr, ptr noundef %node) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool34.not = icmp eq i32 %call32, 0
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end36:                                         ; preds = %if.end33.if.end36_crit_edge, %if.then22.if.end36_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end36.do.body5.i_crit_edge, label %if.then.i, !prof !235

if.end36.do.body5.i_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 312) #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %if.end36.do.body5.i_crit_edge
  %len.i = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.then14.i, label %do.body5.i.do.body18.i_crit_edge, !prof !230

do.body5.i.do.body18.i_crit_edge:                 ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18.i

if.then14.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 313) #12
  br label %do.body18.i

do.body18.i:                                      ; preds = %if.then14.i, %do.body5.i.do.body18.i_crit_edge
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %22 = and i32 %21, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %22)
  %.not.i = icmp eq i32 %22, 1073741824
  br i1 %.not.i, label %do.body18.i.do.end31.i_crit_edge, label %if.then28.i, !prof !235

do.body18.i.do.end31.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31.i

if.then28.i:                                      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 314) #12
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then28.i, %do.body18.i.do.end31.i_crit_edge
  %call32.i = tail call i32 @ubifs_validate_entry(ptr noundef %c, ptr noundef %node) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end36.i, label %if.then34.i

if.then34.i:                                      ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_stack() #16
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef %node, i32 noundef %24) #12
  br label %cleanup

if.end36.i:                                       ; preds = %do.end31.i
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  %call38.i = tail call ptr @kmemdup(ptr noundef %node, i32 noundef %26, i32 noundef 3136) #12
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.end36.i.cleanup_crit_edge, label %if.end41.i

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call38.i, ptr %3, align 8
  br label %cleanup

cleanup.fold.split:                               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %if.end41.i, %if.end36.i.cleanup_crit_edge, %if.then34.i, %if.end33.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %do.end18
  %retval.0 = phi i32 [ 0, %do.end18 ], [ %call32, %if.end33.cleanup_crit_edge ], [ %call32.i, %if.then34.i ], [ 0, %if.end36.i.cleanup_crit_edge ], [ 0, %if.end41.i ], [ -2, %if.then22.cleanup_crit_edge ], [ %call24, %cleanup.fold.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_read_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_get_wbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fallible_read_node(ptr noundef %c, ptr noundef %key, ptr noundef %zbr, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  %__tmp_key_buf = alloca [48 x i8], align 1
  %__tmp_key_buf21 = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %0 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fallible_read_node.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fallible_read_node, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %7 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lnum, align 4
  %offs = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %9 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offs, align 8
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fallible_read_node.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.18, i32 noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %12, 29
  %call9 = call fastcc i32 @try_read_node(ptr noundef %c, ptr noundef %node, i32 noundef %shr.i, ptr noundef %zbr)
  %13 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call9, label %do.end.if.end47_crit_edge [
    i32 1, label %if.then10
    i32 0, label %do.end.land.lhs.true_crit_edge
  ]

do.end.land.lhs.true_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

do.end.if.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then10:                                        ; preds = %do.end
  %key11 = getelementptr inbounds %struct.ubifs_dent_node, ptr %node, i32 0, i32 1
  %14 = ptrtoint ptr %key11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key11, align 8
  %16 = call i32 @llvm.bswap.i32(i32 %15) #12
  %17 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %.not = icmp eq i32 %18, %16
  br i1 %.not, label %if.end6.i, label %if.then10.land.lhs.true_crit_edge

if.then10.land.lhs.true_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end6.i:                                        ; preds = %if.then10
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %node, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #12
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %.not81 = icmp eq i32 %23, %21
  br i1 %.not81, label %if.end6.i.if.end47_crit_edge, label %if.end6.i.land.lhs.true_crit_edge

if.end6.i.land.lhs.true_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end6.i.if.end47_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end6.i.land.lhs.true_crit_edge, %if.then10.land.lhs.true_crit_edge, %do.end.land.lhs.true_crit_edge
  %replaying = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %24 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %replaying, align 4
  %25 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not = icmp eq i8 %25, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end47_crit_edge, label %do.body20

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.body20:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf21) #12
  %26 = call ptr @memset(ptr %__tmp_key_buf21, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fallible_read_node.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fallible_read_node, %if.then34)) #12
          to label %do.end44 [label %if.then34], !srcloc !231

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %27 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i69 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i69 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task36, align 8
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid37, align 8
  %lnum38 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %33 = ptrtoint ptr %lnum38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lnum38, align 4
  %offs39 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %35 = ptrtoint ptr %offs39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offs39, align 8
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %call41 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf21, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fallible_read_node.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.38, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, ptr noundef %call41) #12
  br label %do.end44

do.end44:                                         ; preds = %if.then34, %do.body20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf21) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %land.lhs.true.if.end47_crit_edge, %if.end6.i.if.end47_crit_edge, %do.end.if.end47_crit_edge
  %ret.175 = phi i32 [ 0, %do.end44 ], [ 0, %land.lhs.true.if.end47_crit_edge ], [ %call9, %do.end.if.end47_crit_edge ], [ 1, %if.end6.i.if.end47_crit_edge ]
  ret i32 %ret.175
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_get_bu_keys(ptr noundef %c, ptr noundef %bu) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  %arrayidx.i = getelementptr [2 x i32], ptr %bu, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %2, 536870911
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %3 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %cnt = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 5
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cnt, align 4
  %blk_cnt = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 6
  %5 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %blk_cnt, align 8
  %eof = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 7
  %6 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %eof, align 4
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %call2 = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef %bu, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %if.then3

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then3:                                         ; preds = %if.end
  %7 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %znode, align 4
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  %len4 = getelementptr %struct.ubifs_znode, ptr %8, i32 0, i32 13, i32 %10, i32 4
  %11 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len4, align 4
  %buf_len = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 3
  %13 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5 = icmp sgt i32 %12, %14
  br i1 %cmp5, label %if.then3.if.end99_crit_edge, label %if.end7

if.then3.if.end99_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cnt, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %cnt, align 4
  %arrayidx10 = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %16
  %arrayidx12 = getelementptr %struct.ubifs_znode, ptr %8, i32 0, i32 13, i32 %10
  %17 = call ptr @memcpy(ptr %arrayidx10, ptr %arrayidx12, i32 88)
  %18 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blk_cnt, align 8
  %add = add i32 %19, 1
  store i32 %add, ptr %blk_cnt, align 8
  %lnum16 = getelementptr %struct.ubifs_znode, ptr %8, i32 0, i32 13, i32 %10, i32 2
  %20 = ptrtoint ptr %lnum16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lnum16, align 4
  %offs19 = getelementptr %struct.ubifs_znode, ptr %8, i32 0, i32 13, i32 %10, i32 3
  %22 = ptrtoint ptr %offs19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offs19, align 8
  %add20 = add i32 %12, 7
  %add21 = add i32 %add20, %23
  %and = and i32 %add21, -8
  br label %if.end22

if.end22:                                         ; preds = %if.end7, %if.end.if.end22_crit_edge
  %lnum.0 = phi i32 [ %21, %if.end7 ], [ -1, %if.end.if.end22_crit_edge ]
  %offs.0 = phi i32 [ %and, %if.end7 ], [ -1, %if.end.if.end22_crit_edge ]
  %len.0 = phi i32 [ %12, %if.end7 ], [ -1, %if.end.if.end22_crit_edge ]
  %buf_len67 = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end79.while.cond_crit_edge, %if.end22
  %lnum.1 = phi i32 [ %lnum.0, %if.end22 ], [ %lnum.2, %if.end79.while.cond_crit_edge ]
  %offs.1 = phi i32 [ %offs.0, %if.end22 ], [ %offs.2, %if.end79.while.cond_crit_edge ]
  %len.1 = phi i32 [ %len.0, %if.end22 ], [ %len.2, %if.end79.while.cond_crit_edge ]
  %block.0 = phi i32 [ %and.i, %if.end22 ], [ %and.i175, %if.end79.while.cond_crit_edge ]
  %24 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %znode, align 4
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  %add.i = add i32 %27, 1
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %29)
  %cmp.i = icmp slt i32 %add.i, %29
  br i1 %cmp.i, label %while.cond.if.end27_crit_edge, label %while.cond.while.cond.i_crit_edge

while.cond.while.cond.i_crit_edge:                ; preds = %while.cond
  br label %while.cond.i

while.cond.if.end27_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

while.cond.i:                                     ; preds = %if.end2.i.while.cond.i_crit_edge, %while.cond.while.cond.i_crit_edge
  %znode.0.i = phi ptr [ %31, %if.end2.i.while.cond.i_crit_edge ], [ %25, %while.cond.while.cond.i_crit_edge ]
  %30 = ptrtoint ptr %znode.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %znode.0.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %while.cond.i.if.then97_crit_edge, label %if.end2.i

while.cond.i.if.then97_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then97

if.end2.i:                                        ; preds = %while.cond.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i, i32 0, i32 8
  %32 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iip.i, align 8
  %add3.i = add i32 %33, 1
  %child_cnt4.i = getelementptr inbounds %struct.ubifs_znode, ptr %31, i32 0, i32 7
  %34 = ptrtoint ptr %child_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %child_cnt4.i, align 4
  %cmp5.i = icmp slt i32 %add3.i, %35
  br i1 %cmp5.i, label %if.then6.i, label %if.end2.i.while.cond.i_crit_edge

if.end2.i.while.cond.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end2.i
  %36 = getelementptr %struct.ubifs_znode, ptr %31, i32 0, i32 13, i32 %add3.i, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then6.i.get_znode.exit.i_crit_edge

if.then6.i.get_znode.exit.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.ubifs_znode, ptr %31, i32 0, i32 13, i32 %add3.i
  %call.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i, ptr noundef nonnull %31, i32 noundef %add3.i) #12
  br label %get_znode.exit.i

get_znode.exit.i:                                 ; preds = %if.else.i.i, %if.then6.i.get_znode.exit.i_crit_edge
  %znode.addr.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %38, %if.then6.i.get_znode.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %znode.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_znode.exit.i.tnc_next.exit_crit_edge, label %get_znode.exit.i.while.cond11.i_crit_edge

get_znode.exit.i.while.cond11.i_crit_edge:        ; preds = %get_znode.exit.i
  br label %while.cond11.i

get_znode.exit.i.tnc_next.exit_crit_edge:         ; preds = %get_znode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.cond11.i:                                   ; preds = %get_znode.exit49.i.while.cond11.i_crit_edge, %get_znode.exit.i.while.cond11.i_crit_edge
  %znode.1.i = phi ptr [ %znode.addr.0.i48.i, %get_znode.exit49.i.while.cond11.i_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.while.cond11.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 6
  %39 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp12.not.i = icmp eq i32 %40, 0
  br i1 %cmp12.not.i, label %while.end20.i, label %while.body13.i

while.body13.i:                                   ; preds = %while.cond11.i
  %41 = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %tobool.not.i44.i = icmp eq ptr %43, null
  br i1 %tobool.not.i44.i, label %if.else.i47.i, label %while.body13.i.get_znode.exit49.i_crit_edge

while.body13.i.get_znode.exit49.i_crit_edge:      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i

if.else.i47.i:                                    ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0
  %call.i46.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i, ptr noundef %znode.1.i, i32 noundef 0) #12
  br label %get_znode.exit49.i

get_znode.exit49.i:                               ; preds = %if.else.i47.i, %while.body13.i.get_znode.exit49.i_crit_edge
  %znode.addr.0.i48.i = phi ptr [ %call.i46.i, %if.else.i47.i ], [ %43, %while.body13.i.get_znode.exit49.i_crit_edge ]
  %cmp.i50.i = icmp ugt ptr %znode.addr.0.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %get_znode.exit49.i.tnc_next.exit_crit_edge, label %get_znode.exit49.i.while.cond11.i_crit_edge

get_znode.exit49.i.while.cond11.i_crit_edge:      ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i

get_znode.exit49.i.tnc_next.exit_crit_edge:       ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.end20.i:                                    ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %znode.1.i, ptr %znode, align 4
  br label %if.end27

tnc_next.exit:                                    ; preds = %get_znode.exit49.i.tnc_next.exit_crit_edge, %get_znode.exit.i.tnc_next.exit_crit_edge
  %retval.2.i.in = phi ptr [ %znode.addr.0.i48.i, %get_znode.exit49.i.tnc_next.exit_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.tnc_next.exit_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  br label %out

if.end27:                                         ; preds = %while.end20.i, %while.cond.if.end27_crit_edge
  %storemerge = phi i32 [ 0, %while.end20.i ], [ %add.i, %while.cond.if.end27_crit_edge ]
  %45 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge, ptr %n, align 4
  %46 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %znode, align 4
  %arrayidx29 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %storemerge
  %48 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx29, align 8
  %50 = ptrtoint ptr %bu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp34.not = icmp eq i32 %49, %51
  br i1 %cmp34.not, label %lor.lhs.false, label %if.end27.if.then97_crit_edge

if.end27.if.then97_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then97

lor.lhs.false:                                    ; preds = %if.end27
  %arrayidx.i173 = getelementptr [2 x i32], ptr %arrayidx29, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i173, align 4
  %shr.i.mask = and i32 %53, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.mask)
  %cmp36.not = icmp eq i32 %shr.i.mask, 536870912
  br i1 %cmp36.not, label %if.end38, label %lor.lhs.false.if.then97_crit_edge

lor.lhs.false.if.then97_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then97

if.end38:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lnum.1)
  %cmp39 = icmp slt i32 %lnum.1, 0
  %lnum41 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %storemerge, i32 2
  %54 = ptrtoint ptr %lnum41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lnum41, align 4
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end38
  %offs42 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %storemerge, i32 3
  %56 = ptrtoint ptr %offs42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offs42, align 8
  %len43 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %storemerge, i32 4
  %58 = ptrtoint ptr %len43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len43, align 4
  %add44 = add i32 %57, 7
  %add45 = add i32 %add44, %59
  %and46 = and i32 %add45, -8
  %60 = ptrtoint ptr %buf_len67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_len67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp49 = icmp sgt i32 %59, %61
  br i1 %cmp49, label %if.then40.if.end99_crit_edge, label %if.then40.if.end71_crit_edge

if.then40.if.end71_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then40.if.end99_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %lnum.1)
  %cmp53.not = icmp eq i32 %55, %lnum.1
  br i1 %cmp53.not, label %lor.lhs.false54, label %if.else.if.end99_crit_edge

if.else.if.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

lor.lhs.false54:                                  ; preds = %if.else
  %offs55 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %storemerge, i32 3
  %62 = ptrtoint ptr %offs55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offs55, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %offs.1)
  %cmp56.not = icmp eq i32 %63, %offs.1
  br i1 %cmp56.not, label %if.end58, label %lor.lhs.false54.if.end99_crit_edge

lor.lhs.false54.if.end99_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end58:                                         ; preds = %lor.lhs.false54
  %len59 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %storemerge, i32 4
  %64 = ptrtoint ptr %len59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len59, align 4
  %add60 = add i32 %65, 7
  %and61 = and i32 %add60, -8
  %add62 = add i32 %and61, %offs.1
  %add63 = add i32 %len.1, 7
  %and64 = and i32 %add63, -8
  %add66 = add i32 %65, %and64
  %66 = ptrtoint ptr %buf_len67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buf_len67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add66, i32 %67)
  %cmp68 = icmp sgt i32 %add66, %67
  br i1 %cmp68, label %if.end58.if.end99_crit_edge, label %if.end58.if.end71_crit_edge

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.end58.if.end99_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end71:                                         ; preds = %if.end58.if.end71_crit_edge, %if.then40.if.end71_crit_edge
  %lnum.2 = phi i32 [ %55, %if.then40.if.end71_crit_edge ], [ %lnum.1, %if.end58.if.end71_crit_edge ]
  %offs.2 = phi i32 [ %and46, %if.then40.if.end71_crit_edge ], [ %add62, %if.end58.if.end71_crit_edge ]
  %len.2 = phi i32 [ %59, %if.then40.if.end71_crit_edge ], [ %add66, %if.end58.if.end71_crit_edge ]
  %and.i175 = and i32 %53, 536870911
  %68 = xor i32 %block.0, -1
  %sub73 = add nsw i32 %and.i175, %68
  %69 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %blk_cnt, align 8
  %add75 = add i32 %sub73, %70
  store i32 %add75, ptr %blk_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add75)
  %cmp77 = icmp sgt i32 %add75, 31
  br i1 %cmp77, label %if.end71.if.end99_crit_edge, label %if.end79

if.end71.if.end99_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end79:                                         ; preds = %if.end71
  %71 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cnt, align 4
  %inc82 = add i32 %72, 1
  store i32 %inc82, ptr %cnt, align 4
  %arrayidx83 = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %72
  %73 = call ptr @memcpy(ptr %arrayidx83, ptr %arrayidx29, i32 88)
  %74 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %blk_cnt, align 8
  %add85 = add i32 %75, 1
  store i32 %add85, ptr %blk_cnt, align 8
  %76 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %76)
  %cmp87 = icmp sgt i32 %76, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add85)
  %cmp91 = icmp sgt i32 %add85, 31
  %or.cond = select i1 %cmp87, i1 true, i1 %cmp91
  br i1 %or.cond, label %if.end79.if.end99_crit_edge, label %if.end79.while.cond_crit_edge

if.end79.while.cond_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end79.if.end99_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

out:                                              ; preds = %tnc_next.exit, %entry.out_crit_edge
  %err.1 = phi i32 [ %call2, %entry.out_crit_edge ], [ %retval.2.i, %tnc_next.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %err.1)
  %cmp96 = icmp eq i32 %err.1, -2
  br i1 %cmp96, label %out.if.then97_crit_edge, label %out.if.end99_crit_edge

out.if.end99_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

out.if.then97_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then97

if.then97:                                        ; preds = %out.if.then97_crit_edge, %lor.lhs.false.if.then97_crit_edge, %if.end27.if.then97_crit_edge, %while.cond.i.if.then97_crit_edge
  %77 = ptrtoint ptr %eof to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %eof, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %out.if.end99_crit_edge, %if.end79.if.end99_crit_edge, %if.end71.if.end99_crit_edge, %if.end58.if.end99_crit_edge, %lor.lhs.false54.if.end99_crit_edge, %if.else.if.end99_crit_edge, %if.then40.if.end99_crit_edge, %if.then3.if.end99_crit_edge
  %err.2 = phi i32 [ 0, %if.then97 ], [ %err.1, %out.if.end99_crit_edge ], [ -22, %if.then3.if.end99_crit_edge ], [ 0, %if.end79.if.end99_crit_edge ], [ 0, %if.end71.if.end99_crit_edge ], [ 0, %if.end58.if.end99_crit_edge ], [ 0, %if.else.if.end99_crit_edge ], [ 0, %lor.lhs.false54.if.end99_crit_edge ], [ -22, %if.then40.if.end99_crit_edge ]
  %gc_seq = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 125
  %78 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %gc_seq, align 8
  %gc_seq100 = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 4
  %80 = ptrtoint ptr %gc_seq100 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %gc_seq100, align 8
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool102.not = icmp eq i32 %err.2, 0
  br i1 %tobool102.not, label %if.end104, label %if.end99.cleanup110_crit_edge

if.end99.cleanup110_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110

if.end104:                                        ; preds = %if.end99
  %81 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %blk_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %82)
  %cmp106 = icmp sgt i32 %82, 32
  br i1 %cmp106, label %if.then107, label %if.end104.cleanup110_crit_edge

if.end104.cleanup110_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 32, ptr %blk_cnt, align 8
  br label %cleanup110

cleanup110:                                       ; preds = %if.then107, %if.end104.cleanup110_crit_edge, %if.end99.cleanup110_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tnc_next(ptr noundef %c, ptr nocapture noundef %zn, ptr nocapture noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zn, align 4
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %add = add i32 %3, 1
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp slt i32 %add, %5
  br i1 %cmp, label %if.then, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %n, align 4
  br label %cleanup21

while.cond:                                       ; preds = %if.end2.while.cond_crit_edge, %entry.while.cond_crit_edge
  %znode.0 = phi ptr [ %8, %if.end2.while.cond_crit_edge ], [ %1, %entry.while.cond_crit_edge ]
  %7 = ptrtoint ptr %znode.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %znode.0, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.cond.cleanup21_crit_edge, label %if.end2

while.cond.cleanup21_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

if.end2:                                          ; preds = %while.cond
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 8
  %9 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iip, align 8
  %add3 = add i32 %10, 1
  %child_cnt4 = getelementptr inbounds %struct.ubifs_znode, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %child_cnt4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %child_cnt4, align 4
  %cmp5 = icmp slt i32 %add3, %12
  br i1 %cmp5, label %if.then6, label %if.end2.while.cond_crit_edge

if.end2.while.cond_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then6:                                         ; preds = %if.end2
  %13 = getelementptr %struct.ubifs_znode, ptr %8, i32 0, i32 13, i32 %add3, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.get_znode.exit_crit_edge

if.then6.get_znode.exit_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.ubifs_znode, ptr %8, i32 0, i32 13, i32 %add3
  %call.i = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i, ptr noundef nonnull %8, i32 noundef %add3) #12
  br label %get_znode.exit

get_znode.exit:                                   ; preds = %if.else.i, %if.then6.get_znode.exit_crit_edge
  %znode.addr.0.i = phi ptr [ %call.i, %if.else.i ], [ %15, %if.then6.get_znode.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %znode.addr.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %get_znode.exit.while.cond11_crit_edge

get_znode.exit.while.cond11_crit_edge:            ; preds = %get_znode.exit
  br label %while.cond11

if.then8:                                         ; preds = %get_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %znode.addr.0.i to i32
  br label %cleanup21

while.cond11:                                     ; preds = %get_znode.exit49.while.cond11_crit_edge, %get_znode.exit.while.cond11_crit_edge
  %znode.1 = phi ptr [ %znode.addr.0.i48, %get_znode.exit49.while.cond11_crit_edge ], [ %znode.addr.0.i, %get_znode.exit.while.cond11_crit_edge ]
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1, i32 0, i32 6
  %17 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp12.not = icmp eq i32 %18, 0
  br i1 %cmp12.not, label %while.end20, label %while.body13

while.body13:                                     ; preds = %while.cond11
  %19 = getelementptr %struct.ubifs_znode, ptr %znode.1, i32 0, i32 13, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %tobool.not.i44 = icmp eq ptr %21, null
  br i1 %tobool.not.i44, label %if.else.i47, label %while.body13.get_znode.exit49_crit_edge

while.body13.get_znode.exit49_crit_edge:          ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49

if.else.i47:                                      ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45 = getelementptr %struct.ubifs_znode, ptr %znode.1, i32 0, i32 13, i32 0
  %call.i46 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45, ptr noundef %znode.1, i32 noundef 0) #12
  br label %get_znode.exit49

get_znode.exit49:                                 ; preds = %if.else.i47, %while.body13.get_znode.exit49_crit_edge
  %znode.addr.0.i48 = phi ptr [ %call.i46, %if.else.i47 ], [ %21, %while.body13.get_znode.exit49_crit_edge ]
  %cmp.i50 = icmp ugt ptr %znode.addr.0.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %if.then16, label %get_znode.exit49.while.cond11_crit_edge

get_znode.exit49.while.cond11_crit_edge:          ; preds = %get_znode.exit49
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11

if.then16:                                        ; preds = %get_znode.exit49
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %znode.addr.0.i48 to i32
  br label %cleanup21

while.end20:                                      ; preds = %while.cond11
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %znode.1, ptr %zn, align 4
  %24 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %n, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %while.end20, %if.then16, %if.then8, %while.cond.cleanup21_crit_edge, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %while.end20 ], [ %22, %if.then16 ], [ %16, %if.then8 ], [ -2, %while.cond.cleanup21_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_bulk_read(ptr noundef %c, ptr noundef %bu) local_unnamed_addr #0 align 64 {
entry:
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lnum1 = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %lnum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lnum1, align 4
  %offs4 = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %offs4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offs4, align 8
  %cnt = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 5
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt, align 4
  %sub = add i32 %5, -1
  %offs7 = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %sub, i32 3
  %6 = ptrtoint ptr %offs7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offs7, align 8
  %len12 = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %sub, i32 4
  %8 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len12, align 4
  %sub13 = sub i32 %9, %3
  %add = add i32 %sub13, %7
  %buf_len = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 3
  %10 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp = icmp sgt i32 %add, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %add) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @ubifs_get_wbuf(ptr noundef %c, i32 noundef %1) #12
  %tobool.not = icmp eq ptr %call, null
  %buf18 = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 2
  %12 = ptrtoint ptr %buf18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf18, align 8
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call fastcc i32 @read_wbuf(ptr noundef nonnull %call, ptr noundef %13, i32 noundef %add, i32 noundef %1, i32 noundef %3)
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %1, ptr noundef %13, i32 noundef %3, i32 noundef %add, i32 noundef 0) #12
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  %err.0 = phi i32 [ %call17, %if.then15 ], [ %call19, %if.else ]
  %gc_seq = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 4
  %14 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gc_seq, align 8
  %gced_lnum1.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 126
  %16 = ptrtoint ptr %gced_lnum1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gced_lnum1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  %gc_seq.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 125
  %18 = ptrtoint ptr %gc_seq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gc_seq.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %15)
  %cmp.i = icmp eq i32 %19, %15
  br i1 %cmp.i, label %if.end20.if.end24_crit_edge, label %if.end.i

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end.i:                                         ; preds = %if.end20
  %add.i = add i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %19)
  %cmp5.not.i = icmp eq i32 %add.i, %19
  br i1 %cmp5.not.i, label %do.end11.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !234
  %20 = ptrtoint ptr %gced_lnum1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gced_lnum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp15.not.i = icmp ne i32 %17, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp18.i.not = icmp eq i32 %17, %1
  %or.cond = select i1 %cmp15.not.i, i1 true, i1 %cmp18.i.not
  br i1 %or.cond, label %do.end11.i.cleanup_crit_edge, label %do.end11.i.if.end24_crit_edge

do.end11.i.if.end24_crit_edge:                    ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %do.end11.i.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %22 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %err.0, label %if.then27 [
    i32 0, label %if.end24.if.end39_crit_edge
    i32 -74, label %if.end24.if.end39_crit_edge112
  ]

if.end24.if.end39_crit_edge112:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then27:                                        ; preds = %if.end24
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.9, i32 noundef %1, i32 noundef %3, i32 noundef %err.0) #12
  tail call void @dump_stack() #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %23 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_bulk_read.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_bulk_read, %if.then33)) #12
          to label %do.end [label %if.then33], !srcloc !231

if.then33:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call35 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %bu, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_bulk_read.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.11, i32 noundef %29, ptr noundef %call35) #12
  br label %do.end

do.end:                                           ; preds = %if.then33, %if.then27
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  br label %cleanup

if.end39:                                         ; preds = %if.end24.if.end39_crit_edge, %if.end24.if.end39_crit_edge112
  %30 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp42108 = icmp sgt i32 %31, 0
  br i1 %cmp42108, label %for.body.preheader, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.end39
  %buf40 = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 2
  %32 = ptrtoint ptr %buf40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf40, align 8
  br label %for.body

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %for.body.preheader
  %buf.0110 = phi ptr [ %add.ptr, %if.end48.for.body_crit_edge ], [ %33, %for.body.preheader ]
  %i.0109 = phi i32 [ %inc, %if.end48.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx44 = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %i.0109
  %call45 = tail call fastcc i32 @validate_data_node(ptr noundef %c, ptr noundef %buf.0110, ptr noundef %arrayidx44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %for.body
  %len51 = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %i.0109, i32 4
  %34 = ptrtoint ptr %len51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len51, align 4
  %add52 = add i32 %35, 7
  %and = and i32 %add52, -8
  %add.ptr = getelementptr i8, ptr %buf.0110, i32 %and
  %inc = add nuw nsw i32 %i.0109, 1
  %36 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cnt, align 4
  %cmp42 = icmp slt i32 %inc, %37
  br i1 %cmp42, label %if.end48.for.body_crit_edge, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end48.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %do.end, %do.end11.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %err.0, %do.end ], [ -11, %if.end.i.cleanup_crit_edge ], [ -11, %do.end11.i.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ %call45, %for.body.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_wbuf(ptr noundef %wbuf, ptr noundef %buf, i32 noundef %len, i32 noundef %lnum, i32 noundef %offs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wbuf, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_wbuf.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_wbuf, %if.then)) #12
          to label %do.body5 [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_wbuf.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.43, i32 noundef %7, i32 noundef %lnum, i32 noundef %offs, i32 noundef %len) #12
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %tobool6.not = icmp ne ptr %wbuf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum)
  %cmp = icmp sgt i32 %lnum, -1
  %or.cond = and i1 %tobool6.not, %cmp
  br i1 %or.cond, label %land.lhs.true7, label %do.body5.if.then18_crit_edge, !prof !236

do.body5.if.then18_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

land.lhs.true7:                                   ; preds = %do.body5
  %leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 79
  %8 = ptrtoint ptr %leb_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %leb_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %lnum)
  %cmp8 = icmp sle i32 %9, %lnum
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offs)
  %cmp9 = icmp slt i32 %offs, 0
  %spec.select = or i1 %cmp9, %cmp8
  br i1 %spec.select, label %land.lhs.true7.if.then18_crit_edge, label %land.lhs.true7.do.body22_crit_edge, !prof !230

land.lhs.true7.do.body22_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body22

land.lhs.true7.if.then18_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true7.if.then18_crit_edge, %do.body5.if.then18_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2, i32 noundef 1653) #12
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %land.lhs.true7.do.body22_crit_edge
  %and = and i32 %offs, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.rhs24, label %do.body22.if.then35_crit_edge, !prof !235

do.body22.if.then35_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

land.rhs24:                                       ; preds = %do.body22
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 75
  %10 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %offs)
  %cmp25.not = icmp sgt i32 %11, %offs
  br i1 %cmp25.not, label %land.rhs24.do.body39_crit_edge, label %land.rhs24.if.then35_crit_edge, !prof !235

land.rhs24.if.then35_crit_edge:                   ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

land.rhs24.do.body39_crit_edge:                   ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

if.then35:                                        ; preds = %land.rhs24.if.then35_crit_edge, %do.body22.if.then35_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef 1654) #12
  br label %do.body39

do.body39:                                        ; preds = %if.then35, %land.rhs24.do.body39_crit_edge
  %add = add i32 %offs, %len
  %leb_size40 = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 75
  %12 = ptrtoint ptr %leb_size40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leb_size40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp41.not = icmp sgt i32 %add, %13
  br i1 %cmp41.not, label %if.then50, label %do.body39.do.end53_crit_edge, !prof !230

do.body39.do.end53_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

if.then50:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.2, i32 noundef 1655) #12
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body39.do.end53_crit_edge
  %lock = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %lnum54 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 2
  %14 = ptrtoint ptr %lnum54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnum54, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %lnum)
  %cmp55 = icmp eq i32 %15, %lnum
  br i1 %cmp55, label %land.rhs56, label %do.end53.if.then62_crit_edge

do.end53.if.then62_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

land.rhs56:                                       ; preds = %do.end53
  %offs58 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 3
  %16 = ptrtoint ptr %offs58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp59 = icmp sgt i32 %add, %17
  br i1 %cmp59, label %if.end65, label %land.rhs56.if.then62_crit_edge

land.rhs56.if.then62_crit_edge:                   ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.then62:                                        ; preds = %land.rhs56.if.then62_crit_edge, %do.end53.if.then62_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup.sink.split

if.end65:                                         ; preds = %land.rhs56
  %sub = sub i32 %17, %offs
  %18 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %add.ptr = getelementptr i8, ptr %buf, i32 %18
  %buf70 = getelementptr inbounds %struct.ubifs_wbuf, ptr %wbuf, i32 0, i32 1
  %19 = ptrtoint ptr %buf70 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf70, align 4
  %add.ptr71 = getelementptr i8, ptr %20, i32 %offs
  %add.ptr72 = getelementptr i8, ptr %add.ptr71, i32 %18
  %idx.neg = sub i32 0, %17
  %add.ptr74 = getelementptr i8, ptr %add.ptr72, i32 %idx.neg
  %sub75 = sub i32 %len, %18
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr74, i32 %sub75)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp77.not = icmp slt i32 %sub, 1
  br i1 %cmp77.not, label %if.end65.cleanup_crit_edge, label %if.end65.cleanup.sink.split_crit_edge

if.end65.cleanup.sink.split_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end65.cleanup.sink.split_crit_edge, %if.then62
  %.sink = phi i32 [ %len, %if.then62 ], [ %18, %if.end65.cleanup.sink.split_crit_edge ]
  %call79 = tail call i32 @ubifs_leb_read(ptr noundef %1, i32 noundef %lnum, ptr noundef %buf, i32 noundef %offs, i32 noundef %.sink, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end65.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65.cleanup_crit_edge ], [ %call79, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_data_node(ptr noundef %c, ptr noundef %buf, ptr noundef %zbr) unnamed_addr #0 align 64 {
entry:
  %key1 = alloca %union.ubifs_key, align 8
  %__tmp_key_buf = alloca [48 x i8], align 1
  %__tmp_key_buf41 = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key1) #12
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key1, align 8, !annotation !232
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %1 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %node_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef 1) #12
  br label %out

if.end:                                           ; preds = %entry
  %len4 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %3 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len4, align 4
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %5 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lnum, align 4
  %offs = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %7 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offs, align 8
  %call = tail call i32 @ubifs_check_node(ptr noundef %c, ptr noundef %buf, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.48, i32 noundef 1) #12
  br label %out

if.end6:                                          ; preds = %if.end
  %hash = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 5
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %9 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %10 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.end6.if.end14_crit_edge, label %ubifs_node_check_hash.exit

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

ubifs_node_check_hash.exit:                       ; preds = %if.end6
  %call1.i = tail call i32 @__ubifs_node_check_hash(ptr noundef %c, ptr noundef %buf, ptr noundef %hash) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  br i1 %tobool8.not, label %ubifs_node_check_hash.exit.if.end14_crit_edge, label %if.then9

ubifs_node_check_hash.exit.if.end14_crit_edge:    ; preds = %ubifs_node_check_hash.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then9:                                         ; preds = %ubifs_node_check_hash.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lnum, align 4
  %13 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offs, align 8
  tail call void @ubifs_bad_hash(ptr noundef %c, ptr noundef %buf, ptr noundef %hash, i32 noundef %12, i32 noundef %14) #12
  br label %cleanup

if.end14:                                         ; preds = %ubifs_node_check_hash.exit.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %len15 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %len15 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %len15, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp17.not = icmp eq i32 %17, %19
  br i1 %cmp17.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.49, i32 noundef %17, i32 noundef %19) #12
  br label %out

if.end21:                                         ; preds = %if.end14
  %add.ptr = getelementptr i8, ptr %buf, i32 24
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %23 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %key1, align 8
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 28
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %arrayidx3.i = getelementptr inbounds [2 x i32], ptr %key1, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx3.i, align 4
  %28 = ptrtoint ptr %zbr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %zbr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %22)
  %cmp.not.i = icmp eq i32 %29, %22
  br i1 %cmp.not.i, label %keys_eq.exit, label %if.end21.if.then24_crit_edge

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

keys_eq.exit:                                     ; preds = %if.end21
  %arrayidx2.i115 = getelementptr [2 x i32], ptr %zbr, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx2.i115 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %26)
  %cmp4.not.i.not = icmp eq i32 %31, %26
  br i1 %cmp4.not.i.not, label %keys_eq.exit.cleanup_crit_edge, label %keys_eq.exit.if.then24_crit_edge

keys_eq.exit.if.then24_crit_edge:                 ; preds = %keys_eq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

keys_eq.exit.cleanup_crit_edge:                   ; preds = %keys_eq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %keys_eq.exit.if.then24_crit_edge, %if.end21.if.then24_crit_edge
  %32 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lnum, align 4
  %34 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offs, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.50, i32 noundef %33, i32 noundef %35) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %36 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @validate_data_node.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@validate_data_node, %if.then32)) #12
          to label %do.end [label %if.then32], !srcloc !231

if.then32:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %37 = tail call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid, align 8
  %call36 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @validate_data_node.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.52, i32 noundef %42, ptr noundef %call36) #12
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.then24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf41) #12
  %43 = call ptr @memset(ptr %__tmp_key_buf41, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @validate_data_node.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@validate_data_node, %if.then54)) #12
          to label %do.end62 [label %if.then54], !srcloc !231

if.then54:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %44 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i118 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i118 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task56, align 8
  %pid57 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid57, align 8
  %call59 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %__tmp_key_buf41, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @validate_data_node.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.53, i32 noundef %49, ptr noundef %call59) #12
  br label %do.end62

do.end62:                                         ; preds = %if.then54, %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf41) #12
  br label %out

out:                                              ; preds = %do.end62, %if.then19, %if.then5, %if.then
  %err.0 = phi i32 [ %call, %if.then5 ], [ -22, %do.end62 ], [ -22, %if.then19 ], [ -22, %if.then ]
  %lnum66 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %50 = ptrtoint ptr %lnum66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lnum66, align 4
  %offs67 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %52 = ptrtoint ptr %offs67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offs67, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.54, i32 noundef %51, i32 noundef %53) #12
  %len68 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %54 = ptrtoint ptr %len68 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len68, align 4
  call void @ubifs_dump_node(ptr noundef %c, ptr noundef %buf, i32 noundef %55) #12
  call void @dump_stack() #16
  br label %cleanup

cleanup:                                          ; preds = %out, %keys_eq.exit.cleanup_crit_edge, %if.then9
  %retval.0 = phi i32 [ %err.0, %out ], [ %call1.i, %if.then9 ], [ 0, %keys_eq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key1) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_lookup_nm(ptr noundef %c, ptr noundef %key, ptr noundef %node, ptr nocapture noundef readonly %nm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ubifs_tnc_locate(ptr noundef %c, ptr noundef %key, ptr noundef %node, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %node, i32 0, i32 5
  %0 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %nlen, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %len1 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp = icmp eq i32 %4, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %node, i32 0, i32 7
  %5 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk_name, align 4
  %bcmp = tail call i32 @bcmp(ptr %name, ptr %6, i32 %conv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @do_lookup_nm(ptr noundef %c, ptr noundef %key, ptr noundef %node, ptr noundef %nm)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_lookup_nm(ptr noundef %c, ptr noundef %key, ptr noundef %node, ptr nocapture noundef readonly %nm) unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %2 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_lookup_nm.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_lookup_nm, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_lookup_nm.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.11, i32 noundef %8, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %call8 = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end.out_unlock_crit_edge, label %if.else

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.else.out_unlock_crit_edge, label %do.body14

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

do.body14:                                        ; preds = %if.else
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15 = icmp slt i32 %10, 0
  br i1 %cmp15, label %if.then24, label %do.body14.do.end27_crit_edge, !prof !230

do.body14.do.end27_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then24:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.2, i32 noundef 1825) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body14.do.end27_crit_edge
  %call28 = call fastcc i32 @resolve_collision(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n, ptr noundef %nm)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_lookup_nm.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_lookup_nm, %if.then41)) #12
          to label %do.end47 [label %if.then41], !srcloc !231

if.then41:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %11 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i78 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i78 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task43, align 8
  %pid44 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid44, align 8
  %17 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %znode, align 4
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_lookup_nm.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.19, i32 noundef %16, i32 noundef %call28, ptr noundef %18, i32 noundef %20) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp48 = icmp slt i32 %call28, 0
  br i1 %cmp48, label %do.end47.out_unlock_crit_edge, label %if.end56, !prof !230

do.end47.out_unlock_crit_edge:                    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end56:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp57 = icmp eq i32 %call28, 0
  br i1 %cmp57, label %if.end56.out_unlock_crit_edge, label %if.end59

if.end56.out_unlock_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end59:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %znode, align 4
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %22, i32 0, i32 13, i32 %24
  %call60 = call fastcc i32 @tnc_read_hashed_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %node)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end59, %if.end56.out_unlock_crit_edge, %do.end47.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %do.end.out_unlock_crit_edge
  %err.0 = phi i32 [ %call28, %do.end47.out_unlock_crit_edge ], [ %call60, %if.end59 ], [ -2, %do.end.out_unlock_crit_edge ], [ %call8, %if.else.out_unlock_crit_edge ], [ -2, %if.end56.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_lookup_dh(ptr noundef %c, ptr noundef %key, ptr noundef %node, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  %n.i = alloca i32, align 4
  %znode.i = alloca ptr, align 4
  %start_key.i = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %double_hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %double_hash to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %double_hash, align 8
  %1 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @ubifs_tnc_locate(ptr noundef %c, ptr noundef %key, ptr noundef %node, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cookie4 = getelementptr inbounds %struct.ubifs_dent_node, ptr %node, i32 0, i32 6
  %2 = ptrtoint ptr %cookie4 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cookie4, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cookie)
  %cmp = icmp eq i32 %4, %cookie
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #12
  %5 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %n.i, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode.i) #12
  %6 = ptrtoint ptr %znode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode.i, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start_key.i) #12
  %arrayidx.i.i.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i, align 4
  %9 = and i32 %8, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %9)
  %.not.i = icmp eq i32 %9, 1073741824
  br i1 %.not.i, label %if.end6.do.end.i_crit_edge, label %if.then.i, !prof !235

if.end6.do.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 1929) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end6.do.end.i_crit_edge
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key, align 8
  %12 = ptrtoint ptr %start_key.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %start_key.i, align 8
  %arrayidx1.i.i = getelementptr inbounds [2 x i32], ptr %start_key.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1073741824, ptr %arrayidx1.i.i, align 4
  %tnc_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex.i, i32 noundef 0) #12
  %call5.i = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef nonnull %start_key.i, ptr noundef nonnull %znode.i, ptr noundef nonnull %n.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i.do_lookup_dh.exit_crit_edge, label %if.end13.i, !prof !230

do.end.i.do_lookup_dh.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_lookup_dh.exit

if.end13.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = call fastcc i32 @search_dh_cookie(ptr noundef %c, ptr noundef %key, ptr noundef %node, i32 noundef %cookie, ptr noundef nonnull %znode.i, ptr noundef nonnull %n.i, i32 noundef %call5.i) #12
  br label %do_lookup_dh.exit

do_lookup_dh.exit:                                ; preds = %if.end13.i, %do.end.i.do_lookup_dh.exit_crit_edge
  %err.0.i = phi i32 [ %call5.i, %do.end.i.do_lookup_dh.exit_crit_edge ], [ %call14.i, %if.end13.i ]
  call void @mutex_unlock(ptr noundef %tnc_mutex.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_key.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do_lookup_dh.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %do_lookup_dh.exit ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_add(ptr noundef %c, ptr noundef %key, i32 noundef %lnum, i32 noundef %offs, i32 noundef %len, ptr nocapture noundef readonly %hash) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  %zbr = alloca %struct.ubifs_zbranch, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %2 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_add.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_add, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_add.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.13, i32 noundef %8, i32 noundef %lnum, i32 noundef %offs, i32 noundef %len, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %call8 = call fastcc i32 @lookup_level0_dirty(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  %9 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call8, label %do.end.if.end34_crit_edge [
    i32 0, label %if.then10
    i32 1, label %if.then18
  ]

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %zbr) #12
  %10 = getelementptr inbounds i8, ptr %zbr, i32 24
  %11 = call ptr @memset(ptr %10, i32 255, i32 64)
  %12 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %12, align 8
  %lnum11 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %14 = ptrtoint ptr %lnum11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %lnum, ptr %lnum11, align 4
  %offs12 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %15 = ptrtoint ptr %offs12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %offs, ptr %offs12, align 8
  %len13 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %16 = ptrtoint ptr %len13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %len, ptr %len13, align 4
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %17 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %18 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %if.then10.ubifs_copy_hash.exit_crit_edge, label %if.then.i

if.then10.ubifs_copy_hash.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubifs_copy_hash.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %hash14 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 5
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %19 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hash_len.i, align 8
  %21 = call ptr @memcpy(ptr %hash14, ptr %hash, i32 %20)
  br label %ubifs_copy_hash.exit

ubifs_copy_hash.exit:                             ; preds = %if.then.i, %if.then10.ubifs_copy_hash.exit_crit_edge
  %22 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %key, align 8
  %24 = ptrtoint ptr %zbr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %zbr, align 8
  %25 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %znode, align 4
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  %add = add i32 %28, 1
  %call17 = call fastcc i32 @tnc_insert(ptr noundef %c, ptr noundef %26, ptr noundef nonnull %zbr, i32 noundef %add)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %zbr) #12
  br label %if.end30

if.then18:                                        ; preds = %do.end
  %29 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %znode, align 4
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %33 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %tobool.not.i63 = icmp eq ptr %35, null
  br i1 %tobool.not.i63, label %if.then18.lnc_free.exit_crit_edge, label %if.end.i

if.then18.lnc_free.exit_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %lnc_free.exit

if.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %35) #12
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %33, align 8
  br label %lnc_free.exit

lnc_free.exit:                                    ; preds = %if.end.i, %if.then18.lnc_free.exit_crit_edge
  %lnum20 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 2
  %37 = ptrtoint ptr %lnum20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lnum20, align 4
  %len21 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 4
  %39 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len21, align 4
  %call.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %38, i32 noundef -2147483647, i32 noundef %40, i32 noundef 0, i32 noundef 0) #12
  %41 = ptrtoint ptr %lnum20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %lnum, ptr %lnum20, align 4
  %offs24 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 3
  %42 = ptrtoint ptr %offs24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %offs, ptr %offs24, align 8
  %43 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %len, ptr %len21, align 4
  %authenticated.i.i64 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %44 = ptrtoint ptr %authenticated.i.i64 to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i.i65 = load i16, ptr %authenticated.i.i64, align 8
  %45 = and i16 %bf.load.i.i65, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i66 = icmp eq i16 %45, 0
  br i1 %tobool.not.i66, label %lnc_free.exit.if.end30_crit_edge, label %if.then.i68

lnc_free.exit.if.end30_crit_edge:                 ; preds = %lnc_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then.i68:                                      ; preds = %lnc_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  %hash26 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 5
  %hash_len.i67 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %46 = ptrtoint ptr %hash_len.i67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hash_len.i67, align 8
  %48 = call ptr @memcpy(ptr %hash26, ptr %hash, i32 %47)
  br label %if.end30

if.end30:                                         ; preds = %if.then.i68, %lnc_free.exit.if.end30_crit_edge, %ubifs_copy_hash.exit
  %err.0 = phi i32 [ %call17, %ubifs_copy_hash.exit ], [ %call.i, %lnc_free.exit.if.end30_crit_edge ], [ %call.i, %if.then.i68 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool31.not = icmp eq i32 %err.0, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 0) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge, %do.end.if.end34_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end30.if.end34_crit_edge ], [ %call33, %if.then32 ], [ %call8, %do.end.if.end34_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lookup_level0_dirty(ptr noundef %c, ptr noundef %key, ptr nocapture noundef writeonly %zn, ptr noundef %n) unnamed_addr #0 align 64 {
entry:
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %call = tail call i64 @ktime_get_seconds() #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %0 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lookup_level0_dirty, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call6 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lookup_level0_dirty.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.58, i32 noundef %6, ptr noundef %call6) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %zroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.then18, label %do.end.if.end25_crit_edge, !prof !230

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18:                                        ; preds = %do.end
  %call20 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %zroot, ptr noundef null, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call20 to i32
  br label %cleanup176

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %do.end.if.end25_crit_edge
  %call27 = call fastcc ptr @dirty_cow_znode(ptr noundef %c, ptr noundef %zroot)
  %11 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call27, ptr %znode, align 4
  %cmp.i228 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call27 to i32
  br label %cleanup176

if.end31:                                         ; preds = %if.end25
  %time32 = getelementptr inbounds %struct.ubifs_znode, ptr %call27, i32 0, i32 5
  %13 = ptrtoint ptr %time32 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call, ptr %time32, align 8
  %14 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %14)
  %znode.promoted = load ptr, ptr %znode, align 4
  %call33261 = call i32 @ubifs_search_zbranch(ptr noundef %c, ptr noundef %znode.promoted, ptr noundef %key, ptr noundef %n) #12
  %level262 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.promoted, i32 0, i32 6
  %15 = ptrtoint ptr %level262 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level262, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp263 = icmp eq i32 %16, 0
  br i1 %cmp263, label %if.end31.while.end_crit_edge, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  br label %if.end35

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end35:                                         ; preds = %cleanup.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %call53256264 = phi ptr [ %call53257, %cleanup.if.end35_crit_edge ], [ %znode.promoted, %if.end31.if.end35_crit_edge ]
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp36 = icmp slt i32 %18, 0
  br i1 %cmp36, label %if.then37, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %n, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %call53256264, i32 0, i32 13, i32 %21
  %22 = getelementptr %struct.ubifs_znode, ptr %call53256264, i32 0, i32 13, i32 %21, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %tobool39.not = icmp eq ptr %24, null
  br i1 %tobool39.not, label %if.end47, label %if.then40

if.then40:                                        ; preds = %if.end38
  %time41 = getelementptr inbounds %struct.ubifs_znode, ptr %call53256264, i32 0, i32 5
  %25 = ptrtoint ptr %time41 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call, ptr %time41, align 8
  %call42 = call fastcc ptr @dirty_cow_znode(ptr noundef %c, ptr noundef %arrayidx)
  %cmp.i229 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %if.then44, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call42, ptr %znode, align 4
  %27 = ptrtoint ptr %call42 to i32
  br label %cleanup176

if.end47:                                         ; preds = %if.end38
  %call48 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %call53256264, i32 noundef %21) #12
  %cmp.i230 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call48, ptr %znode, align 4
  %29 = ptrtoint ptr %call48 to i32
  br label %cleanup176

if.end52:                                         ; preds = %if.end47
  %call53 = call fastcc ptr @dirty_cow_znode(ptr noundef %c, ptr noundef %arrayidx)
  %cmp.i231 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.then55, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call53, ptr %znode, align 4
  %31 = ptrtoint ptr %call53 to i32
  br label %cleanup176

cleanup:                                          ; preds = %if.end52.cleanup_crit_edge, %if.then40.cleanup_crit_edge
  %call53257 = phi ptr [ %call53, %if.end52.cleanup_crit_edge ], [ %call42, %if.then40.cleanup_crit_edge ]
  %call33 = call i32 @ubifs_search_zbranch(ptr noundef %c, ptr noundef %call53257, ptr noundef %key, ptr noundef %n) #12
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %call53257, i32 0, i32 6
  %32 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level, align 8
  %cmp = icmp eq i32 %33, 0
  br i1 %cmp, label %cleanup.while.end_crit_edge, label %cleanup.if.end35_crit_edge

cleanup.if.end35_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end31.while.end_crit_edge
  %call53256.lcssa = phi ptr [ %znode.promoted, %if.end31.while.end_crit_edge ], [ %call53257, %cleanup.while.end_crit_edge ]
  %call33.lcssa = phi i32 [ %call33261, %if.end31.while.end_crit_edge ], [ %call33, %cleanup.while.end_crit_edge ]
  %34 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call53256.lcssa, ptr %znode, align 4
  %35 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call53256.lcssa, ptr %zn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.lcssa)
  %tobool58.not = icmp eq i32 %call33.lcssa, 0
  br i1 %tobool58.not, label %lor.lhs.false, label %while.end.do.body64_crit_edge

while.end.do.body64_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

lor.lhs.false:                                    ; preds = %while.end
  %arrayidx.i.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  %38 = and i32 %37, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %38)
  %.not = icmp eq i32 %38, 1073741824
  br i1 %.not, label %lor.lhs.false61, label %lor.lhs.false.do.body64_crit_edge

lor.lhs.false.do.body64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

lor.lhs.false61:                                  ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp62.not = icmp eq i32 %40, -1
  br i1 %cmp62.not, label %if.end84, label %lor.lhs.false61.do.body64_crit_edge

lor.lhs.false61.do.body64_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

do.body64:                                        ; preds = %lor.lhs.false61.do.body64_crit_edge, %lor.lhs.false.do.body64_crit_edge, %while.end.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lookup_level0_dirty, %if.then76)) #12
          to label %cleanup176 [label %if.then76], !srcloc !231

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  %41 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i232 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i232 to ptr
  %task78 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task78, align 8
  %pid79 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid79 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid79, align 8
  %47 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %znode, align 4
  %level80 = getelementptr inbounds %struct.ubifs_znode, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %level80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %level80, align 8
  %51 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lookup_level0_dirty.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.5, i32 noundef %46, i32 noundef %call33.lcssa, i32 noundef %50, i32 noundef %52) #12
  br label %cleanup176

if.end84:                                         ; preds = %lor.lhs.false61
  %call85 = call fastcc i32 @tnc_prev(ptr noundef %c, ptr noundef nonnull %znode, ptr noundef %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call85)
  %cmp86 = icmp eq i32 %call85, -2
  br i1 %cmp86, label %if.then87, label %if.end108

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %n, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lookup_level0_dirty, %if.then100)) #12
          to label %cleanup176 [label %if.then100], !srcloc !231

if.then100:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  %54 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i233 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i233 to ptr
  %task102 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task102, align 8
  %pid103 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid103, align 8
  %60 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %znode, align 4
  %level104 = getelementptr inbounds %struct.ubifs_znode, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %level104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %level104, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lookup_level0_dirty.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.6, i32 noundef %59, i32 noundef %63) #12
  br label %cleanup176

if.end108:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp109 = icmp slt i32 %call85, 0
  br i1 %cmp109, label %if.end108.cleanup176_crit_edge, label %if.end117, !prof !230

if.end108.cleanup176_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup176

if.end117:                                        ; preds = %if.end108
  %64 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %znode, align 4
  %66 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n, align 4
  %arrayidx119 = getelementptr %struct.ubifs_znode, ptr %65, i32 0, i32 13, i32 %67
  %68 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %key, align 8
  %70 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx119, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %.not251 = icmp eq i32 %69, %71
  br i1 %.not251, label %if.end6.i, label %if.end117.if.then123_crit_edge

if.end117.if.then123_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then123

if.end6.i:                                        ; preds = %if.end117
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx8.i = getelementptr [2 x i32], ptr %arrayidx119, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %.not266 = icmp eq i32 %73, %75
  br i1 %.not266, label %if.end144, label %if.end6.i.if.then123_crit_edge

if.end6.i.if.then123_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then123

if.then123:                                       ; preds = %if.end6.i.if.then123_crit_edge, %if.end117.if.then123_crit_edge
  %76 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %n, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lookup_level0_dirty, %if.then136)) #12
          to label %cleanup176 [label %if.then136], !srcloc !231

if.then136:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  %77 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i236 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i236 to ptr
  %task138 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task138 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task138, align 8
  %pid139 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %pid139 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pid139, align 8
  %83 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %znode, align 4
  %level140 = getelementptr inbounds %struct.ubifs_znode, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %level140 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %level140, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lookup_level0_dirty.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.6, i32 noundef %82, i32 noundef %86) #12
  br label %cleanup176

if.end144:                                        ; preds = %if.end6.i
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 1
  %87 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cnext, align 4
  %tobool145.not = icmp eq ptr %88, null
  br i1 %tobool145.not, label %lor.lhs.false146, label %if.end144.if.then149_crit_edge

if.end144.if.then149_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then149

lor.lhs.false146:                                 ; preds = %if.end144
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %65, i32 0, i32 4
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool148.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool148.not, label %lor.lhs.false146.if.then149_crit_edge, label %lor.lhs.false146.do.body156_crit_edge

lor.lhs.false146.do.body156_crit_edge:            ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body156

lor.lhs.false146.if.then149_crit_edge:            ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then149

if.then149:                                       ; preds = %lor.lhs.false146.if.then149_crit_edge, %if.end144.if.then149_crit_edge
  %call150 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %c, ptr noundef %65)
  %91 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call150, ptr %znode, align 4
  %cmp.i237 = icmp ugt ptr %call150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.then152, label %if.then149.do.body156_crit_edge

if.then149.do.body156_crit_edge:                  ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body156

if.then152:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %call150 to i32
  br label %cleanup176

do.body156:                                       ; preds = %if.then149.do.body156_crit_edge, %lor.lhs.false146.do.body156_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lookup_level0_dirty, %if.then168)) #12
          to label %do.end175 [label %if.then168], !srcloc !231

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #14
  %93 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i238 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i238 to ptr
  %task170 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task170 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task170, align 8
  %pid171 = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 68
  %97 = ptrtoint ptr %pid171 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pid171, align 8
  %99 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %znode, align 4
  %level172 = getelementptr inbounds %struct.ubifs_znode, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %level172 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %level172, align 8
  %103 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lookup_level0_dirty.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.7, i32 noundef %98, i32 noundef %102, i32 noundef %104) #12
  br label %do.end175

do.end175:                                        ; preds = %if.then168, %do.body156
  %105 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %znode, align 4
  %107 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %zn, align 4
  br label %cleanup176

cleanup176:                                       ; preds = %do.end175, %if.then152, %if.then136, %if.then123, %if.end108.cleanup176_crit_edge, %if.then100, %if.then87, %if.then76, %do.body64, %if.then55, %if.then50, %if.then44, %if.then29, %if.then22
  %retval.2 = phi i32 [ %10, %if.then22 ], [ %12, %if.then29 ], [ %92, %if.then152 ], [ 1, %do.end175 ], [ %call33.lcssa, %if.then76 ], [ 0, %if.then100 ], [ %call85, %if.end108.cleanup176_crit_edge ], [ 0, %if.then136 ], [ %call33.lcssa, %do.body64 ], [ 0, %if.then87 ], [ 0, %if.then123 ], [ %31, %if.then55 ], [ %29, %if.then50 ], [ %27, %if.then44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tnc_insert(ptr noundef %c, ptr noundef %znode, ptr noundef %zbr, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  %__tmp_key_buf = alloca [48 x i8], align 1
  %__tmp_key_buf49 = alloca [48 x i8], align 1
  %__tmp_key_buf204 = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n)
  %cmp = icmp sgt i32 %n, -1
  br i1 %cmp, label %land.rhs, label %entry.if.then_crit_edge, !prof !235

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.rhs:                                         ; preds = %entry
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %0 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fanout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %n)
  %cmp3.not = icmp slt i32 %1, %n
  br i1 %cmp3.not, label %land.rhs.if.then_crit_edge, label %land.rhs.do.end_crit_edge, !prof !230

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %land.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.2, i32 noundef 2087) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.rhs.do.end_crit_edge
  %fanout6 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %2 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %znode, align 8
  %child_cnt662 = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 7
  %4 = ptrtoint ptr %child_cnt662 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %child_cnt662, align 4
  %6 = ptrtoint ptr %fanout6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fanout6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7663 = icmp slt i32 %5, %7
  br i1 %cmp7663, label %do.end.do.body9_crit_edge, label %do.body48.lr.ph

do.end.do.body9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

do.body48.lr.ph:                                  ; preds = %do.end
  %len10.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 4
  %lnum14.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 2
  %offs16.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 3
  %max_znode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 94
  %arrayidx.i514 = getelementptr [2 x i32], ptr %zbr, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 1
  %dirty_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %offs = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  br label %do.body48

do.body9:                                         ; preds = %if.end238.do.body9_crit_edge, %do.end.do.body9_crit_edge
  %n.addr.0.lcssa = phi i32 [ %n, %do.end.do.body9_crit_edge ], [ %add240, %if.end238.do.body9_crit_edge ]
  %znode.addr.0.lcssa = phi ptr [ %znode, %do.end.do.body9_crit_edge ], [ %63, %if.end238.do.body9_crit_edge ]
  %.lcssa648 = phi ptr [ %3, %do.end.do.body9_crit_edge ], [ %216, %if.end238.do.body9_crit_edge ]
  %child_cnt.lcssa = phi ptr [ %child_cnt662, %do.end.do.body9_crit_edge ], [ %child_cnt, %if.end238.do.body9_crit_edge ]
  %.lcssa = phi i32 [ %7, %do.end.do.body9_crit_edge ], [ %220, %if.end238.do.body9_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.addr.0.lcssa, i32 %.lcssa)
  %cmp11.not = icmp eq i32 %n.addr.0.lcssa, %.lcssa
  br i1 %cmp11.not, label %if.then20, label %do.body9.do.body24_crit_edge, !prof !230

do.body9.do.body24_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

if.then20:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.2, i32 noundef 2093) #12
  br label %do.body24

do.body24:                                        ; preds = %if.then20, %do.body9.do.body24_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %9 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnc_insert.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tnc_insert, %if.then33)) #12
          to label %do.end38 [label %if.then33], !srcloc !231

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %10 = call i32 @llvm.read_register.i32(metadata !220) #12
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
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 6
  %16 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level, align 8
  %call35 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnc_insert.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.63, i32 noundef %15, i32 noundef %n.addr.0.lcssa, i32 noundef %17, ptr noundef %call35) #12
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 4
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end38.do.end.i_crit_edge, !prof !230

do.end38.do.end.i_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 2033) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end38.do.end.i_crit_edge
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 6
  %20 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %child_cnt.lcssa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %child_cnt.lcssa, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %n.addr.0.lcssa)
  %cmp2169.i = icmp sgt i32 %23, %n.addr.0.lcssa
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.end.i
  br i1 %cmp2169.i, label %if.then5.i.for.body.i_crit_edge, label %if.then5.i.for.end.i_crit_edge

if.then5.i.for.end.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.then5.i.for.body.i_crit_edge:                  ; preds = %if.then5.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5.i.for.body.i_crit_edge
  %i.068.i = phi i32 [ %sub.i, %for.inc.i.for.body.i_crit_edge ], [ %23, %if.then5.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 13, i32 %i.068.i
  %sub.i = add nsw i32 %i.068.i, -1
  %arrayidx7.i = getelementptr %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 13, i32 %sub.i
  %24 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx7.i, i32 88)
  %25 = getelementptr %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 13, i32 %i.068.i, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %tobool10.not.i = icmp eq ptr %27, null
  br i1 %tobool10.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %iip.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.068.i, ptr %iip.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %for.body.i.for.inc.i_crit_edge
  %cmp.i = icmp sgt i32 %sub.i, %n.addr.0.lcssa
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then5.i.for.end.i_crit_edge
  %29 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %tobool15.not.i = icmp eq ptr %31, null
  br i1 %tobool15.not.i, label %for.end.i.if.end31.i_crit_edge, label %if.then16.i

for.end.i.if.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %iip17.i = getelementptr inbounds %struct.ubifs_znode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %iip17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %n.addr.0.lcssa, ptr %iip17.i, align 8
  br label %if.end31.i

if.else.i:                                        ; preds = %do.end.i
  br i1 %cmp2169.i, label %if.else.i.for.body22.i_crit_edge, label %if.else.i.if.end31.i_crit_edge

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.else.i.for.body22.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %if.else.i.for.body22.i_crit_edge
  %i.170.i = phi i32 [ %sub26.i, %for.body22.i.for.body22.i_crit_edge ], [ %23, %if.else.i.for.body22.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 13, i32 %i.170.i
  %sub26.i = add nsw i32 %i.170.i, -1
  %arrayidx27.i = getelementptr %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 13, i32 %sub26.i
  %33 = call ptr @memcpy(ptr %arrayidx24.i, ptr %arrayidx27.i, i32 88)
  %cmp21.i = icmp sgt i32 %sub26.i, %n.addr.0.lcssa
  br i1 %cmp21.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.if.end31.i_crit_edge

for.body22.i.if.end31.i_crit_edge:                ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22.i

if.end31.i:                                       ; preds = %for.body22.i.if.end31.i_crit_edge, %if.else.i.if.end31.i_crit_edge, %if.then16.i, %for.end.i.if.end31.i_crit_edge
  %arrayidx33.i = getelementptr %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 13, i32 %n.addr.0.lcssa
  %34 = call ptr @memcpy(ptr %arrayidx33.i, ptr %zbr, i32 88)
  %35 = ptrtoint ptr %child_cnt.lcssa to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %child_cnt.lcssa, align 4
  %add.i = add i32 %36, 1
  store i32 %add.i, ptr %child_cnt.lcssa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.lcssa)
  %cmp35.i = icmp eq i32 %n.addr.0.lcssa, 0
  br i1 %cmp35.i, label %insert_zbranch.exit, label %if.end31.i.cleanup_crit_edge

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

insert_zbranch.exit:                              ; preds = %if.end31.i
  %alt.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 9
  %37 = ptrtoint ptr %alt.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %alt.i, align 4
  %tobool42.not = icmp eq ptr %.lcssa648, null
  br i1 %tobool42.not, label %insert_zbranch.exit.cleanup_crit_edge, label %land.lhs.true43

insert_zbranch.exit.cleanup_crit_edge:            ; preds = %insert_zbranch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true43:                                  ; preds = %insert_zbranch.exit
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 8
  %38 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp44 = icmp eq i32 %39, 0
  br i1 %cmp44, label %if.then45, label %land.lhs.true43.cleanup_crit_edge

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true43
  %40 = ptrtoint ptr %znode.addr.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %znode.addr.0.lcssa, align 8
  %tobool.not.i502 = icmp eq ptr %41, null
  br i1 %tobool.not.i502, label %do.body4.i, label %if.then45.do.end16.i_crit_edge, !prof !230

if.then45.do.end16.i_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16.i

do.body4.i:                                       ; preds = %if.then45
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef 2000) #12
  %42 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %iip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i, label %do.body4.i.do.end16.i_crit_edge, label %if.then13.i, !prof !235

do.body4.i.do.end16.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16.i

if.then13.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef 2001) #12
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then13.i, %do.body4.i.do.end16.i_crit_edge, %if.then45.do.end16.i_crit_edge
  %zbranch.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 0, i32 13
  %43 = ptrtoint ptr %znode.addr.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %znode.addr.0.lcssa, align 8
  %arrayidx7.i.i = getelementptr %struct.ubifs_znode, ptr %znode.addr.0.lcssa, i32 1, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false.i.while.cond.i_crit_edge, %do.end16.i
  %znode.addr.0.i = phi ptr [ %znode.addr.0.lcssa, %do.end16.i ], [ %57, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %.pn.i = phi ptr [ %44, %do.end16.i ], [ %60, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %key1.0.i = getelementptr inbounds %struct.ubifs_znode, ptr %.pn.i, i32 0, i32 13
  %45 = ptrtoint ptr %zbranch.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %zbranch.i, align 8
  %47 = ptrtoint ptr %key1.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %key1.0.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp.i.i = icmp ult i32 %46, %48
  br i1 %cmp.i.i, label %while.cond.i.while.body.i_crit_edge, label %if.end.i.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp4.i.i = icmp ugt i32 %46, %48
  br i1 %cmp4.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end6.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %49 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.ubifs_znode, ptr %.pn.i, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp9.i.i = icmp ult i32 %50, %52
  br i1 %cmp9.i.i, label %if.end6.i.i.while.body.i_crit_edge, label %if.end6.i.i.cleanup_crit_edge

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i.i.while.body.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %53 = ptrtoint ptr %zbranch.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %zbranch.i, align 8
  %55 = ptrtoint ptr %key1.0.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %key1.0.i, align 8
  %56 = ptrtoint ptr %znode.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %znode.addr.0.i, align 8
  %alt.i505 = getelementptr inbounds %struct.ubifs_znode, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %alt.i505 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %alt.i505, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %57, align 8
  %tobool25.not.i = icmp eq ptr %60, null
  br i1 %tobool25.not.i, label %while.body.i.cleanup_crit_edge, label %lor.lhs.false.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %while.body.i
  %iip26.i = getelementptr inbounds %struct.ubifs_znode, ptr %57, i32 0, i32 8
  %61 = ptrtoint ptr %iip26.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iip26.i, align 8
  %tobool27.not.i = icmp eq i32 %62, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i.while.cond.i_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.body48:                                        ; preds = %if.end238.do.body48_crit_edge, %do.body48.lr.ph
  %child_cnt675 = phi ptr [ %child_cnt662, %do.body48.lr.ph ], [ %child_cnt, %if.end238.do.body48_crit_edge ]
  %63 = phi ptr [ %3, %do.body48.lr.ph ], [ %216, %if.end238.do.body48_crit_edge ]
  %znode.addr.0673 = phi ptr [ %znode, %do.body48.lr.ph ], [ %63, %if.end238.do.body48_crit_edge ]
  %n.addr.0665 = phi i32 [ %n, %do.body48.lr.ph ], [ %add240, %if.end238.do.body48_crit_edge ]
  %appending.0664 = phi i32 [ 0, %do.body48.lr.ph ], [ %appending.3, %if.end238.do.body48_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf49) #12
  %64 = call ptr @memset(ptr %__tmp_key_buf49, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnc_insert.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tnc_insert, %if.then62)) #12
          to label %do.end71 [label %if.then62], !srcloc !231

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %65 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i506 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i506 to ptr
  %task64 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task64, align 8
  %pid65 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 68
  %69 = ptrtoint ptr %pid65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pid65, align 8
  %level66 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 6
  %71 = ptrtoint ptr %level66 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %level66, align 8
  %call68 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %__tmp_key_buf49, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnc_insert.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.64, i32 noundef %70, i32 noundef %72, ptr noundef %call68) #12
  br label %do.end71

do.end71:                                         ; preds = %if.then62, %do.body48
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf49) #12
  %alt = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 9
  %73 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool74.not = icmp eq i32 %74, 0
  br i1 %tobool74.not, label %do.end71.if.end8.i.i_crit_edge, label %if.then75

do.end71.if.end8.i.i_crit_edge:                   ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then75:                                        ; preds = %do.end71
  %75 = ptrtoint ptr %znode.addr.0673 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %znode.addr.0673, align 8
  %tobool.not.i507 = icmp eq ptr %76, null
  br i1 %tobool.not.i507, label %if.else.i511, label %if.then.i509

if.then.i509:                                     ; preds = %if.then75
  %iip.i508 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 8
  %77 = ptrtoint ptr %iip.i508 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iip.i508, align 8
  %len.i = getelementptr %struct.ubifs_znode, ptr %76, i32 0, i32 13, i32 %78, i32 4
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool2.not.i = icmp eq i32 %80, 0
  br i1 %tobool2.not.i, label %if.then.i509.if.end8.i.i_crit_edge, label %if.then3.i

if.then.i509.if.end8.i.i_crit_edge:               ; preds = %if.then.i509
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then3.i:                                       ; preds = %if.then.i509
  %lnum.i = getelementptr %struct.ubifs_znode, ptr %76, i32 0, i32 13, i32 %78, i32 2
  %81 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %lnum.i, align 4
  %offs.i = getelementptr %struct.ubifs_znode, ptr %76, i32 0, i32 13, i32 %78, i32 3
  %83 = ptrtoint ptr %offs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offs.i, align 8
  %call.i = call fastcc i32 @insert_old_idx(ptr noundef %c, i32 noundef %82, i32 noundef %84) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i510 = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i510, label %if.then3.i.cleanup29.sink.split.i_crit_edge, label %if.then3.i.if.end8.i.i_crit_edge

if.then3.i.if.end8.i.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then3.i.cleanup29.sink.split.i_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29.sink.split.i

if.else.i511:                                     ; preds = %if.then75
  %85 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool11.not.i = icmp eq i32 %86, 0
  br i1 %tobool11.not.i, label %if.else.i511.if.end8.i.i_crit_edge, label %if.then12.i

if.else.i511.if.end8.i.i_crit_edge:               ; preds = %if.else.i511
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then12.i:                                      ; preds = %if.else.i511
  %87 = ptrtoint ptr %lnum14.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %lnum14.i, align 4
  %89 = ptrtoint ptr %offs16.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offs16.i, align 8
  %call17.i = call fastcc i32 @insert_old_idx(ptr noundef %c, i32 noundef %88, i32 noundef %90) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then12.i.cleanup29.sink.split.i_crit_edge, label %if.then12.i.if.end8.i.i_crit_edge

if.then12.i.if.end8.i.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then12.i.cleanup29.sink.split.i_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29.sink.split.i

cleanup29.sink.split.i:                           ; preds = %if.then12.i.cleanup29.sink.split.i_crit_edge, %if.then3.i.cleanup29.sink.split.i_crit_edge
  %lnum14.sink.i = phi ptr [ %lnum.i, %if.then3.i.cleanup29.sink.split.i_crit_edge ], [ %lnum14.i, %if.then12.i.cleanup29.sink.split.i_crit_edge ]
  %offs16.sink.i = phi ptr [ %offs.i, %if.then3.i.cleanup29.sink.split.i_crit_edge ], [ %offs16.i, %if.then12.i.cleanup29.sink.split.i_crit_edge ]
  %len10.sink.i = phi ptr [ %len.i, %if.then3.i.cleanup29.sink.split.i_crit_edge ], [ %len10.i, %if.then12.i.cleanup29.sink.split.i_crit_edge ]
  %91 = ptrtoint ptr %lnum14.sink.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %lnum14.sink.i, align 4
  %92 = ptrtoint ptr %offs16.sink.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %offs16.sink.i, align 8
  %93 = ptrtoint ptr %len10.sink.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %len10.sink.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cleanup29.sink.split.i, %if.then12.i.if.end8.i.i_crit_edge, %if.else.i511.if.end8.i.i_crit_edge, %if.then3.i.if.end8.i.i_crit_edge, %if.then.i509.if.end8.i.i_crit_edge, %do.end71.if.end8.i.i_crit_edge
  %94 = ptrtoint ptr %max_znode_sz to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_znode_sz, align 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %95, i32 noundef 3392) #18
  %tobool79.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool79.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end81

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end81:                                         ; preds = %if.end8.i.i
  %96 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %63, ptr %call9.i.i, align 128
  %level83 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 6
  %97 = ptrtoint ptr %level83 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %level83, align 8
  %level84 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 6
  %99 = ptrtoint ptr %level84 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %level84, align 32
  %100 = load i32, ptr %level83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp86 = icmp eq i32 %100, 0
  br i1 %cmp86, label %land.lhs.true87, label %if.end81.if.else104_crit_edge

if.end81.if.else104_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else104

land.lhs.true87:                                  ; preds = %if.end81
  %101 = ptrtoint ptr %arrayidx.i514 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i514, align 4
  %shr.i.mask = and i32 %102, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.mask)
  %cmp89 = icmp eq i32 %shr.i.mask, 536870912
  br i1 %cmp89, label %if.then90, label %land.lhs.true87.if.else104_crit_edge

land.lhs.true87.if.else104_crit_edge:             ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else104

if.then90:                                        ; preds = %land.lhs.true87
  %103 = ptrtoint ptr %fanout6 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fanout6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.addr.0665, i32 %104)
  %cmp92 = icmp eq i32 %n.addr.0665, %104
  br i1 %cmp92, label %if.then93, label %if.then90.check_split_crit_edge

if.then90.check_split_crit_edge:                  ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_split

if.then93:                                        ; preds = %if.then90
  %sub = add i32 %n.addr.0665, -1
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 13, i32 %sub
  %105 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx, align 8
  %107 = ptrtoint ptr %zbr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %zbr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp97 = icmp eq i32 %106, %108
  br i1 %cmp97, label %land.lhs.true98, label %if.then93.if.end138_crit_edge

if.then93.if.end138_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

land.lhs.true98:                                  ; preds = %if.then93
  %arrayidx.i515 = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx.i515 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i515, align 4
  %shr.i516.mask = and i32 %110, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i516.mask)
  %cmp100 = icmp eq i32 %shr.i516.mask, 536870912
  br i1 %cmp100, label %land.lhs.true98.if.then140_crit_edge, label %land.lhs.true98.if.end138_crit_edge

land.lhs.true98.if.end138_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

land.lhs.true98.if.then140_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then140

if.else104:                                       ; preds = %land.lhs.true87.if.else104_crit_edge, %if.end81.if.else104_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %appending.0664)
  %tobool105.not = icmp eq i32 %appending.0664, 0
  br i1 %tobool105.not, label %if.else104.if.else142_crit_edge, label %land.lhs.true106

if.else104.if.else142_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else142

land.lhs.true106:                                 ; preds = %if.else104
  %111 = ptrtoint ptr %fanout6 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fanout6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.addr.0665, i32 %112)
  %cmp108.not = icmp eq i32 %n.addr.0665, %112
  br i1 %cmp108.not, label %land.lhs.true106.if.then140_crit_edge, label %land.lhs.true106.check_split_crit_edge

land.lhs.true106.check_split_crit_edge:           ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_split

land.lhs.true106.if.then140_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then140

check_split:                                      ; preds = %land.lhs.true106.check_split_crit_edge, %if.then90.check_split_crit_edge
  %appending.1 = phi i32 [ %appending.0664, %if.then90.check_split_crit_edge ], [ 0, %land.lhs.true106.check_split_crit_edge ]
  %113 = ptrtoint ptr %fanout6 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fanout6, align 4
  %add = add i32 %114, 1
  %div = sdiv i32 %add, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %n.addr.0665, i32 %div)
  %cmp111.not = icmp slt i32 %n.addr.0665, %div
  br i1 %cmp111.not, label %check_split.if.end138_crit_edge, label %if.then112

check_split.if.end138_crit_edge:                  ; preds = %check_split
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then112:                                       ; preds = %check_split
  %zbranch113 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 13
  %115 = ptrtoint ptr %zbranch113 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %zbranch113, align 8
  %117 = ptrtoint ptr %zbr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %zbr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp118 = icmp eq i32 %116, %118
  br i1 %cmp118, label %land.lhs.true119, label %if.then112.if.end138_crit_edge

if.then112.if.end138_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

land.lhs.true119:                                 ; preds = %if.then112
  %arrayidx.i517 = getelementptr %struct.ubifs_znode, ptr %znode.addr.0673, i32 1, i32 1
  %119 = ptrtoint ptr %arrayidx.i517 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i517, align 4
  %shr.i518.mask = and i32 %120, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i518.mask)
  %cmp121 = icmp eq i32 %shr.i518.mask, 536870912
  br i1 %cmp121, label %if.then122, label %land.lhs.true119.if.end138_crit_edge

land.lhs.true119.if.end138_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then122:                                       ; preds = %land.lhs.true119
  %arrayidx124 = getelementptr %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 13, i32 %n.addr.0665
  %121 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx124, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %116)
  %cmp128.not = icmp eq i32 %122, %116
  br i1 %cmp128.not, label %lor.lhs.false, label %if.then122.if.then131_crit_edge

if.then122.if.then131_crit_edge:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then131

lor.lhs.false:                                    ; preds = %if.then122
  %arrayidx.i519 = getelementptr [2 x i32], ptr %arrayidx124, i32 0, i32 1
  %123 = ptrtoint ptr %arrayidx.i519 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i519, align 4
  %shr.i520.mask = and i32 %124, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i520.mask)
  %cmp130.not = icmp eq i32 %shr.i520.mask, 536870912
  br i1 %cmp130.not, label %lor.lhs.false.if.end138_crit_edge, label %lor.lhs.false.if.then131_crit_edge

lor.lhs.false.if.then131_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then131

lor.lhs.false.if.end138_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then131:                                       ; preds = %lor.lhs.false.if.then131_crit_edge, %if.then122.if.then131_crit_edge
  %sub133 = sub i32 %114, %n.addr.0665
  br label %do_split

if.end138:                                        ; preds = %lor.lhs.false.if.end138_crit_edge, %land.lhs.true119.if.end138_crit_edge, %if.then112.if.end138_crit_edge, %check_split.if.end138_crit_edge, %land.lhs.true98.if.end138_crit_edge, %if.then93.if.end138_crit_edge
  %appending.2 = phi i32 [ %appending.0664, %if.then93.if.end138_crit_edge ], [ %appending.1, %lor.lhs.false.if.end138_crit_edge ], [ %appending.1, %land.lhs.true119.if.end138_crit_edge ], [ %appending.1, %if.then112.if.end138_crit_edge ], [ %appending.1, %check_split.if.end138_crit_edge ], [ %appending.0664, %land.lhs.true98.if.end138_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %appending.2)
  %tobool139.not = icmp eq i32 %appending.2, 0
  br i1 %tobool139.not, label %if.end138.if.else142_crit_edge, label %if.end138.if.then140_crit_edge

if.end138.if.then140_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then140

if.end138.if.else142_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else142

if.then140:                                       ; preds = %if.end138.if.then140_crit_edge, %land.lhs.true106.if.then140_crit_edge, %land.lhs.true98.if.then140_crit_edge
  %appending.2630 = phi i32 [ %appending.2, %if.end138.if.then140_crit_edge ], [ %appending.0664, %land.lhs.true106.if.then140_crit_edge ], [ 1, %land.lhs.true98.if.then140_crit_edge ]
  %125 = ptrtoint ptr %fanout6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %fanout6, align 4
  br label %if.end148

if.else142:                                       ; preds = %if.end138.if.else142_crit_edge, %if.else104.if.else142_crit_edge
  %127 = ptrtoint ptr %fanout6 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fanout6, align 4
  %add144 = add i32 %128, 1
  %div145 = sdiv i32 %add144, 2
  %sub147 = sub i32 %128, %div145
  br label %if.end148

if.end148:                                        ; preds = %if.else142, %if.then140
  %appending.2629 = phi i32 [ %appending.2630, %if.then140 ], [ 0, %if.else142 ]
  %move.0 = phi i32 [ 0, %if.then140 ], [ %sub147, %if.else142 ]
  %keep.0 = phi i32 [ %126, %if.then140 ], [ %div145, %if.else142 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.addr.0665, i32 %keep.0)
  %cmp149 = icmp slt i32 %n.addr.0665, %keep.0
  br i1 %cmp149, label %if.then150, label %if.else153

if.then150:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  %add151 = add i32 %move.0, 1
  %sub152 = add nsw i32 %keep.0, -1
  br label %do_split

if.else153:                                       ; preds = %if.end148
  %sub154 = sub i32 %n.addr.0665, %keep.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp156.not = icmp eq i32 %98, 0
  br i1 %cmp156.not, label %if.else153.do_split_crit_edge, label %if.then157

if.else153.do_split_crit_edge:                    ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_split

if.then157:                                       ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %8, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call9.i.i, ptr %130, align 8
  br label %do_split

do_split:                                         ; preds = %if.then157, %if.else153.do_split_crit_edge, %if.then150, %if.then131
  %appending.3 = phi i32 [ %appending.2629, %if.then150 ], [ %appending.2629, %if.then157 ], [ %appending.2629, %if.else153.do_split_crit_edge ], [ %appending.1, %if.then131 ]
  %move.1 = phi i32 [ %add151, %if.then150 ], [ %move.0, %if.then157 ], [ %move.0, %if.else153.do_split_crit_edge ], [ %sub133, %if.then131 ]
  %keep.1 = phi i32 [ %sub152, %if.then150 ], [ %keep.0, %if.then157 ], [ %keep.0, %if.else153.do_split_crit_edge ], [ %n.addr.0665, %if.then131 ]
  %zi.0 = phi ptr [ %znode.addr.0673, %if.then150 ], [ %call9.i.i, %if.then157 ], [ %call9.i.i, %if.else153.do_split_crit_edge ], [ %znode.addr.0673, %if.then131 ]
  %n.addr.1 = phi i32 [ %n.addr.0665, %if.then150 ], [ %sub154, %if.then157 ], [ %sub154, %if.else153.do_split_crit_edge ], [ %n.addr.0665, %if.then131 ]
  %flags = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 4
  %132 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags, align 16
  %or.i = or i32 %133, 1
  store i32 %or.i, ptr %flags, align 16
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_zn_cnt, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %dirty_zn_cnt, i32 1, i32 3, i32 1) #12
  %134 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_zn_cnt, ptr %dirty_zn_cnt, i32 1, ptr elementtype(i32) %dirty_zn_cnt) #12, !srcloc !237
  %child_cnt161 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 7
  %135 = ptrtoint ptr %child_cnt161 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %move.1, ptr %child_cnt161, align 4
  %136 = ptrtoint ptr %child_cnt675 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %keep.1, ptr %child_cnt675, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnc_insert.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tnc_insert, %if.then175)) #12
          to label %do.end181 [label %if.then175], !srcloc !231

if.then175:                                       ; preds = %do_split
  call void @__sanitizer_cov_trace_pc() #14
  %137 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i521 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i521 to ptr
  %task177 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %task177 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task177, align 8
  %pid178 = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 68
  %141 = ptrtoint ptr %pid178 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pid178, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnc_insert.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.65, i32 noundef %142, i32 noundef %move.1, i32 noundef %keep.1) #12
  br label %do.end181

do.end181:                                        ; preds = %if.then175, %do_split
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %move.1)
  %cmp182658 = icmp sgt i32 %move.1, 0
  br i1 %cmp182658, label %do.end181.for.body_crit_edge, label %do.end181.do.body203_crit_edge

do.end181.do.body203_crit_edge:                   ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body203

do.end181.for.body_crit_edge:                     ; preds = %do.end181
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end181.for.body_crit_edge
  %i.0659 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end181.for.body_crit_edge ]
  %arrayidx184 = getelementptr %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 13, i32 %i.0659
  %add186 = add i32 %i.0659, %keep.1
  %arrayidx187 = getelementptr %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 13, i32 %add186
  %143 = call ptr @memcpy(ptr %arrayidx184, ptr %arrayidx187, i32 88)
  %144 = ptrtoint ptr %level84 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %level84, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp189.not = icmp eq i32 %145, 0
  br i1 %cmp189.not, label %for.body.for.inc_crit_edge, label %if.then190

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then190:                                       ; preds = %for.body
  %146 = getelementptr %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 13, i32 %i.0659, i32 1
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  %tobool193.not = icmp eq ptr %148, null
  br i1 %tobool193.not, label %if.then190.for.inc_crit_edge, label %if.then194

if.then190.for.inc_crit_edge:                     ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then194:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call9.i.i, ptr %148, align 8
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %146, align 8
  %iip200 = getelementptr inbounds %struct.ubifs_znode, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %iip200 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %i.0659, ptr %iip200, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then194, %if.then190.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0659, 1
  %exitcond.not = icmp eq i32 %inc, %move.1
  br i1 %exitcond.not, label %for.inc.do.body203_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.body203_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body203

do.body203:                                       ; preds = %for.inc.do.body203_crit_edge, %do.end181.do.body203_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf204) #12
  %153 = call ptr @memset(ptr %__tmp_key_buf204, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnc_insert.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tnc_insert, %if.then217)) #12
          to label %do.end226 [label %if.then217], !srcloc !231

if.then217:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #14
  %154 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i522 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i522 to ptr
  %task219 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %task219 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task219, align 8
  %pid220 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 68
  %158 = ptrtoint ptr %pid220 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pid220, align 8
  %160 = ptrtoint ptr %level84 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %level84, align 32
  %call223 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %__tmp_key_buf204, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnc_insert.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.66, i32 noundef %159, i32 noundef %n.addr.1, i32 noundef %161, ptr noundef %call223) #12
  br label %do.end226

do.end226:                                        ; preds = %if.then217, %do.body203
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf204) #12
  %flags.i.i523 = getelementptr inbounds %struct.ubifs_znode, ptr %zi.0, i32 0, i32 4
  %162 = ptrtoint ptr %flags.i.i523 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %flags.i.i523, align 4
  %and1.i.i.i524 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i524)
  %tobool.not.i525 = icmp eq i32 %and1.i.i.i524, 0
  br i1 %tobool.not.i525, label %if.then.i526, label %do.end226.do.end.i531_crit_edge, !prof !230

do.end226.do.end.i531_crit_edge:                  ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i531

if.then.i526:                                     ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 2033) #12
  br label %do.end.i531

do.end.i531:                                      ; preds = %if.then.i526, %do.end226.do.end.i531_crit_edge
  %level.i527 = getelementptr inbounds %struct.ubifs_znode, ptr %zi.0, i32 0, i32 6
  %164 = ptrtoint ptr %level.i527 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %level.i527, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool4.not.i528 = icmp eq i32 %165, 0
  %child_cnt19.i529 = getelementptr inbounds %struct.ubifs_znode, ptr %zi.0, i32 0, i32 7
  %166 = ptrtoint ptr %child_cnt19.i529 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %child_cnt19.i529, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %n.addr.1)
  %cmp2169.i530 = icmp sgt i32 %167, %n.addr.1
  br i1 %tobool4.not.i528, label %if.else.i547, label %if.then5.i532

if.then5.i532:                                    ; preds = %do.end.i531
  br i1 %cmp2169.i530, label %if.then5.i532.for.body.i538_crit_edge, label %if.then5.i532.for.end.i544_crit_edge

if.then5.i532.for.end.i544_crit_edge:             ; preds = %if.then5.i532
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i544

if.then5.i532.for.body.i538_crit_edge:            ; preds = %if.then5.i532
  br label %for.body.i538

for.body.i538:                                    ; preds = %for.inc.i542.for.body.i538_crit_edge, %if.then5.i532.for.body.i538_crit_edge
  %i.068.i533 = phi i32 [ %sub.i535, %for.inc.i542.for.body.i538_crit_edge ], [ %167, %if.then5.i532.for.body.i538_crit_edge ]
  %arrayidx.i534 = getelementptr %struct.ubifs_znode, ptr %zi.0, i32 0, i32 13, i32 %i.068.i533
  %sub.i535 = add nsw i32 %i.068.i533, -1
  %arrayidx7.i536 = getelementptr %struct.ubifs_znode, ptr %zi.0, i32 0, i32 13, i32 %sub.i535
  %168 = call ptr @memcpy(ptr %arrayidx.i534, ptr %arrayidx7.i536, i32 88)
  %169 = getelementptr %struct.ubifs_znode, ptr %zi.0, i32 0, i32 13, i32 %i.068.i533, i32 1
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 8
  %tobool10.not.i537 = icmp eq ptr %171, null
  br i1 %tobool10.not.i537, label %for.body.i538.for.inc.i542_crit_edge, label %if.then11.i540

for.body.i538.for.inc.i542_crit_edge:             ; preds = %for.body.i538
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i542

if.then11.i540:                                   ; preds = %for.body.i538
  call void @__sanitizer_cov_trace_pc() #14
  %iip.i539 = getelementptr inbounds %struct.ubifs_znode, ptr %171, i32 0, i32 8
  %172 = ptrtoint ptr %iip.i539 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %i.068.i533, ptr %iip.i539, align 8
  br label %for.inc.i542

for.inc.i542:                                     ; preds = %if.then11.i540, %for.body.i538.for.inc.i542_crit_edge
  %cmp.i541 = icmp sgt i32 %sub.i535, %n.addr.1
  br i1 %cmp.i541, label %for.inc.i542.for.body.i538_crit_edge, label %for.inc.i542.for.end.i544_crit_edge

for.inc.i542.for.end.i544_crit_edge:              ; preds = %for.inc.i542
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i544

for.inc.i542.for.body.i538_crit_edge:             ; preds = %for.inc.i542
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i538

for.end.i544:                                     ; preds = %for.inc.i542.for.end.i544_crit_edge, %if.then5.i532.for.end.i544_crit_edge
  %173 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %8, align 8
  %tobool15.not.i543 = icmp eq ptr %174, null
  br i1 %tobool15.not.i543, label %for.end.i544.if.end31.i558_crit_edge, label %if.then16.i546

for.end.i544.if.end31.i558_crit_edge:             ; preds = %for.end.i544
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i558

if.then16.i546:                                   ; preds = %for.end.i544
  call void @__sanitizer_cov_trace_pc() #14
  %iip17.i545 = getelementptr inbounds %struct.ubifs_znode, ptr %174, i32 0, i32 8
  %175 = ptrtoint ptr %iip17.i545 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %n.addr.1, ptr %iip17.i545, align 8
  br label %if.end31.i558

if.else.i547:                                     ; preds = %do.end.i531
  br i1 %cmp2169.i530, label %if.else.i547.for.body22.i553_crit_edge, label %if.else.i547.if.end31.i558_crit_edge

if.else.i547.if.end31.i558_crit_edge:             ; preds = %if.else.i547
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i558

if.else.i547.for.body22.i553_crit_edge:           ; preds = %if.else.i547
  br label %for.body22.i553

for.body22.i553:                                  ; preds = %for.body22.i553.for.body22.i553_crit_edge, %if.else.i547.for.body22.i553_crit_edge
  %i.170.i548 = phi i32 [ %sub26.i550, %for.body22.i553.for.body22.i553_crit_edge ], [ %167, %if.else.i547.for.body22.i553_crit_edge ]
  %arrayidx24.i549 = getelementptr %struct.ubifs_znode, ptr %zi.0, i32 0, i32 13, i32 %i.170.i548
  %sub26.i550 = add nsw i32 %i.170.i548, -1
  %arrayidx27.i551 = getelementptr %struct.ubifs_znode, ptr %zi.0, i32 0, i32 13, i32 %sub26.i550
  %176 = call ptr @memcpy(ptr %arrayidx24.i549, ptr %arrayidx27.i551, i32 88)
  %cmp21.i552 = icmp sgt i32 %sub26.i550, %n.addr.1
  br i1 %cmp21.i552, label %for.body22.i553.for.body22.i553_crit_edge, label %for.body22.i553.if.end31.i558_crit_edge

for.body22.i553.if.end31.i558_crit_edge:          ; preds = %for.body22.i553
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i558

for.body22.i553.for.body22.i553_crit_edge:        ; preds = %for.body22.i553
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22.i553

if.end31.i558:                                    ; preds = %for.body22.i553.if.end31.i558_crit_edge, %if.else.i547.if.end31.i558_crit_edge, %if.then16.i546, %for.end.i544.if.end31.i558_crit_edge
  %arrayidx33.i554 = getelementptr %struct.ubifs_znode, ptr %zi.0, i32 0, i32 13, i32 %n.addr.1
  %177 = call ptr @memcpy(ptr %arrayidx33.i554, ptr %zbr, i32 88)
  %178 = ptrtoint ptr %child_cnt19.i529 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %child_cnt19.i529, align 4
  %add.i556 = add i32 %179, 1
  store i32 %add.i556, ptr %child_cnt19.i529, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1)
  %cmp35.i557 = icmp eq i32 %n.addr.1, 0
  br i1 %cmp35.i557, label %if.then36.i560, label %if.end31.i558.insert_zbranch.exit561_crit_edge

if.end31.i558.insert_zbranch.exit561_crit_edge:   ; preds = %if.end31.i558
  call void @__sanitizer_cov_trace_pc() #14
  br label %insert_zbranch.exit561

if.then36.i560:                                   ; preds = %if.end31.i558
  call void @__sanitizer_cov_trace_pc() #14
  %alt.i559 = getelementptr inbounds %struct.ubifs_znode, ptr %zi.0, i32 0, i32 9
  %180 = ptrtoint ptr %alt.i559 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %alt.i559, align 4
  br label %insert_zbranch.exit561

insert_zbranch.exit561:                           ; preds = %if.then36.i560, %if.end31.i558.insert_zbranch.exit561_crit_edge
  %tobool229.not = icmp eq ptr %63, null
  br i1 %tobool229.not, label %do.body246, label %if.then230

if.then230:                                       ; preds = %insert_zbranch.exit561
  %cmp233 = icmp eq ptr %zi.0, %znode.addr.0673
  %or.cond487 = and i1 %cmp233, %cmp35.i557
  br i1 %or.cond487, label %land.lhs.true234, label %if.then230.if.end238_crit_edge

if.then230.if.end238_crit_edge:                   ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end238

land.lhs.true234:                                 ; preds = %if.then230
  %iip235 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 8
  %181 = ptrtoint ptr %iip235 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %iip235, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp236 = icmp eq i32 %182, 0
  br i1 %cmp236, label %if.then237, label %land.lhs.true234.if.end238_crit_edge

land.lhs.true234.if.end238_crit_edge:             ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end238

if.then237:                                       ; preds = %land.lhs.true234
  %183 = ptrtoint ptr %znode.addr.0673 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %znode.addr.0673, align 8
  %tobool.not.i562 = icmp eq ptr %184, null
  br i1 %tobool.not.i562, label %do.body4.i566, label %if.then237.do.end16.i570_crit_edge, !prof !230

if.then237.do.end16.i570_crit_edge:               ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16.i570

do.body4.i566:                                    ; preds = %if.then237
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef 2000) #12
  %185 = ptrtoint ptr %iip235 to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pr637 = load i32, ptr %iip235, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr637)
  %cmp.not.i565 = icmp eq i32 %.pr637, 0
  br i1 %cmp.not.i565, label %do.body4.i566.do.end16.i570_crit_edge, label %if.then13.i567, !prof !235

do.body4.i566.do.end16.i570_crit_edge:            ; preds = %do.body4.i566
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16.i570

if.then13.i567:                                   ; preds = %do.body4.i566
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef 2001) #12
  br label %do.end16.i570

do.end16.i570:                                    ; preds = %if.then13.i567, %do.body4.i566.do.end16.i570_crit_edge, %if.then237.do.end16.i570_crit_edge
  %zbranch.i568 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 13
  %186 = ptrtoint ptr %znode.addr.0673 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %znode.addr.0673, align 8
  %arrayidx7.i.i569 = getelementptr %struct.ubifs_znode, ptr %znode.addr.0673, i32 1, i32 1
  br label %while.cond.i575

while.cond.i575:                                  ; preds = %lor.lhs.false.i586.while.cond.i575_crit_edge, %do.end16.i570
  %znode.addr.0.i571 = phi ptr [ %znode.addr.0673, %do.end16.i570 ], [ %200, %lor.lhs.false.i586.while.cond.i575_crit_edge ]
  %.pn.i572 = phi ptr [ %187, %do.end16.i570 ], [ %203, %lor.lhs.false.i586.while.cond.i575_crit_edge ]
  %key1.0.i573 = getelementptr inbounds %struct.ubifs_znode, ptr %.pn.i572, i32 0, i32 13
  %188 = ptrtoint ptr %zbranch.i568 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %zbranch.i568, align 8
  %190 = ptrtoint ptr %key1.0.i573 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %key1.0.i573, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %191)
  %cmp.i.i574 = icmp ult i32 %189, %191
  br i1 %cmp.i.i574, label %while.cond.i575.while.body.i583_crit_edge, label %if.end.i.i577

while.cond.i575.while.body.i583_crit_edge:        ; preds = %while.cond.i575
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i583

if.end.i.i577:                                    ; preds = %while.cond.i575
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %191)
  %cmp4.i.i576 = icmp ugt i32 %189, %191
  br i1 %cmp4.i.i576, label %if.end.i.i577.if.end238_crit_edge, label %if.end6.i.i580

if.end.i.i577.if.end238_crit_edge:                ; preds = %if.end.i.i577
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end238

if.end6.i.i580:                                   ; preds = %if.end.i.i577
  %192 = ptrtoint ptr %arrayidx7.i.i569 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx7.i.i569, align 4
  %arrayidx8.i.i578 = getelementptr %struct.ubifs_znode, ptr %.pn.i572, i32 1, i32 1
  %194 = ptrtoint ptr %arrayidx8.i.i578 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx8.i.i578, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %195)
  %cmp9.i.i579 = icmp ult i32 %193, %195
  br i1 %cmp9.i.i579, label %if.end6.i.i580.while.body.i583_crit_edge, label %if.end6.i.i580.if.end238_crit_edge

if.end6.i.i580.if.end238_crit_edge:               ; preds = %if.end6.i.i580
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end238

if.end6.i.i580.while.body.i583_crit_edge:         ; preds = %if.end6.i.i580
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i583

while.body.i583:                                  ; preds = %if.end6.i.i580.while.body.i583_crit_edge, %while.cond.i575.while.body.i583_crit_edge
  %196 = ptrtoint ptr %zbranch.i568 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %zbranch.i568, align 8
  %198 = ptrtoint ptr %key1.0.i573 to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %197, ptr %key1.0.i573, align 8
  %199 = ptrtoint ptr %znode.addr.0.i571 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %znode.addr.0.i571, align 8
  %alt.i581 = getelementptr inbounds %struct.ubifs_znode, ptr %200, i32 0, i32 9
  %201 = ptrtoint ptr %alt.i581 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1, ptr %alt.i581, align 4
  %202 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %200, align 8
  %tobool25.not.i582 = icmp eq ptr %203, null
  br i1 %tobool25.not.i582, label %while.body.i583.if.end238_crit_edge, label %lor.lhs.false.i586

while.body.i583.if.end238_crit_edge:              ; preds = %while.body.i583
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end238

lor.lhs.false.i586:                               ; preds = %while.body.i583
  %iip26.i584 = getelementptr inbounds %struct.ubifs_znode, ptr %200, i32 0, i32 8
  %204 = ptrtoint ptr %iip26.i584 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %iip26.i584, align 8
  %tobool27.not.i585 = icmp eq i32 %205, 0
  br i1 %tobool27.not.i585, label %lor.lhs.false.i586.while.cond.i575_crit_edge, label %lor.lhs.false.i586.if.end238_crit_edge

lor.lhs.false.i586.if.end238_crit_edge:           ; preds = %lor.lhs.false.i586
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end238

lor.lhs.false.i586.while.cond.i575_crit_edge:     ; preds = %lor.lhs.false.i586
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i575

if.end238:                                        ; preds = %lor.lhs.false.i586.if.end238_crit_edge, %while.body.i583.if.end238_crit_edge, %if.end6.i.i580.if.end238_crit_edge, %if.end.i.i577.if.end238_crit_edge, %land.lhs.true234.if.end238_crit_edge, %if.then230.if.end238_crit_edge
  %iip239 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 8
  %206 = ptrtoint ptr %iip239 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %iip239, align 8
  %add240 = add i32 %207, 1
  %zbranch242 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 13
  %208 = ptrtoint ptr %zbranch242 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %zbranch242, align 64
  %210 = ptrtoint ptr %zbr to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %209, ptr %zbr, align 8
  %211 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call9.i.i, ptr %8, align 8
  %212 = ptrtoint ptr %lnum to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %lnum, align 4
  %213 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %offs, align 8
  %214 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %len, align 4
  %215 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %63, align 8
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %63, i32 0, i32 7
  %217 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %child_cnt, align 4
  %219 = ptrtoint ptr %fanout6 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %fanout6, align 4
  %cmp7 = icmp slt i32 %218, %220
  br i1 %cmp7, label %if.end238.do.body9_crit_edge, label %if.end238.do.body48_crit_edge

if.end238.do.body48_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

if.end238.do.body9_crit_edge:                     ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

do.body246:                                       ; preds = %insert_zbranch.exit561
  %level83.le = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnc_insert.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tnc_insert, %if.then258)) #12
          to label %if.end8.i.i615 [label %if.then258], !srcloc !231

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #14
  %221 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i588 = and i32 %221, -16384
  %222 = inttoptr i32 %and.i588 to ptr
  %task260 = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %task260 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task260, align 8
  %pid261 = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 68
  %225 = ptrtoint ptr %pid261 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %pid261, align 8
  %227 = ptrtoint ptr %level83.le to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %level83.le, align 8
  %add263 = add i32 %228, 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnc_insert.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.67, i32 noundef %226, i32 noundef %add263) #12
  br label %if.end8.i.i615

if.end8.i.i615:                                   ; preds = %if.then258, %do.body246
  %229 = ptrtoint ptr %max_znode_sz to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %max_znode_sz, align 8
  %call9.i.i614 = call noalias align 128 ptr @__kmalloc(i32 noundef %230, i32 noundef 3392) #18
  %tobool269.not = icmp eq ptr %call9.i.i614, null
  br i1 %tobool269.not, label %if.end8.i.i615.cleanup_crit_edge, label %if.end271

if.end8.i.i615.cleanup_crit_edge:                 ; preds = %if.end8.i.i615
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end271:                                        ; preds = %if.end8.i.i615
  call void @__sanitizer_cov_trace_pc() #14
  %child_cnt272 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i614, i32 0, i32 7
  %231 = ptrtoint ptr %child_cnt272 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 2, ptr %child_cnt272, align 4
  %232 = ptrtoint ptr %level83.le to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %level83.le, align 8
  %add274 = add i32 %233, 1
  %level275 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i614, i32 0, i32 6
  %234 = ptrtoint ptr %level275 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %add274, ptr %level275, align 32
  %flags276 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i614, i32 0, i32 4
  %235 = ptrtoint ptr %flags276 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %flags276, align 16
  %or.i500 = or i32 %236, 1
  store i32 %or.i500, ptr %flags276, align 16
  %call.i.i501 = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_zn_cnt, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %dirty_zn_cnt, i32 1, i32 3, i32 1) #12
  %237 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_zn_cnt, ptr %dirty_zn_cnt, i32 1, ptr elementtype(i32) %dirty_zn_cnt) #12, !srcloc !237
  %zbranch278 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i614, i32 0, i32 13
  %zbranch281 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 13
  %238 = ptrtoint ptr %zbranch281 to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %zbranch281, align 8
  %240 = ptrtoint ptr %zbranch278 to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 %239, ptr %zbranch278, align 64
  %241 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i614, i32 1, i32 2
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %znode.addr.0673, ptr %241, align 8
  %243 = ptrtoint ptr %lnum14.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %lnum14.i, align 4
  %lnum289 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i614, i32 1, i32 3
  %245 = ptrtoint ptr %lnum289 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %244, ptr %lnum289, align 4
  %246 = ptrtoint ptr %offs16.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %offs16.i, align 8
  %offs294 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i614, i32 1, i32 4
  %248 = ptrtoint ptr %offs294 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %offs294, align 16
  %249 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %len10.i, align 4
  %len299 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbranch278, i32 0, i32 4
  %251 = ptrtoint ptr %len299 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %len299, align 4
  %arrayidx301 = getelementptr %struct.ubifs_znode, ptr %call9.i.i614, i32 2, i32 5
  %zbranch303 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 13
  %252 = ptrtoint ptr %zbranch303 to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %zbranch303, align 64
  %254 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 %253, ptr %arrayidx301, align 8
  %255 = getelementptr %struct.ubifs_znode, ptr %call9.i.i614, i32 2, i32 6
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call9.i.i, ptr %255, align 32
  store i32 0, ptr %lnum14.i, align 4
  store i32 0, ptr %offs16.i, align 8
  store i32 0, ptr %len10.i, align 4
  %257 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %call9.i.i614, ptr %257, align 8
  %259 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call9.i.i614, ptr %call9.i.i, align 128
  %iip316 = getelementptr inbounds %struct.ubifs_znode, ptr %call9.i.i, i32 0, i32 8
  %260 = ptrtoint ptr %iip316 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 1, ptr %iip316, align 8
  %261 = ptrtoint ptr %znode.addr.0673 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call9.i.i614, ptr %znode.addr.0673, align 8
  %iip318 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0673, i32 0, i32 8
  %262 = ptrtoint ptr %iip318 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %iip318, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end271, %if.end8.i.i615.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %land.lhs.true43.cleanup_crit_edge, %insert_zbranch.exit.cleanup_crit_edge, %if.end31.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end271 ], [ 0, %land.lhs.true43.cleanup_crit_edge ], [ 0, %insert_zbranch.exit.cleanup_crit_edge ], [ -12, %if.end8.i.i615.cleanup_crit_edge ], [ 0, %if.end31.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end6.i.i.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_tnc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_replace(ptr noundef %c, ptr noundef %key, i32 noundef %old_lnum, i32 noundef %old_offs, i32 noundef %lnum, i32 noundef %offs, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %2 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_replace.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_replace, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_replace.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.15, i32 noundef %8, i32 noundef %old_lnum, i32 noundef %old_offs, i32 noundef %lnum, i32 noundef %offs, i32 noundef %len, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %call8 = call fastcc i32 @lookup_level0_dirty(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.cleanup89_crit_edge, label %if.end10

do.end.cleanup89_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end10:                                         ; preds = %do.end
  %9 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call8, label %if.end10.if.then85_crit_edge [
    i32 1, label %if.then12
    i32 0, label %if.end10.if.end83_crit_edge
  ]

if.end10.if.end83_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.end10.if.then85_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

if.then12:                                        ; preds = %if.end10
  %10 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %znode, align 4
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  %lnum13 = getelementptr %struct.ubifs_znode, ptr %11, i32 0, i32 13, i32 %13, i32 2
  %14 = ptrtoint ptr %lnum13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnum13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %old_lnum)
  %cmp14 = icmp eq i32 %15, %old_lnum
  br i1 %cmp14, label %land.lhs.true, label %if.else.thread

land.lhs.true:                                    ; preds = %if.then12
  %offs15 = getelementptr %struct.ubifs_znode, ptr %11, i32 0, i32 13, i32 %13, i32 3
  %16 = ptrtoint ptr %offs15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offs15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %old_offs)
  %cmp16 = icmp eq i32 %17, %old_offs
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true
  %18 = getelementptr %struct.ubifs_znode, ptr %11, i32 0, i32 13, i32 %13, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then17.lnc_free.exit_crit_edge, label %if.end.i

if.then17.lnc_free.exit_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %lnc_free.exit

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %20) #12
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %18, align 8
  br label %lnc_free.exit

lnc_free.exit:                                    ; preds = %if.end.i, %if.then17.lnc_free.exit_crit_edge
  %22 = ptrtoint ptr %lnum13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lnum13, align 4
  %len19 = getelementptr %struct.ubifs_znode, ptr %11, i32 0, i32 13, i32 %13, i32 4
  %24 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len19, align 4
  %call.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %23, i32 noundef -2147483647, i32 noundef %25, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end23, label %lnc_free.exit.cleanup89_crit_edge

lnc_free.exit.cleanup89_crit_edge:                ; preds = %lnc_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end23:                                         ; preds = %lnc_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %lnum13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %lnum, ptr %lnum13, align 4
  br label %if.then85.sink.split

if.else:                                          ; preds = %land.lhs.true
  %arrayidx.i.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %29 = and i32 %28, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %29)
  %.not173 = icmp eq i32 %29, 1073741824
  br i1 %.not173, label %land.lhs.true.i.i, label %if.else.if.end83_crit_edge

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.else.thread:                                   ; preds = %if.then12
  %arrayidx.i.i155 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.i.i155 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i155, align 4
  %32 = and i32 %31, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %32)
  %.not = icmp eq i32 %32, 1073741824
  br i1 %.not, label %if.else.thread.matches_position.exit.i_crit_edge, label %if.else.thread.if.end83_crit_edge

if.else.thread.if.end83_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.else.thread.matches_position.exit.i_crit_edge: ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %matches_position.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %33 = ptrtoint ptr %offs15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offs15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %old_offs)
  %cmp3.i.i = icmp eq i32 %34, %old_offs
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.resolve_collision_directly.exit_crit_edge, label %land.lhs.true.i.i.matches_position.exit.i_crit_edge

land.lhs.true.i.i.matches_position.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %matches_position.exit.i

land.lhs.true.i.i.resolve_collision_directly.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_collision_directly.exit

matches_position.exit.i:                          ; preds = %land.lhs.true.i.i.matches_position.exit.i_crit_edge, %if.else.thread.matches_position.exit.i_crit_edge
  %arrayidx.i.i157160 = phi ptr [ %arrayidx.i.i, %land.lhs.true.i.i.matches_position.exit.i_crit_edge ], [ %arrayidx.i.i155, %if.else.thread.matches_position.exit.i_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %matches_position.exit.i
  %znode.0.i = phi ptr [ %11, %matches_position.exit.i ], [ %znode.1132145.i, %while.cond.i.backedge ]
  %nn.0.i = phi i32 [ %13, %matches_position.exit.i ], [ %nn.1133144.i, %while.cond.i.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nn.0.i)
  %cmp.i63.i = icmp sgt i32 %nn.0.i, 0
  br i1 %cmp.i63.i, label %if.then.i.i, label %while.cond.i.while.cond.i.i_crit_edge

while.cond.i.while.cond.i.i_crit_edge:            ; preds = %while.cond.i
  br label %while.cond.i.i

if.then.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add nsw i32 %nn.0.i, -1
  br label %if.end6.i

while.cond.i.i:                                   ; preds = %if.end2.i.i.while.cond.i.i_crit_edge, %while.cond.i.while.cond.i.i_crit_edge
  %znode.0.i.i = phi ptr [ %36, %if.end2.i.i.while.cond.i.i_crit_edge ], [ %znode.0.i, %while.cond.i.while.cond.i.i_crit_edge ]
  %35 = ptrtoint ptr %znode.0.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %znode.0.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.while.end.i_crit_edge, label %if.end2.i.i

while.cond.i.i.while.end.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end2.i.i:                                      ; preds = %while.cond.i.i
  %iip.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i.i, i32 0, i32 8
  %37 = ptrtoint ptr %iip.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iip.i.i, align 8
  %sub3.i.i = add i32 %38, -1
  %cmp4.i.i = icmp sgt i32 %sub3.i.i, -1
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end2.i.i.while.cond.i.i_crit_edge

if.end2.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  %39 = getelementptr %struct.ubifs_znode, ptr %36, i32 0, i32 13, i32 %sub3.i.i, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.get_znode.exit.i.i_crit_edge

if.then5.i.i.get_znode.exit.i.i_crit_edge:        ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.ubifs_znode, ptr %36, i32 0, i32 13, i32 %sub3.i.i
  %call.i.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i.i, ptr noundef nonnull %36, i32 noundef %sub3.i.i) #12
  br label %get_znode.exit.i.i

get_znode.exit.i.i:                               ; preds = %if.else.i.i.i, %if.then5.i.i.get_znode.exit.i.i_crit_edge
  %znode.addr.0.i.i.i = phi ptr [ %call.i.i.i, %if.else.i.i.i ], [ %41, %if.then5.i.i.get_znode.exit.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %znode.addr.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %get_znode.exit.i.i.tnc_prev.exit.i_crit_edge, label %get_znode.exit.i.i.while.cond10.i.i_crit_edge

get_znode.exit.i.i.while.cond10.i.i_crit_edge:    ; preds = %get_znode.exit.i.i
  br label %while.cond10.i.i

get_znode.exit.i.i.tnc_prev.exit.i_crit_edge:     ; preds = %get_znode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_prev.exit.i

while.cond10.i.i:                                 ; preds = %get_znode.exit52.i.i.while.cond10.i.i_crit_edge, %get_znode.exit.i.i.while.cond10.i.i_crit_edge
  %znode.1.i.i = phi ptr [ %znode.addr.0.i51.i.i, %get_znode.exit52.i.i.while.cond10.i.i_crit_edge ], [ %znode.addr.0.i.i.i, %get_znode.exit.i.i.while.cond10.i.i_crit_edge ]
  %level.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp11.not.i.i = icmp eq i32 %43, 0
  %child_cnt19.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %child_cnt19.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %child_cnt19.i.i, align 4
  %sub20.i.i = add i32 %45, -1
  br i1 %cmp11.not.i.i, label %while.cond10.i.i.if.end6.i_crit_edge, label %while.body12.i.i

while.cond10.i.i.if.end6.i_crit_edge:             ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

while.body12.i.i:                                 ; preds = %while.cond10.i.i
  %46 = getelementptr %struct.ubifs_znode, ptr %znode.1.i.i, i32 0, i32 13, i32 %sub20.i.i, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %tobool.not.i47.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i47.i.i, label %if.else.i50.i.i, label %while.body12.i.i.get_znode.exit52.i.i_crit_edge

while.body12.i.i.get_znode.exit52.i.i_crit_edge:  ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit52.i.i

if.else.i50.i.i:                                  ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i48.i.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i.i, i32 0, i32 13, i32 %sub20.i.i
  %call.i49.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i48.i.i, ptr noundef %znode.1.i.i, i32 noundef %sub20.i.i) #12
  br label %get_znode.exit52.i.i

get_znode.exit52.i.i:                             ; preds = %if.else.i50.i.i, %while.body12.i.i.get_znode.exit52.i.i_crit_edge
  %znode.addr.0.i51.i.i = phi ptr [ %call.i49.i.i, %if.else.i50.i.i ], [ %48, %while.body12.i.i.get_znode.exit52.i.i_crit_edge ]
  %cmp.i53.i.i = icmp ugt ptr %znode.addr.0.i51.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53.i.i, label %get_znode.exit52.i.i.tnc_prev.exit.i_crit_edge, label %get_znode.exit52.i.i.while.cond10.i.i_crit_edge

get_znode.exit52.i.i.while.cond10.i.i_crit_edge:  ; preds = %get_znode.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond10.i.i

get_znode.exit52.i.i.tnc_prev.exit.i_crit_edge:   ; preds = %get_znode.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_prev.exit.i

tnc_prev.exit.i:                                  ; preds = %get_znode.exit52.i.i.tnc_prev.exit.i_crit_edge, %get_znode.exit.i.i.tnc_prev.exit.i_crit_edge
  %retval.2.i.in.i = phi ptr [ %znode.addr.0.i.i.i, %get_znode.exit.i.i.tnc_prev.exit.i_crit_edge ], [ %znode.addr.0.i51.i.i, %get_znode.exit52.i.i.tnc_prev.exit.i_crit_edge ]
  %cmp.i = icmp eq ptr %retval.2.i.in.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i, label %tnc_prev.exit.i.while.end.i_crit_edge, label %if.end3.i

tnc_prev.exit.i.while.end.i_crit_edge:            ; preds = %tnc_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end3.i:                                        ; preds = %tnc_prev.exit.i
  %cmp4.i = icmp slt ptr %retval.2.i.in.i, null
  br i1 %cmp4.i, label %cleanup.loopexit177.i, label %if.end3.i.if.end6.i_crit_edge

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end3.i.if.end6.i_crit_edge, %while.cond10.i.i.if.end6.i_crit_edge, %if.then.i.i
  %znode.1132145.i = phi ptr [ %znode.0.i, %if.end3.i.if.end6.i_crit_edge ], [ %znode.0.i, %if.then.i.i ], [ %znode.1.i.i, %while.cond10.i.i.if.end6.i_crit_edge ]
  %nn.1133144.i = phi i32 [ %nn.0.i, %if.end3.i.if.end6.i_crit_edge ], [ %sub.i.i, %if.then.i.i ], [ %sub20.i.i, %while.cond10.i.i.if.end6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.ubifs_znode, ptr %znode.1132145.i, i32 0, i32 13, i32 %nn.1133144.i
  %49 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx8.i, align 8
  %51 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %.not.i = icmp eq i32 %50, %52
  br i1 %.not.i, label %if.end6.i.i, label %if.end6.i.while.end.i_crit_edge

if.end6.i.while.end.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end6.i.i:                                      ; preds = %if.end6.i
  %arrayidx7.i.i = getelementptr [2 x i32], ptr %arrayidx8.i, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx7.i.i, align 4
  %55 = ptrtoint ptr %arrayidx.i.i157160 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i157160, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %.not191.i = icmp eq i32 %54, %56
  br i1 %.not191.i, label %if.end13.i, label %if.end6.i.i.while.end.i_crit_edge

if.end6.i.i.while.end.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end13.i:                                       ; preds = %if.end6.i.i
  %lnum1.i67.i = getelementptr %struct.ubifs_znode, ptr %znode.1132145.i, i32 0, i32 13, i32 %nn.1133144.i, i32 2
  %57 = ptrtoint ptr %lnum1.i67.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lnum1.i67.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %old_lnum)
  %cmp.i68.i = icmp eq i32 %58, %old_lnum
  br i1 %cmp.i68.i, label %land.lhs.true.i71.i, label %if.end13.i.while.cond.i.backedge_crit_edge

if.end13.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.backedge

land.lhs.true.i71.i:                              ; preds = %if.end13.i
  %offs2.i69.i = getelementptr %struct.ubifs_znode, ptr %znode.1132145.i, i32 0, i32 13, i32 %nn.1133144.i, i32 3
  %59 = ptrtoint ptr %offs2.i69.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offs2.i69.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %old_offs)
  %cmp3.i70.i = icmp eq i32 %60, %old_offs
  br i1 %cmp3.i70.i, label %if.then18.i, label %land.lhs.true.i71.i.while.cond.i.backedge_crit_edge

land.lhs.true.i71.i.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %land.lhs.true.i71.i.while.cond.i.backedge_crit_edge, %if.end13.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

if.then18.i:                                      ; preds = %land.lhs.true.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %znode.1132145.i, ptr %znode, align 4
  %62 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %nn.1133144.i, ptr %n, align 4
  br label %resolve_collision_directly.exit

while.end.i:                                      ; preds = %if.end6.i.i.while.end.i_crit_edge, %if.end6.i.while.end.i_crit_edge, %tnc_prev.exit.i.while.end.i_crit_edge, %while.cond.i.i.while.end.i_crit_edge
  %63 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n, align 4
  br label %while.cond20.i

while.cond20.i:                                   ; preds = %while.cond20.i.backedge, %while.end.i
  %znode.2.i = phi ptr [ %11, %while.end.i ], [ %znode.3154167.i, %while.cond20.i.backedge ]
  %nn.2.i = phi i32 [ %64, %while.end.i ], [ %nn.3155166.i, %while.cond20.i.backedge ]
  %add.i.i = add i32 %nn.2.i, 1
  %child_cnt.i75.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.2.i, i32 0, i32 7
  %65 = ptrtoint ptr %child_cnt.i75.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %child_cnt.i75.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %66)
  %cmp.i76.i = icmp slt i32 %add.i.i, %66
  br i1 %cmp.i76.i, label %while.cond20.i.if.end28.i_crit_edge, label %while.cond20.i.while.cond.i80.i_crit_edge

while.cond20.i.while.cond.i80.i_crit_edge:        ; preds = %while.cond20.i
  br label %while.cond.i80.i

while.cond20.i.if.end28.i_crit_edge:              ; preds = %while.cond20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

while.cond.i80.i:                                 ; preds = %if.end2.i82.i.while.cond.i80.i_crit_edge, %while.cond20.i.while.cond.i80.i_crit_edge
  %znode.0.i78.i = phi ptr [ %68, %if.end2.i82.i.while.cond.i80.i_crit_edge ], [ %znode.2.i, %while.cond20.i.while.cond.i80.i_crit_edge ]
  %67 = ptrtoint ptr %znode.0.i78.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %znode.0.i78.i, align 8
  %tobool.not.i79.i = icmp eq ptr %68, null
  br i1 %tobool.not.i79.i, label %while.cond.i80.i.resolve_collision_directly.exit_crit_edge, label %if.end2.i82.i

while.cond.i80.i.resolve_collision_directly.exit_crit_edge: ; preds = %while.cond.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_collision_directly.exit

if.end2.i82.i:                                    ; preds = %while.cond.i80.i
  %iip.i81.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i78.i, i32 0, i32 8
  %69 = ptrtoint ptr %iip.i81.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iip.i81.i, align 8
  %add3.i.i = add i32 %70, 1
  %child_cnt4.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %68, i32 0, i32 7
  %71 = ptrtoint ptr %child_cnt4.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %child_cnt4.i.i, align 4
  %cmp5.i.i = icmp slt i32 %add3.i.i, %72
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end2.i82.i.while.cond.i80.i_crit_edge

if.end2.i82.i.while.cond.i80.i_crit_edge:         ; preds = %if.end2.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i80.i

if.then6.i.i:                                     ; preds = %if.end2.i82.i
  %73 = getelementptr %struct.ubifs_znode, ptr %68, i32 0, i32 13, i32 %add3.i.i, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %tobool.not.i.i83.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i83.i, label %if.else.i.i86.i, label %if.then6.i.i.get_znode.exit.i89.i_crit_edge

if.then6.i.i.get_znode.exit.i89.i_crit_edge:      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i89.i

if.else.i.i86.i:                                  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i84.i = getelementptr %struct.ubifs_znode, ptr %68, i32 0, i32 13, i32 %add3.i.i
  %call.i.i85.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i84.i, ptr noundef nonnull %68, i32 noundef %add3.i.i) #12
  br label %get_znode.exit.i89.i

get_znode.exit.i89.i:                             ; preds = %if.else.i.i86.i, %if.then6.i.i.get_znode.exit.i89.i_crit_edge
  %znode.addr.0.i.i87.i = phi ptr [ %call.i.i85.i, %if.else.i.i86.i ], [ %75, %if.then6.i.i.get_znode.exit.i89.i_crit_edge ]
  %cmp.i.i88.i = icmp ugt ptr %znode.addr.0.i.i87.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i88.i, label %get_znode.exit.i89.i.tnc_next.exit.i_crit_edge, label %get_znode.exit.i89.i.while.cond11.i.i_crit_edge

get_znode.exit.i89.i.while.cond11.i.i_crit_edge:  ; preds = %get_znode.exit.i89.i
  br label %while.cond11.i.i

get_znode.exit.i89.i.tnc_next.exit.i_crit_edge:   ; preds = %get_znode.exit.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit.i

while.cond11.i.i:                                 ; preds = %get_znode.exit49.i.i.while.cond11.i.i_crit_edge, %get_znode.exit.i89.i.while.cond11.i.i_crit_edge
  %znode.1.i90.i = phi ptr [ %znode.addr.0.i48.i.i, %get_znode.exit49.i.i.while.cond11.i.i_crit_edge ], [ %znode.addr.0.i.i87.i, %get_znode.exit.i89.i.while.cond11.i.i_crit_edge ]
  %level.i91.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i90.i, i32 0, i32 6
  %76 = ptrtoint ptr %level.i91.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %level.i91.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp12.not.i.i = icmp eq i32 %77, 0
  br i1 %cmp12.not.i.i, label %while.cond11.i.i.if.end28.i_crit_edge, label %while.body13.i.i

while.cond11.i.i.if.end28.i_crit_edge:            ; preds = %while.cond11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

while.body13.i.i:                                 ; preds = %while.cond11.i.i
  %78 = getelementptr %struct.ubifs_znode, ptr %znode.1.i90.i, i32 0, i32 13, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %tobool.not.i44.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i44.i.i, label %if.else.i47.i.i, label %while.body13.i.i.get_znode.exit49.i.i_crit_edge

while.body13.i.i.get_znode.exit49.i.i_crit_edge:  ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i.i

if.else.i47.i.i:                                  ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i90.i, i32 0, i32 13, i32 0
  %call.i46.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i.i, ptr noundef %znode.1.i90.i, i32 noundef 0) #12
  br label %get_znode.exit49.i.i

get_znode.exit49.i.i:                             ; preds = %if.else.i47.i.i, %while.body13.i.i.get_znode.exit49.i.i_crit_edge
  %znode.addr.0.i48.i.i = phi ptr [ %call.i46.i.i, %if.else.i47.i.i ], [ %80, %while.body13.i.i.get_znode.exit49.i.i_crit_edge ]
  %cmp.i50.i.i = icmp ugt ptr %znode.addr.0.i48.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i.i, label %get_znode.exit49.i.i.tnc_next.exit.i_crit_edge, label %get_znode.exit49.i.i.while.cond11.i.i_crit_edge

get_znode.exit49.i.i.while.cond11.i.i_crit_edge:  ; preds = %get_znode.exit49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i.i

get_znode.exit49.i.i.tnc_next.exit.i_crit_edge:   ; preds = %get_znode.exit49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit.i

tnc_next.exit.i:                                  ; preds = %get_znode.exit49.i.i.tnc_next.exit.i_crit_edge, %get_znode.exit.i89.i.tnc_next.exit.i_crit_edge
  %retval.2.i93.in.i = phi ptr [ %znode.addr.0.i.i87.i, %get_znode.exit.i89.i.tnc_next.exit.i_crit_edge ], [ %znode.addr.0.i48.i.i, %get_znode.exit49.i.i.tnc_next.exit.i_crit_edge ]
  %cmp23.i = icmp eq ptr %retval.2.i93.in.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp23.i, label %tnc_next.exit.i.resolve_collision_directly.exit_crit_edge, label %if.end25.i

tnc_next.exit.i.resolve_collision_directly.exit_crit_edge: ; preds = %tnc_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_collision_directly.exit

if.end25.i:                                       ; preds = %tnc_next.exit.i
  %cmp26.i = icmp slt ptr %retval.2.i93.in.i, null
  br i1 %cmp26.i, label %cleanup.loopexit175.split.loop.exit182.i, label %if.end25.i.if.end28.i_crit_edge

if.end25.i.if.end28.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end25.i.if.end28.i_crit_edge, %while.cond11.i.i.if.end28.i_crit_edge, %while.cond20.i.if.end28.i_crit_edge
  %znode.3154167.i = phi ptr [ %znode.2.i, %if.end25.i.if.end28.i_crit_edge ], [ %znode.2.i, %while.cond20.i.if.end28.i_crit_edge ], [ %znode.1.i90.i, %while.cond11.i.i.if.end28.i_crit_edge ]
  %nn.3155166.i = phi i32 [ %nn.2.i, %if.end25.i.if.end28.i_crit_edge ], [ %add.i.i, %while.cond20.i.if.end28.i_crit_edge ], [ 0, %while.cond11.i.i.if.end28.i_crit_edge ]
  %arrayidx30.i = getelementptr %struct.ubifs_znode, ptr %znode.3154167.i, i32 0, i32 13, i32 %nn.3155166.i
  %81 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx30.i, align 8
  %83 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %.not173.i = icmp eq i32 %82, %84
  br i1 %.not173.i, label %if.end6.i100.i, label %if.end28.i.resolve_collision_directly.exit_crit_edge

if.end28.i.resolve_collision_directly.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_collision_directly.exit

if.end6.i100.i:                                   ; preds = %if.end28.i
  %arrayidx7.i97.i = getelementptr [2 x i32], ptr %arrayidx30.i, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx7.i97.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx7.i97.i, align 4
  %87 = ptrtoint ptr %arrayidx.i.i157160 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.i157160, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %.not190.i = icmp eq i32 %86, %88
  br i1 %.not190.i, label %if.end35.i, label %if.end6.i100.i.resolve_collision_directly.exit_crit_edge

if.end6.i100.i.resolve_collision_directly.exit_crit_edge: ; preds = %if.end6.i100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_collision_directly.exit

if.end35.i:                                       ; preds = %if.end6.i100.i
  %89 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %znode.3154167.i, ptr %znode, align 4
  %90 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %nn.3155166.i, ptr %n, align 4
  %lnum1.i106.i = getelementptr %struct.ubifs_znode, ptr %znode.3154167.i, i32 0, i32 13, i32 %nn.3155166.i, i32 2
  %91 = ptrtoint ptr %lnum1.i106.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lnum1.i106.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %old_lnum)
  %cmp.i107.i = icmp eq i32 %92, %old_lnum
  br i1 %cmp.i107.i, label %land.lhs.true.i110.i, label %if.end35.i.while.cond20.i.backedge_crit_edge

if.end35.i.while.cond20.i.backedge_crit_edge:     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond20.i.backedge

land.lhs.true.i110.i:                             ; preds = %if.end35.i
  %offs2.i108.i = getelementptr %struct.ubifs_znode, ptr %znode.3154167.i, i32 0, i32 13, i32 %nn.3155166.i, i32 3
  %93 = ptrtoint ptr %offs2.i108.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offs2.i108.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %old_offs)
  %cmp3.i109.i = icmp eq i32 %94, %old_offs
  br i1 %cmp3.i109.i, label %land.lhs.true.i110.i.resolve_collision_directly.exit_crit_edge, label %land.lhs.true.i110.i.while.cond20.i.backedge_crit_edge

land.lhs.true.i110.i.while.cond20.i.backedge_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond20.i.backedge

land.lhs.true.i110.i.resolve_collision_directly.exit_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_collision_directly.exit

while.cond20.i.backedge:                          ; preds = %land.lhs.true.i110.i.while.cond20.i.backedge_crit_edge, %if.end35.i.while.cond20.i.backedge_crit_edge
  br label %while.cond20.i

cleanup.loopexit175.split.loop.exit182.i:         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %retval.2.i93.le.i = ptrtoint ptr %retval.2.i93.in.i to i32
  br label %resolve_collision_directly.exit

cleanup.loopexit177.i:                            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %retval.2.i.le.i = ptrtoint ptr %retval.2.i.in.i to i32
  br label %resolve_collision_directly.exit

resolve_collision_directly.exit:                  ; preds = %cleanup.loopexit177.i, %cleanup.loopexit175.split.loop.exit182.i, %land.lhs.true.i110.i.resolve_collision_directly.exit_crit_edge, %if.end6.i100.i.resolve_collision_directly.exit_crit_edge, %if.end28.i.resolve_collision_directly.exit_crit_edge, %tnc_next.exit.i.resolve_collision_directly.exit_crit_edge, %while.cond.i80.i.resolve_collision_directly.exit_crit_edge, %if.then18.i, %land.lhs.true.i.i.resolve_collision_directly.exit_crit_edge
  %retval.0.i146 = phi i32 [ 1, %if.then18.i ], [ 1, %land.lhs.true.i.i.resolve_collision_directly.exit_crit_edge ], [ %retval.2.i.le.i, %cleanup.loopexit177.i ], [ %retval.2.i93.le.i, %cleanup.loopexit175.split.loop.exit182.i ], [ 0, %while.cond.i80.i.resolve_collision_directly.exit_crit_edge ], [ 1, %land.lhs.true.i110.i.resolve_collision_directly.exit_crit_edge ], [ 0, %if.end6.i100.i.resolve_collision_directly.exit_crit_edge ], [ 0, %if.end28.i.resolve_collision_directly.exit_crit_edge ], [ 0, %tnc_next.exit.i.resolve_collision_directly.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_replace.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_replace, %if.then43)) #12
          to label %do.end49 [label %if.then43], !srcloc !231

if.then43:                                        ; preds = %resolve_collision_directly.exit
  call void @__sanitizer_cov_trace_pc() #14
  %95 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i147 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i147 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task45, align 8
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 68
  %99 = ptrtoint ptr %pid46 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pid46, align 8
  %101 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %znode, align 4
  %103 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_replace.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.16, i32 noundef %100, i32 noundef %retval.0.i146, ptr noundef %102, i32 noundef %104, i32 noundef %old_lnum, i32 noundef %old_offs) #12
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %resolve_collision_directly.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i146)
  %cmp50 = icmp slt i32 %retval.0.i146, 0
  br i1 %cmp50, label %do.end49.cleanup89_crit_edge, label %if.end52

do.end49.cleanup89_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end52:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i146)
  %tobool53.not = icmp eq i32 %retval.0.i146, 0
  br i1 %tobool53.not, label %if.end52.if.end83_crit_edge, label %if.then54

if.end52.if.end83_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then54:                                        ; preds = %if.end52
  %105 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %znode, align 4
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cnext, align 4
  %tobool55.not = icmp eq ptr %108, null
  br i1 %tobool55.not, label %lor.lhs.false, label %if.then54.if.then58_crit_edge

if.then54.if.then58_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.then54
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %106, i32 0, i32 4
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool57.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool57.not, label %lor.lhs.false.if.then58_crit_edge, label %lor.lhs.false.if.end64_crit_edge

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %if.then54.if.then58_crit_edge
  %call59 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %c, ptr noundef %106)
  %111 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call59, ptr %znode, align 4
  %cmp.i148 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then61, label %if.then58.if.end64_crit_edge

if.then58.if.end64_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %call59 to i32
  br label %cleanup89

if.end64:                                         ; preds = %if.then58.if.end64_crit_edge, %lor.lhs.false.if.end64_crit_edge
  %113 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %znode, align 4
  %115 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %n, align 4
  %117 = getelementptr %struct.ubifs_znode, ptr %114, i32 0, i32 13, i32 %116, i32 1
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %tobool.not.i149 = icmp eq ptr %119, null
  br i1 %tobool.not.i149, label %if.end64.lnc_free.exit151_crit_edge, label %if.end.i150

if.end64.lnc_free.exit151_crit_edge:              ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %lnc_free.exit151

if.end.i150:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %119) #12
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %117, align 8
  br label %lnc_free.exit151

lnc_free.exit151:                                 ; preds = %if.end.i150, %if.end64.lnc_free.exit151_crit_edge
  %lnum67 = getelementptr %struct.ubifs_znode, ptr %114, i32 0, i32 13, i32 %116, i32 2
  %121 = ptrtoint ptr %lnum67 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %lnum67, align 4
  %len68 = getelementptr %struct.ubifs_znode, ptr %114, i32 0, i32 13, i32 %116, i32 4
  %123 = ptrtoint ptr %len68 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len68, align 4
  %call.i152 = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %122, i32 noundef -2147483647, i32 noundef %124, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool70.not = icmp eq i32 %call.i152, 0
  br i1 %tobool70.not, label %if.end72, label %lnc_free.exit151.cleanup89_crit_edge

lnc_free.exit151.cleanup89_crit_edge:             ; preds = %lnc_free.exit151
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end72:                                         ; preds = %lnc_free.exit151
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %lnum67 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %lnum, ptr %lnum67, align 4
  %offs74 = getelementptr %struct.ubifs_znode, ptr %114, i32 0, i32 13, i32 %116, i32 3
  br label %if.then85.sink.split

if.end83:                                         ; preds = %if.end52.if.end83_crit_edge, %if.else.thread.if.end83_crit_edge, %if.else.if.end83_crit_edge, %if.end10.if.end83_crit_edge
  %call.i153 = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %lnum, i32 noundef -2147483647, i32 noundef %len, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool84.not = icmp eq i32 %call.i153, 0
  br i1 %tobool84.not, label %if.end83.if.then85_crit_edge, label %if.end83.cleanup89_crit_edge

if.end83.cleanup89_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end83.if.then85_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

if.then85.sink.split:                             ; preds = %if.end72, %if.end23
  %offs15.sink = phi ptr [ %offs15, %if.end23 ], [ %offs74, %if.end72 ]
  %len19.sink = phi ptr [ %len19, %if.end23 ], [ %len68, %if.end72 ]
  %126 = ptrtoint ptr %offs15.sink to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %offs, ptr %offs15.sink, align 8
  %127 = ptrtoint ptr %len19.sink to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %len, ptr %len19.sink, align 4
  br label %if.then85

if.then85:                                        ; preds = %if.then85.sink.split, %if.end83.if.then85_crit_edge, %if.end10.if.then85_crit_edge
  %call86 = call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 0) #12
  br label %cleanup89

cleanup89:                                        ; preds = %if.then85, %if.end83.cleanup89_crit_edge, %lnc_free.exit151.cleanup89_crit_edge, %if.then61, %do.end49.cleanup89_crit_edge, %lnc_free.exit.cleanup89_crit_edge, %do.end.cleanup89_crit_edge
  %err.4 = phi i32 [ %call.i153, %if.end83.cleanup89_crit_edge ], [ %call86, %if.then85 ], [ %call8, %do.end.cleanup89_crit_edge ], [ %112, %if.then61 ], [ %call.i, %lnc_free.exit.cleanup89_crit_edge ], [ %retval.0.i146, %do.end49.cleanup89_crit_edge ], [ %call.i152, %lnc_free.exit151.cleanup89_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %err.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dirty_cow_bottom_up(ptr noundef %c, ptr noundef %znode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bottom_up_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 45
  %0 = ptrtoint ptr %bottom_up_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bottom_up_buf, align 8
  %zroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.do.body4_crit_edge, !prof !230

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.2, i32 noundef 1095) #12
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %tobool5.not = icmp eq ptr %znode, null
  br i1 %tobool5.not, label %if.then14, label %do.body4.do.end17_crit_edge, !prof !230

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.2, i32 noundef 1096) #12
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body4.do.end17_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp = icmp sgt i32 %8, 64
  br i1 %cmp, label %if.then19, label %do.end17.if.end30_crit_edge

do.end17.if.end30_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then19:                                        ; preds = %do.end17
  %9 = ptrtoint ptr %bottom_up_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bottom_up_buf, align 8
  tail call void @kfree(ptr noundef %10) #12
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 8
  %level22 = getelementptr inbounds %struct.ubifs_znode, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %level22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level22, align 8
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #12
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !230

kmalloc_array.exit.thread:                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %bottom_up_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %bottom_up_buf, align 8
  br label %cleanup162

if.end7.i:                                        ; preds = %if.then19
  %18 = extractvalue { i32, i1 } %15, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3136) #18
  %19 = ptrtoint ptr %bottom_up_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i, ptr %bottom_up_buf, align 8
  %tobool25.not = icmp eq ptr %call8.i, null
  br i1 %tobool25.not, label %if.end7.i.cleanup162_crit_edge, label %if.end7.i.if.end30_crit_edge

if.end7.i.if.end30_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end7.i.cleanup162_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup162

if.end30:                                         ; preds = %if.end7.i.if.end30_crit_edge, %do.end17.if.end30_crit_edge
  %path.0 = phi ptr [ %1, %do.end17.if.end30_crit_edge ], [ %call8.i, %if.end7.i.if.end30_crit_edge ]
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 8
  %level32 = getelementptr inbounds %struct.ubifs_znode, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %level32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %level32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool33.not = icmp eq i32 %23, 0
  br i1 %tobool33.not, label %if.end30.while.cond60.preheader_crit_edge, label %while.cond.preheader

if.end30.while.cond60.preheader_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond60.preheader

while.cond.preheader:                             ; preds = %if.end30
  %24 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %znode, align 8
  %tobool35.not229 = icmp eq ptr %25, null
  br i1 %tobool35.not229, label %while.cond.preheader.while.cond60.preheader_crit_edge, label %while.cond.preheader.if.end37_crit_edge

while.cond.preheader.if.end37_crit_edge:          ; preds = %while.cond.preheader
  br label %if.end37

while.cond.preheader.while.cond60.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond60.preheader

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %while.cond.preheader.if.end37_crit_edge
  %26 = phi ptr [ %39, %cleanup.if.end37_crit_edge ], [ %25, %while.cond.preheader.if.end37_crit_edge ]
  %p.0231 = phi i32 [ %inc, %cleanup.if.end37_crit_edge ], [ 0, %while.cond.preheader.if.end37_crit_edge ]
  %znode.addr.0230 = phi ptr [ %26, %cleanup.if.end37_crit_edge ], [ %znode, %while.cond.preheader.if.end37_crit_edge ]
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0230, i32 0, i32 8
  %27 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iip, align 8
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 8
  %level40 = getelementptr inbounds %struct.ubifs_znode, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %level40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %level40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0231, i32 %32)
  %cmp41.not = icmp slt i32 %p.0231, %32
  br i1 %cmp41.not, label %if.end37.do.end53_crit_edge, label %if.then50, !prof !235

if.end37.do.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

if.then50:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.2, i32 noundef 1115) #12
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %if.end37.do.end53_crit_edge
  %inc = add i32 %p.0231, 1
  %arrayidx = getelementptr i32, ptr %path.0, i32 %p.0231
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %arrayidx, align 4
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cnext, align 4
  %tobool54.not = icmp eq ptr %35, null
  br i1 %tobool54.not, label %land.lhs.true, label %do.end53.cleanup_crit_edge

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end53
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0230, i32 0, i32 4
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool56.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool56.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.while.cond60.preheader_crit_edge

land.lhs.true.while.cond60.preheader_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond60.preheader

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %do.end53.cleanup_crit_edge
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %26, align 8
  %tobool35.not = icmp eq ptr %39, null
  br i1 %tobool35.not, label %cleanup.while.cond60.preheader_crit_edge, label %cleanup.if.end37_crit_edge

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

cleanup.while.cond60.preheader_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond60.preheader

while.cond60.preheader:                           ; preds = %cleanup.while.cond60.preheader_crit_edge, %land.lhs.true.while.cond60.preheader_crit_edge, %while.cond.preheader.while.cond60.preheader_crit_edge, %if.end30.while.cond60.preheader_crit_edge
  %znode.addr.3.ph = phi ptr [ %znode, %while.cond.preheader.while.cond60.preheader_crit_edge ], [ %znode, %if.end30.while.cond60.preheader_crit_edge ], [ %znode.addr.0230, %land.lhs.true.while.cond60.preheader_crit_edge ], [ %26, %cleanup.while.cond60.preheader_crit_edge ]
  %p.3.ph = phi i32 [ 0, %while.cond.preheader.while.cond60.preheader_crit_edge ], [ 0, %if.end30.while.cond60.preheader_crit_edge ], [ %inc, %land.lhs.true.while.cond60.preheader_crit_edge ], [ %inc, %cleanup.while.cond60.preheader_crit_edge ]
  br label %while.cond60

while.cond60:                                     ; preds = %cleanup158, %while.cond60.preheader
  %znode.addr.3 = phi ptr [ %62, %cleanup158 ], [ %znode.addr.3.ph, %while.cond60.preheader ]
  %p.3 = phi i32 [ %p.4, %cleanup158 ], [ %p.3.ph, %while.cond60.preheader ]
  %40 = ptrtoint ptr %znode.addr.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %znode.addr.3, align 8
  %tobool63.not = icmp eq ptr %41, null
  br i1 %tobool63.not, label %do.body99, label %do.body65

do.body65:                                        ; preds = %while.cond60
  %sub = add i32 %p.3, -1
  %arrayidx66 = getelementptr i32, ptr %path.0, i32 %sub
  %42 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp67 = icmp slt i32 %43, 0
  br i1 %cmp67, label %if.then76, label %do.body65.do.body80_crit_edge, !prof !230

do.body65.do.body80_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body80

if.then76:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef 1129) #12
  br label %do.body80

do.body80:                                        ; preds = %if.then76, %do.body65.do.body80_crit_edge
  %44 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx66, align 4
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 7
  %46 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp83.not = icmp slt i32 %45, %47
  br i1 %cmp83.not, label %do.body80.do.end95_crit_edge, label %if.then92, !prof !235

do.body80.do.end95_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.2, i32 noundef 1130) #12
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body80.do.end95_crit_edge
  %48 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx66, align 4
  %arrayidx97 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %49
  br label %if.end116

do.body99:                                        ; preds = %while.cond60
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %2, align 8
  %cmp101.not = icmp eq ptr %znode.addr.3, %51
  br i1 %cmp101.not, label %do.body99.if.end116_crit_edge, label %if.then110, !prof !235

do.body99.if.end116_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then110:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.2, i32 noundef 1134) #12
  br label %if.end116

if.end116:                                        ; preds = %if.then110, %do.body99.if.end116_crit_edge, %do.end95
  %zroot.sink = phi ptr [ %arrayidx97, %do.end95 ], [ %zroot, %if.then110 ], [ %zroot, %do.body99.if.end116_crit_edge ]
  %p.4 = phi i32 [ %sub, %do.end95 ], [ %p.3, %if.then110 ], [ %p.3, %do.body99.if.end116_crit_edge ]
  %call115 = tail call fastcc ptr @dirty_cow_znode(ptr noundef %c, ptr noundef %zroot.sink)
  %cmp.i = icmp ugt ptr %call115, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p.4)
  %tobool118.not = icmp eq i32 %p.4, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool118.not
  br i1 %or.cond, label %if.end116.cleanup162_crit_edge, label %do.body121

if.end116.cleanup162_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup162

do.body121:                                       ; preds = %if.end116
  %sub122 = add i32 %p.4, -1
  %arrayidx123 = getelementptr i32, ptr %path.0, i32 %sub122
  %52 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp124 = icmp slt i32 %53, 0
  br i1 %cmp124, label %if.then133, label %do.body121.do.body137_crit_edge, !prof !230

do.body121.do.body137_crit_edge:                  ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body137

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef 1139) #12
  br label %do.body137

do.body137:                                       ; preds = %if.then133, %do.body121.do.body137_crit_edge
  %54 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx123, align 4
  %child_cnt140 = getelementptr inbounds %struct.ubifs_znode, ptr %call115, i32 0, i32 7
  %56 = ptrtoint ptr %child_cnt140 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %child_cnt140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp141.not = icmp slt i32 %55, %57
  br i1 %cmp141.not, label %do.body137.cleanup158_crit_edge, label %if.then150, !prof !235

do.body137.cleanup158_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup158

if.then150:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.2, i32 noundef 1140) #12
  br label %cleanup158

cleanup158:                                       ; preds = %if.then150, %do.body137.cleanup158_crit_edge
  %58 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx123, align 4
  %60 = getelementptr %struct.ubifs_znode, ptr %call115, i32 0, i32 13, i32 %59, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  br label %while.cond60

cleanup162:                                       ; preds = %if.end116.cleanup162_crit_edge, %if.end7.i.cleanup162_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %kmalloc_array.exit.thread ], [ inttoptr (i32 -12 to ptr), %if.end7.i.cleanup162_crit_edge ], [ %call115, %if.end116.cleanup162_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_add_nm(ptr noundef %c, ptr noundef %key, i32 noundef %lnum, i32 noundef %offs, i32 noundef %len, ptr nocapture noundef readonly %hash, ptr nocapture noundef readonly %nm) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  %zbr64 = alloca %struct.ubifs_zbranch, align 8
  %noname = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %2 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_add_nm.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_add_nm, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_add_nm.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.18, i32 noundef %8, i32 noundef %lnum, i32 noundef %offs, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %call8 = call fastcc i32 @lookup_level0_dirty(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.if.end95_crit_edge, label %if.end10

do.end.if.end95_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp11 = icmp eq i32 %call8, 1
  br i1 %cmp11, label %if.then12, label %if.end10.if.end61_crit_edge

if.end10.if.end61_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then12:                                        ; preds = %if.end10
  %replaying = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %9 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %replaying, align 4
  %10 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = call fastcc i32 @fallible_resolve_collision(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n, ptr noundef %nm, i32 noundef 1)
  br label %do.body18

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = call fastcc i32 @resolve_collision(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n, ptr noundef %nm)
  br label %do.body18

do.body18:                                        ; preds = %if.else, %if.then14
  %found.0 = phi i32 [ %call15, %if.then14 ], [ %call16, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_add_nm.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_add_nm, %if.then30)) #12
          to label %do.end36 [label %if.then30], !srcloc !231

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %11 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i151 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i151 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid33, align 8
  %17 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %znode, align 4
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_add_nm.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.19, i32 noundef %16, i32 noundef %found.0, ptr noundef %18, i32 noundef %20) #12
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0)
  %cmp37 = icmp slt i32 %found.0, 0
  br i1 %cmp37, label %do.end36.if.end95_crit_edge, label %if.end39

do.end36.if.end95_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.end39:                                         ; preds = %do.end36
  %21 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %znode, align 4
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cnext, align 4
  %tobool40.not = icmp eq ptr %24, null
  br i1 %tobool40.not, label %lor.lhs.false, label %if.end39.if.then43_crit_edge

if.end39.if.then43_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end39
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool42.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool42.not, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end39.if.then43_crit_edge
  %call44 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %c, ptr noundef %22)
  %27 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call44, ptr %znode, align 4
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.then43.if.end49_crit_edge

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call44 to i32
  br label %out_unlock

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %lor.lhs.false.if.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %found.0)
  %cmp50 = icmp eq i32 %found.0, 1
  br i1 %cmp50, label %if.then51, label %if.end49.if.end61_crit_edge

if.end49.if.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then51:                                        ; preds = %if.end49
  %29 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %znode, align 4
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %33 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then51.lnc_free.exit_crit_edge, label %if.end.i

if.then51.lnc_free.exit_crit_edge:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %lnc_free.exit

if.end.i:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %35) #12
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %33, align 8
  br label %lnc_free.exit

lnc_free.exit:                                    ; preds = %if.end.i, %if.then51.lnc_free.exit_crit_edge
  %lnum52 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 2
  %37 = ptrtoint ptr %lnum52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lnum52, align 4
  %len53 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 4
  %39 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len53, align 4
  %call.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %38, i32 noundef -2147483647, i32 noundef %40, i32 noundef 0, i32 noundef 0) #12
  %41 = ptrtoint ptr %lnum52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %lnum, ptr %lnum52, align 4
  %offs56 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 3
  %42 = ptrtoint ptr %offs56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %offs, ptr %offs56, align 8
  %43 = ptrtoint ptr %len53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %len, ptr %len53, align 4
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %44 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %45 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i152 = icmp eq i16 %45, 0
  br i1 %tobool.not.i152, label %lnc_free.exit.out_unlock_crit_edge, label %if.then.i

lnc_free.exit.out_unlock_crit_edge:               ; preds = %lnc_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then.i:                                        ; preds = %lnc_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  %hash58 = getelementptr %struct.ubifs_znode, ptr %30, i32 0, i32 13, i32 %32, i32 5
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %46 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hash_len.i, align 8
  %48 = call ptr @memcpy(ptr %hash58, ptr %hash, i32 %47)
  br label %out_unlock

if.end61:                                         ; preds = %if.end49.if.end61_crit_edge, %if.end10.if.end61_crit_edge
  %found.1 = phi i32 [ %found.0, %if.end49.if.end61_crit_edge ], [ %call8, %if.end10.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1)
  %tobool62.not = icmp eq i32 %found.1, 0
  br i1 %tobool62.not, label %if.then63, label %if.end61.if.then93_crit_edge

if.end61.if.then93_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then93

if.then63:                                        ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %zbr64) #12
  %49 = getelementptr inbounds i8, ptr %zbr64, i32 24
  %50 = call ptr @memset(ptr %49, i32 255, i32 64)
  %51 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr64, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %51, align 8
  %lnum65 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr64, i32 0, i32 2
  %53 = ptrtoint ptr %lnum65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %lnum, ptr %lnum65, align 4
  %offs66 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr64, i32 0, i32 3
  %54 = ptrtoint ptr %offs66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %offs, ptr %offs66, align 8
  %len67 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr64, i32 0, i32 4
  %55 = ptrtoint ptr %len67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %len, ptr %len67, align 4
  %authenticated.i.i154 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %56 = ptrtoint ptr %authenticated.i.i154 to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i.i155 = load i16, ptr %authenticated.i.i154, align 8
  %57 = and i16 %bf.load.i.i155, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i156 = icmp eq i16 %57, 0
  br i1 %tobool.not.i156, label %if.then63.ubifs_copy_hash.exit160_crit_edge, label %if.then.i158

if.then63.ubifs_copy_hash.exit160_crit_edge:      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubifs_copy_hash.exit160

if.then.i158:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %hash68 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr64, i32 0, i32 5
  %hash_len.i157 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %58 = ptrtoint ptr %hash_len.i157 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hash_len.i157, align 8
  %60 = call ptr @memcpy(ptr %hash68, ptr %hash, i32 %59)
  br label %ubifs_copy_hash.exit160

ubifs_copy_hash.exit160:                          ; preds = %if.then.i158, %if.then63.ubifs_copy_hash.exit160_crit_edge
  %61 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %key, align 8
  %63 = ptrtoint ptr %zbr64 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %zbr64, align 8
  %64 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %znode, align 4
  %66 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n, align 4
  %add = add i32 %67, 1
  %call71 = call fastcc i32 @tnc_insert(ptr noundef %c, ptr noundef %65, ptr noundef nonnull %zbr64, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %ubifs_copy_hash.exit160.cleanup89.thread_crit_edge

ubifs_copy_hash.exit160.cleanup89.thread_crit_edge: ; preds = %ubifs_copy_hash.exit160
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89.thread

if.end74:                                         ; preds = %ubifs_copy_hash.exit160
  %replaying75 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %68 = ptrtoint ptr %replaying75 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load76 = load i8, ptr %replaying75, align 4
  %69 = and i8 %bf.load76, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool80.not = icmp eq i8 %69, 0
  br i1 %tobool80.not, label %if.end74.cleanup89.thread_crit_edge, label %if.then81

if.end74.cleanup89.thread_crit_edge:              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89.thread

if.then81:                                        ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %noname) #12
  %70 = call ptr @memcpy(ptr %noname, ptr @__const.ubifs_tnc_add_nm.noname, i32 32)
  %call82 = call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool84.not = icmp eq i32 %call82, 0
  br i1 %tobool84.not, label %if.end86, label %if.then81.cleanup89_crit_edge

if.then81.cleanup89_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end86:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %call87 = call i32 @ubifs_tnc_remove_nm(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %noname)
  br label %cleanup89

cleanup89.thread:                                 ; preds = %if.end74.cleanup89.thread_crit_edge, %ubifs_copy_hash.exit160.cleanup89.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %zbr64) #12
  br label %out_unlock

cleanup89:                                        ; preds = %if.end86, %if.then81.cleanup89_crit_edge
  %retval.0 = phi i32 [ %call87, %if.end86 ], [ %call82, %if.then81.cleanup89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %noname) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %zbr64) #12
  br label %cleanup97

out_unlock:                                       ; preds = %cleanup89.thread, %if.then.i, %lnc_free.exit.out_unlock_crit_edge, %if.then46
  %err.1 = phi i32 [ %28, %if.then46 ], [ %call.i, %lnc_free.exit.out_unlock_crit_edge ], [ %call.i, %if.then.i ], [ %call71, %cleanup89.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool92.not = icmp eq i32 %err.1, 0
  br i1 %tobool92.not, label %out_unlock.if.then93_crit_edge, label %out_unlock.if.end95_crit_edge

out_unlock.if.end95_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

out_unlock.if.then93_crit_edge:                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then93

if.then93:                                        ; preds = %out_unlock.if.then93_crit_edge, %if.end61.if.then93_crit_edge
  %call94 = call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 0) #12
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %out_unlock.if.end95_crit_edge, %do.end36.if.end95_crit_edge, %do.end.if.end95_crit_edge
  %err.2 = phi i32 [ %err.1, %out_unlock.if.end95_crit_edge ], [ %call94, %if.then93 ], [ %found.0, %do.end36.if.end95_crit_edge ], [ %call8, %do.end.if.end95_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  br label %cleanup97

cleanup97:                                        ; preds = %if.end95, %cleanup89
  %retval.2 = phi i32 [ %err.2, %if.end95 ], [ %retval.0, %cleanup89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fallible_resolve_collision(ptr noundef %c, ptr noundef %key, ptr nocapture noundef %zn, ptr nocapture noundef %n, ptr nocapture noundef readonly %nm, i32 noundef %adding) unnamed_addr #0 align 64 {
entry:
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zn, align 4
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %3
  %call = tail call fastcc i32 @fallible_matches_name(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %nm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end, !prof !230

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call, label %if.end11 [
    i32 1, label %if.end.cleanup_crit_edge
    i32 3, label %if.end.while.cond.preheader_crit_edge
  ]

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adding)
  %tobool8.not = icmp eq i32 %adding, 0
  %spec.select229 = zext i1 %tobool8.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp12 = icmp eq i32 %call, 2
  %5 = or i1 %tobool8.not, %cmp12
  br i1 %5, label %if.end11.while.cond.preheader_crit_edge, label %if.end11.if.end86_crit_edge

if.end11.if.end86_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.end11.while.cond.preheader_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end11.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %o_znode.0404 = phi ptr [ null, %if.end11.while.cond.preheader_crit_edge ], [ %1, %if.end.while.cond.preheader_crit_edge ]
  %unsure.0403 = phi i32 [ %spec.select229, %if.end11.while.cond.preheader_crit_edge ], [ 1, %if.end.while.cond.preheader_crit_edge ]
  %o_n.0402 = phi i32 [ -1, %if.end11.while.cond.preheader_crit_edge ], [ %3, %if.end.while.cond.preheader_crit_edge ]
  %arrayidx8.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %tobool79.not = icmp eq i32 %adding, 0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then77, %while.cond.preheader
  %o_n.1.ph = phi i32 [ %o_n.0402, %while.cond.preheader ], [ %43, %if.then77 ]
  %unsure.1.ph = phi i32 [ %unsure.0403, %while.cond.preheader ], [ %unsure.1.ph336, %if.then77 ]
  %o_znode.1.ph = phi ptr [ %o_znode.0404, %while.cond.preheader ], [ %41, %if.then77 ]
  br label %while.cond.outer335

while.cond.outer335:                              ; preds = %if.end81.while.cond.outer335_crit_edge, %while.cond.outer
  %unsure.1.ph336 = phi i32 [ %unsure.1.ph, %while.cond.outer ], [ 0, %if.end81.while.cond.outer335_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %if.end78.while.cond_crit_edge, %while.cond.outer335
  %call15 = tail call fastcc i32 @tnc_prev(ptr noundef %c, ptr noundef %zn, ptr noundef %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call15)
  %cmp16 = icmp eq i32 %call15, -2
  br i1 %cmp16, label %do.body, label %if.end29

do.body:                                          ; preds = %while.cond
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18.not = icmp eq i32 %7, 0
  br i1 %cmp18.not, label %do.body.if.end86.sink.split_crit_edge, label %if.then27, !prof !235

do.body.if.end86.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.sink.split

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 918) #12
  br label %if.end86.sink.split

if.end29:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp30 = icmp slt i32 %call15, 0
  br i1 %cmp30, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %8 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zn, align 4
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  %arrayidx34 = getelementptr %struct.ubifs_znode, ptr %9, i32 0, i32 13, i32 %11
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx34, align 8
  %14 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %.not329 = icmp eq i32 %13, %15
  br i1 %.not329, label %if.end6.i, label %if.end32.if.then38_crit_edge

if.end32.if.then38_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.end6.i:                                        ; preds = %if.end32
  %arrayidx7.i = getelementptr [2 x i32], ptr %arrayidx34, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i, align 4
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %.not367 = icmp eq i32 %17, %19
  br i1 %.not367, label %if.end66, label %if.end6.i.if.then38_crit_edge

if.end6.i.if.then38_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.then38:                                        ; preds = %if.end6.i.if.then38_crit_edge, %if.end32.if.then38_crit_edge
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %9, i32 0, i32 7
  %20 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %child_cnt, align 4
  %sub = add i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp39 = icmp eq i32 %11, %sub
  br i1 %cmp39, label %if.then40, label %if.then38.if.end86_crit_edge

if.then38.if.end86_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then40:                                        ; preds = %if.then38
  %add.i = add i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %21)
  %cmp.i233 = icmp slt i32 %add.i, %21
  br i1 %cmp.i233, label %if.then.i, label %if.then40.while.cond.i_crit_edge

if.then40.while.cond.i_crit_edge:                 ; preds = %if.then40
  br label %while.cond.i

if.then.i:                                        ; preds = %if.then40
  %22 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp52.not = icmp eq i32 %add.i, 0
  br i1 %cmp52.not, label %if.then.i.if.end86.sink.split_crit_edge, label %if.then61, !prof !235

if.then.i.if.end86.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.sink.split

while.cond.i:                                     ; preds = %if.end2.i.while.cond.i_crit_edge, %if.then40.while.cond.i_crit_edge
  %znode.0.i = phi ptr [ %24, %if.end2.i.while.cond.i_crit_edge ], [ %9, %if.then40.while.cond.i_crit_edge ]
  %23 = ptrtoint ptr %znode.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %znode.0.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.body44.thread, label %if.end2.i

do.body44.thread:                                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.2, i32 noundef 930) #12
  br label %38

if.end2.i:                                        ; preds = %while.cond.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i, i32 0, i32 8
  %25 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iip.i, align 8
  %add3.i = add i32 %26, 1
  %child_cnt4.i = getelementptr inbounds %struct.ubifs_znode, ptr %24, i32 0, i32 7
  %27 = ptrtoint ptr %child_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %child_cnt4.i, align 4
  %cmp5.i = icmp slt i32 %add3.i, %28
  br i1 %cmp5.i, label %if.then6.i, label %if.end2.i.while.cond.i_crit_edge

if.end2.i.while.cond.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end2.i
  %29 = getelementptr %struct.ubifs_znode, ptr %24, i32 0, i32 13, i32 %add3.i, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then6.i.get_znode.exit.i_crit_edge

if.then6.i.get_znode.exit.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.ubifs_znode, ptr %24, i32 0, i32 13, i32 %add3.i
  %call.i.i = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i, ptr noundef nonnull %24, i32 noundef %add3.i) #12
  br label %get_znode.exit.i

get_znode.exit.i:                                 ; preds = %if.else.i.i, %if.then6.i.get_znode.exit.i_crit_edge
  %znode.addr.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %31, %if.then6.i.get_znode.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %znode.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_znode.exit.i.do.body44_crit_edge, label %get_znode.exit.i.while.cond11.i_crit_edge

get_znode.exit.i.while.cond11.i_crit_edge:        ; preds = %get_znode.exit.i
  br label %while.cond11.i

get_znode.exit.i.do.body44_crit_edge:             ; preds = %get_znode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

while.cond11.i:                                   ; preds = %get_znode.exit49.i.while.cond11.i_crit_edge, %get_znode.exit.i.while.cond11.i_crit_edge
  %znode.1.i = phi ptr [ %znode.addr.0.i48.i, %get_znode.exit49.i.while.cond11.i_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.while.cond11.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 6
  %32 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp12.not.i = icmp eq i32 %33, 0
  br i1 %cmp12.not.i, label %do.body51.thread, label %while.body13.i

while.body13.i:                                   ; preds = %while.cond11.i
  %34 = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %tobool.not.i44.i = icmp eq ptr %36, null
  br i1 %tobool.not.i44.i, label %if.else.i47.i, label %while.body13.i.get_znode.exit49.i_crit_edge

while.body13.i.get_znode.exit49.i_crit_edge:      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i

if.else.i47.i:                                    ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0
  %call.i46.i = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i, ptr noundef %znode.1.i, i32 noundef 0) #12
  br label %get_znode.exit49.i

get_znode.exit49.i:                               ; preds = %if.else.i47.i, %while.body13.i.get_znode.exit49.i_crit_edge
  %znode.addr.0.i48.i = phi ptr [ %call.i46.i, %if.else.i47.i ], [ %36, %while.body13.i.get_znode.exit49.i_crit_edge ]
  %cmp.i50.i = icmp ugt ptr %znode.addr.0.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %get_znode.exit49.i.do.body44_crit_edge, label %get_znode.exit49.i.while.cond11.i_crit_edge

get_znode.exit49.i.while.cond11.i_crit_edge:      ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i

get_znode.exit49.i.do.body44_crit_edge:           ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

do.body51.thread:                                 ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %znode.1.i, ptr %zn, align 4
  br label %if.end86.sink.split

do.body44:                                        ; preds = %get_znode.exit49.i.do.body44_crit_edge, %get_znode.exit.i.do.body44_crit_edge
  %retval.2.i.in = phi ptr [ %znode.addr.0.i.i, %get_znode.exit.i.do.body44_crit_edge ], [ %znode.addr.0.i48.i, %get_znode.exit49.i.do.body44_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.2, i32 noundef 930) #12
  %cmp47 = icmp eq ptr %retval.2.i.in, inttoptr (i32 -2 to ptr)
  br i1 %cmp47, label %do.body44._crit_edge, label %do.body44.cleanup_crit_edge

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body44._crit_edge:                             ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %38

38:                                               ; preds = %do.body44._crit_edge, %do.body44.thread
  br label %cleanup

if.then61:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 935) #12
  br label %if.end86.sink.split

if.end66:                                         ; preds = %if.end6.i
  %call69 = tail call fastcc i32 @fallible_matches_name(ptr noundef %c, ptr noundef %arrayidx34, ptr noundef %nm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end66.cleanup_crit_edge, label %if.end72

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end72:                                         ; preds = %if.end66
  %39 = zext i32 %call69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call69, label %if.end78 [
    i32 1, label %if.end72.cleanup_crit_edge
    i32 3, label %if.then77
  ]

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %zn, align 4
  %42 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n, align 4
  br label %while.cond.outer

if.end78:                                         ; preds = %if.end72
  br i1 %tobool79.not, label %if.end78.while.cond_crit_edge, label %if.end81

if.end78.while.cond_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end81:                                         ; preds = %if.end78
  %cmp82 = icmp eq i32 %call69, 0
  br i1 %cmp82, label %if.end81.if.end86_crit_edge, label %if.end81.while.cond.outer335_crit_edge

if.end81.while.cond.outer335_crit_edge:           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer335

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.end86.sink.split:                              ; preds = %if.then61, %do.body51.thread, %if.then.i.if.end86.sink.split_crit_edge, %if.then27, %do.body.if.end86.sink.split_crit_edge
  %44 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %n, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end86.sink.split, %if.end81.if.end86_crit_edge, %if.then38.if.end86_crit_edge, %if.end11.if.end86_crit_edge
  %o_n.2 = phi i32 [ %o_n.1.ph, %if.then38.if.end86_crit_edge ], [ -1, %if.end11.if.end86_crit_edge ], [ %o_n.1.ph, %if.end86.sink.split ], [ %o_n.1.ph, %if.end81.if.end86_crit_edge ]
  %unsure.2 = phi i32 [ %unsure.1.ph336, %if.then38.if.end86_crit_edge ], [ 0, %if.end11.if.end86_crit_edge ], [ %unsure.1.ph336, %if.end86.sink.split ], [ %unsure.1.ph336, %if.end81.if.end86_crit_edge ]
  %o_znode.2 = phi ptr [ %o_znode.1.ph, %if.then38.if.end86_crit_edge ], [ null, %if.end11.if.end86_crit_edge ], [ %o_znode.1.ph, %if.end86.sink.split ], [ %o_znode.1.ph, %if.end81.if.end86_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp87 = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unsure.2)
  %tobool89.not = icmp eq i32 %unsure.2, 0
  %or.cond = select i1 %cmp87, i1 %tobool89.not, i1 false
  br i1 %or.cond, label %if.end86.if.end123_crit_edge, label %if.then90

if.end86.if.end123_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.then90:                                        ; preds = %if.end86
  %45 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %1, ptr %zn, align 4
  %46 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %3, ptr %n, align 4
  %arrayidx8.i275 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  br label %while.cond91.outer

while.cond91.outer:                               ; preds = %if.end115.while.cond91.outer_crit_edge, %if.then90
  %znode.0.ph = phi ptr [ %1, %if.then90 ], [ %znode.1309322, %if.end115.while.cond91.outer_crit_edge ]
  %nn.0.ph = phi i32 [ %3, %if.then90 ], [ %nn.1310321, %if.end115.while.cond91.outer_crit_edge ]
  %o_n.3.ph = phi i32 [ %o_n.2, %if.then90 ], [ %nn.1310321, %if.end115.while.cond91.outer_crit_edge ]
  %o_znode.3.ph = phi ptr [ %o_znode.2, %if.then90 ], [ %znode.1309322, %if.end115.while.cond91.outer_crit_edge ]
  br label %while.cond91

while.cond91:                                     ; preds = %if.end115.while.cond91_crit_edge, %while.cond91.outer
  %znode.0 = phi ptr [ %znode.1309322, %if.end115.while.cond91_crit_edge ], [ %znode.0.ph, %while.cond91.outer ]
  %nn.0 = phi i32 [ %nn.1310321, %if.end115.while.cond91_crit_edge ], [ %nn.0.ph, %while.cond91.outer ]
  %add.i234 = add i32 %nn.0, 1
  %child_cnt.i235 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 7
  %47 = ptrtoint ptr %child_cnt.i235 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %child_cnt.i235, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i234, i32 %48)
  %cmp.i236 = icmp slt i32 %add.i234, %48
  br i1 %cmp.i236, label %while.cond91.if.end99_crit_edge, label %while.cond91.while.cond.i240_crit_edge

while.cond91.while.cond.i240_crit_edge:           ; preds = %while.cond91
  br label %while.cond.i240

while.cond91.if.end99_crit_edge:                  ; preds = %while.cond91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

while.cond.i240:                                  ; preds = %if.end2.i245.while.cond.i240_crit_edge, %while.cond91.while.cond.i240_crit_edge
  %znode.0.i238 = phi ptr [ %50, %if.end2.i245.while.cond.i240_crit_edge ], [ %znode.0, %while.cond91.while.cond.i240_crit_edge ]
  %49 = ptrtoint ptr %znode.0.i238 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %znode.0.i238, align 8
  %tobool.not.i239 = icmp eq ptr %50, null
  br i1 %tobool.not.i239, label %while.cond.i240.if.end123_crit_edge, label %if.end2.i245

while.cond.i240.if.end123_crit_edge:              ; preds = %while.cond.i240
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.end2.i245:                                     ; preds = %while.cond.i240
  %iip.i241 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i238, i32 0, i32 8
  %51 = ptrtoint ptr %iip.i241 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iip.i241, align 8
  %add3.i242 = add i32 %52, 1
  %child_cnt4.i243 = getelementptr inbounds %struct.ubifs_znode, ptr %50, i32 0, i32 7
  %53 = ptrtoint ptr %child_cnt4.i243 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %child_cnt4.i243, align 4
  %cmp5.i244 = icmp slt i32 %add3.i242, %54
  br i1 %cmp5.i244, label %if.then6.i247, label %if.end2.i245.while.cond.i240_crit_edge

if.end2.i245.while.cond.i240_crit_edge:           ; preds = %if.end2.i245
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i240

if.then6.i247:                                    ; preds = %if.end2.i245
  %55 = getelementptr %struct.ubifs_znode, ptr %50, i32 0, i32 13, i32 %add3.i242, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %tobool.not.i.i246 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i246, label %if.else.i.i250, label %if.then6.i247.get_znode.exit.i253_crit_edge

if.then6.i247.get_znode.exit.i253_crit_edge:      ; preds = %if.then6.i247
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i253

if.else.i.i250:                                   ; preds = %if.then6.i247
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i248 = getelementptr %struct.ubifs_znode, ptr %50, i32 0, i32 13, i32 %add3.i242
  %call.i.i249 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i248, ptr noundef nonnull %50, i32 noundef %add3.i242) #12
  br label %get_znode.exit.i253

get_znode.exit.i253:                              ; preds = %if.else.i.i250, %if.then6.i247.get_znode.exit.i253_crit_edge
  %znode.addr.0.i.i251 = phi ptr [ %call.i.i249, %if.else.i.i250 ], [ %57, %if.then6.i247.get_znode.exit.i253_crit_edge ]
  %cmp.i.i252 = icmp ugt ptr %znode.addr.0.i.i251, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i252, label %get_znode.exit.i253.tnc_next.exit270_crit_edge, label %get_znode.exit.i253.while.cond11.i258_crit_edge

get_znode.exit.i253.while.cond11.i258_crit_edge:  ; preds = %get_znode.exit.i253
  br label %while.cond11.i258

get_znode.exit.i253.tnc_next.exit270_crit_edge:   ; preds = %get_znode.exit.i253
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit270

while.cond11.i258:                                ; preds = %get_znode.exit49.i266.while.cond11.i258_crit_edge, %get_znode.exit.i253.while.cond11.i258_crit_edge
  %znode.1.i255 = phi ptr [ %znode.addr.0.i48.i264, %get_znode.exit49.i266.while.cond11.i258_crit_edge ], [ %znode.addr.0.i.i251, %get_znode.exit.i253.while.cond11.i258_crit_edge ]
  %level.i256 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i255, i32 0, i32 6
  %58 = ptrtoint ptr %level.i256 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %level.i256, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp12.not.i257 = icmp eq i32 %59, 0
  br i1 %cmp12.not.i257, label %while.cond11.i258.if.end99_crit_edge, label %while.body13.i260

while.cond11.i258.if.end99_crit_edge:             ; preds = %while.cond11.i258
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

while.body13.i260:                                ; preds = %while.cond11.i258
  %60 = getelementptr %struct.ubifs_znode, ptr %znode.1.i255, i32 0, i32 13, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %tobool.not.i44.i259 = icmp eq ptr %62, null
  br i1 %tobool.not.i44.i259, label %if.else.i47.i263, label %while.body13.i260.get_znode.exit49.i266_crit_edge

while.body13.i260.get_znode.exit49.i266_crit_edge: ; preds = %while.body13.i260
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i266

if.else.i47.i263:                                 ; preds = %while.body13.i260
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i261 = getelementptr %struct.ubifs_znode, ptr %znode.1.i255, i32 0, i32 13, i32 0
  %call.i46.i262 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i261, ptr noundef %znode.1.i255, i32 noundef 0) #12
  br label %get_znode.exit49.i266

get_znode.exit49.i266:                            ; preds = %if.else.i47.i263, %while.body13.i260.get_znode.exit49.i266_crit_edge
  %znode.addr.0.i48.i264 = phi ptr [ %call.i46.i262, %if.else.i47.i263 ], [ %62, %while.body13.i260.get_znode.exit49.i266_crit_edge ]
  %cmp.i50.i265 = icmp ugt ptr %znode.addr.0.i48.i264, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i265, label %get_znode.exit49.i266.tnc_next.exit270_crit_edge, label %get_znode.exit49.i266.while.cond11.i258_crit_edge

get_znode.exit49.i266.while.cond11.i258_crit_edge: ; preds = %get_znode.exit49.i266
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i258

get_znode.exit49.i266.tnc_next.exit270_crit_edge: ; preds = %get_znode.exit49.i266
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit270

tnc_next.exit270:                                 ; preds = %get_znode.exit49.i266.tnc_next.exit270_crit_edge, %get_znode.exit.i253.tnc_next.exit270_crit_edge
  %retval.2.i269.in = phi ptr [ %znode.addr.0.i.i251, %get_znode.exit.i253.tnc_next.exit270_crit_edge ], [ %znode.addr.0.i48.i264, %get_znode.exit49.i266.tnc_next.exit270_crit_edge ]
  %cmp94 = icmp eq ptr %retval.2.i269.in, inttoptr (i32 -2 to ptr)
  br i1 %cmp94, label %tnc_next.exit270.if.end123_crit_edge, label %if.end96

tnc_next.exit270.if.end123_crit_edge:             ; preds = %tnc_next.exit270
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.end96:                                         ; preds = %tnc_next.exit270
  %cmp97 = icmp slt ptr %retval.2.i269.in, null
  br i1 %cmp97, label %cleanup.loopexit.split.loop.exit, label %if.end96.if.end99_crit_edge

if.end96.if.end99_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end99:                                         ; preds = %if.end96.if.end99_crit_edge, %while.cond11.i258.if.end99_crit_edge, %while.cond91.if.end99_crit_edge
  %znode.1309322 = phi ptr [ %znode.0, %if.end96.if.end99_crit_edge ], [ %znode.0, %while.cond91.if.end99_crit_edge ], [ %znode.1.i255, %while.cond11.i258.if.end99_crit_edge ]
  %nn.1310321 = phi i32 [ %nn.0, %if.end96.if.end99_crit_edge ], [ %add.i234, %while.cond91.if.end99_crit_edge ], [ 0, %while.cond11.i258.if.end99_crit_edge ]
  %arrayidx101 = getelementptr %struct.ubifs_znode, ptr %znode.1309322, i32 0, i32 13, i32 %nn.1310321
  %63 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx101, align 8
  %65 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %.not = icmp eq i32 %64, %66
  br i1 %.not, label %if.end6.i277, label %if.end99.if.end123_crit_edge

if.end99.if.end123_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.end6.i277:                                     ; preds = %if.end99
  %arrayidx7.i274 = getelementptr [2 x i32], ptr %arrayidx101, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx7.i274 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx7.i274, align 4
  %69 = ptrtoint ptr %arrayidx8.i275 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx8.i275, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %.not366 = icmp eq i32 %68, %70
  br i1 %.not366, label %if.end106, label %if.end6.i277.if.end123_crit_edge

if.end6.i277.if.end123_crit_edge:                 ; preds = %if.end6.i277
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.end106:                                        ; preds = %if.end6.i277
  %call109 = tail call fastcc i32 @fallible_matches_name(ptr noundef %c, ptr noundef %arrayidx101, ptr noundef %nm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.end106.cleanup_crit_edge, label %if.end112

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end112:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call109)
  %cmp113 = icmp eq i32 %call109, 2
  br i1 %cmp113, label %if.end112.if.end123_crit_edge, label %if.end115

if.end112.if.end123_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.end115:                                        ; preds = %if.end112
  %71 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %znode.1309322, ptr %zn, align 4
  %72 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %nn.1310321, ptr %n, align 4
  %73 = zext i32 %call109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call109, label %if.end115.while.cond91_crit_edge [
    i32 1, label %if.end115.cleanup_crit_edge
    i32 3, label %if.end115.while.cond91.outer_crit_edge
  ]

if.end115.while.cond91.outer_crit_edge:           ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond91.outer

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end115.while.cond91_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond91

if.end123:                                        ; preds = %if.end112.if.end123_crit_edge, %if.end6.i277.if.end123_crit_edge, %if.end99.if.end123_crit_edge, %tnc_next.exit270.if.end123_crit_edge, %while.cond.i240.if.end123_crit_edge, %if.end86.if.end123_crit_edge
  %o_n.5 = phi i32 [ %o_n.2, %if.end86.if.end123_crit_edge ], [ %o_n.3.ph, %while.cond.i240.if.end123_crit_edge ], [ %o_n.3.ph, %if.end112.if.end123_crit_edge ], [ %o_n.3.ph, %tnc_next.exit270.if.end123_crit_edge ], [ %o_n.3.ph, %if.end99.if.end123_crit_edge ], [ %o_n.3.ph, %if.end6.i277.if.end123_crit_edge ]
  %o_znode.5 = phi ptr [ %o_znode.2, %if.end86.if.end123_crit_edge ], [ %o_znode.3.ph, %while.cond.i240.if.end123_crit_edge ], [ %o_znode.3.ph, %if.end112.if.end123_crit_edge ], [ %o_znode.3.ph, %tnc_next.exit270.if.end123_crit_edge ], [ %o_znode.3.ph, %if.end99.if.end123_crit_edge ], [ %o_znode.3.ph, %if.end6.i277.if.end123_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adding)
  %tobool124.not = icmp ne i32 %adding, 0
  %tobool126.not = icmp eq ptr %o_znode.5, null
  %or.cond231 = select i1 %tobool124.not, i1 true, i1 %tobool126.not
  br i1 %or.cond231, label %if.end123.cleanup_crit_edge, label %do.body129

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body129:                                       ; preds = %if.end123
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %74 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fallible_resolve_collision.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fallible_resolve_collision, %if.then139)) #12
          to label %do.end150 [label %if.then139], !srcloc !231

if.then139:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #14
  %75 = tail call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid, align 8
  %lnum = getelementptr %struct.ubifs_znode, ptr %o_znode.5, i32 0, i32 13, i32 %o_n.5, i32 2
  %81 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %lnum, align 4
  %offs = getelementptr %struct.ubifs_znode, ptr %o_znode.5, i32 0, i32 13, i32 %o_n.5, i32 3
  %83 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offs, align 8
  %len = getelementptr %struct.ubifs_znode, ptr %o_znode.5, i32 0, i32 13, i32 %o_n.5, i32 4
  %85 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len, align 4
  %call147 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fallible_resolve_collision.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.81, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, ptr noundef %call147) #12
  br label %do.end150

do.end150:                                        ; preds = %if.then139, %do.body129
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %87 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %o_znode.5, ptr %zn, align 4
  %88 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %o_n.5, ptr %n, align 4
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  %retval.2.i269.le = ptrtoint ptr %retval.2.i269.in to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %do.end150, %if.end123.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %38, %do.body44.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end150 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end123.cleanup_crit_edge ], [ -22, %38 ], [ %retval.2.i, %do.body44.cleanup_crit_edge ], [ %retval.2.i269.le, %cleanup.loopexit.split.loop.exit ], [ %call109, %if.end115.cleanup_crit_edge ], [ %call109, %if.end106.cleanup_crit_edge ], [ %call69, %if.end72.cleanup_crit_edge ], [ %call69, %if.end66.cleanup_crit_edge ], [ %call15, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @resolve_collision(ptr noundef %c, ptr nocapture noundef readonly %key, ptr nocapture noundef %zn, ptr nocapture noundef %n, ptr nocapture noundef readonly %nm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zn, align 4
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %3
  %call = tail call fastcc i32 @matches_name(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %nm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup128_crit_edge, label %if.end, !prof !230

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end:                                           ; preds = %entry
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call, label %if.else [
    i32 1, label %if.end.cleanup128_crit_edge
    i32 2, label %while.cond.preheader
  ]

if.end.cleanup128_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

while.cond.preheader:                             ; preds = %if.end
  %call7236 = tail call fastcc i32 @tnc_prev(ptr noundef %c, ptr noundef %zn, ptr noundef %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call7236)
  %cmp8237 = icmp eq i32 %call7236, -2
  br i1 %cmp8237, label %while.cond.preheader.do.body_crit_edge, label %if.end21.lr.ph

while.cond.preheader.do.body_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end21.lr.ph:                                   ; preds = %while.cond.preheader
  %arrayidx8.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  br label %if.end21

do.body:                                          ; preds = %do.end84.do.body_crit_edge, %while.cond.preheader.do.body_crit_edge
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10.not = icmp eq i32 %6, 0
  br i1 %cmp10.not, label %do.body.do.end_crit_edge, label %if.then19, !prof !235

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 716) #12
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body.do.end_crit_edge
  %7 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %n, align 4
  br label %cleanup128

if.end21:                                         ; preds = %do.end84.if.end21_crit_edge, %if.end21.lr.ph
  %call7238 = phi i32 [ %call7236, %if.end21.lr.ph ], [ %call7, %do.end84.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7238)
  %cmp22 = icmp slt i32 %call7238, 0
  br i1 %cmp22, label %if.end21.cleanup128.loopexit284_crit_edge, label %if.end24

if.end21.cleanup128.loopexit284_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128.loopexit284

if.end24:                                         ; preds = %if.end21
  %8 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zn, align 4
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  %arrayidx26 = getelementptr %struct.ubifs_znode, ptr %9, i32 0, i32 13, i32 %11
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx26, align 8
  %14 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %.not = icmp eq i32 %13, %15
  br i1 %.not, label %if.end6.i, label %if.end24.if.then30_crit_edge

if.end24.if.then30_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.end6.i:                                        ; preds = %if.end24
  %arrayidx7.i = getelementptr [2 x i32], ptr %arrayidx26, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i, align 4
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %.not251 = icmp eq i32 %17, %19
  br i1 %.not251, label %if.end58, label %if.end6.i.if.then30_crit_edge

if.end6.i.if.then30_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.then30:                                        ; preds = %if.end6.i.if.then30_crit_edge, %if.end24.if.then30_crit_edge
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %9, i32 0, i32 7
  %20 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %child_cnt, align 4
  %sub = add i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp31 = icmp eq i32 %11, %sub
  br i1 %cmp31, label %if.then32, label %if.then30.cleanup128_crit_edge

if.then30.cleanup128_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.then32:                                        ; preds = %if.then30
  %call33 = tail call fastcc i32 @tnc_next(ptr noundef %c, ptr noundef %zn, ptr noundef %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body43, label %do.body36

do.body36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.2, i32 noundef 756) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call33)
  %cmp39 = icmp eq i32 %call33, -2
  %spec.select = select i1 %cmp39, i32 -22, i32 %call33
  br label %cleanup128

do.body43:                                        ; preds = %if.then32
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp44.not = icmp eq i32 %23, 0
  br i1 %cmp44.not, label %do.body43.do.end56_crit_edge, label %if.then53, !prof !235

do.body43.do.end56_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

if.then53:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 761) #12
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body43.do.end56_crit_edge
  %24 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %n, align 4
  br label %cleanup128

if.end58:                                         ; preds = %if.end6.i
  %call61 = tail call fastcc i32 @matches_name(ptr noundef %c, ptr noundef %arrayidx26, ptr noundef %nm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end58.cleanup128.loopexit284_crit_edge, label %if.end64

if.end58.cleanup128.loopexit284_crit_edge:        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128.loopexit284

if.end64:                                         ; preds = %if.end58
  %25 = zext i32 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call61, label %if.then81 [
    i32 0, label %if.end64.cleanup128.loopexit284_crit_edge
    i32 1, label %if.end64.cleanup128_crit_edge
    i32 2, label %if.end64.do.end84_crit_edge
  ], !prof !238

if.end64.do.end84_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84

if.end64.cleanup128_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end64.cleanup128.loopexit284_crit_edge:        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128.loopexit284

if.then81:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2, i32 noundef 773) #12
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %if.end64.do.end84_crit_edge
  %call7 = tail call fastcc i32 @tnc_prev(ptr noundef %c, ptr noundef %zn, ptr noundef %n)
  %cmp8 = icmp eq i32 %call7, -2
  br i1 %cmp8, label %do.end84.do.body_crit_edge, label %do.end84.if.end21_crit_edge

do.end84.if.end21_crit_edge:                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.end84.do.body_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.else:                                          ; preds = %if.end
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  %28 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %zn, align 4
  %arrayidx8.i189 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  br label %while.cond85

while.cond85:                                     ; preds = %while.cond85.backedge, %if.else
  %nn.0 = phi i32 [ %27, %if.else ], [ %nn.1209222, %while.cond85.backedge ]
  %znode.0 = phi ptr [ %29, %if.else ], [ %znode.1210221, %while.cond85.backedge ]
  %add.i = add i32 %nn.0, 1
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 7
  %30 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %31)
  %cmp.i184 = icmp slt i32 %add.i, %31
  br i1 %cmp.i184, label %while.cond85.if.end93_crit_edge, label %while.cond85.while.cond.i_crit_edge

while.cond85.while.cond.i_crit_edge:              ; preds = %while.cond85
  br label %while.cond.i

while.cond85.if.end93_crit_edge:                  ; preds = %while.cond85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

while.cond.i:                                     ; preds = %if.end2.i.while.cond.i_crit_edge, %while.cond85.while.cond.i_crit_edge
  %znode.0.i = phi ptr [ %33, %if.end2.i.while.cond.i_crit_edge ], [ %znode.0, %while.cond85.while.cond.i_crit_edge ]
  %32 = ptrtoint ptr %znode.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %znode.0.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %while.cond.i.cleanup128_crit_edge, label %if.end2.i

while.cond.i.cleanup128_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end2.i:                                        ; preds = %while.cond.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i, i32 0, i32 8
  %34 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iip.i, align 8
  %add3.i = add i32 %35, 1
  %child_cnt4.i = getelementptr inbounds %struct.ubifs_znode, ptr %33, i32 0, i32 7
  %36 = ptrtoint ptr %child_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %child_cnt4.i, align 4
  %cmp5.i = icmp slt i32 %add3.i, %37
  br i1 %cmp5.i, label %if.then6.i, label %if.end2.i.while.cond.i_crit_edge

if.end2.i.while.cond.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end2.i
  %38 = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %add3.i, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then6.i.get_znode.exit.i_crit_edge

if.then6.i.get_znode.exit.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.ubifs_znode, ptr %33, i32 0, i32 13, i32 %add3.i
  %call.i.i = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i, ptr noundef nonnull %33, i32 noundef %add3.i) #12
  br label %get_znode.exit.i

get_znode.exit.i:                                 ; preds = %if.else.i.i, %if.then6.i.get_znode.exit.i_crit_edge
  %znode.addr.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %40, %if.then6.i.get_znode.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %znode.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_znode.exit.i.tnc_next.exit_crit_edge, label %get_znode.exit.i.while.cond11.i_crit_edge

get_znode.exit.i.while.cond11.i_crit_edge:        ; preds = %get_znode.exit.i
  br label %while.cond11.i

get_znode.exit.i.tnc_next.exit_crit_edge:         ; preds = %get_znode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.cond11.i:                                   ; preds = %get_znode.exit49.i.while.cond11.i_crit_edge, %get_znode.exit.i.while.cond11.i_crit_edge
  %znode.1.i = phi ptr [ %znode.addr.0.i48.i, %get_znode.exit49.i.while.cond11.i_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.while.cond11.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 6
  %41 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp12.not.i = icmp eq i32 %42, 0
  br i1 %cmp12.not.i, label %while.cond11.i.if.end93_crit_edge, label %while.body13.i

while.cond11.i.if.end93_crit_edge:                ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

while.body13.i:                                   ; preds = %while.cond11.i
  %43 = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %tobool.not.i44.i = icmp eq ptr %45, null
  br i1 %tobool.not.i44.i, label %if.else.i47.i, label %while.body13.i.get_znode.exit49.i_crit_edge

while.body13.i.get_znode.exit49.i_crit_edge:      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i

if.else.i47.i:                                    ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0
  %call.i46.i = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i, ptr noundef %znode.1.i, i32 noundef 0) #12
  br label %get_znode.exit49.i

get_znode.exit49.i:                               ; preds = %if.else.i47.i, %while.body13.i.get_znode.exit49.i_crit_edge
  %znode.addr.0.i48.i = phi ptr [ %call.i46.i, %if.else.i47.i ], [ %45, %while.body13.i.get_znode.exit49.i_crit_edge ]
  %cmp.i50.i = icmp ugt ptr %znode.addr.0.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %get_znode.exit49.i.tnc_next.exit_crit_edge, label %get_znode.exit49.i.while.cond11.i_crit_edge

get_znode.exit49.i.while.cond11.i_crit_edge:      ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i

get_znode.exit49.i.tnc_next.exit_crit_edge:       ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

tnc_next.exit:                                    ; preds = %get_znode.exit49.i.tnc_next.exit_crit_edge, %get_znode.exit.i.tnc_next.exit_crit_edge
  %retval.2.i.in = phi ptr [ %znode.addr.0.i.i, %get_znode.exit.i.tnc_next.exit_crit_edge ], [ %znode.addr.0.i48.i, %get_znode.exit49.i.tnc_next.exit_crit_edge ]
  %cmp88 = icmp eq ptr %retval.2.i.in, inttoptr (i32 -2 to ptr)
  br i1 %cmp88, label %tnc_next.exit.cleanup128_crit_edge, label %if.end90

tnc_next.exit.cleanup128_crit_edge:               ; preds = %tnc_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end90:                                         ; preds = %tnc_next.exit
  %cmp91 = icmp slt ptr %retval.2.i.in, null
  br i1 %cmp91, label %cleanup128.loopexit228.split.loop.exit243, label %if.end90.if.end93_crit_edge

if.end90.if.end93_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.end93:                                         ; preds = %if.end90.if.end93_crit_edge, %while.cond11.i.if.end93_crit_edge, %while.cond85.if.end93_crit_edge
  %nn.1209222 = phi i32 [ %nn.0, %if.end90.if.end93_crit_edge ], [ %add.i, %while.cond85.if.end93_crit_edge ], [ 0, %while.cond11.i.if.end93_crit_edge ]
  %znode.1210221 = phi ptr [ %znode.0, %if.end90.if.end93_crit_edge ], [ %znode.0, %while.cond85.if.end93_crit_edge ], [ %znode.1.i, %while.cond11.i.if.end93_crit_edge ]
  %arrayidx95 = getelementptr %struct.ubifs_znode, ptr %znode.1210221, i32 0, i32 13, i32 %nn.1209222
  %46 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx95, align 8
  %48 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %.not226 = icmp eq i32 %47, %49
  br i1 %.not226, label %if.end6.i191, label %if.end93.cleanup128_crit_edge

if.end93.cleanup128_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end6.i191:                                     ; preds = %if.end93
  %arrayidx7.i188 = getelementptr [2 x i32], ptr %arrayidx95, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx7.i188 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx7.i188, align 4
  %52 = ptrtoint ptr %arrayidx8.i189 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx8.i189, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %.not252 = icmp eq i32 %51, %53
  br i1 %.not252, label %if.end100, label %if.end6.i191.cleanup128_crit_edge

if.end6.i191.cleanup128_crit_edge:                ; preds = %if.end6.i191
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end100:                                        ; preds = %if.end6.i191
  %call103 = tail call fastcc i32 @matches_name(ptr noundef %c, ptr noundef %arrayidx95, ptr noundef %nm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end100.cleanup128_crit_edge, label %if.end106

if.end100.cleanup128_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call103)
  %cmp107 = icmp eq i32 %call103, 2
  br i1 %cmp107, label %if.end106.cleanup128_crit_edge, label %if.end109

if.end106.cleanup128_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

if.end109:                                        ; preds = %if.end106
  %54 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %znode.1210221, ptr %zn, align 4
  %55 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %nn.1209222, ptr %n, align 4
  %56 = zext i32 %call103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call103, label %if.then123 [
    i32 1, label %if.end109.cleanup128_crit_edge
    i32 0, label %if.end109.while.cond85.backedge_crit_edge
  ], !prof !239

if.end109.while.cond85.backedge_crit_edge:        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond85.backedge

if.end109.cleanup128_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup128

while.cond85.backedge:                            ; preds = %if.then123, %if.end109.while.cond85.backedge_crit_edge
  br label %while.cond85

if.then123:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.2, i32 noundef 797) #12
  br label %while.cond85.backedge

cleanup128.loopexit228.split.loop.exit243:        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %retval.2.i.le = ptrtoint ptr %retval.2.i.in to i32
  br label %cleanup128

cleanup128.loopexit284:                           ; preds = %if.end64.cleanup128.loopexit284_crit_edge, %if.end58.cleanup128.loopexit284_crit_edge, %if.end21.cleanup128.loopexit284_crit_edge
  %retval.1.ph285 = phi i32 [ %call61, %if.end64.cleanup128.loopexit284_crit_edge ], [ %call61, %if.end58.cleanup128.loopexit284_crit_edge ], [ %call7238, %if.end21.cleanup128.loopexit284_crit_edge ]
  br label %cleanup128

cleanup128:                                       ; preds = %cleanup128.loopexit284, %cleanup128.loopexit228.split.loop.exit243, %if.end109.cleanup128_crit_edge, %if.end106.cleanup128_crit_edge, %if.end100.cleanup128_crit_edge, %if.end6.i191.cleanup128_crit_edge, %if.end93.cleanup128_crit_edge, %tnc_next.exit.cleanup128_crit_edge, %while.cond.i.cleanup128_crit_edge, %if.end64.cleanup128_crit_edge, %do.end56, %do.body36, %if.then30.cleanup128_crit_edge, %do.end, %if.end.cleanup128_crit_edge, %entry.cleanup128_crit_edge
  %retval.1 = phi i32 [ 0, %do.end ], [ %spec.select, %do.body36 ], [ %call, %entry.cleanup128_crit_edge ], [ %call, %if.end.cleanup128_crit_edge ], [ 0, %do.end56 ], [ 0, %if.then30.cleanup128_crit_edge ], [ %retval.2.i.le, %cleanup128.loopexit228.split.loop.exit243 ], [ %retval.1.ph285, %cleanup128.loopexit284 ], [ 1, %if.end64.cleanup128_crit_edge ], [ 0, %while.cond.i.cleanup128_crit_edge ], [ %call103, %if.end109.cleanup128_crit_edge ], [ 0, %if.end106.cleanup128_crit_edge ], [ %call103, %if.end100.cleanup128_crit_edge ], [ 0, %tnc_next.exit.cleanup128_crit_edge ], [ 0, %if.end93.cleanup128_crit_edge ], [ 0, %if.end6.i191.cleanup128_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove_nm(ptr noundef %c, ptr noundef %key, ptr nocapture noundef readonly %nm) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %2 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_remove_nm.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_remove_nm, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_remove_nm.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.11, i32 noundef %8, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %call8 = call fastcc i32 @lookup_level0_dirty(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.if.end58_crit_edge, label %if.end10

do.end.if.end58_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool11.not = icmp eq i32 %call8, 0
  br i1 %tobool11.not, label %if.end10.if.then56_crit_edge, label %if.then12

if.end10.if.then56_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then12:                                        ; preds = %if.end10
  %replaying = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %9 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %replaying, align 4
  %10 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = call fastcc i32 @fallible_resolve_collision(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n, ptr noundef %nm, i32 noundef 0)
  br label %do.body18

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = call fastcc i32 @resolve_collision(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n, ptr noundef %nm)
  br label %do.body18

do.body18:                                        ; preds = %if.else, %if.then14
  %err.0 = phi i32 [ %call15, %if.then14 ], [ %call16, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_remove_nm.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_remove_nm, %if.then30)) #12
          to label %do.end36 [label %if.then30], !srcloc !231

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %11 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i82 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i82 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid33, align 8
  %17 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %znode, align 4
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_remove_nm.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.19, i32 noundef %16, i32 noundef %err.0, ptr noundef %18, i32 noundef %20) #12
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp37 = icmp slt i32 %err.0, 0
  br i1 %cmp37, label %do.end36.if.end58_crit_edge, label %if.end39

do.end36.if.end58_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.end39:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool40.not = icmp eq i32 %err.0, 0
  br i1 %tobool40.not, label %if.end39.if.then56_crit_edge, label %if.then41

if.end39.if.then56_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then41:                                        ; preds = %if.end39
  %21 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %znode, align 4
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cnext, align 4
  %tobool42.not = icmp eq ptr %24, null
  br i1 %tobool42.not, label %lor.lhs.false, label %if.then41.if.then45_crit_edge

if.then41.if.then45_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.then41
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool44.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool44.not, label %lor.lhs.false.if.then45_crit_edge, label %lor.lhs.false.if.end51_crit_edge

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.then41.if.then45_crit_edge
  %call46 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %c, ptr noundef %22)
  %27 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call46, ptr %znode, align 4
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then48, label %if.then45.if.end51_crit_edge

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call46 to i32
  br label %out_unlock

if.end51:                                         ; preds = %if.then45.if.end51_crit_edge, %lor.lhs.false.if.end51_crit_edge
  %29 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %znode, align 4
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %call52 = call fastcc i32 @tnc_delete(ptr noundef %c, ptr noundef %30, i32 noundef %32)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end51, %if.then48
  %err.1 = phi i32 [ %28, %if.then48 ], [ %call52, %if.end51 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool55.not = icmp eq i32 %err.1, 0
  br i1 %tobool55.not, label %out_unlock.if.then56_crit_edge, label %out_unlock.if.end58_crit_edge

out_unlock.if.end58_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

out_unlock.if.then56_crit_edge:                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then56:                                        ; preds = %out_unlock.if.then56_crit_edge, %if.end39.if.then56_crit_edge, %if.end10.if.then56_crit_edge
  %call57 = call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 0) #12
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %out_unlock.if.end58_crit_edge, %do.end36.if.end58_crit_edge, %do.end.if.end58_crit_edge
  %err.2 = phi i32 [ %err.1, %out_unlock.if.end58_crit_edge ], [ %call57, %if.then56 ], [ %err.0, %do.end36.if.end58_crit_edge ], [ %call8, %do.end.if.end58_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove(ptr noundef %c, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %2 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_remove.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_remove, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call5 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_remove.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.11, i32 noundef %8, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %call8 = call fastcc i32 @lookup_level0_dirty(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.out_unlock_crit_edge, label %if.end10

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp11 = icmp eq i32 %call8, 1
  br i1 %cmp11, label %if.end14, label %if.end10.if.then16_crit_edge

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end14:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %znode, align 4
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  %call13 = call fastcc i32 @tnc_delete(ptr noundef %c, ptr noundef %10, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end14.if.then16_crit_edge, label %if.end14.out_unlock_crit_edge

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %if.end14.if.then16_crit_edge, %if.end10.if.then16_crit_edge
  %call17 = call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 0) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.then16, %if.end14.out_unlock_crit_edge, %do.end.out_unlock_crit_edge
  %err.1 = phi i32 [ %call13, %if.end14.out_unlock_crit_edge ], [ %call17, %if.then16 ], [ %call8, %do.end.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tnc_delete(ptr noundef %c, ptr noundef %znode, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %level = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 6
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.do.body3_crit_edge, label %if.then, !prof !235

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.2, i32 noundef 2509) #12
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n)
  %cmp4 = icmp sgt i32 %n, -1
  br i1 %cmp4, label %land.rhs, label %do.body3.if.then14_crit_edge, !prof !235

do.body3.if.then14_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

land.rhs:                                         ; preds = %do.body3
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %2 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fanout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %n)
  %cmp5 = icmp sgt i32 %3, %n
  br i1 %cmp5, label %land.rhs.do.body18_crit_edge, label %land.rhs.if.then14_crit_edge, !prof !235

land.rhs.if.then14_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

land.rhs.do.body18_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

if.then14:                                        ; preds = %land.rhs.if.then14_crit_edge, %do.body3.if.then14_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, i32 noundef 2510) #12
  br label %do.body18

do.body18:                                        ; preds = %if.then14, %land.rhs.do.body18_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %4 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnc_delete.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tnc_delete, %if.then27)) #12
          to label %do.end32 [label %if.then27], !srcloc !231

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n
  %call29 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %arrayidx, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnc_delete.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.88, i32 noundef %10, ptr noundef %call29) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %11 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end32.lnc_free.exit_crit_edge, label %if.end.i

do.end32.lnc_free.exit_crit_edge:                 ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %lnc_free.exit

if.end.i:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %13) #12
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %11, align 8
  br label %lnc_free.exit

lnc_free.exit:                                    ; preds = %if.end.i, %do.end32.lnc_free.exit_crit_edge
  %lnum = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n, i32 2
  %15 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lnum, align 4
  %len = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %n, i32 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %call.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %16, i32 noundef -2147483647, i32 noundef %18, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool38.not = icmp eq i32 %call.i, 0
  br i1 %tobool38.not, label %for.cond.preheader, label %if.then39

for.cond.preheader:                               ; preds = %lnc_free.exit
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %znode, i32 0, i32 7
  %19 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %child_cnt, align 4
  %sub343 = add i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub343, i32 %n)
  %cmp41344 = icmp sgt i32 %sub343, %n
  br i1 %cmp41344, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then39:                                        ; preds = %lnc_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef %znode) #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0345 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %n, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx43 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %i.0345
  %add = add nsw i32 %i.0345, 1
  %arrayidx45 = getelementptr %struct.ubifs_znode, ptr %znode, i32 0, i32 13, i32 %add
  %21 = call ptr @memcpy(ptr %arrayidx43, ptr %arrayidx45, i32 88)
  %22 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %child_cnt, align 4
  %sub = add i32 %23, -1
  %cmp41 = icmp slt i32 %add, %sub
  br i1 %cmp41, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sub.lcssa = phi i32 [ %sub343, %for.cond.preheader.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %24 = ptrtoint ptr %child_cnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.lcssa, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.lcssa)
  %cmp49 = icmp sgt i32 %sub.lcssa, 0
  br i1 %cmp49, label %for.end.cleanup_crit_edge, label %do.body52.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body52.preheader:                              ; preds = %for.end
  %dirty_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %len4.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 4
  %lnum8.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 2
  %offs10.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 3
  %clean_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 84
  br label %do.body52

do.body52:                                        ; preds = %if.end91.do.body52_crit_edge, %do.body52.preheader
  %znode.addr.0 = phi ptr [ %31, %if.end91.do.body52_crit_edge ], [ %znode, %do.body52.preheader ]
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0, i32 0, i32 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool55.not = icmp eq i32 %27, 0
  br i1 %tobool55.not, label %do.body52.do.body70_crit_edge, label %if.then66, !prof !235

do.body52.do.body70_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body70

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.2, i32 noundef 2536) #12
  br label %do.body70

do.body70:                                        ; preds = %if.then66, %do.body52.do.body70_crit_edge
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool72.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool72.not, label %if.then81, label %do.body70.do.end84_crit_edge, !prof !230

do.body70.do.end84_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84

if.then81:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 2537) #12
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %do.body70.do.end84_crit_edge
  %30 = ptrtoint ptr %znode.addr.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %znode.addr.0, align 8
  %iip = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0, i32 0, i32 8
  %32 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iip, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_zn_cnt, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %dirty_zn_cnt, i32 1, i32 3, i32 1) #12
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_zn_cnt, ptr %dirty_zn_cnt, i32 1, ptr elementtype(i32) %dirty_zn_cnt) #12, !srcloc !240
  %35 = ptrtoint ptr %znode.addr.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %znode.addr.0, align 8
  %tobool.not.i322 = icmp eq ptr %36, null
  br i1 %tobool.not.i322, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end84
  %37 = ptrtoint ptr %iip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iip, align 8
  %len.i = getelementptr %struct.ubifs_znode, ptr %36, i32 0, i32 13, i32 %38, i32 4
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool2.not.i = icmp eq i32 %40, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end88_crit_edge, label %cleanup.i

if.then.i.if.end88_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %lnum.i = getelementptr %struct.ubifs_znode, ptr %36, i32 0, i32 13, i32 %38, i32 2
  %offs.i = getelementptr %struct.ubifs_znode, ptr %36, i32 0, i32 13, i32 %38, i32 3
  br label %insert_old_idx_znode.exit

if.else.i:                                        ; preds = %do.end84
  %41 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool5.not.i = icmp eq i32 %42, 0
  br i1 %tobool5.not.i, label %if.else.i.if.end88_crit_edge, label %if.else.i.insert_old_idx_znode.exit_crit_edge

if.else.i.insert_old_idx_znode.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %insert_old_idx_znode.exit

if.else.i.if.end88_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

insert_old_idx_znode.exit:                        ; preds = %if.else.i.insert_old_idx_znode.exit_crit_edge, %cleanup.i
  %offs.sink.i = phi ptr [ %offs.i, %cleanup.i ], [ %offs10.i, %if.else.i.insert_old_idx_znode.exit_crit_edge ]
  %.sink.in.i = phi ptr [ %lnum.i, %cleanup.i ], [ %lnum8.i, %if.else.i.insert_old_idx_znode.exit_crit_edge ]
  %43 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %44 = ptrtoint ptr %offs.sink.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offs.sink.i, align 8
  %call.i323 = call fastcc i32 @insert_old_idx(ptr noundef %c, i32 noundef %.sink.i, i32 noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323)
  %tobool86.not = icmp eq i32 %call.i323, 0
  br i1 %tobool86.not, label %insert_old_idx_znode.exit.if.end88_crit_edge, label %insert_old_idx_znode.exit.cleanup_crit_edge

insert_old_idx_znode.exit.cleanup_crit_edge:      ; preds = %insert_old_idx_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

insert_old_idx_znode.exit.if.end88_crit_edge:     ; preds = %insert_old_idx_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end88:                                         ; preds = %insert_old_idx_znode.exit.if.end88_crit_edge, %if.else.i.if.end88_crit_edge, %if.then.i.if.end88_crit_edge
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0, i32 0, i32 1
  %46 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cnext, align 4
  %tobool89.not = icmp eq ptr %47, null
  br i1 %tobool89.not, label %if.else, label %if.then90

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %49, 4
  store i32 %or.i, ptr %flags.i, align 4
  %call.i.i315 = call zeroext i1 @__kasan_check_write(ptr noundef %clean_zn_cnt, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %clean_zn_cnt, i32 1, i32 3, i32 1) #12
  %50 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clean_zn_cnt, ptr %clean_zn_cnt, i32 1, ptr elementtype(i32) %clean_zn_cnt) #12, !srcloc !237
  %call.i.i316 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @ubifs_clean_zn_cnt, i32 1, i32 3, i32 1) #12
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #12, !srcloc !237
  br label %if.end91

if.else:                                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %znode.addr.0) #12
  br label %if.end91

if.end91:                                         ; preds = %if.else, %if.then90
  %child_cnt93 = getelementptr inbounds %struct.ubifs_znode, ptr %31, i32 0, i32 7
  %52 = ptrtoint ptr %child_cnt93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %child_cnt93, align 4
  %cmp94 = icmp eq i32 %53, 1
  br i1 %cmp94, label %if.end91.do.body52_crit_edge, label %do.end95

if.end91.do.body52_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52

do.end95:                                         ; preds = %if.end91
  %child_cnt93.le = getelementptr inbounds %struct.ubifs_znode, ptr %31, i32 0, i32 7
  %sub97 = add i32 %53, -1
  %54 = ptrtoint ptr %child_cnt93.le to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub97, ptr %child_cnt93.le, align 4
  %level99 = getelementptr inbounds %struct.ubifs_znode, ptr %31, i32 0, i32 6
  %55 = ptrtoint ptr %level99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %level99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp100.not = icmp eq i32 %56, 0
  br i1 %cmp100.not, label %if.then109, label %do.end95.do.end112_crit_edge, !prof !230

do.end95.do.end112_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

if.then109:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.2, i32 noundef 2559) #12
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %do.end95.do.end112_crit_edge
  %57 = ptrtoint ptr %child_cnt93.le to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %child_cnt93.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %58)
  %cmp115346 = icmp slt i32 %33, %58
  br i1 %cmp115346, label %do.end112.for.body116_crit_edge, label %do.end112.for.end132_crit_edge

do.end112.for.end132_crit_edge:                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

do.end112.for.body116_crit_edge:                  ; preds = %do.end112
  br label %for.body116

for.body116:                                      ; preds = %for.inc130.for.body116_crit_edge, %do.end112.for.body116_crit_edge
  %i.1347 = phi i32 [ %add120, %for.inc130.for.body116_crit_edge ], [ %33, %do.end112.for.body116_crit_edge ]
  %arrayidx118 = getelementptr %struct.ubifs_znode, ptr %31, i32 0, i32 13, i32 %i.1347
  %add120 = add nsw i32 %i.1347, 1
  %arrayidx121 = getelementptr %struct.ubifs_znode, ptr %31, i32 0, i32 13, i32 %add120
  %59 = call ptr @memcpy(ptr %arrayidx118, ptr %arrayidx121, i32 88)
  %60 = getelementptr %struct.ubifs_znode, ptr %31, i32 0, i32 13, i32 %i.1347, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %tobool124.not = icmp eq ptr %62, null
  br i1 %tobool124.not, label %for.body116.for.inc130_crit_edge, label %if.then125

for.body116.for.inc130_crit_edge:                 ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130

if.then125:                                       ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #14
  %iip128 = getelementptr inbounds %struct.ubifs_znode, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %iip128 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %i.1347, ptr %iip128, align 8
  br label %for.inc130

for.inc130:                                       ; preds = %if.then125, %for.body116.for.inc130_crit_edge
  %64 = ptrtoint ptr %child_cnt93.le to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %child_cnt93.le, align 4
  %cmp115 = icmp slt i32 %add120, %65
  br i1 %cmp115, label %for.inc130.for.body116_crit_edge, label %for.inc130.for.end132_crit_edge

for.inc130.for.end132_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

for.inc130.for.body116_crit_edge:                 ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body116

for.end132:                                       ; preds = %for.inc130.for.end132_crit_edge, %do.end112.for.end132_crit_edge
  %66 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %31, align 8
  %tobool134.not = icmp eq ptr %67, null
  br i1 %tobool134.not, label %while.cond.preheader, label %for.end132.cleanup_crit_edge

for.end132.cleanup_crit_edge:                     ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %for.end132
  %68 = ptrtoint ptr %child_cnt93.le to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %child_cnt93.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp137349 = icmp eq i32 %69, 1
  br i1 %cmp137349, label %land.rhs138.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs138.lr.ph:                                ; preds = %while.cond.preheader
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  br label %land.rhs138

land.rhs138:                                      ; preds = %if.end216.land.rhs138_crit_edge, %land.rhs138.lr.ph
  %znode.addr.1350 = phi ptr [ %31, %land.rhs138.lr.ph ], [ %call149, %if.end216.land.rhs138_crit_edge ]
  %level139 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1350, i32 0, i32 6
  %71 = ptrtoint ptr %level139 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %level139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp140.not = icmp eq i32 %72, 0
  br i1 %cmp140.not, label %land.rhs138.cleanup_crit_edge, label %while.body

land.rhs138.cleanup_crit_edge:                    ; preds = %land.rhs138
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %land.rhs138
  %zbranch142 = getelementptr %struct.ubifs_znode, ptr %znode.addr.1350, i32 0, i32 13
  %73 = getelementptr %struct.ubifs_znode, ptr %znode.addr.1350, i32 0, i32 13, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %tobool.not.i324 = icmp eq ptr %75, null
  br i1 %tobool.not.i324, label %if.else.i326, label %while.body.get_znode.exit_crit_edge

while.body.get_znode.exit_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit

if.else.i326:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call.i325 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %zbranch142, ptr noundef %znode.addr.1350, i32 noundef 0) #12
  br label %get_znode.exit

get_znode.exit:                                   ; preds = %if.else.i326, %while.body.get_znode.exit_crit_edge
  %znode.addr.0.i = phi ptr [ %call.i325, %if.else.i326 ], [ %75, %while.body.get_znode.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %znode.addr.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then146, label %if.end148

if.then146:                                       ; preds = %get_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %znode.addr.0.i to i32
  br label %cleanup

if.end148:                                        ; preds = %get_znode.exit
  %call149 = call fastcc ptr @dirty_cow_znode(ptr noundef %c, ptr noundef %zbranch142)
  %cmp.i328 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then151, label %if.end153

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %call149 to i32
  br label %cleanup

if.end153:                                        ; preds = %if.end148
  %78 = ptrtoint ptr %call149 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %call149, align 8
  %iip155 = getelementptr inbounds %struct.ubifs_znode, ptr %call149, i32 0, i32 8
  %79 = ptrtoint ptr %iip155 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %iip155, align 8
  %80 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool157.not = icmp eq i32 %81, 0
  br i1 %tobool157.not, label %if.end153.if.end166_crit_edge, label %if.then158

if.end153.if.end166_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then158:                                       ; preds = %if.end153
  %82 = ptrtoint ptr %lnum8.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lnum8.i, align 4
  %84 = ptrtoint ptr %offs10.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offs10.i, align 8
  %call162 = call fastcc i32 @insert_old_idx(ptr noundef %c, i32 noundef %83, i32 noundef %85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.then158.if.end166_crit_edge, label %if.then158.cleanup_crit_edge

if.then158.cleanup_crit_edge:                     ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then158.if.end166_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.end166:                                        ; preds = %if.then158.if.end166_crit_edge, %if.end153.if.end166_crit_edge
  %lnum167 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1350, i32 1, i32 3
  %86 = ptrtoint ptr %lnum167 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lnum167, align 4
  %88 = ptrtoint ptr %lnum8.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %lnum8.i, align 4
  %offs170 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1350, i32 1, i32 4
  %89 = ptrtoint ptr %offs170 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offs170, align 8
  %91 = ptrtoint ptr %offs10.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %offs10.i, align 8
  %len173 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbranch142, i32 0, i32 4
  %92 = ptrtoint ptr %len173 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len173, align 4
  %94 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %len4.i, align 4
  %95 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call149, ptr %70, align 8
  %flags.i329 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1350, i32 0, i32 4
  %96 = ptrtoint ptr %flags.i329 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %flags.i329, align 4
  %98 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool179.not = icmp eq i32 %98, 0
  br i1 %tobool179.not, label %if.end166.do.body194_crit_edge, label %if.then190, !prof !235

if.end166.do.body194_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body194

if.then190:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2, i32 noundef 2592) #12
  br label %do.body194

do.body194:                                       ; preds = %if.then190, %if.end166.do.body194_crit_edge
  %99 = ptrtoint ptr %flags.i329 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %flags.i329, align 4
  %and1.i.i332 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i332)
  %tobool196.not = icmp eq i32 %and1.i.i332, 0
  br i1 %tobool196.not, label %if.then205, label %do.body194.do.end208_crit_edge, !prof !230

do.body194.do.end208_crit_edge:                   ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end208

if.then205:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.2, i32 noundef 2593) #12
  br label %do.end208

do.end208:                                        ; preds = %if.then205, %do.body194.do.end208_crit_edge
  %call.i.i317 = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_zn_cnt, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %dirty_zn_cnt, i32 1, i32 3, i32 1) #12
  %101 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_zn_cnt, ptr %dirty_zn_cnt, i32 1, ptr elementtype(i32) %dirty_zn_cnt) #12, !srcloc !240
  %cnext210 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1350, i32 0, i32 1
  %102 = ptrtoint ptr %cnext210 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cnext210, align 4
  %tobool211.not = icmp eq ptr %103, null
  br i1 %tobool211.not, label %if.else215, label %if.then212

if.then212:                                       ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %flags.i329 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags.i329, align 4
  %or.i318 = or i32 %105, 4
  store i32 %or.i318, ptr %flags.i329, align 4
  %call.i.i319 = call zeroext i1 @__kasan_check_write(ptr noundef %clean_zn_cnt, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %clean_zn_cnt, i32 1, i32 3, i32 1) #12
  %106 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clean_zn_cnt, ptr %clean_zn_cnt, i32 1, ptr elementtype(i32) %clean_zn_cnt) #12, !srcloc !237
  %call.i.i320 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @ubifs_clean_zn_cnt, i32 1, i32 3, i32 1) #12
  %107 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #12, !srcloc !237
  br label %if.end216

if.else215:                                       ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %znode.addr.1350) #12
  br label %if.end216

if.end216:                                        ; preds = %if.else215, %if.then212
  %child_cnt136 = getelementptr inbounds %struct.ubifs_znode, ptr %call149, i32 0, i32 7
  %108 = ptrtoint ptr %child_cnt136 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %child_cnt136, align 4
  %cmp137 = icmp eq i32 %109, 1
  br i1 %cmp137, label %if.end216.land.rhs138_crit_edge, label %if.end216.cleanup_crit_edge

if.end216.cleanup_crit_edge:                      ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end216.land.rhs138_crit_edge:                  ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs138

cleanup:                                          ; preds = %if.end216.cleanup_crit_edge, %if.then158.cleanup_crit_edge, %if.then151, %if.then146, %land.rhs138.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %for.end132.cleanup_crit_edge, %insert_old_idx_znode.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then39
  %retval.0 = phi i32 [ %call.i, %if.then39 ], [ %76, %if.then146 ], [ %77, %if.then151 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end132.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %call162, %if.then158.cleanup_crit_edge ], [ 0, %land.rhs138.cleanup_crit_edge ], [ 0, %if.end216.cleanup_crit_edge ], [ %call.i323, %insert_old_idx_znode.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove_dh(ptr noundef %c, ptr noundef %key, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %start_key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %double_hash = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %2 = ptrtoint ptr %double_hash to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %double_hash, align 8
  %3 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup42

if.end:                                           ; preds = %entry
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %call = call fastcc i32 @lookup_level0_dirty(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end2

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %znode, align 4
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3136, i32 noundef 312) #15
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end2.if.end40_crit_edge, label %if.end6

if.end2.if.end40_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end6:                                          ; preds = %if.end2
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %5, i32 0, i32 13, i32 %7
  %call7 = call fastcc i32 @tnc_read_hashed_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_free_crit_edge

if.end6.out_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end10:                                         ; preds = %if.end6
  %cookie11 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call7.i, i32 0, i32 6
  %9 = ptrtoint ptr %cookie11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cookie11, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp12.not = icmp eq i32 %11, %cookie
  br i1 %cmp12.not, label %if.end10.if.end25_crit_edge, label %if.then13

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then13:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start_key) #12
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key, align 8
  %14 = ptrtoint ptr %start_key to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %start_key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %start_key, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1073741824, ptr %arrayidx1.i, align 4
  %call15 = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef nonnull %start_key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then13.cleanup.thread_crit_edge, label %if.end20, !prof !230

if.then13.cleanup.thread_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end20:                                         ; preds = %if.then13
  %call21 = call fastcc i32 @search_dh_cookie(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %call7.i, i32 noundef %cookie, ptr noundef nonnull %znode, ptr noundef nonnull %n, i32 noundef %call15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end20.cleanup.thread_crit_edge

if.end20.cleanup.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end20.cleanup.thread_crit_edge, %if.then13.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ %call21, %if.end20.cleanup.thread_crit_edge ], [ %call15, %if.then13.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_key) #12
  br label %out_free

cleanup:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_key) #12
  br label %if.end25

if.end25:                                         ; preds = %cleanup, %if.end10.if.end25_crit_edge
  %16 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %znode, align 4
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cnext, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end25.if.then29_crit_edge

if.end25.if.then29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end25
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool28.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool28.not, label %lor.lhs.false.if.then29_crit_edge, label %lor.lhs.false.if.end35_crit_edge

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end25.if.then29_crit_edge
  %call30 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %c, ptr noundef %17)
  %22 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call30, ptr %znode, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %call30 to i32
  br label %out_free

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %lor.lhs.false.if.end35_crit_edge
  %24 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %znode, align 4
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  %call36 = call fastcc i32 @tnc_delete(ptr noundef %c, ptr noundef %25, i32 noundef %27)
  br label %out_free

out_free:                                         ; preds = %if.end35, %if.then32, %cleanup.thread, %if.end6.out_free_crit_edge
  %err.1 = phi i32 [ %call7, %if.end6.out_free_crit_edge ], [ %23, %if.then32 ], [ %call36, %if.end35 ], [ %err.0.ph, %cleanup.thread ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %out_unlock

out_unlock:                                       ; preds = %out_free, %if.end.out_unlock_crit_edge
  %err.2 = phi i32 [ %call, %if.end.out_unlock_crit_edge ], [ %err.1, %out_free ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool37.not = icmp eq i32 %err.2, 0
  br i1 %tobool37.not, label %if.then38, label %out_unlock.if.end40_crit_edge

out_unlock.if.end40_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then38:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 0) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %out_unlock.if.end40_crit_edge, %if.end2.if.end40_crit_edge
  %err.3 = phi i32 [ %err.2, %out_unlock.if.end40_crit_edge ], [ %call39, %if.then38 ], [ -12, %if.end2.if.end40_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  br label %cleanup42

cleanup42:                                        ; preds = %if.end40, %entry.cleanup42_crit_edge
  %retval.0 = phi i32 [ %err.3, %if.end40 ], [ -95, %entry.cleanup42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @search_dh_cookie(ptr noundef %c, ptr nocapture noundef readonly %key, ptr noundef %dent, i32 noundef %cookie, ptr nocapture noundef %zn, ptr nocapture noundef %n, i32 noundef %exact) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exact)
  %tobool.not = icmp eq i32 %exact, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %add.i = add i32 %3, 1
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i = icmp slt i32 %add.i, %5
  br i1 %cmp.i, label %if.then.if.end3.sink.split_crit_edge, label %if.then.while.cond.i_crit_edge

if.then.while.cond.i_crit_edge:                   ; preds = %if.then
  br label %while.cond.i

if.then.if.end3.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.sink.split

while.cond.i:                                     ; preds = %if.end2.i.while.cond.i_crit_edge, %if.then.while.cond.i_crit_edge
  %znode.0.i = phi ptr [ %7, %if.end2.i.while.cond.i_crit_edge ], [ %1, %if.then.while.cond.i_crit_edge ]
  %6 = ptrtoint ptr %znode.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %znode.0.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %while.cond.i.cleanup_crit_edge, label %if.end2.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2.i:                                        ; preds = %while.cond.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i, i32 0, i32 8
  %8 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iip.i, align 8
  %add3.i = add i32 %9, 1
  %child_cnt4.i = getelementptr inbounds %struct.ubifs_znode, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %child_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %child_cnt4.i, align 4
  %cmp5.i = icmp slt i32 %add3.i, %11
  br i1 %cmp5.i, label %if.then6.i, label %if.end2.i.while.cond.i_crit_edge

if.end2.i.while.cond.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end2.i
  %12 = getelementptr %struct.ubifs_znode, ptr %7, i32 0, i32 13, i32 %add3.i, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then6.i.get_znode.exit.i_crit_edge

if.then6.i.get_znode.exit.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.ubifs_znode, ptr %7, i32 0, i32 13, i32 %add3.i
  %call.i.i = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i, ptr noundef nonnull %7, i32 noundef %add3.i) #12
  br label %get_znode.exit.i

get_znode.exit.i:                                 ; preds = %if.else.i.i, %if.then6.i.get_znode.exit.i_crit_edge
  %znode.addr.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %14, %if.then6.i.get_znode.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %znode.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_znode.exit.i.tnc_next.exit_crit_edge, label %get_znode.exit.i.while.cond11.i_crit_edge

get_znode.exit.i.while.cond11.i_crit_edge:        ; preds = %get_znode.exit.i
  br label %while.cond11.i

get_znode.exit.i.tnc_next.exit_crit_edge:         ; preds = %get_znode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.cond11.i:                                   ; preds = %get_znode.exit49.i.while.cond11.i_crit_edge, %get_znode.exit.i.while.cond11.i_crit_edge
  %znode.1.i = phi ptr [ %znode.addr.0.i48.i, %get_znode.exit49.i.while.cond11.i_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.while.cond11.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 6
  %15 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp12.not.i = icmp eq i32 %16, 0
  br i1 %cmp12.not.i, label %while.cond11.i.if.end3.sink.split_crit_edge, label %while.body13.i

while.cond11.i.if.end3.sink.split_crit_edge:      ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.sink.split

while.body13.i:                                   ; preds = %while.cond11.i
  %17 = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %tobool.not.i44.i = icmp eq ptr %19, null
  br i1 %tobool.not.i44.i, label %if.else.i47.i, label %while.body13.i.get_znode.exit49.i_crit_edge

while.body13.i.get_znode.exit49.i_crit_edge:      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i

if.else.i47.i:                                    ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0
  %call.i46.i = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i, ptr noundef %znode.1.i, i32 noundef 0) #12
  br label %get_znode.exit49.i

get_znode.exit49.i:                               ; preds = %if.else.i47.i, %while.body13.i.get_znode.exit49.i_crit_edge
  %znode.addr.0.i48.i = phi ptr [ %call.i46.i, %if.else.i47.i ], [ %19, %while.body13.i.get_znode.exit49.i_crit_edge ]
  %cmp.i50.i = icmp ugt ptr %znode.addr.0.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %get_znode.exit49.i.tnc_next.exit_crit_edge, label %get_znode.exit49.i.while.cond11.i_crit_edge

get_znode.exit49.i.while.cond11.i_crit_edge:      ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i

get_znode.exit49.i.tnc_next.exit_crit_edge:       ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

tnc_next.exit:                                    ; preds = %get_znode.exit49.i.tnc_next.exit_crit_edge, %get_znode.exit.i.tnc_next.exit_crit_edge
  %retval.2.i.in = phi ptr [ %znode.addr.0.i.i, %get_znode.exit.i.tnc_next.exit_crit_edge ], [ %znode.addr.0.i48.i, %get_znode.exit49.i.tnc_next.exit_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  br label %cleanup

if.end3.sink.split:                               ; preds = %while.cond11.i.if.end3.sink.split_crit_edge, %if.then.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ %add.i, %if.then.if.end3.sink.split_crit_edge ], [ 0, %while.cond11.i.if.end3.sink.split_crit_edge ]
  %znode.1.ph = phi ptr [ %1, %if.then.if.end3.sink.split_crit_edge ], [ %znode.1.i, %while.cond11.i.if.end3.sink.split_crit_edge ]
  %20 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %n, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %entry.if.end3_crit_edge
  %znode.1 = phi ptr [ %1, %entry.if.end3_crit_edge ], [ %znode.1.ph, %if.end3.sink.split ]
  %arrayidx.i52 = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %cookie19 = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %tnc_next.exit93.for.cond_crit_edge, %if.end3
  %znode.2 = phi ptr [ %znode.1, %if.end3 ], [ %znode.3, %tnc_next.exit93.for.cond_crit_edge ]
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %znode.2, i32 0, i32 13, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 8
  %25 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not = icmp eq i32 %24, %26
  br i1 %cmp.not, label %lor.lhs.false, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.cond
  %arrayidx.i = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i52, align 4
  %cmp9.not.unshifted = xor i32 %30, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %cmp9.not.unshifted)
  %cmp9.not = icmp ult i32 %cmp9.not.unshifted, 536870912
  br i1 %cmp9.not, label %if.end11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = tail call fastcc i32 @tnc_read_hashed_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef %dent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %31 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i52, align 4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %35 = xor i32 %34, %32
  %36 = and i32 %35, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp18 = icmp eq i32 %36, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  %37 = ptrtoint ptr %cookie19 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %cookie19, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %cookie)
  %cmp20 = icmp eq i32 %39, %cookie
  br i1 %cmp20, label %if.then21, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %zn to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %znode.2, ptr %zn, align 4
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %41 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n, align 4
  %add.i57 = add i32 %42, 1
  %child_cnt.i58 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.2, i32 0, i32 7
  %43 = ptrtoint ptr %child_cnt.i58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %child_cnt.i58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i57, i32 %44)
  %cmp.i59 = icmp slt i32 %add.i57, %44
  br i1 %cmp.i59, label %if.then.i60, label %if.end22.while.cond.i63_crit_edge

if.end22.while.cond.i63_crit_edge:                ; preds = %if.end22
  br label %while.cond.i63

if.then.i60:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i57, ptr %n, align 4
  br label %tnc_next.exit93

while.cond.i63:                                   ; preds = %if.end2.i68.while.cond.i63_crit_edge, %if.end22.while.cond.i63_crit_edge
  %znode.0.i61 = phi ptr [ %47, %if.end2.i68.while.cond.i63_crit_edge ], [ %znode.2, %if.end22.while.cond.i63_crit_edge ]
  %46 = ptrtoint ptr %znode.0.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %znode.0.i61, align 8
  %tobool.not.i62 = icmp eq ptr %47, null
  br i1 %tobool.not.i62, label %while.cond.i63.cleanup_crit_edge, label %if.end2.i68

while.cond.i63.cleanup_crit_edge:                 ; preds = %while.cond.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2.i68:                                      ; preds = %while.cond.i63
  %iip.i64 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i61, i32 0, i32 8
  %48 = ptrtoint ptr %iip.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iip.i64, align 8
  %add3.i65 = add i32 %49, 1
  %child_cnt4.i66 = getelementptr inbounds %struct.ubifs_znode, ptr %47, i32 0, i32 7
  %50 = ptrtoint ptr %child_cnt4.i66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %child_cnt4.i66, align 4
  %cmp5.i67 = icmp slt i32 %add3.i65, %51
  br i1 %cmp5.i67, label %if.then6.i70, label %if.end2.i68.while.cond.i63_crit_edge

if.end2.i68.while.cond.i63_crit_edge:             ; preds = %if.end2.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i63

if.then6.i70:                                     ; preds = %if.end2.i68
  %52 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %add3.i65, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %tobool.not.i.i69 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i69, label %if.else.i.i73, label %if.then6.i70.get_znode.exit.i76_crit_edge

if.then6.i70.get_znode.exit.i76_crit_edge:        ; preds = %if.then6.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i76

if.else.i.i73:                                    ; preds = %if.then6.i70
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i71 = getelementptr %struct.ubifs_znode, ptr %47, i32 0, i32 13, i32 %add3.i65
  %call.i.i72 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i71, ptr noundef nonnull %47, i32 noundef %add3.i65) #12
  br label %get_znode.exit.i76

get_znode.exit.i76:                               ; preds = %if.else.i.i73, %if.then6.i70.get_znode.exit.i76_crit_edge
  %znode.addr.0.i.i74 = phi ptr [ %call.i.i72, %if.else.i.i73 ], [ %54, %if.then6.i70.get_znode.exit.i76_crit_edge ]
  %cmp.i.i75 = icmp ugt ptr %znode.addr.0.i.i74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i75, label %if.then8.i77, label %get_znode.exit.i76.while.cond11.i81_crit_edge

get_znode.exit.i76.while.cond11.i81_crit_edge:    ; preds = %get_znode.exit.i76
  br label %while.cond11.i81

if.then8.i77:                                     ; preds = %get_znode.exit.i76
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %znode.addr.0.i.i74 to i32
  br label %tnc_next.exit93

while.cond11.i81:                                 ; preds = %get_znode.exit49.i89.while.cond11.i81_crit_edge, %get_znode.exit.i76.while.cond11.i81_crit_edge
  %znode.1.i78 = phi ptr [ %znode.addr.0.i48.i87, %get_znode.exit49.i89.while.cond11.i81_crit_edge ], [ %znode.addr.0.i.i74, %get_znode.exit.i76.while.cond11.i81_crit_edge ]
  %level.i79 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i78, i32 0, i32 6
  %56 = ptrtoint ptr %level.i79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %level.i79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp12.not.i80 = icmp eq i32 %57, 0
  br i1 %cmp12.not.i80, label %while.end20.i91, label %while.body13.i83

while.body13.i83:                                 ; preds = %while.cond11.i81
  %58 = getelementptr %struct.ubifs_znode, ptr %znode.1.i78, i32 0, i32 13, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %tobool.not.i44.i82 = icmp eq ptr %60, null
  br i1 %tobool.not.i44.i82, label %if.else.i47.i86, label %while.body13.i83.get_znode.exit49.i89_crit_edge

while.body13.i83.get_znode.exit49.i89_crit_edge:  ; preds = %while.body13.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i89

if.else.i47.i86:                                  ; preds = %while.body13.i83
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i84 = getelementptr %struct.ubifs_znode, ptr %znode.1.i78, i32 0, i32 13, i32 0
  %call.i46.i85 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i84, ptr noundef %znode.1.i78, i32 noundef 0) #12
  br label %get_znode.exit49.i89

get_znode.exit49.i89:                             ; preds = %if.else.i47.i86, %while.body13.i83.get_znode.exit49.i89_crit_edge
  %znode.addr.0.i48.i87 = phi ptr [ %call.i46.i85, %if.else.i47.i86 ], [ %60, %while.body13.i83.get_znode.exit49.i89_crit_edge ]
  %cmp.i50.i88 = icmp ugt ptr %znode.addr.0.i48.i87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i88, label %if.then16.i90, label %get_znode.exit49.i89.while.cond11.i81_crit_edge

get_znode.exit49.i89.while.cond11.i81_crit_edge:  ; preds = %get_znode.exit49.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i81

if.then16.i90:                                    ; preds = %get_znode.exit49.i89
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %znode.addr.0.i48.i87 to i32
  br label %tnc_next.exit93

while.end20.i91:                                  ; preds = %while.cond11.i81
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %n, align 4
  br label %tnc_next.exit93

tnc_next.exit93:                                  ; preds = %while.end20.i91, %if.then16.i90, %if.then8.i77, %if.then.i60
  %znode.3 = phi ptr [ %znode.2, %if.then.i60 ], [ %znode.2, %if.then8.i77 ], [ %znode.1.i78, %while.end20.i91 ], [ %znode.2, %if.then16.i90 ]
  %retval.2.i92 = phi i32 [ 0, %if.then.i60 ], [ %55, %if.then8.i77 ], [ 0, %while.end20.i91 ], [ %61, %if.then16.i90 ]
  %tobool24.not = icmp eq i32 %retval.2.i92, 0
  br i1 %tobool24.not, label %tnc_next.exit93.for.cond_crit_edge, label %tnc_next.exit93.cleanup_crit_edge

tnc_next.exit93.cleanup_crit_edge:                ; preds = %tnc_next.exit93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tnc_next.exit93.for.cond_crit_edge:               ; preds = %tnc_next.exit93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup:                                          ; preds = %tnc_next.exit93.cleanup_crit_edge, %while.cond.i63.cleanup_crit_edge, %if.then21, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %tnc_next.exit, %while.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then21 ], [ %retval.2.i, %tnc_next.exit ], [ -2, %while.cond.i63.cleanup_crit_edge ], [ %retval.2.i92, %tnc_next.exit93.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -2, %for.cond.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove_range(ptr noundef %c, ptr noundef %from_key, ptr nocapture noundef readonly %to_key) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %arrayidx8.i.i = getelementptr [2 x i32], ptr %from_key, i32 0, i32 1
  %arrayidx8.i5.i = getelementptr [2 x i32], ptr %to_key, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end72.while.cond_crit_edge, %entry
  %call = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef %from_key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.cond.if.end80_crit_edge, label %if.end

while.cond.if.end80_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.else:                                          ; preds = %if.end
  %2 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %znode, align 4
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %add.i = add i32 %5, 1
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp.i = icmp slt i32 %add.i, %7
  br i1 %cmp.i, label %if.then.i, label %if.else.while.cond.i_crit_edge

if.else.while.cond.i_crit_edge:                   ; preds = %if.else
  br label %while.cond.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %n, align 4
  br label %if.end8

while.cond.i:                                     ; preds = %if.end2.i.while.cond.i_crit_edge, %if.else.while.cond.i_crit_edge
  %znode.0.i = phi ptr [ %10, %if.end2.i.while.cond.i_crit_edge ], [ %3, %if.else.while.cond.i_crit_edge ]
  %9 = ptrtoint ptr %znode.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %znode.0.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %while.cond.i.if.then78_crit_edge, label %if.end2.i

while.cond.i.if.then78_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end2.i:                                        ; preds = %while.cond.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i, i32 0, i32 8
  %11 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iip.i, align 8
  %add3.i = add i32 %12, 1
  %child_cnt4.i = getelementptr inbounds %struct.ubifs_znode, ptr %10, i32 0, i32 7
  %13 = ptrtoint ptr %child_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %child_cnt4.i, align 4
  %cmp5.i = icmp slt i32 %add3.i, %14
  br i1 %cmp5.i, label %if.then6.i, label %if.end2.i.while.cond.i_crit_edge

if.end2.i.while.cond.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end2.i
  %15 = getelementptr %struct.ubifs_znode, ptr %10, i32 0, i32 13, i32 %add3.i, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then6.i.get_znode.exit.i_crit_edge

if.then6.i.get_znode.exit.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.ubifs_znode, ptr %10, i32 0, i32 13, i32 %add3.i
  %call.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i, ptr noundef nonnull %10, i32 noundef %add3.i) #12
  br label %get_znode.exit.i

get_znode.exit.i:                                 ; preds = %if.else.i.i, %if.then6.i.get_znode.exit.i_crit_edge
  %znode.addr.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %17, %if.then6.i.get_znode.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %znode.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_znode.exit.i.tnc_next.exit_crit_edge, label %get_znode.exit.i.while.cond11.i_crit_edge

get_znode.exit.i.while.cond11.i_crit_edge:        ; preds = %get_znode.exit.i
  br label %while.cond11.i

get_znode.exit.i.tnc_next.exit_crit_edge:         ; preds = %get_znode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.cond11.i:                                   ; preds = %get_znode.exit49.i.while.cond11.i_crit_edge, %get_znode.exit.i.while.cond11.i_crit_edge
  %znode.1.i = phi ptr [ %znode.addr.0.i48.i, %get_znode.exit49.i.while.cond11.i_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.while.cond11.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 6
  %18 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp12.not.i = icmp eq i32 %19, 0
  br i1 %cmp12.not.i, label %while.end20.i, label %while.body13.i

while.body13.i:                                   ; preds = %while.cond11.i
  %20 = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %tobool.not.i44.i = icmp eq ptr %22, null
  br i1 %tobool.not.i44.i, label %if.else.i47.i, label %while.body13.i.get_znode.exit49.i_crit_edge

while.body13.i.get_znode.exit49.i_crit_edge:      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i

if.else.i47.i:                                    ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0
  %call.i46.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i, ptr noundef %znode.1.i, i32 noundef 0) #12
  br label %get_znode.exit49.i

get_znode.exit49.i:                               ; preds = %if.else.i47.i, %while.body13.i.get_znode.exit49.i_crit_edge
  %znode.addr.0.i48.i = phi ptr [ %call.i46.i, %if.else.i47.i ], [ %22, %while.body13.i.get_znode.exit49.i_crit_edge ]
  %cmp.i50.i = icmp ugt ptr %znode.addr.0.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %get_znode.exit49.i.tnc_next.exit_crit_edge, label %get_znode.exit49.i.while.cond11.i_crit_edge

get_znode.exit49.i.while.cond11.i_crit_edge:      ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i

get_znode.exit49.i.tnc_next.exit_crit_edge:       ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.end20.i:                                    ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %znode.1.i, ptr %znode, align 4
  %24 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %n, align 4
  br label %if.end8

tnc_next.exit:                                    ; preds = %get_znode.exit49.i.tnc_next.exit_crit_edge, %get_znode.exit.i.tnc_next.exit_crit_edge
  %retval.2.i.in = phi ptr [ %znode.addr.0.i.i, %get_znode.exit.i.tnc_next.exit_crit_edge ], [ %znode.addr.0.i48.i, %get_znode.exit49.i.tnc_next.exit_crit_edge ]
  %cmp3 = icmp eq ptr %retval.2.i.in, inttoptr (i32 -2 to ptr)
  br i1 %cmp3, label %tnc_next.exit.if.then78_crit_edge, label %if.end5

tnc_next.exit.if.then78_crit_edge:                ; preds = %tnc_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end5:                                          ; preds = %tnc_next.exit
  %cmp6 = icmp slt ptr %retval.2.i.in, null
  br i1 %cmp6, label %if.end80.loopexit.split.loop.exit194, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %if.end5.if.end8_crit_edge, %while.end20.i, %if.then.i
  %25 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %znode, align 4
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %26, i32 0, i32 13, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 8
  %31 = ptrtoint ptr %from_key to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %from_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i.i119 = icmp ult i32 %30, %32
  br i1 %cmp.i.i119, label %if.end8.if.then78_crit_edge, label %if.end.i.i

if.end8.if.then78_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp4.i.i = icmp ugt i32 %30, %32
  br i1 %cmp4.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end6.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %arrayidx7.i.i = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.i.i, align 4
  %35 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp9.i.i = icmp ult i32 %34, %36
  br i1 %cmp9.i.i, label %if.end6.i.i.if.then78_crit_edge, label %if.end6.i.i.if.end.i_crit_edge

if.end6.i.i.if.end.i_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end6.i.i.if.then78_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end.i:                                         ; preds = %if.end6.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %37 = ptrtoint ptr %to_key to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %to_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %38)
  %cmp.i1.i = icmp ult i32 %30, %38
  br i1 %cmp.i1.i, label %if.end.i.if.end14_crit_edge, label %if.end.i3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end.i3.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %38)
  %cmp4.i2.i = icmp ugt i32 %30, %38
  br i1 %cmp4.i2.i, label %if.end.i3.i.if.then78_crit_edge, label %if.end6.i7.i

if.end.i3.i.if.then78_crit_edge:                  ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end6.i7.i:                                     ; preds = %if.end.i3.i
  %arrayidx7.i4.i = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx7.i4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx7.i4.i, align 4
  %41 = ptrtoint ptr %arrayidx8.i5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx8.i5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp14.i8.i = icmp ugt i32 %40, %42
  br i1 %cmp14.i8.i, label %if.end6.i7.i.if.then78_crit_edge, label %if.end6.i7.i.if.end14_crit_edge

if.end6.i7.i.if.end14_crit_edge:                  ; preds = %if.end6.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end6.i7.i.if.then78_crit_edge:                 ; preds = %if.end6.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.end14:                                         ; preds = %if.end6.i7.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %43 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %znode, align 4
  %cnext = getelementptr inbounds %struct.ubifs_znode, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %cnext to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cnext, align 4
  %tobool15.not = icmp eq ptr %46, null
  br i1 %tobool15.not, label %lor.lhs.false, label %if.end14.if.then18_crit_edge

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end14
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool17.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  %call19 = call fastcc ptr @dirty_cow_bottom_up(ptr noundef %c, ptr noundef %44)
  %49 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call19, ptr %znode, align 4
  %cmp.i121 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %out_unlock, label %if.then18.if.end24_crit_edge

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  %50 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n, align 4
  %52 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %znode, align 4
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %53, i32 0, i32 7
  %i.0169 = add i32 %51, 1
  %54 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0169, i32 %55)
  %cmp25170 = icmp slt i32 %i.0169, %55
  br i1 %cmp25170, label %if.end24.for.body_crit_edge, label %if.end24.if.end72_crit_edge

if.end24.if.end72_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %if.end24.for.body_crit_edge
  %i.0174 = phi i32 [ %i.0, %do.end.for.body_crit_edge ], [ %i.0169, %if.end24.for.body_crit_edge ]
  %k.0171 = phi i32 [ %inc54, %do.end.for.body_crit_edge ], [ 0, %if.end24.for.body_crit_edge ]
  %arrayidx27 = getelementptr %struct.ubifs_znode, ptr %53, i32 0, i32 13, i32 %i.0174
  %56 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx27, align 8
  %58 = ptrtoint ptr %from_key to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %from_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i.i122 = icmp ult i32 %57, %59
  br i1 %cmp.i.i122, label %for.body.for.end_crit_edge, label %if.end.i.i124

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i.i124:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp4.i.i123 = icmp ugt i32 %57, %59
  br i1 %cmp4.i.i123, label %if.end.i.i124.if.end.i130_crit_edge, label %if.end6.i.i128

if.end.i.i124.if.end.i130_crit_edge:              ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i130

if.end6.i.i128:                                   ; preds = %if.end.i.i124
  %arrayidx7.i.i125 = getelementptr [2 x i32], ptr %arrayidx27, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx7.i.i125 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx7.i.i125, align 4
  %62 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp9.i.i127 = icmp ult i32 %61, %63
  br i1 %cmp9.i.i127, label %if.end6.i.i128.for.end_crit_edge, label %if.end6.i.i128.if.end.i130_crit_edge

if.end6.i.i128.if.end.i130_crit_edge:             ; preds = %if.end6.i.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i130

if.end6.i.i128.for.end_crit_edge:                 ; preds = %if.end6.i.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i130:                                      ; preds = %if.end6.i.i128.if.end.i130_crit_edge, %if.end.i.i124.if.end.i130_crit_edge
  %64 = ptrtoint ptr %to_key to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %to_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %65)
  %cmp.i1.i129 = icmp ult i32 %57, %65
  br i1 %cmp.i1.i129, label %if.end.i130.if.end32_crit_edge, label %if.end.i3.i132

if.end.i130.if.end32_crit_edge:                   ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end.i3.i132:                                   ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %65)
  %cmp4.i2.i131 = icmp ugt i32 %57, %65
  br i1 %cmp4.i2.i131, label %if.end.i3.i132.for.end_crit_edge, label %if.end6.i7.i136

if.end.i3.i132.for.end_crit_edge:                 ; preds = %if.end.i3.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end6.i7.i136:                                  ; preds = %if.end.i3.i132
  %arrayidx7.i4.i133 = getelementptr [2 x i32], ptr %arrayidx27, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx7.i4.i133 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx7.i4.i133, align 4
  %68 = ptrtoint ptr %arrayidx8.i5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx8.i5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp14.i8.i135 = icmp ugt i32 %67, %69
  br i1 %cmp14.i8.i135, label %if.end6.i7.i136.for.end_crit_edge, label %if.end6.i7.i136.if.end32_crit_edge

if.end6.i7.i136.if.end32_crit_edge:               ; preds = %if.end6.i7.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end6.i7.i136.for.end_crit_edge:                ; preds = %if.end6.i7.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end32:                                         ; preds = %if.end6.i7.i136.if.end32_crit_edge, %if.end.i130.if.end32_crit_edge
  %70 = getelementptr %struct.ubifs_znode, ptr %53, i32 0, i32 13, i32 %i.0174, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %tobool.not.i140 = icmp eq ptr %72, null
  br i1 %tobool.not.i140, label %if.end32.lnc_free.exit_crit_edge, label %if.end.i141

if.end32.lnc_free.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %lnc_free.exit

if.end.i141:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %72) #12
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %70, align 8
  br label %lnc_free.exit

lnc_free.exit:                                    ; preds = %if.end.i141, %if.end32.lnc_free.exit_crit_edge
  %lnum = getelementptr %struct.ubifs_znode, ptr %53, i32 0, i32 13, i32 %i.0174, i32 2
  %74 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lnum, align 4
  %len = getelementptr %struct.ubifs_znode, ptr %53, i32 0, i32 13, i32 %i.0174, i32 4
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %call.i = call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %75, i32 noundef -2147483647, i32 noundef %77, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %do.body, label %if.then41

if.then41:                                        ; preds = %lnc_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_dump_znode(ptr noundef %c, ptr noundef %53) #12
  br label %if.end80

do.body:                                          ; preds = %lnc_free.exit
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %78 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_remove_range.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_remove_range, %if.then48)) #12
          to label %do.end [label %if.then48], !srcloc !231

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %79 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 68
  %83 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pid, align 8
  %call50 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %arrayidx27, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_remove_range.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.24, i32 noundef %84, ptr noundef %call50) #12
  br label %do.end

do.end:                                           ; preds = %if.then48, %do.body
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %inc54 = add i32 %k.0171, 1
  %i.0 = add nsw i32 %i.0174, 1
  %85 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %child_cnt, align 4
  %cmp25 = icmp slt i32 %i.0, %86
  br i1 %cmp25, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %if.end6.i7.i136.for.end_crit_edge, %if.end.i3.i132.for.end_crit_edge, %if.end6.i.i128.for.end_crit_edge, %for.body.for.end_crit_edge
  %k.0.lcssa = phi i32 [ %inc54, %do.end.for.end_crit_edge ], [ %k.0171, %for.body.for.end_crit_edge ], [ %k.0171, %if.end6.i.i128.for.end_crit_edge ], [ %k.0171, %if.end6.i7.i136.for.end_crit_edge ], [ %k.0171, %if.end.i3.i132.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.lcssa)
  %tobool55.not = icmp eq i32 %k.0.lcssa, 0
  br i1 %tobool55.not, label %for.end.if.end72_crit_edge, label %if.then56

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then56:                                        ; preds = %for.end
  %87 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n, align 4
  %add57 = add i32 %k.0.lcssa, 1
  %add58 = add i32 %add57, %88
  %89 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %child_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add58, i32 %90)
  %cmp61189 = icmp slt i32 %add58, %90
  br i1 %cmp61189, label %if.then56.for.body62_crit_edge, label %if.then56.for.end69_crit_edge

if.then56.for.end69_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end69

if.then56.for.body62_crit_edge:                   ; preds = %if.then56
  br label %for.body62

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %if.then56.for.body62_crit_edge
  %i.1190 = phi i32 [ %inc68, %for.body62.for.body62_crit_edge ], [ %add58, %if.then56.for.body62_crit_edge ]
  %sub = sub i32 %i.1190, %k.0.lcssa
  %arrayidx64 = getelementptr %struct.ubifs_znode, ptr %53, i32 0, i32 13, i32 %sub
  %arrayidx66 = getelementptr %struct.ubifs_znode, ptr %53, i32 0, i32 13, i32 %i.1190
  %91 = call ptr @memcpy(ptr %arrayidx64, ptr %arrayidx66, i32 88)
  %inc68 = add nsw i32 %i.1190, 1
  %92 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %child_cnt, align 4
  %cmp61 = icmp slt i32 %inc68, %93
  br i1 %cmp61, label %for.body62.for.body62_crit_edge, label %for.body62.for.end69_crit_edge

for.body62.for.end69_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end69

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body62

for.end69:                                        ; preds = %for.body62.for.end69_crit_edge, %if.then56.for.end69_crit_edge
  %.lcssa167 = phi i32 [ %90, %if.then56.for.end69_crit_edge ], [ %93, %for.body62.for.end69_crit_edge ]
  %sub71 = sub i32 %.lcssa167, %k.0.lcssa
  %94 = ptrtoint ptr %child_cnt to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub71, ptr %child_cnt, align 4
  br label %if.end72

if.end72:                                         ; preds = %for.end69, %for.end.if.end72_crit_edge, %if.end24.if.end72_crit_edge
  %95 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n, align 4
  %call73 = call fastcc i32 @tnc_delete(ptr noundef %c, ptr noundef %53, i32 noundef %96)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.while.cond_crit_edge, label %if.end72.if.end80_crit_edge

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.end72.while.cond_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

out_unlock:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %call19 to i32
  br label %if.end80

if.then78:                                        ; preds = %if.end6.i7.i.if.then78_crit_edge, %if.end.i3.i.if.then78_crit_edge, %if.end6.i.i.if.then78_crit_edge, %if.end8.if.then78_crit_edge, %tnc_next.exit.if.then78_crit_edge, %while.cond.i.if.then78_crit_edge
  %call79 = call i32 @dbg_check_tnc(ptr noundef %c, i32 noundef 0) #12
  br label %if.end80

if.end80.loopexit.split.loop.exit194:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %retval.2.i.le = ptrtoint ptr %retval.2.i.in to i32
  br label %if.end80

if.end80:                                         ; preds = %if.end80.loopexit.split.loop.exit194, %if.then78, %out_unlock, %if.end72.if.end80_crit_edge, %if.then41, %while.cond.if.end80_crit_edge
  %err.1 = phi i32 [ %97, %out_unlock ], [ %call79, %if.then78 ], [ %call.i, %if.then41 ], [ %retval.2.i.le, %if.end80.loopexit.split.loop.exit194 ], [ %call, %while.cond.if.end80_crit_edge ], [ %call73, %if.end72.if.end80_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_znode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_remove_ino(ptr noundef %c, i32 noundef %inum) local_unnamed_addr #0 align 64 {
entry:
  %key1 = alloca %union.ubifs_key, align 8
  %key2 = alloca %union.ubifs_key, align 8
  %nm = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key1) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key2) #12
  %0 = ptrtoint ptr %key2 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key2, align 8, !annotation !232
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %nm) #12
  %1 = call ptr @memset(ptr %nm, i32 0, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_remove_ino.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_remove_ino, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_remove_ino.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.26, i32 noundef %7, i32 noundef %inum) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inum, ptr %key1, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1610612736, ptr %arrayidx1.i, align 4
  %call4108 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %nm)
  %cmp.i109 = icmp ugt ptr %call4108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %do.end.if.then6_crit_edge, label %if.end10.lr.ph

do.end.if.then6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.end10.lr.ph:                                   ; preds = %do.end
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %arrayidx1.i90 = getelementptr inbounds [2 x i32], ptr %key2, i32 0, i32 1
  br label %if.end10

if.then6:                                         ; preds = %cleanup.if.then6_crit_edge, %do.end.if.then6_crit_edge
  %pxent.0.lcssa = phi ptr [ null, %do.end.if.then6_crit_edge ], [ %call4111, %cleanup.if.then6_crit_edge ]
  %call4.lcssa = phi ptr [ %call4108, %do.end.if.then6_crit_edge ], [ %call4, %cleanup.if.then6_crit_edge ]
  %cmp = icmp eq ptr %call4.lcssa, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %while.end, label %if.end9

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call4.lcssa to i32
  call void @kfree(ptr noundef %pxent.0.lcssa) #12
  br label %cleanup46

if.end10:                                         ; preds = %cleanup.if.end10_crit_edge, %if.end10.lr.ph
  %call4111 = phi ptr [ %call4108, %if.end10.lr.ph ], [ %call4, %cleanup.if.end10_crit_edge ]
  %pxent.0110 = phi ptr [ null, %if.end10.lr.ph ], [ %call4111, %cleanup.if.end10_crit_edge ]
  %inum11 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call4111, i32 0, i32 2
  %11 = ptrtoint ptr %inum11 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %inum11, align 1
  %13 = call i64 @llvm.bswap.i64(i64 %12)
  %conv = trunc i64 %13 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_remove_ino.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_remove_ino, %if.then24)) #12
          to label %do.end30 [label %if.then24], !srcloc !231

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %14 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i88 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i88 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task26, align 8
  %pid27 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid27, align 8
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %call4111, i32 0, i32 7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_remove_ino.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.27, i32 noundef %19, ptr noundef %name, i32 noundef %conv) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %if.end10
  call void @ubifs_evict_xattr_inode(ptr noundef %c, i32 noundef %conv) #12
  %name31 = getelementptr inbounds %struct.ubifs_dent_node, ptr %call4111, i32 0, i32 7
  %20 = ptrtoint ptr %disk_name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %name31, ptr %disk_name, align 4
  %nlen = getelementptr inbounds %struct.ubifs_dent_node, ptr %call4111, i32 0, i32 5
  %21 = ptrtoint ptr %nlen to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %nlen, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv34 = zext i16 %23 to i32
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv34, ptr %len, align 4
  %call36 = call i32 @ubifs_tnc_remove_nm(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %nm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %pxent.0110) #12
  call void @kfree(ptr noundef %call4111) #12
  br label %cleanup46

if.end39:                                         ; preds = %do.end30
  %25 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %key1, align 8
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx1.i, align 4
  %27 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %key2, align 8
  %28 = ptrtoint ptr %arrayidx1.i90 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %arrayidx1.i90, align 4
  %call40 = call i32 @ubifs_tnc_remove_range(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %key2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  call void @kfree(ptr noundef %pxent.0110) #12
  br i1 %tobool41.not, label %cleanup, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %call4111) #12
  br label %cleanup46

cleanup:                                          ; preds = %if.end39
  %key = getelementptr inbounds %struct.ubifs_dent_node, ptr %call4111, i32 0, i32 1
  %29 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %key, align 8
  %31 = call i32 @llvm.bswap.i32(i32 %30) #12
  %32 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %key1, align 8
  %arrayidx2.i = getelementptr %struct.ubifs_dent_node, ptr %call4111, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #12
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx1.i, align 4
  %call4 = call ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %nm)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.if.then6_crit_edge, label %cleanup.if.end10_crit_edge

cleanup.if.end10_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

cleanup.if.then6_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

while.end:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %pxent.0.lcssa) #12
  %37 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inum, ptr %key1, align 8
  %38 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx1.i, align 4
  %39 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inum, ptr %key2, align 8
  %arrayidx1.i92 = getelementptr inbounds [2 x i32], ptr %key2, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx1.i92 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %arrayidx1.i92, align 4
  %call45 = call i32 @ubifs_tnc_remove_range(ptr noundef %c, ptr noundef nonnull %key1, ptr noundef nonnull %key2)
  br label %cleanup46

cleanup46:                                        ; preds = %while.end, %if.then42, %if.then38, %if.end9
  %retval.2 = phi i32 [ %call45, %while.end ], [ %call40, %if.then42 ], [ %call36, %if.then38 ], [ %10, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %nm) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key1) #12
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_tnc_next_ent(ptr noundef %c, ptr noundef %key, ptr nocapture noundef readonly %nm) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %znode = alloca ptr, align 4
  %__tmp_key_buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %3 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %4 = call ptr @memset(ptr %__tmp_key_buf, i32 255, i32 48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_next_ent.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_next_ent, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %call6 = call ptr @dbg_snprintf_key(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %__tmp_key_buf, i32 noundef 48) #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_next_ent.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.11, i32 noundef %10, ptr noundef %call6) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__tmp_key_buf) #12
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = and i32 %12, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %13)
  %.not = icmp eq i32 %13, 1073741824
  br i1 %.not, label %do.end.do.end23_crit_edge, label %if.then20, !prof !235

do.end.do.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 2961) #12
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.end.do.end23_crit_edge
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %call24 = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %do.end23.out_unlock_crit_edge, label %if.end32, !prof !230

do.end23.out_unlock_crit_edge:                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end32:                                         ; preds = %do.end23
  %len = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp33.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool82.not = icmp eq i32 %call24, 0
  br i1 %cmp33.not, label %if.else81, label %if.then34

if.then34:                                        ; preds = %if.end32
  br i1 %tobool82.not, label %if.then34.if.end70_crit_edge, label %if.then36

if.then34.if.end70_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then36:                                        ; preds = %if.then34
  %replaying = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %16 = ptrtoint ptr %replaying to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %replaying, align 4
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool37.not = icmp eq i8 %17, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = call fastcc i32 @fallible_resolve_collision(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n, ptr noundef %nm, i32 noundef 0)
  br label %do.body42

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = call fastcc i32 @resolve_collision(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode, ptr noundef nonnull %n, ptr noundef %nm)
  br label %do.body42

do.body42:                                        ; preds = %if.else, %if.then38
  %err.0 = phi i32 [ %call39, %if.then38 ], [ %call40, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_tnc_next_ent.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_tnc_next_ent, %if.then54)) #12
          to label %do.end60 [label %if.then54], !srcloc !231

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %18 = call i32 @llvm.read_register.i32(metadata !220) #12
  %and.i171 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i171 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task56, align 8
  %pid57 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid57, align 8
  %24 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %znode, align 4
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_tnc_next_ent.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.19, i32 noundef %23, i32 noundef %err.0, ptr noundef %25, i32 noundef %27) #12
  br label %do.end60

do.end60:                                         ; preds = %if.then54, %do.body42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp61 = icmp slt i32 %err.0, 0
  br i1 %cmp61, label %do.end60.out_unlock_crit_edge, label %do.end60.if.end70_crit_edge, !prof !230

do.end60.if.end70_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.end60.out_unlock_crit_edge:                    ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end70:                                         ; preds = %do.end60.if.end70_crit_edge, %if.then34.if.end70_crit_edge
  %28 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %znode, align 4
  %30 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n, align 4
  %add.i = add i32 %31, 1
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %33)
  %cmp.i172 = icmp slt i32 %add.i, %33
  br i1 %cmp.i172, label %if.then.i173, label %if.end70.while.cond.i_crit_edge

if.end70.while.cond.i_crit_edge:                  ; preds = %if.end70
  br label %while.cond.i

if.then.i173:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %n, align 4
  br label %if.end89

while.cond.i:                                     ; preds = %if.end2.i.while.cond.i_crit_edge, %if.end70.while.cond.i_crit_edge
  %znode.0.i = phi ptr [ %36, %if.end2.i.while.cond.i_crit_edge ], [ %29, %if.end70.while.cond.i_crit_edge ]
  %35 = ptrtoint ptr %znode.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %znode.0.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %while.cond.i.out_unlock_crit_edge, label %if.end2.i

while.cond.i.out_unlock_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end2.i:                                        ; preds = %while.cond.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i, i32 0, i32 8
  %37 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iip.i, align 8
  %add3.i = add i32 %38, 1
  %child_cnt4.i = getelementptr inbounds %struct.ubifs_znode, ptr %36, i32 0, i32 7
  %39 = ptrtoint ptr %child_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %child_cnt4.i, align 4
  %cmp5.i = icmp slt i32 %add3.i, %40
  br i1 %cmp5.i, label %if.then6.i, label %if.end2.i.while.cond.i_crit_edge

if.end2.i.while.cond.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end2.i
  %41 = getelementptr %struct.ubifs_znode, ptr %36, i32 0, i32 13, i32 %add3.i, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %tobool.not.i.i174 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i174, label %if.else.i.i, label %if.then6.i.get_znode.exit.i_crit_edge

if.then6.i.get_znode.exit.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i175 = getelementptr %struct.ubifs_znode, ptr %36, i32 0, i32 13, i32 %add3.i
  %call.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i175, ptr noundef nonnull %36, i32 noundef %add3.i) #12
  br label %get_znode.exit.i

get_znode.exit.i:                                 ; preds = %if.else.i.i, %if.then6.i.get_znode.exit.i_crit_edge
  %znode.addr.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %43, %if.then6.i.get_znode.exit.i_crit_edge ]
  %cmp.i.i176 = icmp ugt ptr %znode.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i176, label %get_znode.exit.i.tnc_next.exit_crit_edge, label %get_znode.exit.i.while.cond11.i_crit_edge

get_znode.exit.i.while.cond11.i_crit_edge:        ; preds = %get_znode.exit.i
  br label %while.cond11.i

get_znode.exit.i.tnc_next.exit_crit_edge:         ; preds = %get_znode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.cond11.i:                                   ; preds = %get_znode.exit49.i.while.cond11.i_crit_edge, %get_znode.exit.i.while.cond11.i_crit_edge
  %znode.1.i = phi ptr [ %znode.addr.0.i48.i, %get_znode.exit49.i.while.cond11.i_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.while.cond11.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 6
  %44 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp12.not.i = icmp eq i32 %45, 0
  br i1 %cmp12.not.i, label %while.end20.i, label %while.body13.i

while.body13.i:                                   ; preds = %while.cond11.i
  %46 = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %tobool.not.i44.i = icmp eq ptr %48, null
  br i1 %tobool.not.i44.i, label %if.else.i47.i, label %while.body13.i.get_znode.exit49.i_crit_edge

while.body13.i.get_znode.exit49.i_crit_edge:      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i

if.else.i47.i:                                    ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0
  %call.i46.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i, ptr noundef %znode.1.i, i32 noundef 0) #12
  br label %get_znode.exit49.i

get_znode.exit49.i:                               ; preds = %if.else.i47.i, %while.body13.i.get_znode.exit49.i_crit_edge
  %znode.addr.0.i48.i = phi ptr [ %call.i46.i, %if.else.i47.i ], [ %48, %while.body13.i.get_znode.exit49.i_crit_edge ]
  %cmp.i50.i = icmp ugt ptr %znode.addr.0.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %get_znode.exit49.i.tnc_next.exit_crit_edge, label %get_znode.exit49.i.while.cond11.i_crit_edge

get_znode.exit49.i.while.cond11.i_crit_edge:      ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i

get_znode.exit49.i.tnc_next.exit_crit_edge:       ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.end20.i:                                    ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %znode.1.i, ptr %znode, align 4
  %50 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %n, align 4
  br label %if.end89

tnc_next.exit:                                    ; preds = %get_znode.exit49.i.tnc_next.exit_crit_edge, %get_znode.exit.i.tnc_next.exit_crit_edge
  %retval.2.i.in = phi ptr [ %znode.addr.0.i.i, %get_znode.exit.i.tnc_next.exit_crit_edge ], [ %znode.addr.0.i48.i, %get_znode.exit49.i.tnc_next.exit_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  br label %out_unlock

if.else81:                                        ; preds = %if.end32
  br i1 %tobool82.not, label %if.then83, label %if.else81.if.end89_crit_edge

if.else81.if.end89_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then83:                                        ; preds = %if.else81
  %51 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %znode, align 4
  %53 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n, align 4
  %add.i177 = add i32 %54, 1
  %child_cnt.i178 = getelementptr inbounds %struct.ubifs_znode, ptr %52, i32 0, i32 7
  %55 = ptrtoint ptr %child_cnt.i178 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %child_cnt.i178, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i177, i32 %56)
  %cmp.i179 = icmp slt i32 %add.i177, %56
  br i1 %cmp.i179, label %if.then.i180, label %if.then83.while.cond.i183_crit_edge

if.then83.while.cond.i183_crit_edge:              ; preds = %if.then83
  br label %while.cond.i183

if.then.i180:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i177, ptr %n, align 4
  br label %if.end89

while.cond.i183:                                  ; preds = %if.end2.i188.while.cond.i183_crit_edge, %if.then83.while.cond.i183_crit_edge
  %znode.0.i181 = phi ptr [ %59, %if.end2.i188.while.cond.i183_crit_edge ], [ %52, %if.then83.while.cond.i183_crit_edge ]
  %58 = ptrtoint ptr %znode.0.i181 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %znode.0.i181, align 8
  %tobool.not.i182 = icmp eq ptr %59, null
  br i1 %tobool.not.i182, label %while.cond.i183.out_unlock_crit_edge, label %if.end2.i188

while.cond.i183.out_unlock_crit_edge:             ; preds = %while.cond.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end2.i188:                                     ; preds = %while.cond.i183
  %iip.i184 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i181, i32 0, i32 8
  %60 = ptrtoint ptr %iip.i184 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iip.i184, align 8
  %add3.i185 = add i32 %61, 1
  %child_cnt4.i186 = getelementptr inbounds %struct.ubifs_znode, ptr %59, i32 0, i32 7
  %62 = ptrtoint ptr %child_cnt4.i186 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %child_cnt4.i186, align 4
  %cmp5.i187 = icmp slt i32 %add3.i185, %63
  br i1 %cmp5.i187, label %if.then6.i190, label %if.end2.i188.while.cond.i183_crit_edge

if.end2.i188.while.cond.i183_crit_edge:           ; preds = %if.end2.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i183

if.then6.i190:                                    ; preds = %if.end2.i188
  %64 = getelementptr %struct.ubifs_znode, ptr %59, i32 0, i32 13, i32 %add3.i185, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %tobool.not.i.i189 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i189, label %if.else.i.i193, label %if.then6.i190.get_znode.exit.i196_crit_edge

if.then6.i190.get_znode.exit.i196_crit_edge:      ; preds = %if.then6.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i196

if.else.i.i193:                                   ; preds = %if.then6.i190
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i191 = getelementptr %struct.ubifs_znode, ptr %59, i32 0, i32 13, i32 %add3.i185
  %call.i.i192 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i191, ptr noundef nonnull %59, i32 noundef %add3.i185) #12
  br label %get_znode.exit.i196

get_znode.exit.i196:                              ; preds = %if.else.i.i193, %if.then6.i190.get_znode.exit.i196_crit_edge
  %znode.addr.0.i.i194 = phi ptr [ %call.i.i192, %if.else.i.i193 ], [ %66, %if.then6.i190.get_znode.exit.i196_crit_edge ]
  %cmp.i.i195 = icmp ugt ptr %znode.addr.0.i.i194, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i195, label %get_znode.exit.i196.tnc_next.exit213_crit_edge, label %get_znode.exit.i196.while.cond11.i201_crit_edge

get_znode.exit.i196.while.cond11.i201_crit_edge:  ; preds = %get_znode.exit.i196
  br label %while.cond11.i201

get_znode.exit.i196.tnc_next.exit213_crit_edge:   ; preds = %get_znode.exit.i196
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit213

while.cond11.i201:                                ; preds = %get_znode.exit49.i209.while.cond11.i201_crit_edge, %get_znode.exit.i196.while.cond11.i201_crit_edge
  %znode.1.i198 = phi ptr [ %znode.addr.0.i48.i207, %get_znode.exit49.i209.while.cond11.i201_crit_edge ], [ %znode.addr.0.i.i194, %get_znode.exit.i196.while.cond11.i201_crit_edge ]
  %level.i199 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i198, i32 0, i32 6
  %67 = ptrtoint ptr %level.i199 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %level.i199, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp12.not.i200 = icmp eq i32 %68, 0
  br i1 %cmp12.not.i200, label %while.end20.i211, label %while.body13.i203

while.body13.i203:                                ; preds = %while.cond11.i201
  %69 = getelementptr %struct.ubifs_znode, ptr %znode.1.i198, i32 0, i32 13, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %tobool.not.i44.i202 = icmp eq ptr %71, null
  br i1 %tobool.not.i44.i202, label %if.else.i47.i206, label %while.body13.i203.get_znode.exit49.i209_crit_edge

while.body13.i203.get_znode.exit49.i209_crit_edge: ; preds = %while.body13.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i209

if.else.i47.i206:                                 ; preds = %while.body13.i203
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i204 = getelementptr %struct.ubifs_znode, ptr %znode.1.i198, i32 0, i32 13, i32 0
  %call.i46.i205 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i204, ptr noundef %znode.1.i198, i32 noundef 0) #12
  br label %get_znode.exit49.i209

get_znode.exit49.i209:                            ; preds = %if.else.i47.i206, %while.body13.i203.get_znode.exit49.i209_crit_edge
  %znode.addr.0.i48.i207 = phi ptr [ %call.i46.i205, %if.else.i47.i206 ], [ %71, %while.body13.i203.get_znode.exit49.i209_crit_edge ]
  %cmp.i50.i208 = icmp ugt ptr %znode.addr.0.i48.i207, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i208, label %get_znode.exit49.i209.tnc_next.exit213_crit_edge, label %get_znode.exit49.i209.while.cond11.i201_crit_edge

get_znode.exit49.i209.while.cond11.i201_crit_edge: ; preds = %get_znode.exit49.i209
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i201

get_znode.exit49.i209.tnc_next.exit213_crit_edge: ; preds = %get_znode.exit49.i209
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit213

while.end20.i211:                                 ; preds = %while.cond11.i201
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %znode.1.i198, ptr %znode, align 4
  %73 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %n, align 4
  br label %if.end89

tnc_next.exit213:                                 ; preds = %get_znode.exit49.i209.tnc_next.exit213_crit_edge, %get_znode.exit.i196.tnc_next.exit213_crit_edge
  %retval.2.i212.in = phi ptr [ %znode.addr.0.i.i194, %get_znode.exit.i196.tnc_next.exit213_crit_edge ], [ %znode.addr.0.i48.i207, %get_znode.exit49.i209.tnc_next.exit213_crit_edge ]
  %retval.2.i212 = ptrtoint ptr %retval.2.i212.in to i32
  br label %out_unlock

if.end89:                                         ; preds = %while.end20.i211, %if.then.i180, %if.else81.if.end89_crit_edge, %while.end20.i, %if.then.i173
  %74 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %znode, align 4
  %76 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %75, i32 0, i32 13, i32 %77
  %len90 = getelementptr %struct.ubifs_znode, ptr %75, i32 0, i32 13, i32 %77, i32 4
  %78 = ptrtoint ptr %len90 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len90, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %79, i32 noundef 3136) #18
  %tobool92.not = icmp eq ptr %call9.i, null
  br i1 %tobool92.not, label %if.end89.out_unlock_crit_edge, label %if.end102, !prof !230

if.end89.out_unlock_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end102:                                        ; preds = %if.end89
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 8
  %82 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp106.not = icmp eq i32 %81, %83
  br i1 %cmp106.not, label %lor.lhs.false, label %if.end102.out_free_crit_edge

if.end102.out_free_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

lor.lhs.false:                                    ; preds = %if.end102
  %arrayidx.i214 = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i214, align 4
  %cmp108.not.unshifted = xor i32 %85, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %cmp108.not.unshifted)
  %cmp108.not = icmp ult i32 %cmp108.not.unshifted, 536870912
  br i1 %cmp108.not, label %if.end110, label %lor.lhs.false.out_free_crit_edge

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end110:                                        ; preds = %lor.lhs.false
  %call111 = call fastcc i32 @tnc_read_hashed_node(ptr noundef %c, ptr noundef %arrayidx, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end120, label %if.end110.out_free_crit_edge, !prof !235

if.end110.out_free_crit_edge:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end120:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  br label %cleanup

out_free:                                         ; preds = %if.end110.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %if.end102.out_free_crit_edge
  %err.1 = phi i32 [ %call111, %if.end110.out_free_crit_edge ], [ -2, %lor.lhs.false.out_free_crit_edge ], [ -2, %if.end102.out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %out_unlock

out_unlock:                                       ; preds = %out_free, %if.end89.out_unlock_crit_edge, %tnc_next.exit213, %while.cond.i183.out_unlock_crit_edge, %tnc_next.exit, %while.cond.i.out_unlock_crit_edge, %do.end60.out_unlock_crit_edge, %do.end23.out_unlock_crit_edge
  %err.2 = phi i32 [ %call24, %do.end23.out_unlock_crit_edge ], [ %err.0, %do.end60.out_unlock_crit_edge ], [ %retval.2.i, %tnc_next.exit ], [ %err.1, %out_free ], [ %retval.2.i212, %tnc_next.exit213 ], [ -12, %if.end89.out_unlock_crit_edge ], [ -2, %while.cond.i183.out_unlock_crit_edge ], [ -2, %while.cond.i.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  %86 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end120
  %retval.0 = phi ptr [ %86, %out_unlock ], [ %call9.i, %if.end120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_evict_xattr_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubifs_tnc_close(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cnext1.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 33
  %0 = ptrtoint ptr %cnext1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cnext1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tnc_destroy_cnext.exit_crit_edge, label %do.body.i

entry.tnc_destroy_cnext.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_destroy_cnext.exit

do.body.i:                                        ; preds = %entry
  %cmt_state.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 25
  %2 = ptrtoint ptr %cmt_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmt_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 5
  br i1 %cmp.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then5.i, !prof !235

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.2, i32 noundef 3048) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i.do.end.i_crit_edge
  %4 = ptrtoint ptr %cnext1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cnext1.i, align 8
  br label %do.body8.i

do.body8.i:                                       ; preds = %land.rhs.i.do.body8.i_crit_edge, %do.end.i
  %cnext.0.i = phi ptr [ %5, %do.end.i ], [ %7, %land.rhs.i.do.body8.i_crit_edge ]
  %cnext9.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %cnext9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cnext9.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %cnext.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not.i = icmp eq i32 %10, 0
  br i1 %tobool10.not.i, label %do.body8.i.if.end12.i_crit_edge, label %if.then11.i

do.body8.i.if.end12.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then11.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %cnext.0.i) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %do.body8.i.if.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %7, null
  br i1 %tobool14.not.i, label %if.end12.i.tnc_destroy_cnext.exit_crit_edge, label %land.rhs.i

if.end12.i.tnc_destroy_cnext.exit_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_destroy_cnext.exit

land.rhs.i:                                       ; preds = %if.end12.i
  %11 = ptrtoint ptr %cnext1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cnext1.i, align 8
  %cmp16.not.i = icmp eq ptr %7, %12
  br i1 %cmp16.not.i, label %land.rhs.i.tnc_destroy_cnext.exit_crit_edge, label %land.rhs.i.do.body8.i_crit_edge

land.rhs.i.do.body8.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8.i

land.rhs.i.tnc_destroy_cnext.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_destroy_cnext.exit

tnc_destroy_cnext.exit:                           ; preds = %land.rhs.i.tnc_destroy_cnext.exit_crit_edge, %if.end12.i.tnc_destroy_cnext.exit_crit_edge, %entry.tnc_destroy_cnext.exit_crit_edge
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %tnc_destroy_cnext.exit.if.end7_crit_edge, label %if.then

tnc_destroy_cnext.exit.if.end7_crit_edge:         ; preds = %tnc_destroy_cnext.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %tnc_destroy_cnext.exit
  %clean_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 84
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %clean_zn_cnt, i32 noundef 4) #12
  %16 = ptrtoint ptr %clean_zn_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %clean_zn_cnt, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 8
  %call2 = tail call i32 @ubifs_destroy_tnc_subtree(ptr noundef %c, ptr noundef %19) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %17)
  %cmp.not = icmp eq i32 %call2, %17
  br i1 %cmp.not, label %if.then.do.end_crit_edge, label %if.then6, !prof !235

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 3071) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then.do.end_crit_edge
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @ubifs_clean_zn_cnt, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 %17, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #12, !srcloc !240
  br label %if.end7

if.end7:                                          ; preds = %do.end, %tnc_destroy_cnext.exit.if.end7_crit_edge
  %gap_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 35
  %21 = ptrtoint ptr %gap_lebs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gap_lebs, align 8
  tail call void @kfree(ptr noundef %22) #12
  %ilebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 41
  %23 = ptrtoint ptr %ilebs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ilebs, align 8
  tail call void @kfree(ptr noundef %24) #12
  %old_idx1.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 44
  %call.i = tail call ptr @rb_first_postorder(ptr noundef %old_idx1.i) #12
  %tobool3.not24.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not24.i, label %if.end7.destroy_old_idx.exit_crit_edge, label %if.end7.land.rhs.i18_crit_edge

if.end7.land.rhs.i18_crit_edge:                   ; preds = %if.end7
  br label %land.rhs.i18

if.end7.destroy_old_idx.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_old_idx.exit

land.rhs.i18:                                     ; preds = %land.rhs.i18.land.rhs.i18_crit_edge, %if.end7.land.rhs.i18_crit_edge
  %old_idx.025.i = phi ptr [ %call5.i, %land.rhs.i18.land.rhs.i18_crit_edge ], [ %call.i, %if.end7.land.rhs.i18_crit_edge ]
  %call5.i = tail call ptr @rb_next_postorder(ptr noundef nonnull %old_idx.025.i) #12
  tail call void @kfree(ptr noundef nonnull %old_idx.025.i) #12
  %tobool3.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool3.not.i, label %land.rhs.i18.destroy_old_idx.exit_crit_edge, label %land.rhs.i18.land.rhs.i18_crit_edge

land.rhs.i18.land.rhs.i18_crit_edge:              ; preds = %land.rhs.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i18

land.rhs.i18.destroy_old_idx.exit_crit_edge:      ; preds = %land.rhs.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_old_idx.exit

destroy_old_idx.exit:                             ; preds = %land.rhs.i18.destroy_old_idx.exit_crit_edge, %if.end7.destroy_old_idx.exit_crit_edge
  %25 = ptrtoint ptr %old_idx1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %old_idx1.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_destroy_tnc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_idx_node_in_tnc(ptr noundef %c, ptr noundef %key, i32 noundef %level, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lookup_znode(ptr noundef %c, ptr noundef %key, i32 noundef %level, i32 noundef %lnum, i32 noundef %offs)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool6.not = icmp eq i32 %and1.i.i, 0
  %cond = select i1 %tobool6.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then2 ], [ %cond, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_znode(ptr noundef %c, ptr noundef %key, i32 noundef %level, i32 noundef %lnum, i32 noundef %offs) unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  %arrayidx.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge, !prof !230

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 3184) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp3 = icmp slt i32 %level, 0
  br i1 %cmp3, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %zroot = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32
  %call10 = tail call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %zroot, ptr noundef null, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8.cleanup_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %znode.0 = phi ptr [ %5, %if.end6.if.end14_crit_edge ], [ %call10, %if.then8.if.end14_crit_edge ]
  %lnum16 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 2
  %6 = ptrtoint ptr %lnum16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lnum16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %lnum)
  %cmp17 = icmp eq i32 %7, %lnum
  br i1 %cmp17, label %land.lhs.true, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end14
  %offs19 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 32, i32 3
  %8 = ptrtoint ptr %offs19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offs19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %offs)
  %cmp20 = icmp eq i32 %9, %offs
  br i1 %cmp20, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %level23 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0, i32 0, i32 6
  %10 = ptrtoint ptr %level23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level23, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %level)
  %cmp24.not = icmp sgt i32 %11, %level
  br i1 %cmp24.not, label %while.cond.preheader, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end22
  %add = add nuw nsw i32 %level, 1
  br label %while.cond

while.cond:                                       ; preds = %get_znode.exit.while.cond_crit_edge, %while.cond.preheader
  %znode.1 = phi ptr [ %znode.addr.0.i217, %get_znode.exit.while.cond_crit_edge ], [ %znode.0, %while.cond.preheader ]
  %call27 = call i32 @ubifs_search_zbranch(ptr noundef %c, ptr noundef %znode.1, ptr noundef %key, ptr noundef nonnull %n) #12
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp28 = icmp slt i32 %13, 0
  br i1 %cmp28, label %if.then29, label %while.cond.if.end52_crit_edge

while.cond.if.end52_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then29:                                        ; preds = %while.cond
  %level1.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1, i32 0, i32 6
  %14 = ptrtoint ptr %level1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level1.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %if.then29
  %znode.addr.0.i = phi ptr [ %znode.1, %if.then29 ], [ %17, %if.end.i.while.cond.i_crit_edge ]
  %16 = ptrtoint ptr %znode.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %znode.addr.0.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %while.cond.i.cleanup_crit_edge, label %if.end.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %while.cond.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.i, i32 0, i32 8
  %18 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iip.i, align 8
  %sub.i = add i32 %19, -1
  %cmp.i213 = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i213, label %if.then2.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then2.i:                                       ; preds = %if.end.i
  %20 = getelementptr %struct.ubifs_znode, ptr %17, i32 0, i32 13, i32 %sub.i, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then2.i.get_znode.exit.i_crit_edge

if.then2.i.get_znode.exit.i_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i

if.else.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.ubifs_znode, ptr %17, i32 0, i32 13, i32 %sub.i
  %call.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i, ptr noundef nonnull %17, i32 noundef %sub.i) #12
  br label %get_znode.exit.i

get_znode.exit.i:                                 ; preds = %if.else.i.i, %if.then2.i.get_znode.exit.i_crit_edge
  %znode.addr.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %22, %if.then2.i.get_znode.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %znode.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_znode.exit.i.left_znode.exit_crit_edge, label %get_znode.exit.i.while.cond6.i_crit_edge

get_znode.exit.i.while.cond6.i_crit_edge:         ; preds = %get_znode.exit.i
  br label %while.cond6.i

get_znode.exit.i.left_znode.exit_crit_edge:       ; preds = %get_znode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %left_znode.exit

while.cond6.i:                                    ; preds = %get_znode.exit38.i.while.cond6.i_crit_edge, %get_znode.exit.i.while.cond6.i_crit_edge
  %znode.addr.1.i = phi ptr [ %znode.addr.0.i37.i, %get_znode.exit38.i.while.cond6.i_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.while.cond6.i_crit_edge ]
  %level7.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1.i, i32 0, i32 6
  %23 = ptrtoint ptr %level7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %level7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %15)
  %cmp8.not.i = icmp eq i32 %24, %15
  br i1 %cmp8.not.i, label %while.cond6.i.left_znode.exit_crit_edge, label %while.body9.i

while.cond6.i.left_znode.exit_crit_edge:          ; preds = %while.cond6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %left_znode.exit

while.body9.i:                                    ; preds = %while.cond6.i
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1.i, i32 0, i32 7
  %25 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %child_cnt.i, align 4
  %sub10.i = add i32 %26, -1
  %27 = getelementptr %struct.ubifs_znode, ptr %znode.addr.1.i, i32 0, i32 13, i32 %sub10.i, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %tobool.not.i33.i = icmp eq ptr %29, null
  br i1 %tobool.not.i33.i, label %if.else.i36.i, label %while.body9.i.get_znode.exit38.i_crit_edge

while.body9.i.get_znode.exit38.i_crit_edge:       ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit38.i

if.else.i36.i:                                    ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i34.i = getelementptr %struct.ubifs_znode, ptr %znode.addr.1.i, i32 0, i32 13, i32 %sub10.i
  %call.i35.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i34.i, ptr noundef %znode.addr.1.i, i32 noundef %sub10.i) #12
  br label %get_znode.exit38.i

get_znode.exit38.i:                               ; preds = %if.else.i36.i, %while.body9.i.get_znode.exit38.i_crit_edge
  %znode.addr.0.i37.i = phi ptr [ %call.i35.i, %if.else.i36.i ], [ %29, %while.body9.i.get_znode.exit38.i_crit_edge ]
  %cmp.i39.i = icmp ugt ptr %znode.addr.0.i37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39.i, label %get_znode.exit38.i.left_znode.exit_crit_edge, label %get_znode.exit38.i.while.cond6.i_crit_edge

get_znode.exit38.i.while.cond6.i_crit_edge:       ; preds = %get_znode.exit38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond6.i

get_znode.exit38.i.left_znode.exit_crit_edge:     ; preds = %get_znode.exit38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %left_znode.exit

left_znode.exit:                                  ; preds = %get_znode.exit38.i.left_znode.exit_crit_edge, %while.cond6.i.left_znode.exit_crit_edge, %get_znode.exit.i.left_znode.exit_crit_edge
  %retval.2.i = phi ptr [ %znode.addr.0.i.i, %get_znode.exit.i.left_znode.exit_crit_edge ], [ %znode.addr.1.i, %while.cond6.i.left_znode.exit_crit_edge ], [ %znode.addr.0.i37.i, %get_znode.exit38.i.left_znode.exit_crit_edge ]
  %tobool31.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool31.not, label %left_znode.exit.cleanup_crit_edge, label %if.end33

left_znode.exit.cleanup_crit_edge:                ; preds = %left_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %left_znode.exit
  %cmp.i214 = icmp ugt ptr %retval.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.end33.cleanup_crit_edge, label %if.end36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  %call37 = call i32 @ubifs_search_zbranch(ptr noundef %c, ptr noundef nonnull %retval.2.i, ptr noundef %key, ptr noundef nonnull %n) #12
  %30 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp39 = icmp slt i32 %31, 0
  br i1 %cmp39, label %if.then48, label %if.end36.if.end52_crit_edge, !prof !230

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then48:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.2, i32 noundef 3223) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end36.if.end52_crit_edge, %while.cond.if.end52_crit_edge
  %znode.2 = phi ptr [ %retval.2.i, %if.then48 ], [ %retval.2.i, %if.end36.if.end52_crit_edge ], [ %znode.1, %while.cond.if.end52_crit_edge ]
  %level53 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.2, i32 0, i32 6
  %32 = ptrtoint ptr %level53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level53, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add)
  %cmp54 = icmp eq i32 %33, %add
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  br i1 %cmp54, label %while.end, label %if.end56

if.end56:                                         ; preds = %if.end52
  %36 = getelementptr %struct.ubifs_znode, ptr %znode.2, i32 0, i32 13, i32 %35, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %tobool.not.i215 = icmp eq ptr %38, null
  br i1 %tobool.not.i215, label %if.else.i, label %if.end56.get_znode.exit_crit_edge

if.end56.get_znode.exit_crit_edge:                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit

if.else.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i216 = getelementptr %struct.ubifs_znode, ptr %znode.2, i32 0, i32 13, i32 %35
  %call.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i216, ptr noundef %znode.2, i32 noundef %35) #12
  br label %get_znode.exit

get_znode.exit:                                   ; preds = %if.else.i, %if.end56.get_znode.exit_crit_edge
  %znode.addr.0.i217 = phi ptr [ %call.i, %if.else.i ], [ %38, %if.end56.get_znode.exit_crit_edge ]
  %cmp.i219 = icmp ugt ptr %znode.addr.0.i217, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %get_znode.exit.cleanup_crit_edge, label %get_znode.exit.while.cond_crit_edge

get_znode.exit.while.cond_crit_edge:              ; preds = %get_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

get_znode.exit.cleanup_crit_edge:                 ; preds = %get_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end:                                        ; preds = %if.end52
  %lnum61 = getelementptr %struct.ubifs_znode, ptr %znode.2, i32 0, i32 13, i32 %35, i32 2
  %39 = ptrtoint ptr %lnum61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lnum61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %lnum)
  %cmp62 = icmp eq i32 %40, %lnum
  br i1 %cmp62, label %land.lhs.true63, label %while.end.if.end70_crit_edge

while.end.if.end70_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true63:                                  ; preds = %while.end
  %offs66 = getelementptr %struct.ubifs_znode, ptr %znode.2, i32 0, i32 13, i32 %35, i32 3
  %41 = ptrtoint ptr %offs66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offs66, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %offs)
  %cmp67 = icmp eq i32 %42, %offs
  br i1 %cmp67, label %if.then68, label %land.lhs.true63.if.end70_crit_edge

land.lhs.true63.if.end70_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then68:                                        ; preds = %land.lhs.true63
  %43 = getelementptr %struct.ubifs_znode, ptr %znode.2, i32 0, i32 13, i32 %35, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %tobool.not.i220 = icmp eq ptr %45, null
  br i1 %tobool.not.i220, label %if.else.i223, label %if.then68.cleanup_crit_edge

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i223:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i221 = getelementptr %struct.ubifs_znode, ptr %znode.2, i32 0, i32 13, i32 %35
  %call.i222 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i221, ptr noundef %znode.2, i32 noundef %35) #12
  br label %cleanup

if.end70:                                         ; preds = %land.lhs.true63.if.end70_crit_edge, %while.end.if.end70_crit_edge
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %48 = and i32 %47, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %48)
  %.not = icmp eq i32 %48, 1073741824
  br i1 %.not, label %if.end70.while.cond75_crit_edge, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end70.while.cond75_crit_edge:                  ; preds = %if.end70
  br label %while.cond75

while.cond75:                                     ; preds = %while.cond75.backedge, %if.end70.while.cond75_crit_edge
  %znode.3 = phi ptr [ %znode.4, %while.cond75.backedge ], [ %znode.2, %if.end70.while.cond75_crit_edge ]
  %49 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool77.not = icmp eq i32 %50, 0
  br i1 %tobool77.not, label %if.else, label %while.cond75.if.end87_crit_edge

while.cond75.if.end87_crit_edge:                  ; preds = %while.cond75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.else:                                          ; preds = %while.cond75
  %level1.i228 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.3, i32 0, i32 6
  %51 = ptrtoint ptr %level1.i228 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %level1.i228, align 8
  br label %while.cond.i231

while.cond.i231:                                  ; preds = %if.end.i235.while.cond.i231_crit_edge, %if.else
  %znode.addr.0.i229 = phi ptr [ %znode.3, %if.else ], [ %54, %if.end.i235.while.cond.i231_crit_edge ]
  %53 = ptrtoint ptr %znode.addr.0.i229 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %znode.addr.0.i229, align 8
  %tobool.not.i230 = icmp eq ptr %54, null
  br i1 %tobool.not.i230, label %while.cond.i231.while.end107_crit_edge, label %if.end.i235

while.cond.i231.while.end107_crit_edge:           ; preds = %while.cond.i231
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end107

if.end.i235:                                      ; preds = %while.cond.i231
  %iip.i232 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.i229, i32 0, i32 8
  %55 = ptrtoint ptr %iip.i232 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iip.i232, align 8
  %sub.i233 = add i32 %56, -1
  %cmp.i234 = icmp sgt i32 %sub.i233, -1
  br i1 %cmp.i234, label %if.then2.i237, label %if.end.i235.while.cond.i231_crit_edge

if.end.i235.while.cond.i231_crit_edge:            ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i231

if.then2.i237:                                    ; preds = %if.end.i235
  %57 = getelementptr %struct.ubifs_znode, ptr %54, i32 0, i32 13, i32 %sub.i233, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %tobool.not.i.i236 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i236, label %if.else.i.i240, label %if.then2.i237.get_znode.exit.i243_crit_edge

if.then2.i237.get_znode.exit.i243_crit_edge:      ; preds = %if.then2.i237
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i243

if.else.i.i240:                                   ; preds = %if.then2.i237
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i238 = getelementptr %struct.ubifs_znode, ptr %54, i32 0, i32 13, i32 %sub.i233
  %call.i.i239 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i238, ptr noundef nonnull %54, i32 noundef %sub.i233) #12
  br label %get_znode.exit.i243

get_znode.exit.i243:                              ; preds = %if.else.i.i240, %if.then2.i237.get_znode.exit.i243_crit_edge
  %znode.addr.0.i.i241 = phi ptr [ %call.i.i239, %if.else.i.i240 ], [ %59, %if.then2.i237.get_znode.exit.i243_crit_edge ]
  %cmp.i.i242 = icmp ugt ptr %znode.addr.0.i.i241, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i242, label %get_znode.exit.i243.left_znode.exit259_crit_edge, label %get_znode.exit.i243.while.cond6.i247_crit_edge

get_znode.exit.i243.while.cond6.i247_crit_edge:   ; preds = %get_znode.exit.i243
  br label %while.cond6.i247

get_znode.exit.i243.left_znode.exit259_crit_edge: ; preds = %get_znode.exit.i243
  call void @__sanitizer_cov_trace_pc() #14
  br label %left_znode.exit259

while.cond6.i247:                                 ; preds = %get_znode.exit38.i257.while.cond6.i247_crit_edge, %get_znode.exit.i243.while.cond6.i247_crit_edge
  %znode.addr.1.i244 = phi ptr [ %znode.addr.0.i37.i255, %get_znode.exit38.i257.while.cond6.i247_crit_edge ], [ %znode.addr.0.i.i241, %get_znode.exit.i243.while.cond6.i247_crit_edge ]
  %level7.i245 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1.i244, i32 0, i32 6
  %60 = ptrtoint ptr %level7.i245 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %level7.i245, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %52)
  %cmp8.not.i246 = icmp eq i32 %61, %52
  br i1 %cmp8.not.i246, label %while.cond6.i247.left_znode.exit259_crit_edge, label %while.body9.i251

while.cond6.i247.left_znode.exit259_crit_edge:    ; preds = %while.cond6.i247
  call void @__sanitizer_cov_trace_pc() #14
  br label %left_znode.exit259

while.body9.i251:                                 ; preds = %while.cond6.i247
  %child_cnt.i248 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1.i244, i32 0, i32 7
  %62 = ptrtoint ptr %child_cnt.i248 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %child_cnt.i248, align 4
  %sub10.i249 = add i32 %63, -1
  %64 = getelementptr %struct.ubifs_znode, ptr %znode.addr.1.i244, i32 0, i32 13, i32 %sub10.i249, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %tobool.not.i33.i250 = icmp eq ptr %66, null
  br i1 %tobool.not.i33.i250, label %if.else.i36.i254, label %while.body9.i251.get_znode.exit38.i257_crit_edge

while.body9.i251.get_znode.exit38.i257_crit_edge: ; preds = %while.body9.i251
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit38.i257

if.else.i36.i254:                                 ; preds = %while.body9.i251
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i34.i252 = getelementptr %struct.ubifs_znode, ptr %znode.addr.1.i244, i32 0, i32 13, i32 %sub10.i249
  %call.i35.i253 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i34.i252, ptr noundef %znode.addr.1.i244, i32 noundef %sub10.i249) #12
  br label %get_znode.exit38.i257

get_znode.exit38.i257:                            ; preds = %if.else.i36.i254, %while.body9.i251.get_znode.exit38.i257_crit_edge
  %znode.addr.0.i37.i255 = phi ptr [ %call.i35.i253, %if.else.i36.i254 ], [ %66, %while.body9.i251.get_znode.exit38.i257_crit_edge ]
  %cmp.i39.i256 = icmp ugt ptr %znode.addr.0.i37.i255, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39.i256, label %get_znode.exit38.i257.left_znode.exit259_crit_edge, label %get_znode.exit38.i257.while.cond6.i247_crit_edge

get_znode.exit38.i257.while.cond6.i247_crit_edge: ; preds = %get_znode.exit38.i257
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond6.i247

get_znode.exit38.i257.left_znode.exit259_crit_edge: ; preds = %get_znode.exit38.i257
  call void @__sanitizer_cov_trace_pc() #14
  br label %left_znode.exit259

left_znode.exit259:                               ; preds = %get_znode.exit38.i257.left_znode.exit259_crit_edge, %while.cond6.i247.left_znode.exit259_crit_edge, %get_znode.exit.i243.left_znode.exit259_crit_edge
  %retval.2.i258 = phi ptr [ %znode.addr.0.i.i241, %get_znode.exit.i243.left_znode.exit259_crit_edge ], [ %znode.addr.1.i244, %while.cond6.i247.left_znode.exit259_crit_edge ], [ %znode.addr.0.i37.i255, %get_znode.exit38.i257.left_znode.exit259_crit_edge ]
  %tobool80.not = icmp eq ptr %retval.2.i258, null
  br i1 %tobool80.not, label %left_znode.exit259.while.end107_crit_edge, label %if.end82

left_znode.exit259.while.end107_crit_edge:        ; preds = %left_znode.exit259
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end107

if.end82:                                         ; preds = %left_znode.exit259
  %cmp.i260 = icmp ugt ptr %retval.2.i258, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %if.end82.cleanup_crit_edge, label %if.end85

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end85:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %child_cnt = getelementptr inbounds %struct.ubifs_znode, ptr %retval.2.i258, i32 0, i32 7
  %67 = ptrtoint ptr %child_cnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %child_cnt, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %while.cond75.if.end87_crit_edge
  %storemerge.in = phi i32 [ %68, %if.end85 ], [ %50, %while.cond75.if.end87_crit_edge ]
  %znode.4 = phi ptr [ %retval.2.i258, %if.end85 ], [ %znode.3, %while.cond75.if.end87_crit_edge ]
  %storemerge = add i32 %storemerge.in, -1
  %69 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %storemerge, ptr %n, align 4
  %lnum90 = getelementptr %struct.ubifs_znode, ptr %znode.4, i32 0, i32 13, i32 %storemerge, i32 2
  %70 = ptrtoint ptr %lnum90 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lnum90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %lnum)
  %cmp91 = icmp eq i32 %71, %lnum
  br i1 %cmp91, label %land.lhs.true92, label %if.end87.if.end99_crit_edge

if.end87.if.end99_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

land.lhs.true92:                                  ; preds = %if.end87
  %offs95 = getelementptr %struct.ubifs_znode, ptr %znode.4, i32 0, i32 13, i32 %storemerge, i32 3
  %72 = ptrtoint ptr %offs95 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offs95, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %offs)
  %cmp96 = icmp eq i32 %73, %offs
  br i1 %cmp96, label %if.then97, label %land.lhs.true92.if.end99_crit_edge

land.lhs.true92.if.end99_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then97:                                        ; preds = %land.lhs.true92
  %74 = getelementptr %struct.ubifs_znode, ptr %znode.4, i32 0, i32 13, i32 %storemerge, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %tobool.not.i261 = icmp eq ptr %76, null
  br i1 %tobool.not.i261, label %if.else.i264, label %if.then97.cleanup_crit_edge

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i264:                                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i262 = getelementptr %struct.ubifs_znode, ptr %znode.4, i32 0, i32 13, i32 %storemerge
  %call.i263 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i262, ptr noundef %znode.4, i32 noundef %storemerge) #12
  br label %cleanup

if.end99:                                         ; preds = %land.lhs.true92.if.end99_crit_edge, %if.end87.if.end99_crit_edge
  %arrayidx101 = getelementptr %struct.ubifs_znode, ptr %znode.4, i32 0, i32 13, i32 %storemerge
  %77 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx101, align 8
  %79 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp.i268 = icmp ult i32 %78, %80
  br i1 %cmp.i268, label %if.end99.while.end107_crit_edge, label %if.end.i269

if.end99.while.end107_crit_edge:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end107

if.end.i269:                                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp4.i = icmp ugt i32 %78, %80
  br i1 %cmp4.i, label %if.end.i269.while.cond75.backedge_crit_edge, label %if.end6.i

if.end.i269.while.cond75.backedge_crit_edge:      ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond75.backedge

if.end6.i:                                        ; preds = %if.end.i269
  %arrayidx7.i = getelementptr [2 x i32], ptr %arrayidx101, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx7.i, align 4
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp9.i = icmp ult i32 %82, %84
  br i1 %cmp9.i, label %if.end6.i.while.end107_crit_edge, label %if.end6.i.while.cond75.backedge_crit_edge

if.end6.i.while.cond75.backedge_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond75.backedge

if.end6.i.while.end107_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end107

while.cond75.backedge:                            ; preds = %if.end6.i.while.cond75.backedge_crit_edge, %if.end.i269.while.cond75.backedge_crit_edge
  br label %while.cond75

while.end107:                                     ; preds = %if.end6.i.while.end107_crit_edge, %if.end99.while.end107_crit_edge, %left_znode.exit259.while.end107_crit_edge, %while.cond.i231.while.end107_crit_edge
  %85 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %35, ptr %n, align 4
  br label %while.cond108

while.cond108:                                    ; preds = %keys_cmp.exit311.while.cond108_crit_edge, %while.end107
  %znode.5 = phi ptr [ %znode.2, %while.end107 ], [ %znode.6, %keys_cmp.exit311.while.cond108_crit_edge ]
  %86 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %n, align 4
  %inc = add i32 %87, 1
  store i32 %inc, ptr %n, align 4
  %child_cnt110 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.5, i32 0, i32 7
  %88 = ptrtoint ptr %child_cnt110 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %child_cnt110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %89)
  %cmp111.not = icmp slt i32 %inc, %89
  br i1 %cmp111.not, label %while.cond108.if.end120_crit_edge, label %if.then112

while.cond108.if.end120_crit_edge:                ; preds = %while.cond108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then112:                                       ; preds = %while.cond108
  %level1.i270 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.5, i32 0, i32 6
  %90 = ptrtoint ptr %level1.i270 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %level1.i270, align 8
  br label %while.cond.i273

while.cond.i273:                                  ; preds = %if.end.i277.while.cond.i273_crit_edge, %if.then112
  %znode.addr.0.i271 = phi ptr [ %znode.5, %if.then112 ], [ %93, %if.end.i277.while.cond.i273_crit_edge ]
  %92 = ptrtoint ptr %znode.addr.0.i271 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %znode.addr.0.i271, align 8
  %tobool.not.i272 = icmp eq ptr %93, null
  br i1 %tobool.not.i272, label %while.cond.i273.cleanup_crit_edge, label %if.end.i277

while.cond.i273.cleanup_crit_edge:                ; preds = %while.cond.i273
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i277:                                      ; preds = %while.cond.i273
  %iip.i274 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.0.i271, i32 0, i32 8
  %94 = ptrtoint ptr %iip.i274 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iip.i274, align 8
  %add.i = add i32 %95, 1
  %child_cnt.i275 = getelementptr inbounds %struct.ubifs_znode, ptr %93, i32 0, i32 7
  %96 = ptrtoint ptr %child_cnt.i275 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %child_cnt.i275, align 4
  %cmp.i276 = icmp slt i32 %add.i, %97
  br i1 %cmp.i276, label %if.then2.i279, label %if.end.i277.while.cond.i273_crit_edge

if.end.i277.while.cond.i273_crit_edge:            ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i273

if.then2.i279:                                    ; preds = %if.end.i277
  %98 = getelementptr %struct.ubifs_znode, ptr %93, i32 0, i32 13, i32 %add.i, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %tobool.not.i.i278 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i278, label %if.else.i.i282, label %if.then2.i279.get_znode.exit.i285_crit_edge

if.then2.i279.get_znode.exit.i285_crit_edge:      ; preds = %if.then2.i279
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i285

if.else.i.i282:                                   ; preds = %if.then2.i279
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i280 = getelementptr %struct.ubifs_znode, ptr %93, i32 0, i32 13, i32 %add.i
  %call.i.i281 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i280, ptr noundef nonnull %93, i32 noundef %add.i) #12
  br label %get_znode.exit.i285

get_znode.exit.i285:                              ; preds = %if.else.i.i282, %if.then2.i279.get_znode.exit.i285_crit_edge
  %znode.addr.0.i.i283 = phi ptr [ %call.i.i281, %if.else.i.i282 ], [ %100, %if.then2.i279.get_znode.exit.i285_crit_edge ]
  %cmp.i.i284 = icmp ugt ptr %znode.addr.0.i.i283, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i284, label %get_znode.exit.i285.right_znode.exit_crit_edge, label %get_znode.exit.i285.while.cond6.i289_crit_edge

get_znode.exit.i285.while.cond6.i289_crit_edge:   ; preds = %get_znode.exit.i285
  br label %while.cond6.i289

get_znode.exit.i285.right_znode.exit_crit_edge:   ; preds = %get_znode.exit.i285
  call void @__sanitizer_cov_trace_pc() #14
  br label %right_znode.exit

while.cond6.i289:                                 ; preds = %get_znode.exit36.i.while.cond6.i289_crit_edge, %get_znode.exit.i285.while.cond6.i289_crit_edge
  %znode.addr.1.i286 = phi ptr [ %znode.addr.0.i35.i, %get_znode.exit36.i.while.cond6.i289_crit_edge ], [ %znode.addr.0.i.i283, %get_znode.exit.i285.while.cond6.i289_crit_edge ]
  %level7.i287 = getelementptr inbounds %struct.ubifs_znode, ptr %znode.addr.1.i286, i32 0, i32 6
  %101 = ptrtoint ptr %level7.i287 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %level7.i287, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %91)
  %cmp8.not.i288 = icmp eq i32 %102, %91
  br i1 %cmp8.not.i288, label %while.cond6.i289.right_znode.exit_crit_edge, label %while.body9.i290

while.cond6.i289.right_znode.exit_crit_edge:      ; preds = %while.cond6.i289
  call void @__sanitizer_cov_trace_pc() #14
  br label %right_znode.exit

while.body9.i290:                                 ; preds = %while.cond6.i289
  %103 = getelementptr %struct.ubifs_znode, ptr %znode.addr.1.i286, i32 0, i32 13, i32 0, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %tobool.not.i31.i = icmp eq ptr %105, null
  br i1 %tobool.not.i31.i, label %if.else.i34.i, label %while.body9.i290.get_znode.exit36.i_crit_edge

while.body9.i290.get_znode.exit36.i_crit_edge:    ; preds = %while.body9.i290
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit36.i

if.else.i34.i:                                    ; preds = %while.body9.i290
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i32.i = getelementptr %struct.ubifs_znode, ptr %znode.addr.1.i286, i32 0, i32 13, i32 0
  %call.i33.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i32.i, ptr noundef %znode.addr.1.i286, i32 noundef 0) #12
  br label %get_znode.exit36.i

get_znode.exit36.i:                               ; preds = %if.else.i34.i, %while.body9.i290.get_znode.exit36.i_crit_edge
  %znode.addr.0.i35.i = phi ptr [ %call.i33.i, %if.else.i34.i ], [ %105, %while.body9.i290.get_znode.exit36.i_crit_edge ]
  %cmp.i37.i = icmp ugt ptr %znode.addr.0.i35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37.i, label %get_znode.exit36.i.right_znode.exit_crit_edge, label %get_znode.exit36.i.while.cond6.i289_crit_edge

get_znode.exit36.i.while.cond6.i289_crit_edge:    ; preds = %get_znode.exit36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond6.i289

get_znode.exit36.i.right_znode.exit_crit_edge:    ; preds = %get_znode.exit36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %right_znode.exit

right_znode.exit:                                 ; preds = %get_znode.exit36.i.right_znode.exit_crit_edge, %while.cond6.i289.right_znode.exit_crit_edge, %get_znode.exit.i285.right_znode.exit_crit_edge
  %retval.2.i291 = phi ptr [ %znode.addr.0.i.i283, %get_znode.exit.i285.right_znode.exit_crit_edge ], [ %znode.addr.1.i286, %while.cond6.i289.right_znode.exit_crit_edge ], [ %znode.addr.0.i35.i, %get_znode.exit36.i.right_znode.exit_crit_edge ]
  %tobool114.not = icmp eq ptr %retval.2.i291, null
  br i1 %tobool114.not, label %right_znode.exit.cleanup_crit_edge, label %if.end116

right_znode.exit.cleanup_crit_edge:               ; preds = %right_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end116:                                        ; preds = %right_znode.exit
  %cmp.i292 = icmp ugt ptr %retval.2.i291, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %if.end116.cleanup_crit_edge, label %if.end119

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end119:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %n, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %while.cond108.if.end120_crit_edge
  %znode.6 = phi ptr [ %retval.2.i291, %if.end119 ], [ %znode.5, %while.cond108.if.end120_crit_edge ]
  %107 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %n, align 4
  %lnum123 = getelementptr %struct.ubifs_znode, ptr %znode.6, i32 0, i32 13, i32 %108, i32 2
  %109 = ptrtoint ptr %lnum123 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lnum123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %lnum)
  %cmp124 = icmp eq i32 %110, %lnum
  br i1 %cmp124, label %land.lhs.true125, label %if.end120.if.end132_crit_edge

if.end120.if.end132_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

land.lhs.true125:                                 ; preds = %if.end120
  %offs128 = getelementptr %struct.ubifs_znode, ptr %znode.6, i32 0, i32 13, i32 %108, i32 3
  %111 = ptrtoint ptr %offs128 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %offs128, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %offs)
  %cmp129 = icmp eq i32 %112, %offs
  br i1 %cmp129, label %if.then130, label %land.lhs.true125.if.end132_crit_edge

land.lhs.true125.if.end132_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then130:                                       ; preds = %land.lhs.true125
  %113 = getelementptr %struct.ubifs_znode, ptr %znode.6, i32 0, i32 13, i32 %108, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  %tobool.not.i293 = icmp eq ptr %115, null
  br i1 %tobool.not.i293, label %if.else.i296, label %if.then130.cleanup_crit_edge

if.then130.cleanup_crit_edge:                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i296:                                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i294 = getelementptr %struct.ubifs_znode, ptr %znode.6, i32 0, i32 13, i32 %108
  %call.i295 = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i294, ptr noundef %znode.6, i32 noundef %108) #12
  br label %cleanup

if.end132:                                        ; preds = %land.lhs.true125.if.end132_crit_edge, %if.end120.if.end132_crit_edge
  %arrayidx134 = getelementptr %struct.ubifs_znode, ptr %znode.6, i32 0, i32 13, i32 %108
  %116 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx134, align 8
  %118 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp.i300 = icmp ult i32 %117, %119
  br i1 %cmp.i300, label %if.end132.keys_cmp.exit311_crit_edge, label %if.end.i302

if.end132.keys_cmp.exit311_crit_edge:             ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %keys_cmp.exit311

if.end.i302:                                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp4.i301 = icmp ugt i32 %117, %119
  br i1 %cmp4.i301, label %if.end.i302.cleanup_crit_edge, label %if.end6.i306

if.end.i302.cleanup_crit_edge:                    ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i306:                                     ; preds = %if.end.i302
  %arrayidx7.i303 = getelementptr [2 x i32], ptr %arrayidx134, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx7.i303 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx7.i303, align 4
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp9.i305 = icmp ult i32 %121, %123
  br i1 %cmp9.i305, label %if.end6.i306.keys_cmp.exit311_crit_edge, label %if.end11.i309

if.end6.i306.keys_cmp.exit311_crit_edge:          ; preds = %if.end6.i306
  call void @__sanitizer_cov_trace_pc() #14
  br label %keys_cmp.exit311

if.end11.i309:                                    ; preds = %if.end6.i306
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp14.i307 = icmp ugt i32 %121, %123
  %..i308 = zext i1 %cmp14.i307 to i32
  br label %keys_cmp.exit311

keys_cmp.exit311:                                 ; preds = %if.end11.i309, %if.end6.i306.keys_cmp.exit311_crit_edge, %if.end132.keys_cmp.exit311_crit_edge
  %retval.0.i310 = phi i32 [ -1, %if.end132.keys_cmp.exit311_crit_edge ], [ -1, %if.end6.i306.keys_cmp.exit311_crit_edge ], [ %..i308, %if.end11.i309 ]
  %cmp137 = icmp sgt i32 %retval.0.i310, 0
  br i1 %cmp137, label %keys_cmp.exit311.cleanup_crit_edge, label %keys_cmp.exit311.while.cond108_crit_edge

keys_cmp.exit311.while.cond108_crit_edge:         ; preds = %keys_cmp.exit311
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond108

keys_cmp.exit311.cleanup_crit_edge:               ; preds = %keys_cmp.exit311
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %keys_cmp.exit311.cleanup_crit_edge, %if.end.i302.cleanup_crit_edge, %if.else.i296, %if.then130.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %right_znode.exit.cleanup_crit_edge, %while.cond.i273.cleanup_crit_edge, %if.else.i264, %if.then97.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.else.i223, %if.then68.cleanup_crit_edge, %get_znode.exit.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %left_znode.exit.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.then8.cleanup_crit_edge ], [ %znode.0, %land.lhs.true.cleanup_crit_edge ], [ null, %if.end22.cleanup_crit_edge ], [ null, %if.end70.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.cleanup_crit_edge ], [ %call.i222, %if.else.i223 ], [ %45, %if.then68.cleanup_crit_edge ], [ %call.i263, %if.else.i264 ], [ %76, %if.then97.cleanup_crit_edge ], [ %call.i295, %if.else.i296 ], [ %115, %if.then130.cleanup_crit_edge ], [ null, %while.cond.i273.cleanup_crit_edge ], [ null, %if.end.i302.cleanup_crit_edge ], [ null, %right_znode.exit.cleanup_crit_edge ], [ null, %keys_cmp.exit311.cleanup_crit_edge ], [ %retval.2.i291, %if.end116.cleanup_crit_edge ], [ %retval.2.i258, %if.end82.cleanup_crit_edge ], [ null, %while.cond.i.cleanup_crit_edge ], [ %znode.addr.0.i217, %get_znode.exit.cleanup_crit_edge ], [ %retval.2.i, %if.end33.cleanup_crit_edge ], [ null, %left_znode.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_tnc_has_node(ptr noundef %c, ptr noundef %key, i32 noundef %level, i32 noundef %lnum, i32 noundef %offs, i32 noundef %is_idx) local_unnamed_addr #0 align 64 {
entry:
  %znode.i = alloca ptr, align 4
  %n.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_idx)
  %tobool.not = icmp eq i32 %is_idx, 0
  br i1 %tobool.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc ptr @lookup_znode(ptr noundef %c, ptr noundef %key, i32 noundef %level, i32 noundef %lnum, i32 noundef %offs) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.out_unlock_crit_edge, label %if.end.i

if.then.out_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end.i:                                         ; preds = %if.then
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %is_idx_node_in_tnc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %1, 1
  %2 = xor i32 %and1.i.i.i, 1
  br label %out_unlock

is_idx_node_in_tnc.exit:                          ; preds = %if.end.i
  %3 = ptrtoint ptr %call.i to i32
  %cmp = icmp slt ptr %call.i, null
  br i1 %cmp, label %is_idx_node_in_tnc.exit.out_unlock_crit_edge, label %if.end

is_idx_node_in_tnc.exit.out_unlock_crit_edge:     ; preds = %is_idx_node_in_tnc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end:                                           ; preds = %is_idx_node_in_tnc.exit
  %4 = icmp ult ptr %call.i, inttoptr (i32 3 to ptr)
  br i1 %4, label %switch.lookup, label %do.body11

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/tnc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3420, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

if.else20:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode.i) #12
  %5 = ptrtoint ptr %znode.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode.i, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #12
  %6 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %n.i, align 4, !annotation !232
  %arrayidx.i.i.i = getelementptr [2 x i32], ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i, align 4
  %9 = and i32 %8, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %9)
  %10 = icmp ne i32 %9, 1073741824
  %call1.i = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef %key, ptr noundef nonnull %znode.i, ptr noundef nonnull %n.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.else20.is_leaf_node_in_tnc.exit_crit_edge, label %if.end.i34

if.else20.is_leaf_node_in_tnc.exit_crit_edge:     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

if.end.i34:                                       ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i34.is_leaf_node_in_tnc.exit_crit_edge, label %if.end4.i35

if.end.i34.is_leaf_node_in_tnc.exit_crit_edge:    ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

if.end4.i35:                                      ; preds = %if.end.i34
  %11 = ptrtoint ptr %znode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %znode.i, align 4
  %13 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n.i, align 4
  %lnum5.i = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %14, i32 2
  %15 = ptrtoint ptr %lnum5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lnum5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %lnum)
  %cmp6.i = icmp eq i32 %16, %lnum
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end4.i35
  %offs7.i = getelementptr %struct.ubifs_znode, ptr %12, i32 0, i32 13, i32 %14, i32 3
  %17 = ptrtoint ptr %offs7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offs7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %offs)
  %cmp8.i = icmp eq i32 %18, %offs
  %brmerge.i = select i1 %cmp8.i, i1 true, i1 %10
  %.mux.i = zext i1 %cmp8.i to i32
  br i1 %brmerge.i, label %land.lhs.true.i.is_leaf_node_in_tnc.exit_crit_edge, label %land.lhs.true.i.while.cond.i.preheader_crit_edge

land.lhs.true.i.while.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.preheader

land.lhs.true.i.is_leaf_node_in_tnc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

if.end10.i:                                       ; preds = %if.end4.i35
  br i1 %10, label %if.end10.i.is_leaf_node_in_tnc.exit_crit_edge, label %if.end10.i.while.cond.i.preheader_crit_edge

if.end10.i.while.cond.i.preheader_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.preheader

if.end10.i.is_leaf_node_in_tnc.exit_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

while.cond.i.preheader:                           ; preds = %if.end10.i.while.cond.i.preheader_crit_edge, %land.lhs.true.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.i.preheader
  %19 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i36 = icmp sgt i32 %20, 0
  br i1 %cmp.i.i36, label %if.then.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %while.cond.i
  %21 = ptrtoint ptr %znode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %znode.i, align 4
  br label %while.cond.i.i

if.then.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add nsw i32 %20, -1
  %23 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i.i, ptr %n.i, align 4
  br label %if.end20.i

while.cond.i.i:                                   ; preds = %if.end2.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %znode.0.i.i = phi ptr [ %25, %if.end2.i.i.while.cond.i.i_crit_edge ], [ %22, %while.cond.preheader.i.i ]
  %24 = ptrtoint ptr %znode.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %znode.0.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.while.end.i_crit_edge, label %if.end2.i.i

while.cond.i.i.while.end.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end2.i.i:                                      ; preds = %while.cond.i.i
  %iip.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %iip.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iip.i.i, align 8
  %sub3.i.i = add i32 %27, -1
  %cmp4.i.i = icmp sgt i32 %sub3.i.i, -1
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end2.i.i.while.cond.i.i_crit_edge

if.end2.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  %28 = getelementptr %struct.ubifs_znode, ptr %25, i32 0, i32 13, i32 %sub3.i.i, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.get_znode.exit.i.i_crit_edge

if.then5.i.i.get_znode.exit.i.i_crit_edge:        ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i94.i = getelementptr %struct.ubifs_znode, ptr %25, i32 0, i32 13, i32 %sub3.i.i
  %call.i.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i94.i, ptr noundef nonnull %25, i32 noundef %sub3.i.i) #12
  br label %get_znode.exit.i.i

get_znode.exit.i.i:                               ; preds = %if.else.i.i.i, %if.then5.i.i.get_znode.exit.i.i_crit_edge
  %znode.addr.0.i.i.i = phi ptr [ %call.i.i.i, %if.else.i.i.i ], [ %30, %if.then5.i.i.get_znode.exit.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %znode.addr.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %get_znode.exit.i.i.tnc_prev.exit.i_crit_edge, label %get_znode.exit.i.i.while.cond10.i.i_crit_edge

get_znode.exit.i.i.while.cond10.i.i_crit_edge:    ; preds = %get_znode.exit.i.i
  br label %while.cond10.i.i

get_znode.exit.i.i.tnc_prev.exit.i_crit_edge:     ; preds = %get_znode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_prev.exit.i

while.cond10.i.i:                                 ; preds = %get_znode.exit52.i.i.while.cond10.i.i_crit_edge, %get_znode.exit.i.i.while.cond10.i.i_crit_edge
  %znode.1.i.i = phi ptr [ %znode.addr.0.i51.i.i, %get_znode.exit52.i.i.while.cond10.i.i_crit_edge ], [ %znode.addr.0.i.i.i, %get_znode.exit.i.i.while.cond10.i.i_crit_edge ]
  %level.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp11.not.i.i = icmp eq i32 %32, 0
  %child_cnt19.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %child_cnt19.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %child_cnt19.i.i, align 4
  %sub20.i.i = add i32 %34, -1
  br i1 %cmp11.not.i.i, label %while.end22.i.i, label %while.body12.i.i

while.body12.i.i:                                 ; preds = %while.cond10.i.i
  %35 = getelementptr %struct.ubifs_znode, ptr %znode.1.i.i, i32 0, i32 13, i32 %sub20.i.i, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %tobool.not.i47.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i47.i.i, label %if.else.i50.i.i, label %while.body12.i.i.get_znode.exit52.i.i_crit_edge

while.body12.i.i.get_znode.exit52.i.i_crit_edge:  ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit52.i.i

if.else.i50.i.i:                                  ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i48.i.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i.i, i32 0, i32 13, i32 %sub20.i.i
  %call.i49.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i48.i.i, ptr noundef %znode.1.i.i, i32 noundef %sub20.i.i) #12
  br label %get_znode.exit52.i.i

get_znode.exit52.i.i:                             ; preds = %if.else.i50.i.i, %while.body12.i.i.get_znode.exit52.i.i_crit_edge
  %znode.addr.0.i51.i.i = phi ptr [ %call.i49.i.i, %if.else.i50.i.i ], [ %37, %while.body12.i.i.get_znode.exit52.i.i_crit_edge ]
  %cmp.i53.i.i = icmp ugt ptr %znode.addr.0.i51.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53.i.i, label %get_znode.exit52.i.i.tnc_prev.exit.i_crit_edge, label %get_znode.exit52.i.i.while.cond10.i.i_crit_edge

get_znode.exit52.i.i.while.cond10.i.i_crit_edge:  ; preds = %get_znode.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond10.i.i

get_znode.exit52.i.i.tnc_prev.exit.i_crit_edge:   ; preds = %get_znode.exit52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_prev.exit.i

while.end22.i.i:                                  ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %znode.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %znode.1.i.i, ptr %znode.i, align 4
  %39 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub20.i.i, ptr %n.i, align 4
  br label %if.end20.i

tnc_prev.exit.i:                                  ; preds = %get_znode.exit52.i.i.tnc_prev.exit.i_crit_edge, %get_znode.exit.i.i.tnc_prev.exit.i_crit_edge
  %retval.2.i.in.i = phi ptr [ %znode.addr.0.i.i.i, %get_znode.exit.i.i.tnc_prev.exit.i_crit_edge ], [ %znode.addr.0.i51.i.i, %get_znode.exit52.i.i.tnc_prev.exit.i_crit_edge ]
  %retval.2.i.i = ptrtoint ptr %retval.2.i.in.i to i32
  %40 = zext i32 %retval.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %retval.2.i.i, label %is_leaf_node_in_tnc.exit.loopexit62.split.loop.exit [
    i32 -2, label %tnc_prev.exit.i.while.end.i_crit_edge
    i32 0, label %tnc_prev.exit.i.if.end20.i_crit_edge
  ]

tnc_prev.exit.i.if.end20.i_crit_edge:             ; preds = %tnc_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

tnc_prev.exit.i.while.end.i_crit_edge:            ; preds = %tnc_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end20.i:                                       ; preds = %tnc_prev.exit.i.if.end20.i_crit_edge, %while.end22.i.i, %if.then.i.i
  %41 = ptrtoint ptr %znode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %znode.i, align 4
  %43 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n.i, align 4
  %arrayidx22.i = getelementptr %struct.ubifs_znode, ptr %42, i32 0, i32 13, i32 %44
  %45 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %key, align 8
  %47 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx22.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %.not.i = icmp eq i32 %46, %48
  br i1 %.not.i, label %if.end6.i.i, label %if.end20.i.while.end.i_crit_edge

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end6.i.i:                                      ; preds = %if.end20.i
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx8.i.i = getelementptr [2 x i32], ptr %arrayidx22.i, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %.not152.i = icmp eq i32 %50, %52
  br i1 %.not152.i, label %if.end27.i, label %if.end6.i.i.while.end.i_crit_edge

if.end6.i.i.while.end.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end27.i:                                       ; preds = %if.end6.i.i
  %lnum30.i = getelementptr %struct.ubifs_znode, ptr %42, i32 0, i32 13, i32 %44, i32 2
  %53 = ptrtoint ptr %lnum30.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lnum30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %lnum)
  %cmp31.i = icmp eq i32 %54, %lnum
  br i1 %cmp31.i, label %land.lhs.true32.i, label %if.end27.i.while.cond.i.backedge_crit_edge

if.end27.i.while.cond.i.backedge_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.backedge

land.lhs.true32.i:                                ; preds = %if.end27.i
  %offs33.i = getelementptr %struct.ubifs_znode, ptr %42, i32 0, i32 13, i32 %44, i32 3
  %55 = ptrtoint ptr %offs33.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offs33.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %offs)
  %cmp34.i = icmp eq i32 %56, %offs
  br i1 %cmp34.i, label %land.lhs.true32.i.is_leaf_node_in_tnc.exit_crit_edge, label %land.lhs.true32.i.while.cond.i.backedge_crit_edge

land.lhs.true32.i.while.cond.i.backedge_crit_edge: ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.backedge

land.lhs.true32.i.is_leaf_node_in_tnc.exit_crit_edge: ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

while.cond.i.backedge:                            ; preds = %land.lhs.true32.i.while.cond.i.backedge_crit_edge, %if.end27.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end6.i.i.while.end.i_crit_edge, %if.end20.i.while.end.i_crit_edge, %tnc_prev.exit.i.while.end.i_crit_edge, %while.cond.i.i.while.end.i_crit_edge
  %57 = ptrtoint ptr %znode.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %12, ptr %znode.i, align 4
  %58 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %14, ptr %n.i, align 4
  br label %while.cond37.i

while.cond37.i:                                   ; preds = %while.cond37.i.backedge, %while.end.i
  %59 = ptrtoint ptr %znode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %znode.i, align 4
  %61 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n.i, align 4
  %add.i.i = add i32 %62, 1
  %child_cnt.i97.i = getelementptr inbounds %struct.ubifs_znode, ptr %60, i32 0, i32 7
  %63 = ptrtoint ptr %child_cnt.i97.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %child_cnt.i97.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %64)
  %cmp.i98.i = icmp slt i32 %add.i.i, %64
  br i1 %cmp.i98.i, label %if.then.i99.i, label %while.cond37.i.while.cond.i102.i_crit_edge

while.cond37.i.while.cond.i102.i_crit_edge:       ; preds = %while.cond37.i
  br label %while.cond.i102.i

if.then.i99.i:                                    ; preds = %while.cond37.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i.i, ptr %n.i, align 4
  br label %if.end45.i

while.cond.i102.i:                                ; preds = %if.end2.i104.i.while.cond.i102.i_crit_edge, %while.cond37.i.while.cond.i102.i_crit_edge
  %znode.0.i100.i = phi ptr [ %67, %if.end2.i104.i.while.cond.i102.i_crit_edge ], [ %60, %while.cond37.i.while.cond.i102.i_crit_edge ]
  %66 = ptrtoint ptr %znode.0.i100.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %znode.0.i100.i, align 8
  %tobool.not.i101.i = icmp eq ptr %67, null
  br i1 %tobool.not.i101.i, label %while.cond.i102.i.is_leaf_node_in_tnc.exit_crit_edge, label %if.end2.i104.i

while.cond.i102.i.is_leaf_node_in_tnc.exit_crit_edge: ; preds = %while.cond.i102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

if.end2.i104.i:                                   ; preds = %while.cond.i102.i
  %iip.i103.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i100.i, i32 0, i32 8
  %68 = ptrtoint ptr %iip.i103.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iip.i103.i, align 8
  %add3.i.i = add i32 %69, 1
  %child_cnt4.i.i = getelementptr inbounds %struct.ubifs_znode, ptr %67, i32 0, i32 7
  %70 = ptrtoint ptr %child_cnt4.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %child_cnt4.i.i, align 4
  %cmp5.i.i = icmp slt i32 %add3.i.i, %71
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end2.i104.i.while.cond.i102.i_crit_edge

if.end2.i104.i.while.cond.i102.i_crit_edge:       ; preds = %if.end2.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i102.i

if.then6.i.i:                                     ; preds = %if.end2.i104.i
  %72 = getelementptr %struct.ubifs_znode, ptr %67, i32 0, i32 13, i32 %add3.i.i, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %tobool.not.i.i105.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i105.i, label %if.else.i.i108.i, label %if.then6.i.i.get_znode.exit.i111.i_crit_edge

if.then6.i.i.get_znode.exit.i111.i_crit_edge:     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i111.i

if.else.i.i108.i:                                 ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i106.i = getelementptr %struct.ubifs_znode, ptr %67, i32 0, i32 13, i32 %add3.i.i
  %call.i.i107.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i106.i, ptr noundef nonnull %67, i32 noundef %add3.i.i) #12
  br label %get_znode.exit.i111.i

get_znode.exit.i111.i:                            ; preds = %if.else.i.i108.i, %if.then6.i.i.get_znode.exit.i111.i_crit_edge
  %znode.addr.0.i.i109.i = phi ptr [ %call.i.i107.i, %if.else.i.i108.i ], [ %74, %if.then6.i.i.get_znode.exit.i111.i_crit_edge ]
  %cmp.i.i110.i = icmp ugt ptr %znode.addr.0.i.i109.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i110.i, label %get_znode.exit.i111.i.tnc_next.exit.i_crit_edge, label %get_znode.exit.i111.i.while.cond11.i.i_crit_edge

get_znode.exit.i111.i.while.cond11.i.i_crit_edge: ; preds = %get_znode.exit.i111.i
  br label %while.cond11.i.i

get_znode.exit.i111.i.tnc_next.exit.i_crit_edge:  ; preds = %get_znode.exit.i111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit.i

while.cond11.i.i:                                 ; preds = %get_znode.exit49.i.i.while.cond11.i.i_crit_edge, %get_znode.exit.i111.i.while.cond11.i.i_crit_edge
  %znode.1.i112.i = phi ptr [ %znode.addr.0.i48.i.i, %get_znode.exit49.i.i.while.cond11.i.i_crit_edge ], [ %znode.addr.0.i.i109.i, %get_znode.exit.i111.i.while.cond11.i.i_crit_edge ]
  %level.i113.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i112.i, i32 0, i32 6
  %75 = ptrtoint ptr %level.i113.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %level.i113.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp12.not.i.i = icmp eq i32 %76, 0
  br i1 %cmp12.not.i.i, label %while.end20.i.i, label %while.body13.i.i

while.body13.i.i:                                 ; preds = %while.cond11.i.i
  %77 = getelementptr %struct.ubifs_znode, ptr %znode.1.i112.i, i32 0, i32 13, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %tobool.not.i44.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i44.i.i, label %if.else.i47.i.i, label %while.body13.i.i.get_znode.exit49.i.i_crit_edge

while.body13.i.i.get_znode.exit49.i.i_crit_edge:  ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i.i

if.else.i47.i.i:                                  ; preds = %while.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i112.i, i32 0, i32 13, i32 0
  %call.i46.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i.i, ptr noundef %znode.1.i112.i, i32 noundef 0) #12
  br label %get_znode.exit49.i.i

get_znode.exit49.i.i:                             ; preds = %if.else.i47.i.i, %while.body13.i.i.get_znode.exit49.i.i_crit_edge
  %znode.addr.0.i48.i.i = phi ptr [ %call.i46.i.i, %if.else.i47.i.i ], [ %79, %while.body13.i.i.get_znode.exit49.i.i_crit_edge ]
  %cmp.i50.i.i = icmp ugt ptr %znode.addr.0.i48.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i.i, label %get_znode.exit49.i.i.tnc_next.exit.i_crit_edge, label %get_znode.exit49.i.i.while.cond11.i.i_crit_edge

get_znode.exit49.i.i.while.cond11.i.i_crit_edge:  ; preds = %get_znode.exit49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i.i

get_znode.exit49.i.i.tnc_next.exit.i_crit_edge:   ; preds = %get_znode.exit49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit.i

while.end20.i.i:                                  ; preds = %while.cond11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %znode.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %znode.1.i112.i, ptr %znode.i, align 4
  %81 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %n.i, align 4
  br label %if.end45.i

tnc_next.exit.i:                                  ; preds = %get_znode.exit49.i.i.tnc_next.exit.i_crit_edge, %get_znode.exit.i111.i.tnc_next.exit.i_crit_edge
  %retval.2.i115.in.i = phi ptr [ %znode.addr.0.i.i109.i, %get_znode.exit.i111.i.tnc_next.exit.i_crit_edge ], [ %znode.addr.0.i48.i.i, %get_znode.exit49.i.i.tnc_next.exit.i_crit_edge ]
  %retval.2.i115.i = ptrtoint ptr %retval.2.i115.in.i to i32
  %82 = zext i32 %retval.2.i115.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %retval.2.i115.i, label %is_leaf_node_in_tnc.exit.loopexit61 [
    i32 0, label %tnc_next.exit.i.if.end45.i_crit_edge
    i32 -2, label %tnc_next.exit.i.is_leaf_node_in_tnc.exit_crit_edge
  ]

tnc_next.exit.i.is_leaf_node_in_tnc.exit_crit_edge: ; preds = %tnc_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

tnc_next.exit.i.if.end45.i_crit_edge:             ; preds = %tnc_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.end45.i:                                       ; preds = %tnc_next.exit.i.if.end45.i_crit_edge, %while.end20.i.i, %if.then.i99.i
  %83 = ptrtoint ptr %znode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %znode.i, align 4
  %85 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n.i, align 4
  %arrayidx47.i = getelementptr %struct.ubifs_znode, ptr %84, i32 0, i32 13, i32 %86
  %87 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %key, align 8
  %89 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx47.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %.not139.i = icmp eq i32 %88, %90
  br i1 %.not139.i, label %if.end6.i122.i, label %if.end45.i.is_leaf_node_in_tnc.exit_crit_edge

if.end45.i.is_leaf_node_in_tnc.exit_crit_edge:    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

if.end6.i122.i:                                   ; preds = %if.end45.i
  %91 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx8.i120.i = getelementptr [2 x i32], ptr %arrayidx47.i, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx8.i120.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx8.i120.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %.not151.i = icmp eq i32 %92, %94
  br i1 %.not151.i, label %if.end52.i, label %if.end6.i122.i.is_leaf_node_in_tnc.exit_crit_edge

if.end6.i122.i.is_leaf_node_in_tnc.exit_crit_edge: ; preds = %if.end6.i122.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

if.end52.i:                                       ; preds = %if.end6.i122.i
  %lnum55.i = getelementptr %struct.ubifs_znode, ptr %84, i32 0, i32 13, i32 %86, i32 2
  %95 = ptrtoint ptr %lnum55.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lnum55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %lnum)
  %cmp56.i = icmp eq i32 %96, %lnum
  br i1 %cmp56.i, label %land.lhs.true57.i, label %if.end52.i.while.cond37.i.backedge_crit_edge

if.end52.i.while.cond37.i.backedge_crit_edge:     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond37.i.backedge

land.lhs.true57.i:                                ; preds = %if.end52.i
  %offs58.i = getelementptr %struct.ubifs_znode, ptr %84, i32 0, i32 13, i32 %86, i32 3
  %97 = ptrtoint ptr %offs58.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offs58.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %offs)
  %cmp59.i = icmp eq i32 %98, %offs
  br i1 %cmp59.i, label %land.lhs.true57.i.is_leaf_node_in_tnc.exit_crit_edge, label %land.lhs.true57.i.while.cond37.i.backedge_crit_edge

land.lhs.true57.i.while.cond37.i.backedge_crit_edge: ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond37.i.backedge

land.lhs.true57.i.is_leaf_node_in_tnc.exit_crit_edge: ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_leaf_node_in_tnc.exit

while.cond37.i.backedge:                          ; preds = %land.lhs.true57.i.while.cond37.i.backedge_crit_edge, %if.end52.i.while.cond37.i.backedge_crit_edge
  br label %while.cond37.i

is_leaf_node_in_tnc.exit.loopexit61:              ; preds = %tnc_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %retval.2.i115.i.le = ptrtoint ptr %retval.2.i115.in.i to i32
  br label %is_leaf_node_in_tnc.exit

is_leaf_node_in_tnc.exit.loopexit62.split.loop.exit: ; preds = %tnc_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %retval.2.i.i.le = ptrtoint ptr %retval.2.i.in.i to i32
  br label %is_leaf_node_in_tnc.exit

is_leaf_node_in_tnc.exit:                         ; preds = %is_leaf_node_in_tnc.exit.loopexit62.split.loop.exit, %is_leaf_node_in_tnc.exit.loopexit61, %land.lhs.true57.i.is_leaf_node_in_tnc.exit_crit_edge, %if.end6.i122.i.is_leaf_node_in_tnc.exit_crit_edge, %if.end45.i.is_leaf_node_in_tnc.exit_crit_edge, %tnc_next.exit.i.is_leaf_node_in_tnc.exit_crit_edge, %while.cond.i102.i.is_leaf_node_in_tnc.exit_crit_edge, %land.lhs.true32.i.is_leaf_node_in_tnc.exit_crit_edge, %if.end10.i.is_leaf_node_in_tnc.exit_crit_edge, %land.lhs.true.i.is_leaf_node_in_tnc.exit_crit_edge, %if.end.i34.is_leaf_node_in_tnc.exit_crit_edge, %if.else20.is_leaf_node_in_tnc.exit_crit_edge
  %retval.0.i37 = phi i32 [ %call1.i, %if.else20.is_leaf_node_in_tnc.exit_crit_edge ], [ 0, %if.end.i34.is_leaf_node_in_tnc.exit_crit_edge ], [ %.mux.i, %land.lhs.true.i.is_leaf_node_in_tnc.exit_crit_edge ], [ 0, %if.end10.i.is_leaf_node_in_tnc.exit_crit_edge ], [ %retval.2.i115.i.le, %is_leaf_node_in_tnc.exit.loopexit61 ], [ %retval.2.i.i.le, %is_leaf_node_in_tnc.exit.loopexit62.split.loop.exit ], [ 0, %while.cond.i102.i.is_leaf_node_in_tnc.exit_crit_edge ], [ 0, %tnc_next.exit.i.is_leaf_node_in_tnc.exit_crit_edge ], [ 1, %land.lhs.true57.i.is_leaf_node_in_tnc.exit_crit_edge ], [ 0, %if.end45.i.is_leaf_node_in_tnc.exit_crit_edge ], [ 0, %if.end6.i122.i.is_leaf_node_in_tnc.exit_crit_edge ], [ 1, %land.lhs.true32.i.is_leaf_node_in_tnc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode.i) #12
  br label %out_unlock

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ubifs_tnc_has_node, i32 0, i32 %3
  %99 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %99)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %switch.lookup, %is_leaf_node_in_tnc.exit, %is_idx_node_in_tnc.exit.out_unlock_crit_edge, %if.end4.i, %if.then.out_unlock_crit_edge
  %err.0 = phi i32 [ %3, %is_idx_node_in_tnc.exit.out_unlock_crit_edge ], [ %retval.0.i37, %is_leaf_node_in_tnc.exit ], [ 0, %if.then.out_unlock_crit_edge ], [ %switch.load, %switch.lookup ], [ %2, %if.end4.i ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_dirty_idx_node(ptr noundef %c, ptr noundef %key, i32 noundef %level, i32 noundef %lnum, i32 noundef %offs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %call = tail call fastcc ptr @lookup_znode(ptr noundef %c, ptr noundef %key, i32 noundef %level, i32 noundef %lnum, i32 noundef %offs)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc ptr @dirty_cow_bottom_up(ptr noundef %c, ptr noundef nonnull %call)
  %cmp.i19 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call5 to i32
  %spec.select = select i1 %cmp.i19, i32 %1, i32 0
  br label %out_unlock

out_unlock:                                       ; preds = %if.end4, %if.then2, %entry.out_unlock_crit_edge
  %err.0 = phi i32 [ %0, %if.then2 ], [ 0, %entry.out_unlock_crit_edge ], [ %spec.select, %if.end4 ]
  tail call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dbg_check_inode_size(ptr noundef %c, ptr noundef %inode, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %from_key = alloca %union.ubifs_key, align 8
  %znode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %from_key) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %znode) #12
  %1 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %znode, align 4, !annotation !232
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ubifs_dbg to i32))
  %bf.load.i = load i8, ptr @ubifs_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %dbg_is_chk_gen.exit, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

dbg_is_chk_gen.exit:                              ; preds = %if.end
  %dbg.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 194
  %5 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dbg.i, align 4
  %chk_gen.i = getelementptr inbounds %struct.ubifs_debug_info, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %chk_gen.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load1.i = load i8, ptr %chk_gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool.not = icmp sgt i8 %bf.load1.i, -1
  br i1 %tobool.not, label %dbg_is_chk_gen.exit.cleanup_crit_edge, label %dbg_is_chk_gen.exit.if.end3_crit_edge

dbg_is_chk_gen.exit.if.end3_crit_edge:            ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

dbg_is_chk_gen.exit.cleanup_crit_edge:            ; preds = %dbg_is_chk_gen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %dbg_is_chk_gen.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %sub = add i64 %size, 4095
  %8 = lshr i64 %sub, 12
  %conv4 = trunc i64 %8 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %conv4)
  %tobool.not.i70 = icmp ult i32 %conv4, 536870912
  br i1 %tobool.not.i70, label %if.end3.data_key_init.exit_crit_edge, label %if.then.i, !prof !235

if.end3.data_key_init.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %data_key_init.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 270) #12
  br label %data_key_init.exit

data_key_init.exit:                               ; preds = %if.then.i, %if.end3.data_key_init.exit_crit_edge
  %11 = ptrtoint ptr %from_key to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %from_key, align 8
  %or.i = or i32 %conv4, 536870912
  %arrayidx5.i = getelementptr inbounds [2 x i32], ptr %from_key, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %arrayidx5.i, align 4
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %tnc_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %tnc_mutex, i32 noundef 0) #12
  %call6 = call i32 @ubifs_lookup_level0(ptr noundef %c, ptr noundef nonnull %from_key, ptr noundef nonnull %znode, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %data_key_init.exit.out_unlock_crit_edge, label %if.end10

data_key_init.exit.out_unlock_crit_edge:          ; preds = %data_key_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end10:                                         ; preds = %data_key_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool11.not = icmp eq i32 %call6, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.out_dump_crit_edge

if.end10.out_dump_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dump

if.end13:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %znode, align 4
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  %add.i = add i32 %18, 1
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %20)
  %cmp.i = icmp slt i32 %add.i, %20
  br i1 %cmp.i, label %if.then.i71, label %if.end13.while.cond.i_crit_edge

if.end13.while.cond.i_crit_edge:                  ; preds = %if.end13
  br label %while.cond.i

if.then.i71:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %n, align 4
  br label %do.end

while.cond.i:                                     ; preds = %if.end2.i.while.cond.i_crit_edge, %if.end13.while.cond.i_crit_edge
  %znode.0.i = phi ptr [ %23, %if.end2.i.while.cond.i_crit_edge ], [ %16, %if.end13.while.cond.i_crit_edge ]
  %22 = ptrtoint ptr %znode.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %znode.0.i, align 8
  %tobool.not.i72 = icmp eq ptr %23, null
  br i1 %tobool.not.i72, label %while.cond.i.out_unlock_crit_edge, label %if.end2.i

while.cond.i.out_unlock_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end2.i:                                        ; preds = %while.cond.i
  %iip.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.0.i, i32 0, i32 8
  %24 = ptrtoint ptr %iip.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iip.i, align 8
  %add3.i = add i32 %25, 1
  %child_cnt4.i = getelementptr inbounds %struct.ubifs_znode, ptr %23, i32 0, i32 7
  %26 = ptrtoint ptr %child_cnt4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %child_cnt4.i, align 4
  %cmp5.i = icmp slt i32 %add3.i, %27
  br i1 %cmp5.i, label %if.then6.i, label %if.end2.i.while.cond.i_crit_edge

if.end2.i.while.cond.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end2.i
  %28 = getelementptr %struct.ubifs_znode, ptr %23, i32 0, i32 13, i32 %add3.i, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then6.i.get_znode.exit.i_crit_edge

if.then6.i.get_znode.exit.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.ubifs_znode, ptr %23, i32 0, i32 13, i32 %add3.i
  %call.i.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i.i, ptr noundef nonnull %23, i32 noundef %add3.i) #12
  br label %get_znode.exit.i

get_znode.exit.i:                                 ; preds = %if.else.i.i, %if.then6.i.get_znode.exit.i_crit_edge
  %znode.addr.0.i.i = phi ptr [ %call.i.i, %if.else.i.i ], [ %30, %if.then6.i.get_znode.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %znode.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_znode.exit.i.tnc_next.exit_crit_edge, label %get_znode.exit.i.while.cond11.i_crit_edge

get_znode.exit.i.while.cond11.i_crit_edge:        ; preds = %get_znode.exit.i
  br label %while.cond11.i

get_znode.exit.i.tnc_next.exit_crit_edge:         ; preds = %get_znode.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.cond11.i:                                   ; preds = %get_znode.exit49.i.while.cond11.i_crit_edge, %get_znode.exit.i.while.cond11.i_crit_edge
  %znode.1.i = phi ptr [ %znode.addr.0.i48.i, %get_znode.exit49.i.while.cond11.i_crit_edge ], [ %znode.addr.0.i.i, %get_znode.exit.i.while.cond11.i_crit_edge ]
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 6
  %31 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp12.not.i = icmp eq i32 %32, 0
  br i1 %cmp12.not.i, label %while.end20.i, label %while.body13.i

while.body13.i:                                   ; preds = %while.cond11.i
  %33 = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %tobool.not.i44.i = icmp eq ptr %35, null
  br i1 %tobool.not.i44.i, label %if.else.i47.i, label %while.body13.i.get_znode.exit49.i_crit_edge

while.body13.i.get_znode.exit49.i_crit_edge:      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_znode.exit49.i

if.else.i47.i:                                    ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i45.i = getelementptr %struct.ubifs_znode, ptr %znode.1.i, i32 0, i32 13, i32 0
  %call.i46.i = call ptr @ubifs_load_znode(ptr noundef %c, ptr noundef %arrayidx.i45.i, ptr noundef %znode.1.i, i32 noundef 0) #12
  br label %get_znode.exit49.i

get_znode.exit49.i:                               ; preds = %if.else.i47.i, %while.body13.i.get_znode.exit49.i_crit_edge
  %znode.addr.0.i48.i = phi ptr [ %call.i46.i, %if.else.i47.i ], [ %35, %while.body13.i.get_znode.exit49.i_crit_edge ]
  %cmp.i50.i = icmp ugt ptr %znode.addr.0.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %get_znode.exit49.i.tnc_next.exit_crit_edge, label %get_znode.exit49.i.while.cond11.i_crit_edge

get_znode.exit49.i.while.cond11.i_crit_edge:      ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.i

get_znode.exit49.i.tnc_next.exit_crit_edge:       ; preds = %get_znode.exit49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnc_next.exit

while.end20.i:                                    ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %znode to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %znode.1.i, ptr %znode, align 4
  %37 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %n, align 4
  br label %do.end

tnc_next.exit:                                    ; preds = %get_znode.exit49.i.tnc_next.exit_crit_edge, %get_znode.exit.i.tnc_next.exit_crit_edge
  %retval.2.i.in = phi ptr [ %znode.addr.0.i.i, %get_znode.exit.i.tnc_next.exit_crit_edge ], [ %znode.addr.0.i48.i, %get_znode.exit49.i.tnc_next.exit_crit_edge ]
  %retval.2.i = ptrtoint ptr %retval.2.i.in to i32
  %cmp15 = icmp eq ptr %retval.2.i.in, inttoptr (i32 -2 to ptr)
  br i1 %cmp15, label %tnc_next.exit.out_unlock_crit_edge, label %if.end18

tnc_next.exit.out_unlock_crit_edge:               ; preds = %tnc_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end18:                                         ; preds = %tnc_next.exit
  %cmp19 = icmp slt ptr %retval.2.i.in, null
  br i1 %cmp19, label %if.end18.out_unlock_crit_edge, label %if.then28

if.end18.out_unlock_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then28:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 3514) #12
  br label %do.end

do.end:                                           ; preds = %if.then28, %while.end20.i, %if.then.i71
  %retval.2.i778386 = phi i32 [ %retval.2.i, %if.then28 ], [ 0, %if.then.i71 ], [ 0, %while.end20.i ]
  %38 = ptrtoint ptr %znode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %znode, align 4
  %40 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n, align 4
  %arrayidx = getelementptr %struct.ubifs_znode, ptr %39, i32 0, i32 13, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 8
  %44 = ptrtoint ptr %from_key to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %from_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.i.i73 = icmp ult i32 %43, %45
  br i1 %cmp.i.i73, label %do.end.out_unlock_crit_edge, label %if.end.i.i

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp4.i.i = icmp ugt i32 %43, %45
  br i1 %cmp4.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end6.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %arrayidx7.i.i = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx7.i.i, align 4
  %48 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp9.i.i = icmp ult i32 %47, %49
  br i1 %cmp9.i.i, label %if.end6.i.i.out_unlock_crit_edge, label %if.end6.i.i.if.end.i_crit_edge

if.end6.i.i.if.end.i_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end6.i.i.out_unlock_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end.i:                                         ; preds = %if.end6.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %14)
  %cmp.i1.i = icmp ult i32 %43, %14
  br i1 %cmp.i1.i, label %if.end.i.out_dump_crit_edge, label %if.end.i3.i

if.end.i.out_dump_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dump

if.end.i3.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %14)
  %cmp4.i2.i = icmp ugt i32 %43, %14
  br i1 %cmp4.i2.i, label %if.end.i3.i.out_unlock_crit_edge, label %if.end6.i7.i

if.end.i3.i.out_unlock_crit_edge:                 ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end6.i7.i:                                     ; preds = %if.end.i3.i
  %arrayidx7.i4.i = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx7.i4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx7.i4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %51)
  %cmp14.i8.i = icmp ugt i32 %51, 1073741823
  br i1 %cmp14.i8.i, label %if.end6.i7.i.out_unlock_crit_edge, label %if.end6.i7.i.out_dump_crit_edge

if.end6.i7.i.out_dump_crit_edge:                  ; preds = %if.end6.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_dump

if.end6.i7.i.out_unlock_crit_edge:                ; preds = %if.end6.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

out_dump:                                         ; preds = %if.end6.i7.i.out_dump_crit_edge, %if.end.i.out_dump_crit_edge, %if.end10.out_dump_crit_edge
  %key.0 = phi ptr [ %from_key, %if.end10.out_dump_crit_edge ], [ %arrayidx, %if.end.i.out_dump_crit_edge ], [ %arrayidx, %if.end6.i7.i.out_dump_crit_edge ]
  %arrayidx.i = getelementptr [2 x i32], ptr %key.0, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %53, 536870911
  %54 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_ino, align 8
  %conv37 = zext i32 %and.i to i64
  %shl = shl nuw nsw i64 %conv37, 12
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.32, i32 noundef %55, i64 noundef %size, i64 noundef %shl) #12
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  call void @ubifs_dump_inode(ptr noundef %c, ptr noundef %inode) #12
  call void @dump_stack() #16
  br label %cleanup

out_unlock:                                       ; preds = %if.end6.i7.i.out_unlock_crit_edge, %if.end.i3.i.out_unlock_crit_edge, %if.end6.i.i.out_unlock_crit_edge, %do.end.out_unlock_crit_edge, %if.end18.out_unlock_crit_edge, %tnc_next.exit.out_unlock_crit_edge, %while.cond.i.out_unlock_crit_edge, %data_key_init.exit.out_unlock_crit_edge
  %err.0 = phi i32 [ %call6, %data_key_init.exit.out_unlock_crit_edge ], [ %retval.2.i, %if.end18.out_unlock_crit_edge ], [ 0, %tnc_next.exit.out_unlock_crit_edge ], [ %retval.2.i778386, %do.end.out_unlock_crit_edge ], [ %retval.2.i778386, %if.end6.i.i.out_unlock_crit_edge ], [ %retval.2.i778386, %if.end6.i7.i.out_unlock_crit_edge ], [ %retval.2.i778386, %if.end.i3.i.out_unlock_crit_edge ], [ 0, %while.cond.i.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %tnc_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %out_dump, %dbg_is_chk_gen.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %out_dump ], [ 0, %entry.cleanup_crit_edge ], [ 0, %dbg_is_chk_gen.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %znode) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %from_key) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_validate_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_read_node(ptr noundef %c, ptr noundef %buf, i32 noundef %type, ptr noundef %zbr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %lnum2 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %2 = ptrtoint ptr %lnum2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lnum2, align 4
  %offs3 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %4 = ptrtoint ptr %offs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offs3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_read_node.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_read_node, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !220) #12
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
  %call7 = tail call ptr @dbg_ntype(i32 noundef %type) #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_read_node.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.40, i32 noundef %11, i32 noundef %3, i32 noundef %5, ptr noundef %call7, i32 noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call i32 @ubifs_leb_read(ptr noundef %c, i32 noundef %3, ptr noundef %buf, i32 noundef %5, i32 noundef %1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.41, i32 noundef %type, i32 noundef %3, i32 noundef %5, i32 noundef %call8) #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 823660550, i32 %13)
  %cmp.not = icmp eq i32 %13, 823660550
  br i1 %cmp.not, label %if.end13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %node_type = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 4
  %14 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %node_type, align 1
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %type)
  %cmp14.not = icmp eq i32 %conv, %type
  br i1 %cmp14.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %len18 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 3
  %16 = ptrtoint ptr %len18 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %len18, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp19.not = icmp eq i32 %18, %1
  br i1 %cmp19.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp23.not = icmp eq i32 %type, 1
  br i1 %cmp23.not, label %lor.lhs.false, label %if.end22.if.then38_crit_edge

if.end22.if.then38_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.end22
  %no_chk_data_crc = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %19 = ptrtoint ptr %no_chk_data_crc to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %no_chk_data_crc, align 8
  %20 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool25.not = icmp eq i16 %20, 0
  br i1 %tobool25.not, label %lor.lhs.false.if.then38_crit_edge, label %lor.lhs.false26

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %mounting = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %21 = ptrtoint ptr %mounting to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load27 = load i8, ptr %mounting, align 4
  %22 = and i8 %bf.load27, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %lor.lhs.false26.if.end45_crit_edge, label %lor.lhs.false26.if.then38_crit_edge

lor.lhs.false26.if.then38_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

lor.lhs.false26.if.end45_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then38:                                        ; preds = %lor.lhs.false26.if.then38_crit_edge, %lor.lhs.false.if.then38_crit_edge, %if.end22.if.then38_crit_edge
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %sub = add i32 %1, -8
  %call39 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr, i32 noundef %sub) #19
  %crc40 = getelementptr inbounds %struct.ubifs_ch, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %crc40 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %crc40, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %call39, i32 %26)
  %cmp41.not = icmp eq i32 %call39, %26
  br i1 %cmp41.not, label %if.then38.if.end45_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end45:                                         ; preds = %if.then38.if.end45_crit_edge, %lor.lhs.false26.if.end45_crit_edge
  %hash = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 5
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %27 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %28 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i, label %if.end45.cleanup_crit_edge, label %ubifs_node_check_hash.exit

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ubifs_node_check_hash.exit:                       ; preds = %if.end45
  %call1.i = tail call i32 @__ubifs_node_check_hash(ptr noundef %c, ptr noundef %buf, ptr noundef %hash) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool47.not = icmp eq i32 %call1.i, 0
  br i1 %tobool47.not, label %ubifs_node_check_hash.exit.cleanup_crit_edge, label %if.then48

ubifs_node_check_hash.exit.cleanup_crit_edge:     ; preds = %ubifs_node_check_hash.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then48:                                        ; preds = %ubifs_node_check_hash.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_bad_hash(ptr noundef %c, ptr noundef %buf, ptr noundef %hash, i32 noundef %3, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %ubifs_node_check_hash.exit.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ 0, %if.then48 ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.then38.cleanup_crit_edge ], [ 1, %ubifs_node_check_hash.exit.cleanup_crit_edge ], [ 1, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbg_ntype(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_bad_hash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ubifs_node_check_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_check_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dirty_cow_znode(ptr noundef %c, ptr nocapture noundef %zbr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %flags.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %dirty_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty_zn_cnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %dirty_zn_cnt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_zn_cnt, ptr %dirty_zn_cnt, i32 1, ptr elementtype(i32) %dirty_zn_cnt) #12, !srcloc !237
  %clean_zn_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 84
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %clean_zn_cnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %clean_zn_cnt, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %clean_zn_cnt, ptr %clean_zn_cnt, i32 1, ptr elementtype(i32) %clean_zn_cnt) #12, !srcloc !240
  %call.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @ubifs_clean_zn_cnt, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt, ptr nonnull @ubifs_clean_zn_cnt, i32 1, ptr nonnull elementtype(i32) @ubifs_clean_zn_cnt) #12, !srcloc !240
  %lnum = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %9 = ptrtoint ptr %lnum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lnum, align 4
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %add.i = add i32 %12, 7
  %and.i = and i32 %add.i, -8
  %conv.i = sext i32 %and.i to i64
  %calc_idx_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 88
  %13 = ptrtoint ptr %calc_idx_sz.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %calc_idx_sz.i, align 8
  %sub.i = sub i64 %14, %conv.i
  store i64 %sub.i, ptr %calc_idx_sz.i, align 8
  %call.i.i79 = tail call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %10, i32 noundef -2147483647, i32 noundef %12, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool5.not = icmp eq i32 %call.i.i79, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.then8, !prof !235

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %15 = inttoptr i32 %call.i.i79 to ptr
  br label %cleanup

if.end11:                                         ; preds = %entry
  %max_znode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 94
  %16 = ptrtoint ptr %max_znode_sz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_znode_sz.i, align 8
  %call.i = tail call ptr @kmemdup(ptr noundef %2, i32 noundef %17, i32 noundef 3136) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %if.end.i, !prof !230

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %cnext.i = getelementptr inbounds %struct.ubifs_znode, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %cnext.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cnext.i, align 4
  %flags.i80 = getelementptr inbounds %struct.ubifs_znode, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i80, align 4
  %or.i.i = and i32 %20, -4
  %and.i.i = or i32 %or.i.i, 1
  store i32 %and.i.i, ptr %flags.i80, align 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not.i = icmp eq i32 %23, 0
  br i1 %tobool7.not.i, label %if.end.i.do.end.i_crit_edge, label %if.then18.i, !prof !235

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.2, i32 noundef 202) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then18.i, %if.end.i.do.end.i_crit_edge
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %or.i42.i = or i32 %25, 4
  store i32 %or.i42.i, ptr %flags.i, align 4
  %level.i = getelementptr inbounds %struct.ubifs_znode, ptr %2, i32 0, i32 6
  %26 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %do.end.i.copy_znode.exit_crit_edge, label %if.then21.i

do.end.i.copy_znode.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_znode.exit

if.then21.i:                                      ; preds = %do.end.i
  %child_cnt.i = getelementptr inbounds %struct.ubifs_znode, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %child_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %child_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2243.i = icmp sgt i32 %29, 0
  br i1 %cmp2243.i, label %if.then21.i.for.body.i_crit_edge, label %if.then21.i.copy_znode.exit_crit_edge

if.then21.i.copy_znode.exit_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_znode.exit

if.then21.i.for.body.i_crit_edge:                 ; preds = %if.then21.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %if.then21.i.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %if.end25.i.for.body.i_crit_edge ], [ 0, %if.then21.i.for.body.i_crit_edge ]
  %30 = getelementptr %struct.ubifs_znode, ptr %call.i, i32 0, i32 13, i32 %i.044.i, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %tobool23.not.i = icmp eq ptr %32, null
  br i1 %tobool23.not.i, label %for.body.i.if.end25.i_crit_edge, label %if.then24.i

for.body.i.if.end25.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %32, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %for.body.i.if.end25.i_crit_edge
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %if.end25.i.copy_znode.exit_crit_edge, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end25.i.copy_znode.exit_crit_edge:             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_znode.exit

copy_znode.exit:                                  ; preds = %if.end25.i.copy_znode.exit_crit_edge, %if.then21.i.copy_znode.exit_crit_edge, %do.end.i.copy_znode.exit_crit_edge
  %dirty_zn_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 83
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty_zn_cnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %dirty_zn_cnt.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_zn_cnt.i, ptr %dirty_zn_cnt.i, i32 1, ptr elementtype(i32) %dirty_zn_cnt.i) #12, !srcloc !237
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %copy_znode.exit.cleanup_crit_edge, label %if.end15

copy_znode.exit.cleanup_crit_edge:                ; preds = %copy_znode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %copy_znode.exit
  %len16 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %35 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool17.not = icmp eq i32 %36, 0
  br i1 %tobool17.not, label %if.end34.thread, label %if.then18

if.end34.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %0, align 8
  %lnum3590 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %38 = ptrtoint ptr %lnum3590 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %lnum3590, align 4
  %offs3691 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %39 = ptrtoint ptr %offs3691 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %offs3691, align 8
  %40 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %len16, align 4
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %lnum19 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 2
  %41 = ptrtoint ptr %lnum19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lnum19, align 4
  %offs = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 3
  %43 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offs, align 8
  %call20 = tail call fastcc i32 @insert_old_idx(ptr noundef %c, i32 noundef %42, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end34, label %if.then28, !prof !235

if.then28:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %45 = inttoptr i32 %call20 to ptr
  br label %cleanup

if.end34:                                         ; preds = %if.then18
  %46 = ptrtoint ptr %lnum19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lnum19, align 4
  %48 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len16, align 4
  %add.i81 = add i32 %49, 7
  %and.i82 = and i32 %add.i81, -8
  %conv.i83 = sext i32 %and.i82 to i64
  %calc_idx_sz.i84 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 88
  %50 = ptrtoint ptr %calc_idx_sz.i84 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %calc_idx_sz.i84, align 8
  %sub.i85 = sub i64 %51, %conv.i83
  store i64 %sub.i85, ptr %calc_idx_sz.i84, align 8
  %call.i.i86 = tail call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %47, i32 noundef -2147483647, i32 noundef %49, i32 noundef 0, i32 noundef 0) #12
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %0, align 8
  %53 = ptrtoint ptr %lnum19 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %lnum19, align 4
  %54 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %offs, align 8
  %55 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %tobool38.not = icmp eq i32 %call.i.i86, 0
  br i1 %tobool38.not, label %if.end34.cleanup_crit_edge, label %if.then45, !prof !235

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %56 = inttoptr i32 %call.i.i86 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end34.cleanup_crit_edge, %if.then28, %if.end34.thread, %copy_znode.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %45, %if.then28 ], [ %56, %if.then45 ], [ %15, %if.then8 ], [ %2, %if.then3.cleanup_crit_edge ], [ %2, %if.then.cleanup_crit_edge ], [ %call.i, %copy_znode.exit.cleanup_crit_edge ], [ %call.i, %if.end34.cleanup_crit_edge ], [ %call.i, %if.end34.thread ], [ inttoptr (i32 -12 to ptr), %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fallible_matches_name(ptr noundef %c, ptr noundef %zbr, ptr nocapture noundef readonly %nm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3136) #18
  %tobool1.not = icmp eq ptr %call9.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call fastcc i32 @fallible_read_node(ptr noundef %c, ptr noundef %zbr, ptr noundef %zbr, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.out_free_crit_edge, label %if.end5

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end5:                                          ; preds = %if.end
  %5 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call3, label %if.then13 [
    i32 0, label %if.end5.out_free_crit_edge
    i32 1, label %if.end5.do.end_crit_edge
  ], !prof !239

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end5.out_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.2, i32 noundef 838) #12
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end5.do.end_crit_edge
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.do.body5.i_crit_edge, label %if.then.i77, !prof !235

do.end.do.body5.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

if.then.i77:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 346) #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i77, %do.end.do.body5.i_crit_edge
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.then14.i, label %do.body5.i.do.end17.i_crit_edge, !prof !230

do.body5.i.do.end17.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i

if.then14.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 347) #12
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then14.i, %do.body5.i.do.end17.i_crit_edge
  %call.i = tail call i32 @ubifs_validate_entry(ptr noundef %c, ptr noundef nonnull %call9.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool18.not.i, label %lnc_add_directly.exit.thread, label %lnc_add_directly.exit

lnc_add_directly.exit.thread:                     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %0, align 8
  br label %if.end19

lnc_add_directly.exit:                            ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_stack() #16
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %call9.i, i32 noundef %12) #12
  br label %out_free

if.end19:                                         ; preds = %lnc_add_directly.exit.thread, %entry.if.end19_crit_edge
  %dent.0 = phi ptr [ %2, %entry.if.end19_crit_edge ], [ %call9.i, %lnc_add_directly.exit.thread ]
  %nlen20 = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.0, i32 0, i32 5
  %13 = ptrtoint ptr %nlen20 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %nlen20, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.0, i32 0, i32 7
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %16 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disk_name, align 4
  %len23 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len23, align 4
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %conv)
  %call26 = tail call i32 @memcmp(ptr noundef %name, ptr noundef %17, i32 noundef %20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else42

if.then29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp32 = icmp eq i32 %19, %conv
  br i1 %cmp32, label %if.then29.cleanup_crit_edge, label %if.else35

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp38 = icmp ugt i32 %19, %conv
  %. = select i1 %cmp38, i32 0, i32 2
  br label %cleanup

if.else42:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %21 = lshr i32 %call26, 30
  %22 = and i32 %21, 2
  %23 = xor i32 %22, 2
  br label %cleanup

out_free:                                         ; preds = %lnc_add_directly.exit, %if.end5.out_free_crit_edge, %if.end.out_free_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.out_free_crit_edge ], [ %call.i, %lnc_add_directly.exit ], [ 3, %if.end5.out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.else42, %if.else35, %if.then29.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ -12, %if.then.cleanup_crit_edge ], [ 1, %if.then29.cleanup_crit_edge ], [ %., %if.else35 ], [ %23, %if.else42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @matches_name(ptr noundef %c, ptr noundef %zbr, ptr nocapture noundef readonly %nm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.ubifs_zbranch, ptr %zbr, i32 0, i32 4
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3136) #18
  %tobool1.not = icmp eq ptr %call9.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @ubifs_tnc_read_node(ptr noundef %c, ptr noundef %zbr, ptr noundef nonnull %call9.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end6.do.body5.i_crit_edge, label %if.then.i64, !prof !235

if.end6.do.body5.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

if.then.i64:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 346) #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i64, %if.end6.do.body5.i_crit_edge
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.then14.i, label %do.body5.i.do.end17.i_crit_edge, !prof !230

do.body5.i.do.end17.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i

if.then14.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 347) #12
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then14.i, %do.body5.i.do.end17.i_crit_edge
  %call.i = tail call i32 @ubifs_validate_entry(ptr noundef %c, ptr noundef nonnull %call9.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool18.not.i, label %lnc_add_directly.exit.thread, label %lnc_add_directly.exit

lnc_add_directly.exit.thread:                     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i, ptr %0, align 8
  br label %if.end11

lnc_add_directly.exit:                            ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_stack() #16
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void @ubifs_dump_node(ptr noundef %c, ptr noundef nonnull %call9.i, i32 noundef %11) #12
  br label %out_free

if.end11:                                         ; preds = %lnc_add_directly.exit.thread, %entry.if.end11_crit_edge
  %dent.0 = phi ptr [ %2, %entry.if.end11_crit_edge ], [ %call9.i, %lnc_add_directly.exit.thread ]
  %nlen12 = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.0, i32 0, i32 5
  %12 = ptrtoint ptr %nlen12 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %nlen12, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %name = getelementptr inbounds %struct.ubifs_dent_node, ptr %dent.0, i32 0, i32 7
  %disk_name = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1
  %15 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk_name, align 4
  %len15 = getelementptr inbounds %struct.fscrypt_name, ptr %nm, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len15, align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %conv)
  %call17 = tail call i32 @memcmp(ptr noundef %name, ptr noundef %16, i32 noundef %19) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else33

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp23 = icmp eq i32 %18, %conv
  br i1 %cmp23, label %if.then20.cleanup_crit_edge, label %if.else26

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp29 = icmp ugt i32 %18, %conv
  %. = select i1 %cmp29, i32 0, i32 2
  br label %cleanup

if.else33:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %20 = lshr i32 %call17, 30
  %21 = and i32 %20, 2
  %22 = xor i32 %21, 2
  br label %cleanup

out_free:                                         ; preds = %lnc_add_directly.exit, %if.end.out_free_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.out_free_crit_edge ], [ %call.i, %lnc_add_directly.exit ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.else33, %if.else26, %if.then20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ -12, %if.then.cleanup_crit_edge ], [ 1, %if.then20.cleanup_crit_edge ], [ %., %if.else26 ], [ %22, %if.else33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !16, !18, !19, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !49, !50, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !92, !93, !95, !96, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !123, !124, !126, !128, !129, !131, !133, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !197, !199, !201, !203, !205, !207, !208, !209, !211, !213, !215, !217, !219}
!llvm.named.register.sp = !{!220}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/tnc.c", i32 1176, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug284, !1, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/tnc.c", i32 1177, i32 2}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ubifs/tnc.c", i32 1214, i32 3}
!10 = !{ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug285, !9, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ubifs/tnc.c", i32 1263, i32 3}
!13 = !{ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug286, !12, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!14 = !{ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug287, !15, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!15 = !{!"../fs/ubifs/tnc.c", i32 1270, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ubifs/tnc.c", i32 1275, i32 2}
!18 = !{ptr @ubifs_lookup_level0.__UNIQUE_ID_ddebug288, !17, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ubifs/tnc.c", i32 1760, i32 16}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ubifs/tnc.c", i32 1776, i32 16}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ubifs/tnc.c", i32 1779, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ubifs_tnc_bulk_read.__UNIQUE_ID_ddebug297, !24, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ubifs/tnc.c", i32 2280, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ubifs_tnc_add.__UNIQUE_ID_ddebug305, !28, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ubifs/tnc.c", i32 2331, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ubifs_tnc_replace.__UNIQUE_ID_ddebug306, !32, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ubifs/tnc.c", i32 2355, i32 4}
!37 = !{ptr @ubifs_tnc_replace.__UNIQUE_ID_ddebug307, !36, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ubifs/tnc.c", i32 2416, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ubifs_tnc_add_nm.__UNIQUE_ID_ddebug308, !39, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ubifs/tnc.c", i32 2429, i32 3}
!44 = !{ptr @ubifs_tnc_add_nm.__UNIQUE_ID_ddebug309, !43, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/tnc.c", i32 2476, i32 58}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ubifs/tnc.c", i32 2621, i32 2}
!49 = !{ptr @ubifs_tnc_remove.__UNIQUE_ID_ddebug311, !48, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ubifs/tnc.c", i32 2652, i32 2}
!52 = !{ptr @ubifs_tnc_remove_nm.__UNIQUE_ID_ddebug312, !51, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!53 = !{ptr @ubifs_tnc_remove_nm.__UNIQUE_ID_ddebug313, !54, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!54 = !{!"../fs/ubifs/tnc.c", i32 2663, i32 3}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/tnc.c", i32 2835, i32 4}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ubifs_tnc_remove_range.__UNIQUE_ID_ddebug314, !56, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/tnc.c", i32 2871, i32 2}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ubifs_tnc_remove_ino.__UNIQUE_ID_ddebug315, !60, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ubifs/tnc.c", i32 2892, i32 3}
!65 = !{ptr @ubifs_tnc_remove_ino.__UNIQUE_ID_ddebug316, !64, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ubifs/tnc.c", i32 2960, i32 2}
!68 = !{ptr @ubifs_tnc_next_ent.__UNIQUE_ID_ddebug317, !67, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ubifs/tnc.c", i32 2961, i32 2}
!71 = !{ptr @ubifs_tnc_next_ent.__UNIQUE_ID_ddebug318, !72, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!72 = !{!"../fs/ubifs/tnc.c", i32 2976, i32 4}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/tnc.c", i32 3071, i32 3}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ubifs/tnc.c", i32 3514, i32 2}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ubifs/tnc.c", i32 3521, i32 15}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ubifs/tnc.c", i32 94, i32 17}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ubifs/tnc.c", i32 388, i32 2}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ubifs/tnc.c", i32 392, i32 3}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ubifs/tnc.c", i32 312, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ubifs/tnc.c", i32 501, i32 2}
!89 = !{ptr @fallible_read_node.__UNIQUE_ID_ddebug277, !88, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ubifs/tnc.c", i32 514, i32 3}
!92 = !{ptr @fallible_read_node.__UNIQUE_ID_ddebug278, !91, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ubifs/tnc.c", i32 450, i32 2}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @try_read_node.__UNIQUE_ID_ddebug276, !94, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ubifs/tnc.c", i32 454, i32 16}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ubifs/tnc.c", i32 1652, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @read_wbuf.__UNIQUE_ID_ddebug294, !100, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ubifs/tnc.c", i32 1653, i32 2}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ubifs/tnc.c", i32 1654, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ubifs/tnc.c", i32 1655, i32 2}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ubifs/tnc.c", i32 1697, i32 16}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ubifs/tnc.c", i32 1704, i32 16}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ubifs/tnc.c", i32 1716, i32 16}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ubifs/tnc.c", i32 1723, i32 16}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ubifs/tnc.c", i32 1725, i32 3}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @validate_data_node.__UNIQUE_ID_ddebug295, !118, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ubifs/tnc.c", i32 1726, i32 3}
!123 = !{ptr @validate_data_node.__UNIQUE_ID_ddebug296, !122, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ubifs/tnc.c", i32 1735, i32 15}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ubifs/tnc.c", i32 1814, i32 2}
!128 = !{ptr @do_lookup_nm.__UNIQUE_ID_ddebug298, !127, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ubifs/tnc.c", i32 1825, i32 2}
!131 = !{ptr @do_lookup_nm.__UNIQUE_ID_ddebug299, !132, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!132 = !{!"../fs/ubifs/tnc.c", i32 1828, i32 2}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ubifs/tnc.c", i32 1312, i32 2}
!135 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug289, !134, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!137 = !{ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug290, !138, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!138 = !{!"../fs/ubifs/tnc.c", i32 1358, i32 3}
!139 = !{ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug291, !140, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!140 = !{!"../fs/ubifs/tnc.c", i32 1369, i32 3}
!141 = !{ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug292, !142, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!142 = !{!"../fs/ubifs/tnc.c", i32 1376, i32 3}
!143 = !{ptr @lookup_level0_dirty.__UNIQUE_ID_ddebug293, !144, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!144 = !{!"../fs/ubifs/tnc.c", i32 1386, i32 2}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ubifs/tnc.c", i32 202, i32 2}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ubifs/tnc.c", i32 2087, i32 2}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ubifs/tnc.c", i32 2093, i32 3}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ubifs/tnc.c", i32 2094, i32 3}
!153 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tnc_insert.__UNIQUE_ID_ddebug300, !152, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/ubifs/tnc.c", i32 2109, i32 2}
!157 = !{ptr @tnc_insert.__UNIQUE_ID_ddebug301, !156, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ubifs/tnc.c", i32 2189, i32 2}
!160 = !{ptr @tnc_insert.__UNIQUE_ID_ddebug302, !159, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ubifs/tnc.c", i32 2203, i32 2}
!163 = !{ptr @tnc_insert.__UNIQUE_ID_ddebug303, !162, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ubifs/tnc.c", i32 2227, i32 2}
!166 = !{ptr @tnc_insert.__UNIQUE_ID_ddebug304, !165, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ubifs/tnc.c", i32 2033, i32 2}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/ubifs/tnc.c", i32 2000, i32 2}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ubifs/tnc.c", i32 2001, i32 2}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/ubifs/tnc.c", i32 1095, i32 2}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ubifs/tnc.c", i32 1096, i32 2}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/ubifs/tnc.c", i32 1115, i32 4}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/ubifs/tnc.c", i32 1129, i32 4}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/ubifs/tnc.c", i32 1130, i32 4}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/ubifs/tnc.c", i32 1134, i32 4}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/ubifs/tnc.c", i32 1140, i32 3}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/ubifs/tnc.c", i32 918, i32 5}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/ubifs/tnc.c", i32 930, i32 7}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ubifs/tnc.c", i32 991, i32 2}
!193 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @fallible_resolve_collision.__UNIQUE_ID_ddebug283, !192, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!195 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ubifs/tnc.c", i32 838, i32 3}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ubifs/tnc.c", i32 773, i32 4}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ubifs/tnc.c", i32 797, i32 4}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ubifs/tnc.c", i32 2509, i32 2}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ubifs/tnc.c", i32 2510, i32 2}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ubifs/tnc.c", i32 2511, i32 2}
!207 = !{ptr @.str.88, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @tnc_delete.__UNIQUE_ID_ddebug310, !206, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ubifs/tnc.c", i32 2559, i32 2}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ubifs/tnc.c", i32 2592, i32 4}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ubifs/tnc.c", i32 2593, i32 4}
!215 = !{ptr @.str.92, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ubifs/tnc.c", i32 3048, i32 2}
!217 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/ubifs/key.h", i32 270, i32 2}
!219 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!220 = !{!"sp"}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{!"branch_weights", i32 1, i32 2000}
!231 = !{i64 2148299613, i64 2148299618, i64 2148299631, i64 2148299675, i64 2148299709, i64 2148299730}
!232 = !{!"auto-init"}
!233 = !{i64 2155279145}
!234 = !{i64 2155279310}
!235 = !{!"branch_weights", i32 2000, i32 1}
!236 = !{!"branch_weights", i32 4000000, i32 4001}
!237 = !{i64 2148678887, i64 2148678913, i64 2148678942, i64 2148678976, i64 2148679007, i64 2148679030}
!238 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!239 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!240 = !{i64 2148681352, i64 2148681378, i64 2148681407, i64 2148681441, i64 2148681472, i64 2148681495}
!241 = !{i64 2155379157, i64 2155379637, i64 2155379194, i64 2155379250, i64 2155379284, i64 2155379308, i64 2155379349, i64 2155379370, i64 2155379398, i64 2155379432}
