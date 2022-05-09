; ModuleID = '/llk/IR_all_yes/fs/autofs/expire.c_pt.bc'
source_filename = "../fs/autofs/expire.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.62 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.40, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.40 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.autofs_packet_expire = type { %struct.autofs_packet_hdr, i32, [256 x i8] }
%struct.autofs_packet_hdr = type { i32, i32 }

@autofs_expire_wait.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"autofs4\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"autofs_expire_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/autofs/expire.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"waiting for expire %p name=%pd\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"autofs4:pid:%d:%s: waiting for expire %p name=%pd\0A\00", [45 x i8] zeroinitializer }, align 32
@autofs_expire_wait.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"expire done status=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"autofs4:pid:%d:%s: expire done status=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@autofs_expire_indirect.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"autofs_expire_indirect\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"returning %p %pd\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"autofs4:pid:%d:%s: returning %p %pd\0A\00", [59 x i8] zeroinitializer }, align 32
@should_expire.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"should_expire\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"checking mountpoint %p %pd\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"autofs4:pid:%d:%s: checking mountpoint %p %pd\0A\00", [49 x i8] zeroinitializer }, align 32
@should_expire.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"checking symlink %p %pd\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"autofs4:pid:%d:%s: checking symlink %p %pd\0A\00", [52 x i8] zeroinitializer }, align 32
@autofs_mount_busy.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"autofs_mount_busy\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dentry %p %pd\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"autofs4:pid:%d:%s: dentry %p %pd\0A\00", [62 x i8] zeroinitializer }, align 32
@autofs_mount_busy.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"returning = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"autofs4:pid:%d:%s: returning = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@autofs_tree_busy.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"autofs_tree_busy\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"top %p %pd\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autofs4:pid:%d:%s: top %p %pd\0A\00", [33 x i8] zeroinitializer }, align 32
@autofs_tree_busy.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.16, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@autofs_check_leaves.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"autofs_check_leaves\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parent %p %pd\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"autofs4:pid:%d:%s: parent %p %pd\0A\00", [62 x i8] zeroinitializer }, align 32
@autofs_check_leaves.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.16, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@autofs_direct_busy.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.21, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"autofs_direct_busy\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 518, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 523, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 482, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 340, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 359, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 36, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 68, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 190, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 248, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 87, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 174, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [22 x i8] c"../fs/autofs/expire.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 155, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autofs_expire_wait(ptr noundef %path, i32 noundef %rcu_walk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata.i, align 4
  %flags = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcu_walk)
  %tobool3.not = icmp eq i32 %rcu_walk, 0
  br i1 %tobool3.not, label %retry.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

retry.preheader:                                  ; preds = %if.end
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and772 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and772)
  %cmp73 = icmp eq i32 %and772, 2
  br i1 %cmp73, label %retry.preheader.if.then8_crit_edge, label %retry.preheader.if.end11_crit_edge

retry.preheader.if.end11_crit_edge:               ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

retry.preheader.if.then8_crit_edge:               ; preds = %retry.preheader
  br label %if.then8

if.then8:                                         ; preds = %if.then8.if.then8_crit_edge, %retry.preheader.if.then8_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  %call10 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #4
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and7 = and i32 %13, 3
  %cmp = icmp eq i32 %and7, 2
  br i1 %cmp, label %if.then8.if.then8_crit_edge, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then8.if.then8_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.end11:                                         ; preds = %if.then8.if.end11_crit_edge, %retry.preheader.if.end11_crit_edge
  %.lcssa = phi i32 [ %11, %retry.preheader.if.end11_crit_edge ], [ %13, %if.then8.if.end11_crit_edge ]
  %and12 = and i32 %.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_expire_wait.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_expire_wait, %if.then20)) #4
          to label %do.end [label %if.then20], !srcloc !71

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %14 = tail call i32 @llvm.read_register.i32(metadata !61) #4
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_expire_wait.__UNIQUE_ID_ddebug219, ptr noundef nonnull @.str.4, i32 noundef %19, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %1) #4
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.then14
  %call23 = tail call i32 @autofs_wait(ptr noundef %5, ptr noundef %path, i32 noundef 0) #4
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %expire_complete) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_expire_wait.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_expire_wait, %if.then36)) #4
          to label %do.end42 [label %if.then36], !srcloc !71

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %20 = tail call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i69 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i69 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task38, align 8
  %pid39 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid39, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_expire_wait.__UNIQUE_ID_ddebug220, ptr noundef nonnull @.str.6, i32 noundef %25, ptr noundef nonnull @.str.1, i32 noundef %call23) #4
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.end
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %27, null
  %call23. = select i1 %tobool.not.i.i.not, i32 -11, i32 %call23
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -10, %if.end.cleanup_crit_edge ], [ %call23., %do.end42 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autofs_expire_run(ptr nocapture noundef readonly %sb, ptr noundef %mnt, ptr noundef %sbi, ptr noundef %pkt_p) local_unnamed_addr #0 align 64 {
entry:
  %pkt = alloca %struct.autofs_packet_expire, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %pkt) #4
  %0 = getelementptr inbounds i8, ptr %pkt, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 256)
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 4
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pkt, align 4
  %type = getelementptr inbounds %struct.autofs_packet_hdr, ptr %pkt, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %call = tail call fastcc ptr @autofs_expire_indirect(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %len2 = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 1
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %len2, align 4
  %name = getelementptr inbounds %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 2
  %name4 = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name4, align 8
  %11 = call ptr @memcpy(ptr %name, ptr %10, i32 %7)
  %arrayidx = getelementptr %struct.autofs_packet_expire, ptr %pkt, i32 0, i32 2, i32 %7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #4
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #4
  br i1 %call.i.i, label %if.end.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end.copy_to_user.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %pkt_p, i32 268, i32 -1226833920) #7, !srcloc !72
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pkt, i32 noundef 268) #4
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %pkt_p, ptr noundef nonnull %pkt, i32 noundef 268) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool9.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end.copy_to_user.exit.thread_crit_edge
  %14 = phi i32 [ -14, %if.end.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 11
  %15 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_fsdata.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %16, i32 0, i32 7
  %18 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_used, align 4
  %flags = getelementptr inbounds %struct.autofs_info, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, -4
  store i32 %and, ptr %flags, align 4
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %16, i32 0, i32 3
  call void @complete_all(ptr noundef %expire_complete) #4
  call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  call void @dput(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %copy_to_user.exit.thread ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %pkt) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @autofs_expire_indirect(ptr nocapture noundef readonly %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 9
  %2 = ptrtoint ptr %exp_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exp_timeout, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %d_subdirs.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 14
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 14
  %4 = and i32 %how, -3
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.end
  %dentry.0.ph = phi ptr [ null, %if.end ], [ %retval.0.i.i, %while.cond.outer.backedge ]
  %how.addr.0.ph = phi i32 [ %how, %if.end ], [ %4, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %dentry.0 = phi ptr [ %dentry.0.ph, %while.cond.outer ], [ %retval.0.i.i, %while.cond.backedge ]
  %5 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %lookup_lock.i = getelementptr inbounds %struct.autofs_sb_info, ptr %8, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock.i) #4
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #4
  %tobool.not.i.i = icmp eq ptr %dentry.0, null
  %d_child.i.i = getelementptr inbounds %struct.dentry, ptr %dentry.0, i32 0, i32 13
  %.pn.in.i.i = select i1 %tobool.not.i.i, ptr %d_subdirs.i.i, ptr %d_child.i.i
  %9 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.pn34.i.i = load ptr, ptr %.pn.in.i.i, align 8
  %cmp.not35.i.i = icmp eq ptr %.pn.pn34.i.i, %d_subdirs.i.i
  br i1 %cmp.not35.i.i, label %while.cond.get_next_positive_subdir.exit_crit_edge, label %while.cond.do.body.i.i_crit_edge

while.cond.do.body.i.i_crit_edge:                 ; preds = %while.cond
  br label %do.body.i.i

while.cond.get_next_positive_subdir.exit_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_next_positive_subdir.exit

do.body.i.i:                                      ; preds = %if.end13.i.i.do.body.i.i_crit_edge, %while.cond.do.body.i.i_crit_edge
  %.pn.pn36.i.i = phi ptr [ %.pn.pn.i.i, %if.end13.i.i.do.body.i.i_crit_edge ], [ %.pn.pn34.i.i, %while.cond.do.body.i.i_crit_edge ]
  %d_lockref.i.i = getelementptr i8, ptr %.pn.pn36.i.i, i32 -72
  tail call void @_raw_spin_lock_nested(ptr noundef %d_lockref.i.i, i32 noundef 1) #4
  %d_inode.i.i.i.i = getelementptr i8, ptr %.pn.pn36.i.i, i32 -112
  %10 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %cmp.i.not.i.i.i = icmp eq ptr %11, null
  br i1 %cmp.i.not.i.i.i, label %do.body.i.i.if.end13.i.i_crit_edge, label %simple_positive.exit.i.i

do.body.i.i.if.end13.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i.i

simple_positive.exit.i.i:                         ; preds = %do.body.i.i
  %pprev.i.i.i.i.i = getelementptr i8, ptr %.pn.pn36.i.i, i32 -140
  %12 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.not.i.i, label %simple_positive.exit.i.i.if.end13.i.i_crit_edge, label %if.then9.i.i

simple_positive.exit.i.i.if.end13.i.i_crit_edge:  ; preds = %simple_positive.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i.i

if.then9.i.i:                                     ; preds = %simple_positive.exit.i.i
  %child.addr.1.le.i.i = getelementptr i8, ptr %.pn.pn36.i.i, i32 -184
  %tobool.not.i.i.i = icmp eq ptr %child.addr.1.le.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then9.i.i.dget_dlock.exit.i.i_crit_edge, label %if.then.i.i.i

if.then9.i.i.dget_dlock.exit.i.i_crit_edge:       ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dget_dlock.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %count.i.i.i = getelementptr i8, ptr %.pn.pn36.i.i, i32 -28
  %14 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i.i.i, align 4
  %inc.i.i.i = add i32 %15, 1
  store i32 %inc.i.i.i, ptr %count.i.i.i, align 4
  br label %dget_dlock.exit.i.i

dget_dlock.exit.i.i:                              ; preds = %if.then.i.i.i, %if.then9.i.i.dget_dlock.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #4
  br label %get_next_positive_subdir.exit

if.end13.i.i:                                     ; preds = %simple_positive.exit.i.i.if.end13.i.i_crit_edge, %do.body.i.i.if.end13.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #4
  %16 = ptrtoint ptr %.pn.pn36.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.pn.i.i = load ptr, ptr %.pn.pn36.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.pn.i.i, %d_subdirs.i.i
  br i1 %cmp.not.i.i, label %if.end13.i.i.get_next_positive_subdir.exit_crit_edge, label %if.end13.i.i.do.body.i.i_crit_edge

if.end13.i.i.do.body.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

if.end13.i.i.get_next_positive_subdir.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_next_positive_subdir.exit

get_next_positive_subdir.exit:                    ; preds = %if.end13.i.i.get_next_positive_subdir.exit_crit_edge, %dget_dlock.exit.i.i, %while.cond.get_next_positive_subdir.exit_crit_edge
  %retval.0.i.i = phi ptr [ %child.addr.1.le.i.i, %dget_dlock.exit.i.i ], [ null, %while.cond.get_next_positive_subdir.exit_crit_edge ], [ null, %if.end13.i.i.get_next_positive_subdir.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #4
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock.i) #4
  tail call void @dput(ptr noundef %dentry.0) #4
  %tobool1.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool1.not, label %get_next_positive_subdir.exit.cleanup_crit_edge, label %while.body

get_next_positive_subdir.exit.cleanup_crit_edge:  ; preds = %get_next_positive_subdir.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %get_next_positive_subdir.exit
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_fsdata.i, align 4
  %flags = getelementptr inbounds %struct.autofs_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  br i1 %tobool3.not, label %if.end6, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end6.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

if.end6:                                          ; preds = %while.body
  %call8 = tail call fastcc ptr @should_expire(ptr noundef nonnull %retval.0.i.i, ptr noundef %mnt, i32 noundef %3, i32 noundef %how.addr.0.ph)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.while.cond.backedge_crit_edge, label %if.end11

if.end6.while.cond.backedge_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.end11:                                         ; preds = %if.end6
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %d_fsdata.i80 = getelementptr inbounds %struct.dentry, ptr %call8, i32 0, i32 11
  %21 = ptrtoint ptr %d_fsdata.i80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_fsdata.i80, align 4
  %flags14 = getelementptr inbounds %struct.autofs_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags14, align 4
  %or = or i32 %24, 2
  store i32 %or, ptr %flags14, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  tail call void @synchronize_rcu() #4
  %call17 = tail call fastcc ptr @should_expire(ptr noundef nonnull %call8, ptr noundef %mnt, i32 noundef %3, i32 noundef %4)
  %cmp.not = icmp eq ptr %call17, %call8
  br i1 %cmp.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end11
  tail call void @dput(ptr noundef %call17) #4
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %25 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags14, align 4
  %and26 = and i32 %26, -3
  store i32 %and26, ptr %flags14, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  %cmp28.not = icmp eq ptr %call8, %retval.0.i.i
  br i1 %cmp28.not, label %if.then18.while.cond.outer.backedge_crit_edge, label %if.then29

if.then18.while.cond.outer.backedge_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.outer.backedge

if.end19:                                         ; preds = %if.end11
  %cmp20.not = icmp eq ptr %call8, %retval.0.i.i
  br i1 %cmp20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dput(ptr noundef nonnull %retval.0.i.i) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_expire_indirect.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_expire_indirect, %if.then36)) #4
          to label %do.end [label %if.then36], !srcloc !71

if.then29:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dput(ptr noundef nonnull %call8) #4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then29, %if.then18.while.cond.outer.backedge_crit_edge
  br label %while.cond.outer

if.then36:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %27 = tail call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_expire_indirect.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.9, i32 noundef %32, ptr noundef nonnull @.str.7, ptr noundef nonnull %call8, ptr noundef nonnull %call8) #4
  br label %do.end

do.end:                                           ; preds = %if.then36, %if.end22
  %33 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags14, align 4
  %or40 = or i32 %34, 1
  store i32 %or40, ptr %flags14, align 4
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %22, i32 0, i32 3
  %35 = ptrtoint ptr %expire_complete to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %expire_complete, align 4
  %wait.i = getelementptr inbounds %struct.autofs_info, ptr %22, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #4
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %get_next_positive_subdir.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %get_next_positive_subdir.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autofs_do_expire_multi(ptr nocapture noundef readonly %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else [
    i32 4, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge25
  ]

entry.if.then_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge25
  %call1 = tail call fastcc ptr @autofs_expire_direct(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call fastcc ptr @autofs_expire_indirect(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dentry.0 = phi ptr [ %call1, %if.then ], [ %call2, %if.else ]
  %tobool3.not = icmp eq ptr %dentry.0, null
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry.0, i32 0, i32 11
  %3 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_fsdata.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #4
  %5 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mnt, ptr %path, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dentry.0, ptr %5, align 4
  %call8 = call i32 @autofs_wait(ptr noundef %sbi, ptr noundef nonnull %path, i32 noundef 2) #4
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_used, align 4
  %flags = getelementptr inbounds %struct.autofs_info, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, -4
  store i32 %and, ptr %flags, align 4
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %4, i32 0, i32 3
  call void @complete_all(ptr noundef %expire_complete) #4
  call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  call void @dput(ptr noundef nonnull %dentry.0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then4 ], [ -11, %if.end.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @autofs_expire_direct(ptr nocapture noundef readonly %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #4
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 9
  %2 = ptrtoint ptr %exp_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exp_timeout, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_direct_busy.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_expire_direct, %if.then.i45)) #4
          to label %do.end.i [label %if.then.i45], !srcloc !71

if.then.i45:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = tail call i32 @llvm.read_register.i32(metadata !61) #4
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_direct_busy.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.22, i32 noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull %1, ptr noundef nonnull %1) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i45, %if.end
  %and.i = and i32 %how, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.if.then3_crit_edge

do.end.i.if.then3_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end6.i:                                        ; preds = %do.end.i
  %call7.i = tail call i32 @may_umount_tree(ptr noundef %mnt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata.i.i, align 4
  %tobool11.not.i = icmp eq ptr %11, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  br i1 %tobool11.not.i, label %if.then9.i.out_crit_edge, label %if.then12.i

if.then9.i.out_crit_edge:                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_used.i = getelementptr inbounds %struct.autofs_info, ptr %11, i32 0, i32 7
  %13 = ptrtoint ptr %last_used.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_used.i, align 4
  br label %out

if.end14.i:                                       ; preds = %if.end6.i
  br i1 %tobool11.not.i, label %if.end14.i.out_crit_edge, label %if.end.i.i

if.end14.i.out_crit_edge:                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i.i:                                       ; preds = %if.end14.i
  %and.i24.i = and i32 %how, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool.not.i.i = icmp eq i32 %and.i24.i, 0
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end.i.i.if.then3_crit_edge

if.end.i.i.if.then3_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i.i, label %if.then1.i.i.out_crit_edge, label %lor.lhs.false.i.i

if.then1.i.i.out_crit_edge:                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false.i.i:                                ; preds = %if.then1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_used.i.i = getelementptr inbounds %struct.autofs_info, ptr %11, i32 0, i32 7
  %15 = ptrtoint ptr %last_used.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_used.i.i, align 4
  %17 = add i32 %3, %16
  %sub.i.i = sub i32 %14, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.out_crit_edge, label %lor.lhs.false.i.i.if.then3_crit_edge

lor.lhs.false.i.i.if.then3_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

lor.lhs.false.i.i.out_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then3:                                         ; preds = %lor.lhs.false.i.i.if.then3_crit_edge, %if.end.i.i.if.then3_crit_edge, %do.end.i.if.then3_crit_edge
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %sbi, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_fsdata.i, align 4
  %flags = getelementptr inbounds %struct.autofs_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  br label %out

if.end8:                                          ; preds = %if.then3
  %or = or i32 %21, 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  tail call void @synchronize_rcu() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_direct_busy.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_expire_direct, %if.then.i49)) #4
          to label %do.end.i52 [label %if.then.i49], !srcloc !71

if.then.i49:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %23 = tail call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i.i46 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i46 to ptr
  %task.i47 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i47, align 8
  %pid.i48 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid.i48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid.i48, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_direct_busy.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.22, i32 noundef %28, ptr noundef nonnull @.str.30, ptr noundef nonnull %1, ptr noundef nonnull %1) #4
  br label %do.end.i52

do.end.i52:                                       ; preds = %if.then.i49, %if.end8
  br i1 %tobool4.not.i, label %if.end6.i57, label %do.end.i52.if.then13_crit_edge

do.end.i52.if.then13_crit_edge:                   ; preds = %do.end.i52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.end6.i57:                                      ; preds = %do.end.i52
  %call7.i53 = tail call i32 @may_umount_tree(ptr noundef %mnt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i53)
  %tobool8.not.i54 = icmp eq i32 %call7.i53, 0
  %29 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_fsdata.i, align 4
  %tobool11.not.i56 = icmp eq ptr %30, null
  br i1 %tobool8.not.i54, label %if.then9.i58, label %if.end14.i61

if.then9.i58:                                     ; preds = %if.end6.i57
  br i1 %tobool11.not.i56, label %if.then9.i58.if.end18_crit_edge, label %if.then12.i60

if.then9.i58.if.end18_crit_edge:                  ; preds = %if.then9.i58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then12.i60:                                    ; preds = %if.then9.i58
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %last_used.i59 = getelementptr inbounds %struct.autofs_info, ptr %30, i32 0, i32 7
  %32 = ptrtoint ptr %last_used.i59 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_used.i59, align 4
  br label %if.end18

if.end14.i61:                                     ; preds = %if.end6.i57
  br i1 %tobool11.not.i56, label %if.end14.i61.if.end18_crit_edge, label %if.end.i.i64

if.end14.i61.if.end18_crit_edge:                  ; preds = %if.end14.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end.i.i64:                                     ; preds = %if.end14.i61
  %and.i24.i62 = and i32 %how, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i62)
  %tobool.not.i.i63 = icmp eq i32 %and.i24.i62, 0
  br i1 %tobool.not.i.i63, label %if.then1.i.i66, label %if.end.i.i64.if.then13_crit_edge

if.end.i.i64.if.then13_crit_edge:                 ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.then1.i.i66:                                   ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i.i65 = icmp eq i32 %3, 0
  br i1 %tobool2.not.i.i65, label %if.then1.i.i66.if.end18_crit_edge, label %lor.lhs.false.i.i70

if.then1.i.i66.if.end18_crit_edge:                ; preds = %if.then1.i.i66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

lor.lhs.false.i.i70:                              ; preds = %if.then1.i.i66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %last_used.i.i67 = getelementptr inbounds %struct.autofs_info, ptr %30, i32 0, i32 7
  %34 = ptrtoint ptr %last_used.i.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_used.i.i67, align 4
  %36 = add i32 %3, %35
  %sub.i.i68 = sub i32 %33, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i68)
  %cmp3.i.i69 = icmp slt i32 %sub.i.i68, 0
  br i1 %cmp3.i.i69, label %lor.lhs.false.i.i70.if.end18_crit_edge, label %lor.lhs.false.i.i70.if.then13_crit_edge

lor.lhs.false.i.i70.if.then13_crit_edge:          ; preds = %lor.lhs.false.i.i70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

lor.lhs.false.i.i70.if.end18_crit_edge:           ; preds = %lor.lhs.false.i.i70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then13:                                        ; preds = %lor.lhs.false.i.i70.if.then13_crit_edge, %if.end.i.i64.if.then13_crit_edge, %do.end.i52.if.then13_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or16 = or i32 %38, 1
  store i32 %or16, ptr %flags, align 4
  %expire_complete = getelementptr inbounds %struct.autofs_info, ptr %19, i32 0, i32 3
  %39 = ptrtoint ptr %expire_complete to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %expire_complete, align 4
  %wait.i = getelementptr inbounds %struct.autofs_info, ptr %19, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #4
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false.i.i70.if.end18_crit_edge, %if.then1.i.i66.if.end18_crit_edge, %if.end14.i61.if.end18_crit_edge, %if.then12.i60, %if.then9.i58.if.end18_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #4
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and21 = and i32 %41, -3
  store i32 %and21, ptr %flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #4
  br label %out

out:                                              ; preds = %if.end18, %if.then6, %lor.lhs.false.i.i.out_crit_edge, %if.then1.i.i.out_crit_edge, %if.end14.i.out_crit_edge, %if.then12.i, %if.then9.i.out_crit_edge
  tail call void @dput(ptr noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ %1, %if.then13 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autofs_expire_multi(ptr nocapture noundef readonly %sb, ptr noundef %mnt, ptr noundef %sbi, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 616) #4
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !73
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #4, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %arg, i32 -1226833921) #4, !srcloc !76
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #4, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool3.not = icmp eq i32 %asmresult, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %how.0 = phi i32 [ %asmresult1, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %call4 = tail call i32 @autofs_do_expire_multi(ptr noundef %sb, ptr noundef %mnt, ptr noundef %sbi, i32 noundef %how.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -14, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @should_expire(ptr noundef %dentry, ptr noundef %mnt, i32 noundef %timeout, i32 noundef %how) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %flags = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup97_crit_edge

entry.cleanup97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentry, align 8
  %and.i = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end22, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @should_expire.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@should_expire, %if.then7)) #4
          to label %do.end [label %if.then7], !srcloc !71

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i143 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i143 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @should_expire.__UNIQUE_ID_ddebug214, ptr noundef nonnull @.str.12, i32 noundef %11, ptr noundef nonnull @.str.10, ptr noundef %dentry, ptr noundef %dentry) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call10 = tail call fastcc i32 @autofs_mount_busy(ptr noundef %mnt, ptr noundef %dentry, i32 noundef %how)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end.cleanup97_crit_edge

do.end.cleanup97_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.end13:                                         ; preds = %do.end
  %and14 = and i32 %how, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup97_crit_edge

if.end13.cleanup97_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.end17:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_fsdata.i, align 4
  %cmp.i = icmp eq ptr %13, null
  br i1 %cmp.i, label %if.end17._crit_edge, label %if.end.i

if.end17._crit_edge:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %18

if.end.i:                                         ; preds = %if.end17
  %and.i144 = and i32 %how, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.not.i = icmp eq i32 %and.i144, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.cleanup97_crit_edge

if.end.i.cleanup97_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool2.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool2.not.i, label %if.then1.i._crit_edge, label %lor.lhs.false.i

if.then1.i._crit_edge:                            ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %18

lor.lhs.false.i:                                  ; preds = %if.then1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_used.i = getelementptr inbounds %struct.autofs_info, ptr %13, i32 0, i32 7
  %15 = ptrtoint ptr %last_used.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_used.i, align 4
  %17 = add i32 %16, %timeout
  %sub.i = sub i32 %14, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %lor.lhs.false.i._crit_edge, label %lor.lhs.false.i.cleanup97_crit_edge

lor.lhs.false.i.cleanup97_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

lor.lhs.false.i._crit_edge:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %18

18:                                               ; preds = %lor.lhs.false.i._crit_edge, %if.then1.i._crit_edge, %if.end17._crit_edge
  br label %cleanup97

if.end22:                                         ; preds = %if.end
  %and.i.i = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i)
  %cmp.i146 = icmp eq i32 %and.i.i, 6291456
  br i1 %cmp.i146, label %do.body25, label %if.end52

do.body25:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @should_expire.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@should_expire, %if.then37)) #4
          to label %do.end43 [label %if.then37], !srcloc !71

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  %19 = tail call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i147 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i147 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task39, align 8
  %pid40 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid40, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @should_expire.__UNIQUE_ID_ddebug215, ptr noundef nonnull @.str.14, i32 noundef %24, ptr noundef nonnull @.str.10, ptr noundef %dentry, ptr noundef %dentry) #4
  br label %do.end43

do.end43:                                         ; preds = %if.then37, %do.body25
  %and44 = and i32 %how, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end47, label %do.end43.cleanup97_crit_edge

do.end43.cleanup97_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.end47:                                         ; preds = %do.end43
  %25 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_fsdata.i, align 4
  %cmp.i149 = icmp eq ptr %26, null
  br i1 %cmp.i149, label %if.end47._crit_edge, label %if.end.i152

if.end47._crit_edge:                              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %31

if.end.i152:                                      ; preds = %if.end47
  %and.i150 = and i32 %how, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %if.then1.i154, label %if.end.i152.cleanup97_crit_edge

if.end.i152.cleanup97_crit_edge:                  ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.then1.i154:                                    ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool2.not.i153 = icmp eq i32 %timeout, 0
  br i1 %tobool2.not.i153, label %if.then1.i154._crit_edge, label %lor.lhs.false.i158

if.then1.i154._crit_edge:                         ; preds = %if.then1.i154
  call void @__sanitizer_cov_trace_pc() #6
  br label %31

lor.lhs.false.i158:                               ; preds = %if.then1.i154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %last_used.i155 = getelementptr inbounds %struct.autofs_info, ptr %26, i32 0, i32 7
  %28 = ptrtoint ptr %last_used.i155 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_used.i155, align 4
  %30 = add i32 %29, %timeout
  %sub.i156 = sub i32 %27, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i156)
  %cmp3.i157 = icmp slt i32 %sub.i156, 0
  br i1 %cmp3.i157, label %lor.lhs.false.i158._crit_edge, label %lor.lhs.false.i158.cleanup97_crit_edge

lor.lhs.false.i158.cleanup97_crit_edge:           ; preds = %lor.lhs.false.i158
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

lor.lhs.false.i158._crit_edge:                    ; preds = %lor.lhs.false.i158
  call void @__sanitizer_cov_trace_pc() #6
  br label %31

31:                                               ; preds = %lor.lhs.false.i158._crit_edge, %if.then1.i154._crit_edge, %if.end47._crit_edge
  br label %cleanup97

if.end52:                                         ; preds = %if.end22
  %call53 = tail call i32 @simple_empty(ptr noundef %dentry) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup97_crit_edge

if.end52.cleanup97_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.end56:                                         ; preds = %if.end52
  %and57 = and i32 %how, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %and60 = and i32 %how, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool58.not, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end56
  br i1 %tobool61.not, label %do.end65, label %if.then59.if.end70_crit_edge

if.then59.if.end70_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

do.end65:                                         ; preds = %if.then59
  %count = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %count, align 4
  %add = add i32 %33, 1
  %count.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add)
  %cmp = icmp ugt i32 %35, %add
  br i1 %cmp, label %do.end65.cleanup97_crit_edge, label %do.end65.if.end70_crit_edge

do.end65.if.end70_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

do.end65.cleanup97_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.end70:                                         ; preds = %do.end65.if.end70_crit_edge, %if.then59.if.end70_crit_edge
  %call71 = tail call fastcc i32 @autofs_tree_busy(ptr noundef %mnt, ptr noundef %dentry, i32 noundef %timeout, i32 noundef %how)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end70.cleanup97_crit_edge, label %if.end70.if.end96_crit_edge

if.end70.if.end96_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.end70.cleanup97_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.else:                                          ; preds = %if.end56
  br i1 %tobool61.not, label %do.end80, label %if.else.if.end88_crit_edge

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

do.end80:                                         ; preds = %if.else
  %count82 = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %count82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %count82, align 4
  %add83 = add i32 %37, 1
  %count.i162 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %count.i162 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i162, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add83)
  %cmp85 = icmp ugt i32 %39, %add83
  br i1 %cmp85, label %do.end80.cleanup97_crit_edge, label %do.end80.if.end88_crit_edge

do.end80.if.end88_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

do.end80.cleanup97_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.end88:                                         ; preds = %do.end80.if.end88_crit_edge, %if.else.if.end88_crit_edge
  %call89 = tail call fastcc ptr @autofs_check_leaves(ptr noundef %mnt, ptr noundef %dentry, i32 noundef %timeout, i32 noundef %how)
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.end88.if.end96_crit_edge, label %if.then91

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then91:                                        ; preds = %if.end88
  %cmp92 = icmp eq ptr %call89, %dentry
  br i1 %cmp92, label %if.then93, label %if.then91.cleanup97_crit_edge

if.then91.cleanup97_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97

if.then93:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dput(ptr noundef %dentry) #4
  br label %cleanup97

if.end96:                                         ; preds = %if.end88.if.end96_crit_edge, %if.end70.if.end96_crit_edge
  br label %cleanup97

cleanup97:                                        ; preds = %if.end96, %if.then93, %if.then91.cleanup97_crit_edge, %do.end80.cleanup97_crit_edge, %if.end70.cleanup97_crit_edge, %do.end65.cleanup97_crit_edge, %if.end52.cleanup97_crit_edge, %31, %lor.lhs.false.i158.cleanup97_crit_edge, %if.end.i152.cleanup97_crit_edge, %do.end43.cleanup97_crit_edge, %18, %lor.lhs.false.i.cleanup97_crit_edge, %if.end.i.cleanup97_crit_edge, %if.end13.cleanup97_crit_edge, %do.end.cleanup97_crit_edge, %entry.cleanup97_crit_edge
  %retval.1 = phi ptr [ null, %if.end96 ], [ null, %entry.cleanup97_crit_edge ], [ null, %do.end.cleanup97_crit_edge ], [ %dentry, %if.end13.cleanup97_crit_edge ], [ %dentry, %do.end43.cleanup97_crit_edge ], [ null, %if.end52.cleanup97_crit_edge ], [ null, %do.end65.cleanup97_crit_edge ], [ %dentry, %if.end70.cleanup97_crit_edge ], [ null, %18 ], [ %dentry, %if.end.i.cleanup97_crit_edge ], [ %dentry, %lor.lhs.false.i.cleanup97_crit_edge ], [ null, %31 ], [ %dentry, %if.end.i152.cleanup97_crit_edge ], [ %dentry, %lor.lhs.false.i158.cleanup97_crit_edge ], [ %call89, %if.then91.cleanup97_crit_edge ], [ %dentry, %if.then93 ], [ null, %do.end80.cleanup97_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @autofs_mount_busy(ptr noundef %mnt, ptr noundef %dentry, i32 noundef %how) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #4
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mnt, ptr %path, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dentry, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_mount_busy.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_mount_busy, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = tail call i32 @llvm.read_register.i32(metadata !61) #4
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_mount_busy.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.17, i32 noundef %8, ptr noundef nonnull @.str.15, ptr noundef %dentry, ptr noundef %dentry) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @path_get(ptr noundef nonnull %path) #4
  %call6 = call i32 @follow_down_one(ptr noundef nonnull %path) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end.do.body32_crit_edge, label %if.end9

do.end.do.body32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

if.end9:                                          ; preds = %do.end
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %call11 = call i32 @is_autofs_dentry(ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.if.end20_crit_edge, label %if.then13

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then13:                                        ; preds = %if.end9
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.not = icmp eq i32 %18, 1
  br i1 %cmp.i.not, label %if.then13.do.body32_crit_edge, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then13.do.body32_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %and = and i32 %how, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.do.body32_crit_edge

if.end20.do.body32_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

if.end23:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %path, align 4
  %call25 = call i32 @may_umount_tree(ptr noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.do.body32_crit_edge

if.end23.do.body32_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %21 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_fsdata.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %22, i32 0, i32 7
  %24 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_used, align 4
  br label %do.body32

do.body32:                                        ; preds = %if.then27, %if.end23.do.body32_crit_edge, %if.end20.do.body32_crit_edge, %if.then13.do.body32_crit_edge, %do.end.do.body32_crit_edge
  %status.0 = phi i32 [ 1, %if.then13.do.body32_crit_edge ], [ 1, %if.then27 ], [ 1, %do.end.do.body32_crit_edge ], [ 0, %if.end20.do.body32_crit_edge ], [ 0, %if.end23.do.body32_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_mount_busy.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_mount_busy, %if.then44)) #4
          to label %do.end50 [label %if.then44], !srcloc !71

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %25 = call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i62 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i62 to ptr
  %task46 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task46, align 8
  %pid47 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid47, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_mount_busy.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.19, i32 noundef %30, ptr noundef nonnull @.str.15, i32 noundef %status.0) #4
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %do.body32
  call void @path_put(ptr noundef nonnull %path) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #4
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @autofs_tree_busy(ptr noundef %mnt, ptr noundef %top, i32 noundef %timeout, i32 noundef %how) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %top, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_tree_busy.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_tree_busy, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #4
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_tree_busy.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.22, i32 noundef %7, ptr noundef nonnull @.str.20, ptr noundef %top, ptr noundef %top) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %top, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %9, null
  br i1 %cmp.i.not.i, label %do.end.cleanup58_crit_edge, label %simple_positive.exit

do.end.cleanup58_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

simple_positive.exit:                             ; preds = %do.end
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %top, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i.not, label %simple_positive.exit.cleanup58_crit_edge, label %while.cond.preheader

simple_positive.exit.cleanup58_crit_edge:         ; preds = %simple_positive.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

while.cond.preheader:                             ; preds = %simple_positive.exit
  %call996 = tail call fastcc ptr @get_next_positive_dentry(ptr noundef null, ptr noundef %top)
  %tobool10.not97 = icmp eq ptr %call996, null
  br i1 %tobool10.not97, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.do.body11_crit_edge

while.cond.preheader.do.body11_crit_edge:         ; preds = %while.cond.preheader
  br label %do.body11

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body11:                                        ; preds = %if.end50.do.body11_crit_edge, %while.cond.preheader.do.body11_crit_edge
  %call998 = phi ptr [ %call9, %if.end50.do.body11_crit_edge ], [ %call996, %while.cond.preheader.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_tree_busy.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_tree_busy, %if.then23)) #4
          to label %do.end29 [label %if.then23], !srcloc !71

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  %12 = tail call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i83 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i83 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task25, align 8
  %pid26 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid26, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_tree_busy.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.17, i32 noundef %17, ptr noundef nonnull @.str.20, ptr noundef nonnull %call998, ptr noundef nonnull %call998) #4
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body11
  %18 = ptrtoint ptr %call998 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call998, align 8
  %and.i84 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.i.not = icmp eq i32 %and.i84, 0
  br i1 %tobool.i.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %do.end29
  %call32 = tail call fastcc i32 @autofs_mount_busy(ptr noundef %mnt, ptr noundef nonnull %call998, i32 noundef %how)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.if.end50_crit_edge, label %if.then34

if.then31.if.end50_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_used, align 4
  tail call void @dput(ptr noundef nonnull %call998) #4
  br label %cleanup58

if.else:                                          ; preds = %do.end29
  %d_fsdata.i85 = getelementptr inbounds %struct.dentry, ptr %call998, i32 0, i32 11
  %22 = ptrtoint ptr %d_fsdata.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_fsdata.i85, align 4
  %count = getelementptr inbounds %struct.autofs_info, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %count, align 4
  %cmp = icmp eq ptr %call998, %top
  %ino_count.0.v = select i1 %cmp, i32 2, i32 1
  %ino_count.0 = add i32 %25, %ino_count.0.v
  %count.i = getelementptr inbounds %struct.dentry, ptr %call998, i32 0, i32 7, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %ino_count.0)
  %cmp45 = icmp ugt i32 %27, %ino_count.0
  br i1 %cmp45, label %if.then46, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %last_used47 = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %last_used47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_used47, align 4
  tail call void @dput(ptr noundef nonnull %call998) #4
  br label %cleanup58

if.end50:                                         ; preds = %if.else.if.end50_crit_edge, %if.then31.if.end50_crit_edge
  %call9 = tail call fastcc ptr @get_next_positive_dentry(ptr noundef nonnull %call998, ptr noundef %top)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end50.while.end_crit_edge, label %if.end50.do.body11_crit_edge

if.end50.do.body11_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end50.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %and = and i32 %how, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end53, label %while.end.cleanup58_crit_edge

while.end.cleanup58_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

if.end53:                                         ; preds = %while.end
  %30 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_fsdata.i, align 4
  %cmp.i = icmp eq ptr %31, null
  br i1 %cmp.i, label %if.end53._crit_edge, label %if.end.i

if.end53._crit_edge:                              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %36

if.end.i:                                         ; preds = %if.end53
  %and.i86 = and i32 %how, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool.not.i = icmp eq i32 %and.i86, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.cleanup58_crit_edge

if.end.i.cleanup58_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool2.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool2.not.i, label %if.then1.i._crit_edge, label %lor.lhs.false.i

if.then1.i._crit_edge:                            ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %36

lor.lhs.false.i:                                  ; preds = %if.then1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %last_used.i = getelementptr inbounds %struct.autofs_info, ptr %31, i32 0, i32 7
  %33 = ptrtoint ptr %last_used.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_used.i, align 4
  %35 = add i32 %34, %timeout
  %sub.i = sub i32 %32, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %lor.lhs.false.i._crit_edge, label %lor.lhs.false.i.cleanup58_crit_edge

lor.lhs.false.i.cleanup58_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup58

lor.lhs.false.i._crit_edge:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %36

36:                                               ; preds = %lor.lhs.false.i._crit_edge, %if.then1.i._crit_edge, %if.end53._crit_edge
  br label %cleanup58

cleanup58:                                        ; preds = %36, %lor.lhs.false.i.cleanup58_crit_edge, %if.end.i.cleanup58_crit_edge, %while.end.cleanup58_crit_edge, %if.then46, %if.then34, %simple_positive.exit.cleanup58_crit_edge, %do.end.cleanup58_crit_edge
  %retval.3 = phi i32 [ 1, %if.then34 ], [ 1, %simple_positive.exit.cleanup58_crit_edge ], [ 1, %if.then46 ], [ 0, %while.end.cleanup58_crit_edge ], [ 1, %36 ], [ 0, %if.end.i.cleanup58_crit_edge ], [ 0, %lor.lhs.false.i.cleanup58_crit_edge ], [ 1, %do.end.cleanup58_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @autofs_check_leaves(ptr noundef %mnt, ptr noundef %parent, i32 noundef %timeout, i32 noundef %how) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_check_leaves.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_check_leaves, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #4
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_check_leaves.__UNIQUE_ID_ddebug212, ptr noundef nonnull @.str.25, i32 noundef %5, ptr noundef nonnull @.str.23, ptr noundef %parent, ptr noundef %parent) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call462 = tail call fastcc ptr @get_next_positive_dentry(ptr noundef null, ptr noundef %parent)
  %tobool5.not63 = icmp eq ptr %call462, null
  br i1 %tobool5.not63, label %do.end.cleanup_crit_edge, label %do.body6.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body6.lr.ph:                                   ; preds = %do.end
  %and.i55 = and i32 %how, 1
  %and = and i32 %how, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i = icmp eq i32 %and.i55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool2.not.i = icmp eq i32 %timeout, 0
  br label %do.body6

do.body6:                                         ; preds = %while.cond.backedge.do.body6_crit_edge, %do.body6.lr.ph
  %call464 = phi ptr [ %call462, %do.body6.lr.ph ], [ %call4, %while.cond.backedge.do.body6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_check_leaves.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_check_leaves, %if.then18)) #4
          to label %do.end24 [label %if.then18], !srcloc !71

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #4
  %and.i53 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i53 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid21, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_check_leaves.__UNIQUE_ID_ddebug213, ptr noundef nonnull @.str.17, i32 noundef %11, ptr noundef nonnull @.str.23, ptr noundef nonnull %call464, ptr noundef nonnull %call464) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %do.body6
  %12 = ptrtoint ptr %call464 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call464, align 8
  %and.i54 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.i.not = icmp eq i32 %and.i54, 0
  br i1 %tobool.i.not, label %do.end24.while.cond.backedge_crit_edge, label %if.then26

do.end24.while.cond.backedge_crit_edge:           ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.then26:                                        ; preds = %do.end24
  %call27 = tail call fastcc i32 @autofs_mount_busy(ptr noundef %mnt, ptr noundef nonnull %call464, i32 noundef %how)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then26.while.cond.backedge_crit_edge

if.then26.while.cond.backedge_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.end30:                                         ; preds = %if.then26
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %call464, i32 0, i32 11
  %14 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_fsdata.i.i, align 4
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %if.end33.while.cond.backedge_crit_edge, label %if.end.i

if.end33.while.cond.backedge_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.end.i:                                         ; preds = %if.end33
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then1.i:                                       ; preds = %if.end.i
  br i1 %tobool2.not.i, label %if.then1.i.while.cond.backedge_crit_edge, label %lor.lhs.false.i

if.then1.i.while.cond.backedge_crit_edge:         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

lor.lhs.false.i:                                  ; preds = %if.then1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %last_used.i = getelementptr inbounds %struct.autofs_info, ptr %15, i32 0, i32 7
  %17 = ptrtoint ptr %last_used.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_used.i, align 4
  %19 = add i32 %18, %timeout
  %sub.i = sub i32 %16, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %lor.lhs.false.i.while.cond.backedge_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.while.cond.backedge_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %lor.lhs.false.i.while.cond.backedge_crit_edge, %if.then1.i.while.cond.backedge_crit_edge, %if.end33.while.cond.backedge_crit_edge, %if.then26.while.cond.backedge_crit_edge, %do.end24.while.cond.backedge_crit_edge
  %call4 = tail call fastcc ptr @get_next_positive_dentry(ptr noundef nonnull %call464, ptr noundef %parent)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.do.body6_crit_edge

while.cond.backedge.do.body6_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %call4.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %call464, %lor.lhs.false.i.cleanup_crit_edge ], [ %call464, %if.end.i.cleanup_crit_edge ], [ null, %while.cond.backedge.cleanup_crit_edge ], [ %call464, %if.end30.cleanup_crit_edge ]
  ret ptr %call4.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_down_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_autofs_dentry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_umount_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_next_positive_dentry(ptr noundef %prev, ptr noundef %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %prev, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %root, null
  br i1 %tobool.not.i, label %if.then.cleanup13_crit_edge, label %if.then.i

if.then.cleanup13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup13

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #4
  br label %cleanup13

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock) #4
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %if.end
  %.sink = phi ptr [ %13, %cleanup ], [ %prev, %if.end ]
  %d.0 = phi ptr [ %.sink, %cleanup ], [ null, %if.end ]
  %d_lockref8 = getelementptr inbounds %struct.dentry, ptr %.sink, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref8) #4
  %tobool.not.i30 = icmp eq ptr %d.0, null
  %d_child.i = getelementptr inbounds %struct.dentry, ptr %d.0, i32 0, i32 13
  %d_subdirs.i = getelementptr inbounds %struct.dentry, ptr %.sink, i32 0, i32 14
  %.pn.in.i = select i1 %tobool.not.i30, ptr %d_subdirs.i, ptr %d_child.i
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.pn34.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not35.i = icmp eq ptr %.pn.pn34.i, %d_subdirs.i
  br i1 %cmp.not35.i, label %while.cond.positive_after.exit_crit_edge, label %while.cond.do.body.i_crit_edge

while.cond.do.body.i_crit_edge:                   ; preds = %while.cond
  br label %do.body.i

while.cond.positive_after.exit_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %positive_after.exit

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %while.cond.do.body.i_crit_edge
  %.pn.pn36.i = phi ptr [ %.pn.pn.i, %if.end13.i.do.body.i_crit_edge ], [ %.pn.pn34.i, %while.cond.do.body.i_crit_edge ]
  %d_lockref.i31 = getelementptr i8, ptr %.pn.pn36.i, i32 -72
  tail call void @_raw_spin_lock_nested(ptr noundef %d_lockref.i31, i32 noundef 1) #4
  %d_inode.i.i.i = getelementptr i8, ptr %.pn.pn36.i, i32 -112
  %5 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %6, null
  br i1 %cmp.i.not.i.i, label %do.body.i.if.end13.i_crit_edge, label %simple_positive.exit.i

do.body.i.if.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

simple_positive.exit.i:                           ; preds = %do.body.i
  %pprev.i.i.i.i = getelementptr i8, ptr %.pn.pn36.i, i32 -140
  %7 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.not.i, label %simple_positive.exit.i.if.end13.i_crit_edge, label %if.then9.i

simple_positive.exit.i.if.end13.i_crit_edge:      ; preds = %simple_positive.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.then9.i:                                       ; preds = %simple_positive.exit.i
  %child.addr.1.le.i = getelementptr i8, ptr %.pn.pn36.i, i32 -184
  %tobool.not.i.i = icmp eq ptr %child.addr.1.le.i, null
  br i1 %tobool.not.i.i, label %if.then9.i.dget_dlock.exit.i_crit_edge, label %if.then.i.i

if.then9.i.dget_dlock.exit.i_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dget_dlock.exit.i

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  %count.i.i = getelementptr i8, ptr %.pn.pn36.i, i32 -28
  %9 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i, align 4
  %inc.i.i = add i32 %10, 1
  store i32 %inc.i.i, ptr %count.i.i, align 4
  br label %dget_dlock.exit.i

dget_dlock.exit.i:                                ; preds = %if.then.i.i, %if.then9.i.dget_dlock.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i31) #4
  br label %positive_after.exit

if.end13.i:                                       ; preds = %simple_positive.exit.i.if.end13.i_crit_edge, %do.body.i.if.end13.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i31) #4
  %11 = ptrtoint ptr %.pn.pn36.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.pn.i = load ptr, ptr %.pn.pn36.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.pn.i, %d_subdirs.i
  br i1 %cmp.not.i, label %if.end13.i.positive_after.exit_crit_edge, label %if.end13.i.do.body.i_crit_edge

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end13.i.positive_after.exit_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %positive_after.exit

positive_after.exit:                              ; preds = %if.end13.i.positive_after.exit_crit_edge, %dget_dlock.exit.i, %while.cond.positive_after.exit_crit_edge
  %retval.0.i = phi ptr [ %child.addr.1.le.i, %dget_dlock.exit.i ], [ null, %while.cond.positive_after.exit_crit_edge ], [ null, %if.end13.i.positive_after.exit_crit_edge ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  %cmp3 = icmp eq ptr %.sink, %root
  %or.cond = or i1 %cmp3, %tobool.not
  br i1 %or.cond, label %while.end, label %cleanup

cleanup:                                          ; preds = %positive_after.exit
  call void @__sanitizer_cov_trace_pc() #6
  %d_parent = getelementptr inbounds %struct.dentry, ptr %.sink, i32 0, i32 3
  %12 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent, align 8
  %d_lockref6 = getelementptr inbounds %struct.dentry, ptr %.sink, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref6) #4
  br label %while.cond

while.end:                                        ; preds = %positive_after.exit
  call void @__sanitizer_cov_trace_pc() #6
  %d_lockref10 = getelementptr inbounds %struct.dentry, ptr %.sink, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref10) #4
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock) #4
  tail call void @dput(ptr noundef nonnull %prev) #4
  br label %cleanup13

cleanup13:                                        ; preds = %while.end, %if.then.i, %if.then.cleanup13_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %while.end ], [ null, %if.then.cleanup13_crit_edge ], [ %root, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !51, !53, !54, !56, !58, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/autofs/expire.c", i32 518, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @autofs_expire_wait.__UNIQUE_ID_ddebug219, !1, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/autofs/expire.c", i32 523, i32 3}
!9 = !{ptr @autofs_expire_wait.__UNIQUE_ID_ddebug220, !8, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/autofs/expire.c", i32 482, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @autofs_expire_indirect.__UNIQUE_ID_ddebug218, !12, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/autofs/expire.c", i32 340, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @should_expire.__UNIQUE_ID_ddebug214, !17, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!20 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/autofs/expire.c", i32 359, i32 3}
!23 = !{ptr @should_expire.__UNIQUE_ID_ddebug215, !22, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!24 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/autofs/expire.c", i32 36, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @autofs_mount_busy.__UNIQUE_ID_ddebug206, !26, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!29 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/autofs/expire.c", i32 68, i32 2}
!32 = !{ptr @autofs_mount_busy.__UNIQUE_ID_ddebug207, !31, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!33 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/autofs/expire.c", i32 190, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @autofs_tree_busy.__UNIQUE_ID_ddebug209, !35, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!38 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @autofs_tree_busy.__UNIQUE_ID_ddebug210, !40, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!40 = !{!"../fs/autofs/expire.c", i32 198, i32 3}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/autofs/expire.c", i32 248, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @autofs_check_leaves.__UNIQUE_ID_ddebug212, !42, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!45 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @autofs_check_leaves.__UNIQUE_ID_ddebug213, !47, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!47 = !{!"../fs/autofs/expire.c", i32 252, i32 3}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!53 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/autofs/expire.c", i32 155, i32 2}
!60 = !{ptr @autofs_direct_busy.__UNIQUE_ID_ddebug208, !59, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
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
!71 = !{i64 2148497575, i64 2148497580, i64 2148497593, i64 2148497637, i64 2148497671, i64 2148497692}
!72 = !{i64 2152186137, i64 2152186162}
!73 = !{i64 4681011}
!74 = !{i64 4681208}
!75 = !{i64 2152166441}
!76 = !{i64 2153045041, i64 2153045321, i64 2153045655, i64 2153045989}
