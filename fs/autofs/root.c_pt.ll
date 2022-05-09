; ModuleID = '/llk/IR_all_yes/fs/autofs/root.c_pt.bc'
source_filename = "../fs/autofs/root.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.atomic_t = type { i32 }
%struct.pid_namespace = type opaque
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.41, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.41 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.59 = type { %struct.callback_head }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.63 = type { ptr }
%struct.anon.4 = type { i32, i32 }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@autofs_root_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @dcache_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcache_readdir, ptr null, ptr @autofs_root_ioctl, ptr null, ptr null, i32 0, ptr @dcache_dir_open, ptr null, ptr @dcache_dir_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@autofs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @dcache_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcache_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @autofs_dir_open, ptr null, ptr @dcache_dir_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@autofs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @autofs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dir_unlink, ptr @autofs_dir_symlink, ptr @autofs_dir_mkdir, ptr @autofs_dir_rmdir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@autofs_dentry_operations = dso_local constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_dentry_release, ptr null, ptr null, ptr null, ptr @autofs_d_automount, ptr @autofs_d_manage, ptr null, [76 x i8] undef }, align 128
@autofs_dir_open.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"autofs4\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"autofs_dir_open\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/autofs/root.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"file=%p dentry=%p %pd\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"autofs4:pid:%d:%s: file=%p dentry=%p %pd\0A\00", [54 x i8] zeroinitializer }, align 32
@autofs_dentry_release.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"autofs_dentry_release\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"releasing %p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"autofs4:pid:%d:%s: releasing %p\0A\00", [63 x i8] zeroinitializer }, align 32
@autofs_d_automount.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"autofs_d_automount\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dentry=%p %pd\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"autofs4:pid:%d:%s: dentry=%p %pd\0A\00", [62 x i8] zeroinitializer }, align 32
@autofs_mount_wait.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"autofs_mount_wait\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"waiting for mount name=%pd\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"autofs4:pid:%d:%s: waiting for mount name=%pd\0A\00", [49 x i8] zeroinitializer }, align 32
@autofs_mount_wait.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mount wait done status=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"autofs4:pid:%d:%s: mount wait done status=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@autofs_d_manage.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.9, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"autofs_d_manage\00", [16 x i8] zeroinitializer }, align 32
@autofs_lookup.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"autofs_lookup\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"name = %pd\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autofs4:pid:%d:%s: name = %pd\0A\00", [33 x i8] zeroinitializer }, align 32
@autofs_lookup.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pid = %u, pgrp = %u, catatonic = %d, oz_mode = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"autofs4:pid:%d:%s: pid = %u, pgrp = %u, catatonic = %d, oz_mode = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 1
@autofs_dir_symlink.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"autofs_dir_symlink\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s <- %pd\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"autofs4:pid:%d:%s: %s <- %pd\0A\00", [34 x i8] zeroinitializer }, align 32
@autofs_dir_rmdir.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"autofs_dir_rmdir\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dentry %p, removing %pd\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"autofs4:pid:%d:%s: dentry %p, removing %pd\0A\00", [52 x i8] zeroinitializer }, align 32
@autofs_dir_mkdir.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"autofs_dir_mkdir\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dentry %p, creating %pd\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"autofs4:pid:%d:%s: dentry %p, creating %pd\0A\00", [52 x i8] zeroinitializer }, align 32
@autofs_root_ioctl_unlocked.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"autofs_root_ioctl_unlocked\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cmd = 0x%08x, arg = 0x%08lx, sbi = %p, pgrp = %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"autofs4:pid:%d:%s: cmd = 0x%08x, arg = 0x%08lx, sbi = %p, pgrp = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@autofs_ask_umount.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"autofs_ask_umount\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"may umount %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"autofs4:pid:%d:%s: may umount %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.37 = internal global [11 x i64] [i64 9, i64 32, i64 37728, i64 37729, i64 37730, i64 1074041702, i64 2147783523, i64 2147783527, i64 2147783536, i64 2165085029, i64 3221525348]
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"autofs_root_operations\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 31, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"autofs_dir_operations\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 43, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 81, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 111, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 318, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 251, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 253, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 406, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 483, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 491, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 540, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 684, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 739, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 868, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [20 x i8] c"../fs/autofs/root.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 840, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @autofs_root_operations, ptr @autofs_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_root_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dcache_dir_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcache_readdir(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_root_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call fastcc i32 @autofs_root_ioctl_unlocked(ptr noundef %1, ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcache_dir_open(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcache_dir_close(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dir_open(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_dir_open.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_dir_open, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_dir_open.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.4, i32 noundef %11, ptr noundef nonnull @.str.1, ptr noundef %file, ptr noundef %1, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i29 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i, label %autofs_oz_mode.exit, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

autofs_oz_mode.exit:                              ; preds = %do.end
  %14 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 111
  %18 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %19, i32 0, i32 22, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i.not = icmp eq ptr %21, %23
  br i1 %cmp.i.not, label %autofs_oz_mode.exit.out_crit_edge, label %if.end9

autofs_oz_mode.exit.out_crit_edge:                ; preds = %autofs_oz_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %autofs_oz_mode.exit
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock) #9
  %call11 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %f_path) #9
  br i1 %call11, label %if.end9.if.end16_crit_edge, label %land.lhs.true

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %call12 = tail call i32 @simple_empty(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end16_crit_edge, label %if.then14

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock) #9
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock) #9
  br label %out

out:                                              ; preds = %if.end16, %autofs_oz_mode.exit.out_crit_edge, %do.end.out_crit_edge
  %call18 = tail call i32 @dcache_dir_open(ptr noundef %inode, ptr noundef %file) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then14
  %retval.0 = phi i32 [ %call18, %out ], [ -2, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @autofs_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_lookup.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_lookup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_lookup.__UNIQUE_ID_ddebug214, ptr noundef nonnull @.str.19, i32 noundef %5, ptr noundef nonnull @.str.17, ptr noundef %dentry) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp = icmp ugt i32 %7, 255
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_lookup.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_lookup, %if.then20)) #9
          to label %do.end34 [label %if.then20], !srcloc !81

if.then20:                                        ; preds = %if.end6
  %12 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i93 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i93 to ptr
  %task22 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task22, align 8
  %pid23 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid23, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %15, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  %flags30 = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 8
  %18 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags30, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.then20.autofs_oz_mode.exit_crit_edge

if.then20.autofs_oz_mode.exit_crit_edge:          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_oz_mode.exit

lor.rhs.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 111
  %24 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %25, i32 0, i32 22, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 3
  %28 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i = icmp eq ptr %27, %29
  %phi.cast.i = zext i1 %cmp.i to i32
  br label %autofs_oz_mode.exit

autofs_oz_mode.exit:                              ; preds = %lor.rhs.i, %if.then20.autofs_oz_mode.exit_crit_edge
  %30 = phi i32 [ 1, %if.then20.autofs_oz_mode.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_lookup.__UNIQUE_ID_ddebug215, ptr noundef nonnull @.str.21, i32 noundef %17, ptr noundef nonnull @.str.17, i32 noundef %17, i32 noundef %call.i.i, i32 noundef %and, i32 noundef %30) #9
  br label %do.end34

do.end34:                                         ; preds = %autofs_oz_mode.exit, %if.end6
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %31 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i, align 16
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %35 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_parent.i, align 8
  %37 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %d_name, align 8
  %hash2.i = getelementptr inbounds %struct.anon.4, ptr %d_name, i32 0, i32 1
  %39 = ptrtoint ptr %hash2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hash2.i, align 4
  %name3.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name3.i, align 8
  %active_list.i = getelementptr inbounds %struct.autofs_sb_info, ptr %34, i32 0, i32 17
  %43 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %active_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %44, %active_list.i
  br i1 %cmp.i.not.i, label %do.end34.if.else_crit_edge, label %if.end.i

do.end34.if.else_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %do.end34
  %lookup_lock.i = getelementptr inbounds %struct.autofs_sb_info, ptr %34, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock.i) #9
  %45 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %p.083.i = load ptr, ptr %active_list.i, align 4
  %cmp.i75.not84.i = icmp eq ptr %p.083.i, %active_list.i
  br i1 %cmp.i75.not84.i, label %if.end.i.autofs_lookup_active.exit.thread114_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.autofs_lookup_active.exit.thread114_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_lookup_active.exit.thread114

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %p.085.i = phi ptr [ %p.0.i, %cleanup.i.for.body.i_crit_edge ], [ %p.083.i, %if.end.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %p.085.i, i32 -68
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #9
  %count.i.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 7, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i95 = icmp slt i32 %49, 1
  br i1 %cmp.i95, label %for.body.i.cleanup.i_crit_edge, label %if.end10.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end10.i:                                       ; preds = %for.body.i
  %d_name11.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 4
  %hash13.i = getelementptr inbounds %struct.anon.4, ptr %d_name11.i, i32 0, i32 1
  %50 = ptrtoint ptr %hash13.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hash13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %40)
  %cmp14.not.i = icmp eq i32 %51, %40
  br i1 %cmp14.not.i, label %if.end16.i, label %if.end10.i.cleanup.i_crit_edge

if.end10.i.cleanup.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end16.i:                                       ; preds = %if.end10.i
  %d_parent17.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 3
  %52 = ptrtoint ptr %d_parent17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_parent17.i, align 8
  %cmp18.not.i = icmp eq ptr %53, %36
  br i1 %cmp18.not.i, label %if.end20.i, label %if.end16.i.cleanup.i_crit_edge

if.end16.i.cleanup.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end20.i:                                       ; preds = %if.end16.i
  %54 = ptrtoint ptr %d_name11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %d_name11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %38)
  %cmp22.not.i = icmp eq i32 %55, %38
  br i1 %cmp22.not.i, label %if.end24.i, label %if.end20.i.cleanup.i_crit_edge

if.end20.i.cleanup.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end24.i:                                       ; preds = %if.end20.i
  %name25.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %name25.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name25.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %57, ptr %42, i32 %38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool27.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end24.i.cleanup.i_crit_edge

if.end24.i.cleanup.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end29.i:                                       ; preds = %if.end24.i
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i.not.i, label %if.then32.i, label %if.end29.i.cleanup.i_crit_edge

if.end29.i.cleanup.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then32.i:                                      ; preds = %if.end29.i
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.then32.i.autofs_lookup_active.exit_crit_edge, label %if.then.i.i

if.then32.i.autofs_lookup_active.exit_crit_edge:  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_lookup_active.exit

if.then.i.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %count.i.i.le = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 7, i32 0, i32 0, i32 1
  %inc.i.i = add nuw i32 %49, 1
  %60 = ptrtoint ptr %count.i.i.le to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc.i.i, ptr %count.i.i.le, align 4
  br label %autofs_lookup_active.exit

cleanup.i:                                        ; preds = %if.end29.i.cleanup.i_crit_edge, %if.end24.i.cleanup.i_crit_edge, %if.end20.i.cleanup.i_crit_edge, %if.end16.i.cleanup.i_crit_edge, %if.end10.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #9
  %61 = ptrtoint ptr %p.085.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %p.0.i = load ptr, ptr %p.085.i, align 4
  %cmp.i75.not.i = icmp eq ptr %p.0.i, %active_list.i
  br i1 %cmp.i75.not.i, label %cleanup.i.autofs_lookup_active.exit.thread114_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.autofs_lookup_active.exit.thread114_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_lookup_active.exit.thread114

autofs_lookup_active.exit.thread114:              ; preds = %cleanup.i.autofs_lookup_active.exit.thread114_crit_edge, %if.end.i.autofs_lookup_active.exit.thread114_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock.i) #9
  br label %if.else

autofs_lookup_active.exit:                        ; preds = %if.then.i.i, %if.then32.i.autofs_lookup_active.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #9
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock.i) #9
  %tobool36.not = icmp eq ptr %47, null
  br i1 %tobool36.not, label %autofs_lookup_active.exit.if.else_crit_edge, label %autofs_lookup_active.exit.cleanup_crit_edge

autofs_lookup_active.exit.cleanup_crit_edge:      ; preds = %autofs_lookup_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

autofs_lookup_active.exit.if.else_crit_edge:      ; preds = %autofs_lookup_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %autofs_lookup_active.exit.if.else_crit_edge, %autofs_lookup_active.exit.thread114, %do.end34.if.else_crit_edge
  %flags.i96 = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 8
  %62 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i96, align 4
  %and.i97 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i98 = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i98, label %autofs_oz_mode.exit107, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

autofs_oz_mode.exit107:                           ; preds = %if.else
  %64 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i99 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i99 to ptr
  %task.i100 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i100 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i100, align 8
  %signal.i.i101 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 111
  %68 = ptrtoint ptr %signal.i.i101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %signal.i.i101, align 16
  %arrayidx.i.i102 = getelementptr %struct.signal_struct, ptr %69, i32 0, i32 22, i32 2
  %70 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i102, align 8
  %oz_pgrp.i103 = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 3
  %72 = ptrtoint ptr %oz_pgrp.i103 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %oz_pgrp.i103, align 4
  %cmp.i104.not = icmp eq ptr %71, %73
  br i1 %cmp.i104.not, label %autofs_oz_mode.exit107.if.end45_crit_edge, label %land.lhs.true

autofs_oz_mode.exit107.if.end45_crit_edge:        ; preds = %autofs_oz_mode.exit107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %autofs_oz_mode.exit107
  %74 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d_parent.i, align 8
  %d_parent41 = getelementptr inbounds %struct.dentry, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %d_parent41 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %d_parent41, align 8
  %cmp42 = icmp eq ptr %75, %77
  br i1 %cmp42, label %land.lhs.true.if.end45_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %autofs_oz_mode.exit107.if.end45_crit_edge, %if.else.if.end45_crit_edge
  %call46 = tail call ptr @autofs_new_ino(ptr noundef %11) #9
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock) #9
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #9
  %78 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %d_parent.i, align 8
  %d_parent53 = getelementptr inbounds %struct.dentry, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %d_parent53 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d_parent53, align 8
  %cmp54 = icmp eq ptr %79, %81
  br i1 %cmp54, label %land.lhs.true55, label %if.end50.if.end59_crit_edge

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true55:                                  ; preds = %if.end50
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 10
  %82 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i108.not = icmp eq i32 %83, 1
  br i1 %cmp.i108.not, label %if.then58, label %land.lhs.true55.if.end59_crit_edge

land.lhs.true55.if.end59_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dentry, align 8
  %or.i = or i32 %85, 393216
  store i32 %or.i, ptr %dentry, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %land.lhs.true55.if.end59_crit_edge, %if.end50.if.end59_crit_edge
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %86 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call46, ptr %d_fsdata, align 4
  %87 = ptrtoint ptr %call46 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dentry, ptr %call46, align 4
  %active61 = getelementptr inbounds %struct.autofs_info, ptr %call46, i32 0, i32 4
  %active_list = getelementptr inbounds %struct.autofs_sb_info, ptr %11, i32 0, i32 17
  %88 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %active_list, align 4
  %call.i.i109 = tail call zeroext i1 @__list_add_valid(ptr noundef %active61, ptr noundef %active_list, ptr noundef %89) #9
  br i1 %call.i.i109, label %if.end.i.i, label %if.end59.list_add.exit_crit_edge

if.end59.list_add.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %active61, ptr %prev1.i.i, align 4
  %91 = ptrtoint ptr %active61 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %89, ptr %active61, align 4
  %prev3.i.i = getelementptr inbounds %struct.autofs_info, ptr %call46, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %active_list, ptr %prev3.i.i, align 4
  %93 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %active61, ptr %active_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end59.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock) #9
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end45.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %autofs_lookup_active.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %list_add.exit ], [ %47, %autofs_lookup_active.exit.cleanup_crit_edge ], [ inttoptr (i32 -36 to ptr), %do.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end45.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dir_unlink(ptr noundef %dir, ptr noundef %dentry) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata.i, align 4
  %flags.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %autofs_oz_mode.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

autofs_oz_mode.exit:                              ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 22, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i.not = icmp eq ptr %15, %17
  br i1 %cmp.i.not, label %if.end5, label %autofs_oz_mode.exit.cleanup_crit_edge

autofs_oz_mode.exit.cleanup_crit_edge:            ; preds = %autofs_oz_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %autofs_oz_mode.exit
  %count = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %count, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %20 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_parent, align 8
  %d_fsdata.i26 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %d_fsdata.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_fsdata.i26, align 4
  %count7 = getelementptr inbounds %struct.autofs_info, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %count7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count7, align 4
  %dec8 = add i32 %25, -1
  store i32 %dec8, ptr %count7, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  tail call void @dput(ptr noundef %27) #9
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %i_size, align 8
  %31 = load ptr, ptr %d_inode.i, align 8
  tail call void @clear_nlink(ptr noundef %31) #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %32 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 16
  call void @_raw_spin_lock(ptr noundef %lookup_lock) #9
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %33 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i, align 16
  %37 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_fsdata.i, align 4
  %tobool.not.i28 = icmp eq ptr %38, null
  br i1 %tobool.not.i28, label %if.end5.__autofs_add_expiring.exit_crit_edge, label %if.then.i

if.end5.__autofs_add_expiring.exit_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %__autofs_add_expiring.exit

if.then.i:                                        ; preds = %if.end5
  %expiring.i = getelementptr inbounds %struct.autofs_info, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %expiring.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %expiring.i, align 4
  %cmp.i.not.i = icmp eq ptr %40, %expiring.i
  br i1 %cmp.i.not.i, label %if.then4.i, label %if.then.i.__autofs_add_expiring.exit_crit_edge

if.then.i.__autofs_add_expiring.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__autofs_add_expiring.exit

if.then4.i:                                       ; preds = %if.then.i
  %expiring_list.i = getelementptr inbounds %struct.autofs_sb_info, ptr %36, i32 0, i32 18
  %41 = ptrtoint ptr %expiring_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %expiring_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %expiring.i, ptr noundef %expiring_list.i, ptr noundef %42) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.__autofs_add_expiring.exit_crit_edge

if.then4.i.__autofs_add_expiring.exit_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__autofs_add_expiring.exit

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %expiring.i, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %expiring.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %expiring.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.autofs_info, ptr %38, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %expiring_list.i, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %expiring_list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %expiring.i, ptr %expiring_list.i, align 4
  br label %__autofs_add_expiring.exit

__autofs_add_expiring.exit:                       ; preds = %if.end.i.i.i, %if.then4.i.__autofs_add_expiring.exit_crit_edge, %if.then.i.__autofs_add_expiring.exit_crit_edge, %if.end5.__autofs_add_expiring.exit_crit_edge
  call void @d_drop(ptr noundef %dentry) #9
  call void @_raw_spin_unlock(ptr noundef %lookup_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %__autofs_add_expiring.exit, %autofs_oz_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__autofs_add_expiring.exit ], [ -13, %autofs_oz_mode.exit.cleanup_crit_edge ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dir_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #1 align 64 {
entry:
  %tmp48 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata.i, align 4
  %call2 = tail call i32 @strlen(ptr noundef %symname) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_dir_symlink.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_dir_symlink, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_dir_symlink.__UNIQUE_ID_ddebug216, ptr noundef nonnull @.str.24, i32 noundef %11, ptr noundef nonnull @.str.22, ptr noundef %symname, ptr noundef %dentry) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i74 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i, label %autofs_oz_mode.exit, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

autofs_oz_mode.exit:                              ; preds = %do.end
  %14 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 111
  %18 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %19, i32 0, i32 22, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i75.not = icmp eq ptr %21, %23
  br i1 %cmp.i75.not, label %do.body14, label %autofs_oz_mode.exit.cleanup_crit_edge

autofs_oz_mode.exit.cleanup_crit_edge:            ; preds = %autofs_oz_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %autofs_oz_mode.exit
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %do.body25, label %do.end33, !prof !82

do.body25:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/autofs/root.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 552, 0\0A.popsection", ""() #9, !srcloc !83
  unreachable

do.end33:                                         ; preds = %do.body14
  tail call void @autofs_clean_ino(ptr noundef nonnull %5) #9
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %24 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %28 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_fsdata.i, align 4
  %lookup_lock.i = getelementptr inbounds %struct.autofs_sb_info, ptr %27, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock.i) #9
  %active.i = getelementptr inbounds %struct.autofs_info, ptr %29, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %active.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end33.autofs_del_active.exit_crit_edge

do.end33.autofs_del_active.exit_crit_edge:        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_del_active.exit

if.end.i.i.i:                                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.autofs_info, ptr %29, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %active.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %autofs_del_active.exit

autofs_del_active.exit:                           ; preds = %if.end.i.i.i, %do.end33.autofs_del_active.exit_crit_edge
  %36 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %active.i, ptr %active.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.autofs_info, ptr %29, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %active.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock.i) #9
  %add = add i32 %call2, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %tobool35.not = icmp eq ptr %call9.i, null
  br i1 %tobool35.not, label %autofs_del_active.exit.cleanup_crit_edge, label %if.end37

autofs_del_active.exit.cleanup_crit_edge:         ; preds = %autofs_del_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %autofs_del_active.exit
  %call38 = tail call ptr @strcpy(ptr noundef nonnull %call9.i, ptr noundef %symname) #13
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %call40 = tail call ptr @autofs_get_inode(ptr noundef %39, i16 noundef zeroext -24211) #9
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %i_private = getelementptr inbounds %struct.inode, ptr %call40, i32 0, i32 54
  %40 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9.i, ptr %i_private, align 4
  %conv = zext i32 %call2 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call40, i32 0, i32 14
  %41 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv, ptr %i_size, align 8
  tail call void @d_add(ptr noundef %dentry, ptr noundef nonnull %call40) #9
  %tobool.not.i76 = icmp eq ptr %dentry, null
  br i1 %tobool.not.i76, label %if.end43.dget.exit_crit_edge, label %if.then.i77

if.end43.dget.exit_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %dget.exit

if.then.i77:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #9
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i77, %if.end43.dget.exit_crit_edge
  %count = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 8
  %42 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %count, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %44 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_parent, align 8
  %d_fsdata.i79 = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %d_fsdata.i79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_fsdata.i79, align 4
  %count46 = getelementptr inbounds %struct.autofs_info, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %count46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count46, align 4
  %inc47 = add i32 %49, 1
  store i32 %inc47, ptr %count46, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp48) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp48, ptr noundef %dir) #9
  %50 = call ptr @memcpy(ptr %i_mtime, ptr %tmp48, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp48) #9
  br label %cleanup

cleanup:                                          ; preds = %dget.exit, %if.then42, %autofs_del_active.exit.cleanup_crit_edge, %autofs_oz_mode.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dget.exit ], [ -12, %if.then42 ], [ -13, %autofs_oz_mode.exit.cleanup_crit_edge ], [ -12, %autofs_del_active.exit.cleanup_crit_edge ], [ -13, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dir_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #1 align 64 {
entry:
  %tmp46 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata.i, align 4
  %flags.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %autofs_oz_mode.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

autofs_oz_mode.exit:                              ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 22, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i.not = icmp eq ptr %15, %17
  br i1 %cmp.i.not, label %do.body, label %autofs_oz_mode.exit.cleanup_crit_edge

autofs_oz_mode.exit.cleanup_crit_edge:            ; preds = %autofs_oz_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %autofs_oz_mode.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_dir_mkdir.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_dir_mkdir, %if.then10)) #9
          to label %do.body13 [label %if.then10], !srcloc !81

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i66 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i66 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_dir_mkdir.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.30, i32 noundef %23, ptr noundef nonnull @.str.28, ptr noundef %dentry, ptr noundef %dentry) #9
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %do.body
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %do.body24, label %do.end32, !prof !82

do.body24:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/autofs/root.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 741, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

do.end32:                                         ; preds = %do.body13
  tail call void @autofs_clean_ino(ptr noundef nonnull %5) #9
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %24 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %28 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_fsdata.i, align 4
  %lookup_lock.i = getelementptr inbounds %struct.autofs_sb_info, ptr %27, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock.i) #9
  %active.i = getelementptr inbounds %struct.autofs_info, ptr %29, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %active.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end32.autofs_del_active.exit_crit_edge

do.end32.autofs_del_active.exit_crit_edge:        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_del_active.exit

if.end.i.i.i:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.autofs_info, ptr %29, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %active.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %autofs_del_active.exit

autofs_del_active.exit:                           ; preds = %if.end.i.i.i, %do.end32.autofs_del_active.exit_crit_edge
  %36 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %active.i, ptr %active.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.autofs_info, ptr %29, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %active.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock.i) #9
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %40 = or i16 %mode, 16384
  %call35 = tail call ptr @autofs_get_inode(ptr noundef %39, i16 noundef zeroext %40) #9
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %autofs_del_active.exit.cleanup_crit_edge, label %if.end38

autofs_del_active.exit.cleanup_crit_edge:         ; preds = %autofs_del_active.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %autofs_del_active.exit
  tail call void @d_add(ptr noundef %dentry, ptr noundef nonnull %call35) #9
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 4
  %41 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp = icmp slt i32 %42, 5
  br i1 %cmp, label %if.then40, label %if.end38.if.end41_crit_edge

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %43 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_parent.i, align 8
  %d_parent2.i = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %d_parent2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_parent2.i, align 8
  %cmp.i67 = icmp eq ptr %44, %46
  br i1 %cmp.i67, label %if.then40.if.end41_crit_edge, label %if.end.i

if.then40.if.end41_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end.i:                                         ; preds = %if.then40
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #9
  %47 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dentry, align 8
  %or.i.i.i = or i32 %48, 393216
  store i32 %or.i.i.i, ptr %dentry, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #9
  %49 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_parent.i, align 8
  %d_parent4.i = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %d_parent4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d_parent4.i, align 8
  %d_parent6.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %d_parent6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d_parent6.i, align 8
  %cmp7.i = icmp eq ptr %52, %54
  br i1 %cmp7.i, label %if.end.i.if.end41_crit_edge, label %if.end9.i

if.end.i.if.end41_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref.i15.i = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i15.i) #9
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %50, align 8
  %and.i.i.i = and i32 %56, -393217
  store i32 %and.i.i.i, ptr %50, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i15.i) #9
  br label %if.end41

if.end41:                                         ; preds = %if.end9.i, %if.end.i.if.end41_crit_edge, %if.then40.if.end41_crit_edge, %if.end38.if.end41_crit_edge
  %tobool.not.i68 = icmp eq ptr %dentry, null
  br i1 %tobool.not.i68, label %if.end41.dget.exit_crit_edge, label %if.then.i

if.end41.dget.exit_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %dget.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #9
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end41.dget.exit_crit_edge
  %count = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 8
  %57 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %count, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %59 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d_parent, align 8
  %d_fsdata.i70 = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %d_fsdata.i70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d_fsdata.i70, align 4
  %count44 = getelementptr inbounds %struct.autofs_info, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %count44 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count44, align 4
  %inc45 = add i32 %64, 1
  store i32 %inc45, ptr %count44, align 4
  tail call void @inc_nlink(ptr noundef %dir) #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp46) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp46, ptr noundef %dir) #9
  %65 = call ptr @memcpy(ptr %i_mtime, ptr %tmp46, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp46) #9
  br label %cleanup

cleanup:                                          ; preds = %dget.exit, %autofs_del_active.exit.cleanup_crit_edge, %autofs_oz_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dget.exit ], [ -13, %autofs_oz_mode.exit.cleanup_crit_edge ], [ -12, %autofs_del_active.exit.cleanup_crit_edge ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_dir_rmdir(ptr noundef %dir, ptr noundef %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_dir_rmdir.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_dir_rmdir, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_dir_rmdir.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.27, i32 noundef %11, ptr noundef nonnull @.str.25, ptr noundef %dentry, ptr noundef %dentry) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i47 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i, label %autofs_oz_mode.exit, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

autofs_oz_mode.exit:                              ; preds = %do.end
  %14 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 111
  %18 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %19, i32 0, i32 22, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i.not = icmp eq ptr %21, %23
  br i1 %cmp.i.not, label %if.end12, label %autofs_oz_mode.exit.cleanup_crit_edge

autofs_oz_mode.exit.cleanup_crit_edge:            ; preds = %autofs_oz_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %autofs_oz_mode.exit
  %count = getelementptr inbounds %struct.autofs_info, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.not = icmp eq i32 %25, 1
  br i1 %cmp.not, label %if.end14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end12
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock) #9
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %26 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i, align 16
  %30 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_fsdata.i, align 4
  %tobool.not.i48 = icmp eq ptr %31, null
  br i1 %tobool.not.i48, label %if.end14.__autofs_add_expiring.exit_crit_edge, label %if.then.i

if.end14.__autofs_add_expiring.exit_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %__autofs_add_expiring.exit

if.then.i:                                        ; preds = %if.end14
  %expiring.i = getelementptr inbounds %struct.autofs_info, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %expiring.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %expiring.i, align 4
  %cmp.i.not.i = icmp eq ptr %33, %expiring.i
  br i1 %cmp.i.not.i, label %if.then4.i, label %if.then.i.__autofs_add_expiring.exit_crit_edge

if.then.i.__autofs_add_expiring.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__autofs_add_expiring.exit

if.then4.i:                                       ; preds = %if.then.i
  %expiring_list.i = getelementptr inbounds %struct.autofs_sb_info, ptr %29, i32 0, i32 18
  %34 = ptrtoint ptr %expiring_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %expiring_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %expiring.i, ptr noundef %expiring_list.i, ptr noundef %35) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.__autofs_add_expiring.exit_crit_edge

if.then4.i.__autofs_add_expiring.exit_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__autofs_add_expiring.exit

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %expiring.i, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %expiring.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %expiring.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.autofs_info, ptr %31, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %expiring_list.i, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %expiring_list.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %expiring.i, ptr %expiring_list.i, align 4
  br label %__autofs_add_expiring.exit

__autofs_add_expiring.exit:                       ; preds = %if.end.i.i.i, %if.then4.i.__autofs_add_expiring.exit_crit_edge, %if.then.i.__autofs_add_expiring.exit_crit_edge, %if.end14.__autofs_add_expiring.exit_crit_edge
  tail call void @d_drop(ptr noundef %dentry) #9
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock) #9
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp16 = icmp slt i32 %41, 5
  br i1 %cmp16, label %if.then17, label %__autofs_add_expiring.exit.if.end18_crit_edge

__autofs_add_expiring.exit.if.end18_crit_edge:    ; preds = %__autofs_add_expiring.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %__autofs_add_expiring.exit
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %42 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_parent.i, align 8
  %d_parent2.i = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %d_parent2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_parent2.i, align 8
  %cmp.i49 = icmp eq ptr %43, %45
  br i1 %cmp.i49, label %if.then17.if.end18_crit_edge, label %if.end.i

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end.i:                                         ; preds = %if.then17
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #9
  %46 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dentry, align 8
  %and.i.i.i = and i32 %47, -393217
  store i32 %and.i.i.i, ptr %dentry, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #9
  %48 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_parent.i, align 8
  %d_parent4.i = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %d_parent4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d_parent4.i, align 8
  %d_parent6.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %d_parent6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_parent6.i, align 8
  %cmp7.i = icmp eq ptr %51, %53
  br i1 %cmp7.i, label %if.end.i.if.end18_crit_edge, label %if.end9.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end9.i:                                        ; preds = %if.end.i
  %d_fsdata.i.i50 = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 11
  %54 = ptrtoint ptr %d_fsdata.i.i50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_fsdata.i.i50, align 4
  %count.i = getelementptr inbounds %struct.autofs_info, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp10.i = icmp eq i32 %57, 2
  br i1 %cmp10.i, label %if.then11.i, label %if.end9.i.if.end18_crit_edge

if.end9.i.if.end18_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref.i19.i = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i19.i) #9
  %58 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %49, align 8
  %or.i.i.i = or i32 %59, 393216
  store i32 %or.i.i.i, ptr %49, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i19.i) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then11.i, %if.end9.i.if.end18_crit_edge, %if.end.i.if.end18_crit_edge, %if.then17.if.end18_crit_edge, %__autofs_add_expiring.exit.if.end18_crit_edge
  %60 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count, align 4
  %dec = add i32 %61, -1
  store i32 %dec, ptr %count, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %62 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %d_parent, align 8
  %d_fsdata.i51 = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %d_fsdata.i51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_fsdata.i51, align 4
  %count21 = getelementptr inbounds %struct.autofs_info, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %count21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count21, align 4
  %dec22 = add i32 %67, -1
  store i32 %dec22, ptr %count21, align 4
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %5, align 4
  tail call void @dput(ptr noundef %69) #9
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %70 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %d_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %i_size, align 8
  %73 = load ptr, ptr %d_inode.i, align 8
  tail call void @clear_nlink(ptr noundef %73) #9
  %74 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool26.not = icmp eq i32 %76, 0
  br i1 %tobool26.not, label %if.end18.cleanup_crit_edge, label %if.then27

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drop_nlink(ptr noundef %dir) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %autofs_oz_mode.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %autofs_oz_mode.exit.cleanup_crit_edge ], [ -39, %if.end12.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end18.cleanup_crit_edge ], [ -13, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @autofs_dentry_release(ptr noundef %de) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_dentry_release.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_dentry_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_dentry_release.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.7, i32 noundef %11, ptr noundef nonnull @.str.5, ptr noundef %de) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end8.if.end22_crit_edge, label %if.then10

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then10:                                        ; preds = %if.end8
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock) #9
  %active = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %13, %active
  br i1 %cmp.i.not, label %if.then10.if.end15_crit_edge, label %if.then13

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.then10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %active) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_del.exit_crit_edge

if.then13.list_del.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %active, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then13.list_del.exit_crit_edge
  %20 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %active, align 4
  %prev.i = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %list_del.exit, %if.then10.if.end15_crit_edge
  %expiring = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %expiring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %expiring, align 4
  %cmp.i33.not = icmp eq ptr %23, %expiring
  br i1 %cmp.i33.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  %call.i.i35 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %expiring) #9
  br i1 %call.i.i35, label %if.end.i.i38, label %if.then18.list_del.exit40_crit_edge

if.then18.list_del.exit40_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit40

if.end.i.i38:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i36 = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i36, align 4
  %26 = ptrtoint ptr %expiring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %expiring, align 4
  %prev1.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i37, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit40

list_del.exit40:                                  ; preds = %if.end.i.i38, %if.then18.list_del.exit40_crit_edge
  %30 = ptrtoint ptr %expiring to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %expiring, align 4
  %prev.i39 = getelementptr inbounds %struct.autofs_info, ptr %1, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i39, align 4
  br label %if.end20

if.end20:                                         ; preds = %list_del.exit40, %if.end15.if.end20_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock) #9
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end8.if.end22_crit_edge
  tail call void @autofs_free_ino(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @autofs_d_automount(ptr noundef %path) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_d_automount.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_d_automount, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_d_automount.__UNIQUE_ID_ddebug212, ptr noundef nonnull @.str.10, i32 noundef %13, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i96 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i, label %autofs_oz_mode.exit, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

autofs_oz_mode.exit:                              ; preds = %do.end
  %16 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 111
  %20 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 22, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i.not = icmp eq ptr %23, %25
  br i1 %cmp.i.not, label %autofs_oz_mode.exit.cleanup_crit_edge, label %if.end10

autofs_oz_mode.exit.cleanup_crit_edge:            ; preds = %autofs_oz_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %autofs_oz_mode.exit
  %call11 = tail call fastcc i32 @do_expire_wait(ptr noundef %path, i1 noundef zeroext false)
  %26 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11, label %if.end10.cleanup_crit_edge [
    i32 0, label %if.end10.if.end14_crit_edge
    i32 -11, label %if.end10.if.end14_crit_edge106
  ]

if.end10.if.end14_crit_edge106:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10.if.end14_crit_edge, %if.end10.if.end14_crit_edge106
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #9
  %flags = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end14
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #9
  %call18 = tail call fastcc i32 @autofs_mount_wait(ptr noundef %path, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.done_crit_edge, label %if.then20

if.then16.done_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %29 = inttoptr i32 %call18 to ptr
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i, align 8
  %cmp.i97.not = icmp eq ptr %31, null
  br i1 %cmp.i97.not, label %if.end23.if.end29_crit_edge, label %land.lhs.true25

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end23
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 8
  %and.i.i98 = and i32 %33, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i98)
  %cmp.i99 = icmp eq i32 %and.i.i98, 6291456
  br i1 %cmp.i99, label %land.lhs.true25.done.sink.split_crit_edge, label %land.lhs.true25.if.end29_crit_edge

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true25.done.sink.split_crit_edge:        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %call30 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %path) #9
  br i1 %call30, label %if.end29.done.sink.split_crit_edge, label %if.then31

if.end29.done.sink.split_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

if.then31:                                        ; preds = %if.end29
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 4
  %34 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp32 = icmp sgt i32 %35, 4
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then31
  %call34 = tail call i32 @path_has_submounts(ptr noundef %path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end44_crit_edge, label %if.then33.done.sink.split_crit_edge

if.then33.done.sink.split_crit_edge:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.else:                                          ; preds = %if.then31
  %call39 = tail call i32 @simple_empty(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else.done.sink.split_crit_edge, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.else.done.sink.split_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

if.end44:                                         ; preds = %if.else.if.end44_crit_edge, %if.then33.if.end44_crit_edge
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %or = or i32 %37, 4
  store i32 %or, ptr %flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #9
  %call47 = tail call fastcc i32 @autofs_mount_wait(ptr noundef %path, i1 noundef zeroext false)
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #9
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and50 = and i32 %39, -5
  store i32 %and50, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool51.not = icmp eq i32 %call47, 0
  br i1 %tobool51.not, label %if.end44.done.sink.split_crit_edge, label %if.then52

if.end44.done.sink.split_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %done.sink.split

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #9
  %40 = inttoptr i32 %call47 to ptr
  br label %cleanup

done.sink.split:                                  ; preds = %if.end44.done.sink.split_crit_edge, %if.else.done.sink.split_crit_edge, %if.then33.done.sink.split_crit_edge, %if.end29.done.sink.split_crit_edge, %land.lhs.true25.done.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #9
  br label %done

done:                                             ; preds = %done.sink.split, %if.then16.done_crit_edge
  %41 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dentry1, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i, align 16
  %type.i = getelementptr inbounds %struct.autofs_sb_info, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i.not.i = icmp eq i32 %48, 1
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %done.autofs_mountpoint_changed.exit_crit_edge

done.autofs_mountpoint_changed.exit_crit_edge:    ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_mountpoint_changed.exit

land.lhs.true.i:                                  ; preds = %done
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.not.i, label %if.then.i, label %land.lhs.true.i.autofs_mountpoint_changed.exit_crit_edge

land.lhs.true.i.autofs_mountpoint_changed.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_mountpoint_changed.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 3
  %51 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d_parent.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 4
  %call5.i = tail call ptr @d_lookup(ptr noundef %52, ptr noundef %d_name.i) #9
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then.i.if.then60_crit_edge, label %autofs_mountpoint_changed.exit.thread104

if.then.i.if.then60_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

autofs_mountpoint_changed.exit.thread104:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %call5.i, i32 0, i32 11
  %53 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d_fsdata.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %last_used.i = getelementptr inbounds %struct.autofs_info, ptr %54, i32 0, i32 7
  %56 = ptrtoint ptr %last_used.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %last_used.i, align 4
  %57 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dentry1, align 4
  tail call void @dput(ptr noundef %58) #9
  %59 = ptrtoint ptr %dentry1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call5.i, ptr %dentry1, align 4
  br label %cleanup

autofs_mountpoint_changed.exit:                   ; preds = %land.lhs.true.i.autofs_mountpoint_changed.exit_crit_edge, %done.autofs_mountpoint_changed.exit_crit_edge
  %60 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load ptr, ptr %dentry1, align 4
  %tobool59.not = icmp eq ptr %.pr, null
  br i1 %tobool59.not, label %autofs_mountpoint_changed.exit.if.then60_crit_edge, label %autofs_mountpoint_changed.exit.cleanup_crit_edge

autofs_mountpoint_changed.exit.cleanup_crit_edge: ; preds = %autofs_mountpoint_changed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

autofs_mountpoint_changed.exit.if.then60_crit_edge: ; preds = %autofs_mountpoint_changed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

if.then60:                                        ; preds = %autofs_mountpoint_changed.exit.if.then60_crit_edge, %if.then.i.if.then60_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %autofs_mountpoint_changed.exit.cleanup_crit_edge, %autofs_mountpoint_changed.exit.thread104, %if.then52, %if.then20, %if.end10.cleanup_crit_edge, %autofs_oz_mode.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %if.then20 ], [ inttoptr (i32 -2 to ptr), %if.then60 ], [ %40, %if.then52 ], [ null, %autofs_oz_mode.exit.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ], [ null, %autofs_mountpoint_changed.exit.cleanup_crit_edge ], [ null, %autofs_mountpoint_changed.exit.thread104 ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_d_manage(ptr noundef %path, i1 noundef zeroext %rcu_walk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_d_manage.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_d_manage, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_d_manage.__UNIQUE_ID_ddebug213, ptr noundef nonnull @.str.10, i32 noundef %13, ptr noundef nonnull @.str.16, ptr noundef %1, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i92 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i, label %autofs_oz_mode.exit, label %do.end.if.then10_crit_edge

do.end.if.then10_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

autofs_oz_mode.exit:                              ; preds = %do.end
  %16 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 111
  %20 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 22, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i.not = icmp eq ptr %23, %25
  br i1 %cmp.i.not, label %autofs_oz_mode.exit.if.then10_crit_edge, label %if.end14

autofs_oz_mode.exit.if.then10_crit_edge:          ; preds = %autofs_oz_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %autofs_oz_mode.exit.if.then10_crit_edge, %do.end.if.then10_crit_edge
  %call11 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %path) #9
  %. = select i1 %call11, i32 0, i32 -21
  br label %cleanup65

if.end14:                                         ; preds = %autofs_oz_mode.exit
  %call16 = tail call fastcc i32 @do_expire_wait(ptr noundef %path, i1 noundef zeroext %rcu_walk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %call16)
  %cmp = icmp eq i32 %call16, -10
  br i1 %cmp, label %if.end14.cleanup65_crit_edge, label %if.end18

if.end14.cleanup65_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end18:                                         ; preds = %if.end14
  %call20 = tail call fastcc i32 @autofs_mount_wait(ptr noundef %path, i1 noundef zeroext %rcu_walk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup65_crit_edge

if.end18.cleanup65_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end23:                                         ; preds = %if.end18
  br i1 %rcu_walk, label %if.then25, label %if.end47

if.then25:                                        ; preds = %if.end23
  %flags = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end28, label %if.then25.cleanup65_crit_edge

if.then25.cleanup65_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end28:                                         ; preds = %if.then25
  %call29 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %path) #9
  br i1 %call29, label %if.end28.cleanup65_crit_edge, label %if.end31

if.end28.cleanup65_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end31:                                         ; preds = %if.end28
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %d_inode.i, align 8
  %tobool33.not = icmp eq ptr %29, null
  br i1 %tobool33.not, label %if.end31.if.end38_crit_edge, label %land.lhs.true

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end31
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %32)
  %cmp35 = icmp eq i16 %32, -24576
  br i1 %cmp35, label %land.lhs.true.cleanup65_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true.cleanup65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.end31.if.end38_crit_edge
  %d_subdirs = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %d_subdirs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %d_subdirs, align 4
  %cmp.i93.not = icmp eq ptr %34, %d_subdirs
  br i1 %cmp.i93.not, label %if.end38.cleanup65_crit_edge, label %if.end42

if.end38.cleanup65_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 @simple_empty(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %.91 = select i1 %tobool44.not, i32 -21, i32 0
  br label %cleanup65

if.end47:                                         ; preds = %if.end23
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %fs_lock) #9
  %flags48 = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 2
  %35 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags48, align 4
  %and49 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end47.if.end63_crit_edge

if.end47.if.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then51:                                        ; preds = %if.end47
  %call52 = tail call zeroext i1 @path_is_mountpoint(ptr noundef %path) #9
  br i1 %call52, label %if.then51.lor.lhs.false_crit_edge, label %land.lhs.true53

if.then51.lor.lhs.false_crit_edge:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true53:                                  ; preds = %if.then51
  %call54 = tail call i32 @simple_empty(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.if.then61_crit_edge, label %land.lhs.true53.lor.lhs.false_crit_edge

land.lhs.true53.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true53.if.then61_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61

lor.lhs.false:                                    ; preds = %land.lhs.true53.lor.lhs.false_crit_edge, %if.then51.lor.lhs.false_crit_edge
  %d_inode.i94 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i94 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i94, align 8
  %cmp.i95.not = icmp eq ptr %38, null
  br i1 %cmp.i95.not, label %lor.lhs.false.if.end63_crit_edge, label %land.lhs.true58

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true58:                                  ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 8
  %and.i.i96 = and i32 %40, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i96)
  %cmp.i97 = icmp eq i32 %and.i.i96, 6291456
  br i1 %cmp.i97, label %land.lhs.true58.if.then61_crit_edge, label %land.lhs.true58.if.end63_crit_edge

land.lhs.true58.if.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true58.if.then61_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61

if.then61:                                        ; preds = %land.lhs.true58.if.then61_crit_edge, %land.lhs.true53.if.then61_crit_edge
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true58.if.end63_crit_edge, %lor.lhs.false.if.end63_crit_edge, %if.end47.if.end63_crit_edge
  %status.0 = phi i32 [ 0, %if.end47.if.end63_crit_edge ], [ -21, %if.then61 ], [ 0, %land.lhs.true58.if.end63_crit_edge ], [ 0, %lor.lhs.false.if.end63_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %fs_lock) #9
  br label %cleanup65

cleanup65:                                        ; preds = %if.end63, %if.end42, %if.end38.cleanup65_crit_edge, %land.lhs.true.cleanup65_crit_edge, %if.end28.cleanup65_crit_edge, %if.then25.cleanup65_crit_edge, %if.end18.cleanup65_crit_edge, %if.end14.cleanup65_crit_edge, %if.then10
  %retval.1 = phi i32 [ %status.0, %if.end63 ], [ %., %if.then10 ], [ -10, %if.end14.cleanup65_crit_edge ], [ %call20, %if.end18.cleanup65_crit_edge ], [ 0, %if.then25.cleanup65_crit_edge ], [ 0, %if.end28.cleanup65_crit_edge ], [ -21, %land.lhs.true.cleanup65_crit_edge ], [ 0, %if.end38.cleanup65_crit_edge ], [ %.91, %if.end42 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_autofs_dentry(ptr noundef readonly %dentry) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true1

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %d_op = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 8
  %2 = ptrtoint ptr %d_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_op, align 8
  %cmp = icmp eq ptr %3, @autofs_dentry_operations
  br i1 %cmp, label %land.rhs, label %land.lhs.true1.land.end_crit_edge

land.lhs.true1.land.end_crit_edge:                ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata, align 4
  %cmp2 = icmp ne ptr %5, null
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true1.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %6 = phi i32 [ 0, %land.lhs.true1.land.end_crit_edge ], [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_is_mountpoint(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_empty(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_free_ino(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_expire_wait(ptr noundef %path, i1 noundef zeroext %rcu_walk) unnamed_addr #1 align 64 {
entry:
  %this = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_name.i, align 8
  %hash2.i = getelementptr inbounds %struct.anon.4, ptr %d_name.i, i32 0, i32 1
  %10 = ptrtoint ptr %hash2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash2.i, align 4
  %name3.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name3.i, align 8
  %expiring_list.i = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 18
  %14 = ptrtoint ptr %expiring_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %expiring_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %expiring_list.i
  br i1 %cmp.i.not.i, label %entry.if.then5_crit_edge, label %if.end.i

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end.i:                                         ; preds = %entry
  %lookup_lock.i = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %lookup_lock.i) #9
  %16 = ptrtoint ptr %expiring_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.086.i = load ptr, ptr %expiring_list.i, align 4
  %cmp.i80.not87.i = icmp eq ptr %p.086.i, %expiring_list.i
  %brmerge.i = or i1 %cmp.i80.not87.i, %rcu_walk
  %.mux.i = select i1 %cmp.i80.not87.i, ptr null, ptr inttoptr (i32 -10 to ptr)
  br i1 %brmerge.i, label %if.end.i.autofs_lookup_expiring.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.autofs_lookup_expiring.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_lookup_expiring.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %p.088.i = phi ptr [ %p.0.i, %cleanup.i.for.body.i_crit_edge ], [ %p.086.i, %if.end.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %p.088.i, i32 -76
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #9
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i82.i = icmp eq ptr %20, null
  br i1 %cmp.i82.i, label %for.body.i.cleanup.i_crit_edge, label %if.end15.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end15.i:                                       ; preds = %for.body.i
  %d_name16.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 4
  %hash18.i = getelementptr inbounds %struct.anon.4, ptr %d_name16.i, i32 0, i32 1
  %21 = ptrtoint ptr %hash18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hash18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %11)
  %cmp.not.i = icmp eq i32 %22, %11
  br i1 %cmp.not.i, label %if.end20.i, label %if.end15.i.cleanup.i_crit_edge

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end20.i:                                       ; preds = %if.end15.i
  %d_parent21.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %d_parent21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_parent21.i, align 8
  %cmp22.not.i = icmp eq ptr %24, %7
  br i1 %cmp22.not.i, label %if.end24.i, label %if.end20.i.cleanup.i_crit_edge

if.end20.i.cleanup.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end24.i:                                       ; preds = %if.end20.i
  %25 = ptrtoint ptr %d_name16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %d_name16.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %9)
  %cmp26.not.i = icmp eq i32 %26, %9
  br i1 %cmp26.not.i, label %if.end28.i, label %if.end24.i.cleanup.i_crit_edge

if.end24.i.cleanup.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end28.i:                                       ; preds = %if.end24.i
  %name29.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %name29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name29.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %28, ptr %13, i32 %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool31.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end28.i.cleanup.i_crit_edge

if.end28.i.cleanup.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end33.i:                                       ; preds = %if.end28.i
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.not.i, label %if.then36.i, label %if.end33.i.cleanup.i_crit_edge

if.end33.i.cleanup.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then36.i:                                      ; preds = %if.end33.i
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then36.i.dget_dlock.exit.i_crit_edge, label %if.then.i.i

if.then36.i.dget_dlock.exit.i_crit_edge:          ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dget_dlock.exit.i

if.then.i.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  %count.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i.i, align 4
  %inc.i.i = add i32 %32, 1
  store i32 %inc.i.i, ptr %count.i.i, align 4
  br label %dget_dlock.exit.i

dget_dlock.exit.i:                                ; preds = %if.then.i.i, %if.then36.i.dget_dlock.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #9
  br label %autofs_lookup_expiring.exit

cleanup.i:                                        ; preds = %if.end33.i.cleanup.i_crit_edge, %if.end28.i.cleanup.i_crit_edge, %if.end24.i.cleanup.i_crit_edge, %if.end20.i.cleanup.i_crit_edge, %if.end15.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #9
  %33 = ptrtoint ptr %p.088.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %p.0.i = load ptr, ptr %p.088.i, align 4
  %cmp.i80.not.i = icmp eq ptr %p.0.i, %expiring_list.i
  br i1 %cmp.i80.not.i, label %autofs_lookup_expiring.exit.thread29, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

autofs_lookup_expiring.exit.thread29:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock.i) #9
  br label %if.then5

autofs_lookup_expiring.exit:                      ; preds = %dget_dlock.exit.i, %if.end.i.autofs_lookup_expiring.exit_crit_edge
  %retval.2.ph.i = phi ptr [ %18, %dget_dlock.exit.i ], [ %.mux.i, %if.end.i.autofs_lookup_expiring.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lookup_lock.i) #9
  %cmp.i = icmp ugt ptr %retval.2.ph.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %autofs_lookup_expiring.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %retval.2.ph.i to i32
  br label %cleanup

if.end:                                           ; preds = %autofs_lookup_expiring.exit
  %tobool4.not = icmp eq ptr %retval.2.ph.i, null
  br i1 %tobool4.not, label %if.end.if.then5_crit_edge, label %if.else

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %autofs_lookup_expiring.exit.thread29, %entry.if.then5_crit_edge
  %conv = zext i1 %rcu_walk to i32
  %call7 = tail call i32 @autofs_expire_wait(ptr noundef %path, i32 noundef %conv) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %this) #9
  %35 = getelementptr inbounds %struct.path, ptr %this, i32 0, i32 1
  %36 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %path, align 4
  %38 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %this, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.2.ph.i, ptr %35, align 4
  %call10 = call i32 @autofs_expire_wait(ptr noundef nonnull %this, i32 noundef 0) #9
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %retval.2.ph.i, i32 0, i32 11
  %40 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_fsdata.i.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.else.autofs_del_expiring.exit_crit_edge, label %if.then.i

if.else.autofs_del_expiring.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %autofs_del_expiring.exit

if.then.i:                                        ; preds = %if.else
  %d_sb.i21 = getelementptr inbounds %struct.dentry, ptr %retval.2.ph.i, i32 0, i32 9
  %42 = ptrtoint ptr %d_sb.i21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_sb.i21, align 4
  %s_fs_info.i.i22 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i22, align 16
  %lookup_lock.i23 = getelementptr inbounds %struct.autofs_sb_info, ptr %45, i32 0, i32 16
  call void @_raw_spin_lock(ptr noundef %lookup_lock.i23) #9
  %expiring.i = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 5
  %46 = ptrtoint ptr %expiring.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %expiring.i, align 4
  %cmp.i.not.i24 = icmp eq ptr %47, %expiring.i
  br i1 %cmp.i.not.i24, label %if.then.i.if.end.i25_crit_edge, label %if.then4.i

if.then.i.if.end.i25_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i25

if.then4.i:                                       ; preds = %if.then.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %expiring.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.list_del_init.exit.i_crit_edge

if.then4.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %expiring.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %expiring.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then4.i.list_del_init.exit.i_crit_edge
  %54 = ptrtoint ptr %expiring.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %expiring.i, ptr %expiring.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %expiring.i, ptr %prev.i3.i.i, align 4
  br label %if.end.i25

if.end.i25:                                       ; preds = %list_del_init.exit.i, %if.then.i.if.end.i25_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lookup_lock.i23) #9
  br label %autofs_del_expiring.exit

autofs_del_expiring.exit:                         ; preds = %if.end.i25, %if.else.autofs_del_expiring.exit_crit_edge
  call void @dput(ptr noundef nonnull %retval.2.ph.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %this) #9
  br label %cleanup

cleanup:                                          ; preds = %autofs_del_expiring.exit, %if.then5, %if.then
  %retval.0 = phi i32 [ %34, %if.then ], [ 0, %autofs_del_expiring.exit ], [ %call7, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @autofs_mount_wait(ptr noundef %path, i1 noundef zeroext %rcu_walk) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
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
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end34, label %if.then

if.then:                                          ; preds = %entry
  br i1 %rcu_walk, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_mount_wait.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_mount_wait, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !81

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_mount_wait.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.13, i32 noundef %15, ptr noundef nonnull @.str.11, ptr noundef %17) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %call14 = tail call i32 @autofs_wait(ptr noundef %5, ptr noundef %path, i32 noundef 1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_mount_wait.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_mount_wait, %if.then27)) #9
          to label %cleanup.sink.split [label %if.then27], !srcloc !81

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i54 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i54 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task29, align 8
  %pid30 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid30, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_mount_wait.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.15, i32 noundef %23, ptr noundef nonnull @.str.11, i32 noundef %call14) #9
  br label %cleanup.sink.split

if.end34:                                         ; preds = %entry
  %flags35 = getelementptr inbounds %struct.autofs_sb_info, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags35, align 4
  %and36 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.cleanup.sink.split_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34.cleanup.sink.split_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end34.cleanup.sink.split_crit_edge, %if.then27, %do.end
  %retval.0.ph = phi i32 [ %call14, %do.end ], [ %call14, %if.then27 ], [ 0, %if.end34.cleanup.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %last_used39 = getelementptr inbounds %struct.autofs_info, ptr %7, i32 0, i32 7
  %27 = ptrtoint ptr %last_used39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_used39, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %if.then.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_has_submounts(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_expire_wait(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @autofs_new_ino(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_clean_ino(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @autofs_get_inode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @autofs_root_ioctl_unlocked(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = inttoptr i32 %arg to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_root_ioctl_unlocked.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_root_ioctl_unlocked, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !71) #9
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
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 2, ptr noundef nonnull @init_pid_ns) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_root_ioctl_unlocked.__UNIQUE_ID_ddebug220, ptr noundef nonnull @.str.33, i32 noundef %10, ptr noundef nonnull @.str.31, i32 noundef %cmd, i32 noundef %arg, ptr noundef %3, i32 noundef %call.i.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %11 = and i32 %cmd, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 37728, i32 %11)
  %12 = icmp eq i32 %11, 37728
  br i1 %12, label %if.end12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %flags.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i65 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i, label %autofs_oz_mode.exit, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

autofs_oz_mode.exit:                              ; preds = %if.end12
  %15 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 111
  %19 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %20, i32 0, i32 22, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 8
  %oz_pgrp.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %oz_pgrp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oz_pgrp.i, align 4
  %cmp.i.not = icmp eq ptr %22, %24
  br i1 %cmp.i.not, label %autofs_oz_mode.exit.if.end17_crit_edge, label %land.lhs.true

autofs_oz_mode.exit.if.end17_crit_edge:           ; preds = %autofs_oz_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %autofs_oz_mode.exit
  %call15 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call15, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %autofs_oz_mode.exit.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %25 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %cmd, label %if.end17.cleanup_crit_edge [
    i32 37728, label %sw.bb
    i32 37729, label %sw.bb19
    i32 37730, label %sw.bb21
    i32 -2147183773, label %sw.bb22
    i32 -2147183769, label %sw.bb24
    i32 -1073441948, label %sw.bb26
    i32 -2147183760, label %sw.bb28
    i32 -2129882267, label %sw.bb30
    i32 1074041702, label %sw.bb35
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @autofs_wait_release(ptr noundef %3, i32 noundef %arg, i32 noundef 0) #9
  br label %cleanup

sw.bb19:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 @autofs_wait_release(ptr noundef %3, i32 noundef %arg, i32 noundef -2) #9
  br label %cleanup

sw.bb21:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @autofs_catatonic_mode(ptr noundef %3) #9
  br label %cleanup

sw.bb22:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %version.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %version.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 820) #9
  %28 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !85
  %and.i.i66 = and i32 %30, -13
  %or.i.i = or i32 %and.i.i66, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %27, i32 -1226833921) #9, !srcloc !88
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %cleanup

sw.bb24:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %sub_version.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 5
  %32 = ptrtoint ptr %sub_version.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sub_version.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 827) #9
  %34 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i.i.i67 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i67 to ptr
  %cpu_domain.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i68) #4, !srcloc !85
  %and.i.i69 = and i32 %36, -13
  %or.i.i70 = or i32 %and.i.i69, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i70) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %33, i32 -1226833921) #9, !srcloc !89
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %cleanup

sw.bb26:                                          ; preds = %if.end17
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 798) #9
  %38 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i.i.i71 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i71 to ptr
  %cpu_domain.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i72) #4, !srcloc !85
  %and.i.i73 = and i32 %40, -13
  %or.i.i74 = or i32 %and.i.i73, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i74) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  %41 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #9, !srcloc !90
  %asmresult.i = extractvalue { i32, i32 } %41, 0
  %asmresult1.i = extractvalue { i32, i32 } %41, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i75 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i75, label %if.end.i, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb26
  %exp_timeout.i = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 9
  %42 = ptrtoint ptr %exp_timeout.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %exp_timeout.i, align 4
  %div.i = udiv i32 %43, 100
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 802) #9
  %44 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i.i26.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i26.i to ptr
  %cpu_domain.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i27.i) #4, !srcloc !85
  %and.i28.i = and i32 %46, -13
  %or.i29.i = or i32 %and.i28.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i29.i) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  %47 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %div.i, i32 -1226833921) #9, !srcloc !91
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool12.not.i = icmp eq i32 %47, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %asmresult1.i)
  %cmp.i76 = icmp ugt i32 %asmresult1.i, 42949672
  %mul.i = mul i32 %asmresult1.i, 100
  %storemerge.i = select i1 %cmp.i76, i32 0, i32 %mul.i
  %48 = ptrtoint ptr %exp_timeout.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge.i, ptr %exp_timeout.i, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end17
  %f_path = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %49 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %f_path, align 8
  %call.i = tail call i32 @may_umount(ptr noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i78 = icmp ne i32 %call.i, 0
  %spec.select.i = zext i1 %tobool.not.i78 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_ask_umount.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_root_ioctl_unlocked, %if.then5.i)) #9
          to label %autofs_ask_umount.exit [label %if.then5.i], !srcloc !81

if.then5.i:                                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %51 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i16.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i16.i to ptr
  %task.i79 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i79, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_ask_umount.__UNIQUE_ID_ddebug219, ptr noundef nonnull @.str.36, i32 noundef %56, ptr noundef nonnull @.str.34, i32 noundef %spec.select.i) #9
  br label %autofs_ask_umount.exit

autofs_ask_umount.exit:                           ; preds = %if.then5.i, %sw.bb28
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 842) #9
  %57 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i.i.i80 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i80 to ptr
  %cpu_domain.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i81) #4, !srcloc !85
  %and.i.i82 = and i32 %59, -13
  %or.i.i83 = or i32 %and.i.i82, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i83) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  %60 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %spec.select.i, i32 -1226833921) #9, !srcloc !92
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #9, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  br label %cleanup

sw.bb30:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  %f_path32 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %63 = ptrtoint ptr %f_path32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %f_path32, align 8
  %call34 = tail call i32 @autofs_expire_run(ptr noundef %62, ptr noundef %64, ptr noundef %3, ptr noundef %4) #9
  br label %cleanup

sw.bb35:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb, align 4
  %f_path37 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %67 = ptrtoint ptr %f_path37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %f_path37, align 8
  %call39 = tail call i32 @autofs_expire_multi(ptr noundef %66, ptr noundef %68, ptr noundef %3, ptr noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb35, %sw.bb30, %autofs_ask_umount.exit, %if.end14.i, %if.end.i.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %sw.bb24, %sw.bb22, %sw.bb21, %sw.bb19, %sw.bb, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %sw.bb35 ], [ %call34, %sw.bb30 ], [ %60, %autofs_ask_umount.exit ], [ %37, %sw.bb24 ], [ %31, %sw.bb22 ], [ 0, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb ], [ -25, %do.end.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ 0, %if.end14.i ], [ %asmresult.i, %sw.bb26.cleanup_crit_edge ], [ %47, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_wait_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_catatonic_mode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_expire_run(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autofs_expire_multi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_umount(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @autofs_root_operations, !1, !"autofs_root_operations", i1 false, i1 false}
!1 = !{!"../fs/autofs/root.c", i32 31, i32 30}
!2 = !{ptr @autofs_dir_operations, !3, !"autofs_dir_operations", i1 false, i1 false}
!3 = !{!"../fs/autofs/root.c", i32 43, i32 30}
!4 = !{ptr @autofs_dir_inode_operations, !5, !"autofs_dir_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/autofs/root.c", i32 51, i32 31}
!6 = !{ptr @autofs_dentry_operations, !7, !"autofs_dentry_operations", i1 false, i1 false}
!7 = !{!"../fs/autofs/root.c", i32 59, i32 32}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/autofs/root.c", i32 81, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @autofs_dir_open.__UNIQUE_ID_ddebug208, !9, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!14 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/autofs/root.c", i32 111, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @autofs_dentry_release.__UNIQUE_ID_ddebug209, !16, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!19 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/autofs/root.c", i32 318, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @autofs_d_automount.__UNIQUE_ID_ddebug212, !21, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!24 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/autofs/root.c", i32 251, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @autofs_mount_wait.__UNIQUE_ID_ddebug210, !26, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!29 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/autofs/root.c", i32 253, i32 3}
!32 = !{ptr @autofs_mount_wait.__UNIQUE_ID_ddebug211, !31, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!33 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/autofs/root.c", i32 406, i32 2}
!36 = !{ptr @autofs_d_manage.__UNIQUE_ID_ddebug213, !35, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/autofs/root.c", i32 483, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @autofs_lookup.__UNIQUE_ID_ddebug214, !38, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!41 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/autofs/root.c", i32 491, i32 2}
!44 = !{ptr @autofs_lookup.__UNIQUE_ID_ddebug215, !43, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/autofs/root.c", i32 540, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @autofs_dir_symlink.__UNIQUE_ID_ddebug216, !47, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!50 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/autofs/root.c", i32 684, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @autofs_dir_rmdir.__UNIQUE_ID_ddebug217, !52, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!55 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/autofs/root.c", i32 739, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @autofs_dir_mkdir.__UNIQUE_ID_ddebug218, !57, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!60 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/autofs/root.c", i32 868, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @autofs_root_ioctl_unlocked.__UNIQUE_ID_ddebug220, !62, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!65 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/autofs/root.c", i32 840, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @autofs_ask_umount.__UNIQUE_ID_ddebug219, !67, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!70 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148982860, i64 2148982865, i64 2148982878, i64 2148982922, i64 2148982956, i64 2148982977}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2153134530, i64 2153135011, i64 2153134567, i64 2153134623, i64 2153134657, i64 2153134681, i64 2153134722, i64 2153134743, i64 2153134771, i64 2153134805}
!84 = !{i64 2153141324, i64 2153141805, i64 2153141361, i64 2153141417, i64 2153141451, i64 2153141475, i64 2153141516, i64 2153141537, i64 2153141565, i64 2153141599}
!85 = !{i64 4781292}
!86 = !{i64 4781489}
!87 = !{i64 2152266722}
!88 = !{i64 2153169803, i64 2153170083, i64 2153170417, i64 2153170751}
!89 = !{i64 2153178752, i64 2153179032, i64 2153179366, i64 2153179700}
!90 = !{i64 2153151340, i64 2153151620, i64 2153151954, i64 2153152288}
!91 = !{i64 2153160827, i64 2153161107, i64 2153161441, i64 2153161775}
!92 = !{i64 2153189946, i64 2153190226, i64 2153190560, i64 2153190894}
