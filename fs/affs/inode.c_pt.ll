; ModuleID = '/llk/IR_all_yes/fs/affs/inode.c_pt.bc'
source_filename = "../fs/affs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.user_namespace = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.affs_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, [32 x i8], %struct.spinlock, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.affs_tail = type { i32, i16, i16, i32, i32, [92 x i8], %struct.affs_date, [32 x i8], i32, i32, i32, [5 x i32], i32, i32, i32, i32 }
%struct.affs_date = type { i32, i32, i32 }
%struct.affs_head = type { i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.affs_root_tail = type { i32, [25 x i32], i32, %struct.affs_date, [32 x i8], i32, i32, %struct.affs_date, %struct.affs_date, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.27 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.27 = type { %struct.callback_head }

@affs_iget.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"affs\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"affs_iget\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/affs/inode.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs_iget(%lu)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"affs: affs_iget(%lu)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read_inode\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot read block %d\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Checksum or type (ptype=%d) error on inode %d\00", [50 x i8] zeroinitializer }, align 32
@affs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@affs_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inode is LINKFILE\00", [46 x i8] zeroinitializer }, align 32
@affs_aops_ofs = external dso_local constant %struct.address_space_operations, align 4
@affs_aops = external dso_local constant %struct.address_space_operations, align 4
@affs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@affs_file_operations = external dso_local constant %struct.file_operations, align 4
@affs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@affs_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@affs_write_inode.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_write_inode\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write_inode(%lu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"affs: write_inode(%lu)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_inode\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot read block %lu\00", [42 x i8] zeroinitializer }, align 32
@affs_notify_change.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"affs_notify_change\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"notify_change(%lu,0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"affs: notify_change(%lu,0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@affs_evict_inode.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_evict_inode\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"evict_inode(ino=%lu, nlink=%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"affs: evict_inode(ino=%lu, nlink=%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@affs_evict_inode.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"freeing ext cache\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"affs: freeing ext cache\0A\00", [39 x i8] zeroinitializer }, align 32
@affs_add_entry.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"affs_add_entry\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(dir=%lu, inode=%lu, \22%pd\22, type=%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"affs: %s(dir=%lu, inode=%lu, \22%pd\22, type=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@affs_bread.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.27, ptr @.str.28, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_bread\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/affs.h\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@affs_brelse.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.27, ptr @.str.31, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_brelse\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs: %s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@affs_getzeroblk.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.27, ptr @.str.28, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs_getzeroblk\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 4294967292, i64 4294967293]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967292]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 35, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 40, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 40, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 45, i32 7 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 124, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 178, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 185, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 185, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 225, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 266, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 280, i32 3 }
@___asan_gen_.111 = private constant [19 x i8] c"../fs/affs/inode.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 359, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 237, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 282, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"../fs/affs/affs.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 254, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 366, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @affs_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_iget.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_iget, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !73

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_iget.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.4, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %i_ino12 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino12, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_iget, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !73

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %7) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not.i.i = icmp sgt i32 %11, %7
  br i1 %cmp.not.i.i, label %do.end.i.bad_inode_crit_edge, label %affs_validblock.exit.i

do.end.i.bad_inode_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad_inode

affs_validblock.exit.i:                           ; preds = %do.end.i
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp2.i.i = icmp sgt i32 %13, %7
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.bad_inode_crit_edge

affs_validblock.exit.i.bad_inode_crit_edge:       ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad_inode

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %7 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i324 = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv.i, i32 noundef %17, i32 noundef 8) #8
  %tobool14.not = icmp eq ptr %call.i.i324, null
  br i1 %tobool14.not, label %affs_bread.exit.bad_inode_crit_edge, label %if.end16

affs_bread.exit.bad_inode_crit_edge:              ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad_inode

if.end16:                                         ; preds = %affs_bread.exit
  %call17 = tail call i32 @affs_checksum_block(ptr noundef %sb, ptr noundef nonnull %call.i.i324) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.if.then19_crit_edge

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.end16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i324, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not = icmp eq i32 %21, 2
  br i1 %cmp.not, label %if.end22, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.end16.if.then19_crit_edge
  %b_data20 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i324, i32 0, i32 5
  %22 = ptrtoint ptr %b_data20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data20, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef %25, i32 noundef %7) #8
  br label %do.body.i356

if.end22:                                         ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %19, i32 %27
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i32 -200
  %protect = getelementptr inbounds %struct.affs_tail, ptr %add.ptr24, i32 0, i32 3
  %28 = ptrtoint ptr %protect to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %protect, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %30 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %i_size, align 8
  tail call void @set_nlink(ptr noundef nonnull %call1, i32 noundef 1) #8
  %31 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %call1, align 8
  %add.ptr.i = getelementptr i8, ptr %call1, i32 -248
  %i_extcnt = getelementptr i8, ptr %call1, i32 -56
  %32 = ptrtoint ptr %i_extcnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %i_extcnt, align 8
  %i_ext_last = getelementptr i8, ptr %call1, i32 -32
  %33 = ptrtoint ptr %i_ext_last to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2, ptr %i_ext_last, align 8
  %i_protect = getelementptr i8, ptr %call1, i32 -16
  %34 = ptrtoint ptr %i_protect to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %29, ptr %i_protect, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #8
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %add.ptr.i, align 4
  %i_blkcnt = getelementptr i8, ptr %call1, i32 -60
  %36 = ptrtoint ptr %i_blkcnt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %i_blkcnt, align 4
  %i_lc = getelementptr i8, ptr %call1, i32 -52
  %i_ext_bh = getelementptr i8, ptr %call1, i32 -28
  %37 = ptrtoint ptr %i_ext_bh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %i_ext_bh, align 4
  %mmu_private = getelementptr i8, ptr %call1, i32 -24
  %38 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %mmu_private, align 8
  %i_lastalloc = getelementptr i8, ptr %call1, i32 -12
  %39 = ptrtoint ptr %i_lastalloc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %i_lastalloc, align 4
  %i_pa_cnt = getelementptr i8, ptr %call1, i32 -8
  %40 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %i_pa_cnt, align 8
  %s_flags = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 5
  %41 = call ptr @memset(ptr %i_lc, i32 0, i32 20)
  %42 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_flags, align 4
  %and39 = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %s_mode = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %s_mode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %s_mode, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call zeroext i16 @affs_prot_to_mode(i32 noundef %29) #8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then41
  %storemerge = phi i16 [ %call43, %if.else ], [ %45, %if.then41 ]
  %46 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %storemerge, ptr %call1, align 8
  %uid = getelementptr inbounds %struct.affs_tail, ptr %add.ptr24, i32 0, i32 1
  %47 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %uid, align 4
  %conv = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp46 = icmp eq i16 %48, 0
  br i1 %cmp46, label %if.end45.if.then52_crit_edge, label %lor.lhs.false48

if.end45.if.then52_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

lor.lhs.false48:                                  ; preds = %if.end45
  %49 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_flags, align 4
  %and50 = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else53, label %lor.lhs.false48.if.then52_crit_edge

lor.lhs.false48.if.then52_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false48.if.then52_crit_edge, %if.end45.if.then52_crit_edge
  %i_uid = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %s_uid = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_uid, align 4
  %53 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %i_uid, align 4
  br label %if.end64

if.else53:                                        ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %48)
  %cmp55 = icmp ne i16 %48, -1
  %and58 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %or.cond = select i1 %cmp55, i1 true, i1 %tobool59.not
  %i_uid.i339 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %i_sb.i.i340 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb.i.i340 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i.i340, align 4
  %s_user_ns.i.i341 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 53
  %56 = ptrtoint ptr %s_user_ns.i.i341 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_user_ns.i.i341, align 8
  br i1 %or.cond, label %if.else61, label %if.then60

if.then60:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @make_kuid(ptr noundef %57, i32 noundef 0) #8
  %58 = ptrtoint ptr %i_uid.i339 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call1.i, ptr %i_uid.i339, align 4
  br label %if.end64

if.else61:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i342 = tail call i32 @make_kuid(ptr noundef %57, i32 noundef %conv) #8
  %59 = ptrtoint ptr %i_uid.i339 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call1.i342, ptr %i_uid.i339, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then60, %if.then52
  %gid = getelementptr inbounds %struct.affs_tail, ptr %add.ptr24, i32 0, i32 2
  %60 = ptrtoint ptr %gid to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %gid, align 2
  %conv65 = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp66 = icmp eq i16 %61, 0
  br i1 %cmp66, label %if.end64.if.then72_crit_edge, label %lor.lhs.false68

if.end64.if.then72_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

lor.lhs.false68:                                  ; preds = %if.end64
  %62 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_flags, align 4
  %and70 = and i32 %63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else73, label %lor.lhs.false68.if.then72_crit_edge

lor.lhs.false68.if.then72_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false68.if.then72_crit_edge, %if.end64.if.then72_crit_edge
  %i_gid = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %s_gid = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 7
  %64 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_gid, align 4
  %66 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %i_gid, align 8
  br label %if.end85

if.else73:                                        ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %61)
  %cmp75 = icmp ne i16 %61, -1
  %and79 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %or.cond323 = select i1 %cmp75, i1 true, i1 %tobool80.not
  %i_gid.i346 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %i_sb.i.i347 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %67 = ptrtoint ptr %i_sb.i.i347 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb.i.i347, align 4
  %s_user_ns.i.i348 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 53
  %69 = ptrtoint ptr %s_user_ns.i.i348 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_user_ns.i.i348, align 8
  br i1 %or.cond323, label %if.else82, label %if.then81

if.then81:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i345 = tail call i32 @make_kgid(ptr noundef %70, i32 noundef 0) #8
  %71 = ptrtoint ptr %i_gid.i346 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call1.i345, ptr %i_gid.i346, align 8
  br label %if.end85

if.else82:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i349 = tail call i32 @make_kgid(ptr noundef %70, i32 noundef %conv65) #8
  %72 = ptrtoint ptr %i_gid.i346 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call1.i349, ptr %i_gid.i346, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then81, %if.then72
  %stype = getelementptr inbounds %struct.affs_tail, ptr %add.ptr24, i32 0, i32 15
  %73 = ptrtoint ptr %stype to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %stype, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %74, label %if.end85.do.body.i_crit_edge [
    i32 1, label %sw.bb90
    i32 2, label %if.end85.if.then98_crit_edge
    i32 4, label %sw.bb135
    i32 -4, label %sw.bb140
    i32 -3, label %sw.bb141
    i32 3, label %sw.bb171
  ]

if.end85.if.then98_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

if.end85.do.body.i_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

sw.bb90:                                          ; preds = %if.end85
  %i_uid86 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %s_uid87 = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 6
  %76 = ptrtoint ptr %s_uid87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_uid87, align 4
  %78 = ptrtoint ptr %i_uid86 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %i_uid86, align 4
  %i_gid88 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %s_gid89 = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 7
  %79 = ptrtoint ptr %s_gid89 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_gid89, align 4
  %81 = ptrtoint ptr %i_gid88 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %i_gid88, align 8
  %82 = ptrtoint ptr %stype to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr = load i32, ptr %stype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp92 = icmp eq i32 %.pr, 2
  br i1 %cmp92, label %sw.bb90.if.then98_crit_edge, label %lor.lhs.false94

sw.bb90.if.then98_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

lor.lhs.false94:                                  ; preds = %sw.bb90
  %83 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_flags, align 4
  %and96 = and i32 %84, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %lor.lhs.false94.if.end134_crit_edge, label %lor.lhs.false94.if.then98_crit_edge

lor.lhs.false94.if.then98_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

lor.lhs.false94.if.end134_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then98:                                        ; preds = %lor.lhs.false94.if.then98_crit_edge, %sw.bb90.if.then98_crit_edge, %if.end85.if.then98_crit_edge
  %85 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %call1, align 8
  %87 = and i16 %86, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool102.not = icmp eq i16 %87, 0
  br i1 %tobool102.not, label %if.then98.if.end107_crit_edge, label %if.then103

if.then98.if.end107_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i16 %86, 64
  %88 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %or, ptr %call1, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.then98.if.end107_crit_edge
  %89 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %call1, align 8
  %91 = and i16 %90, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool111.not = icmp eq i16 %91, 0
  br i1 %tobool111.not, label %if.end107.if.end117_crit_edge, label %if.then112

if.end107.if.end117_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %or115 = or i16 %90, 8
  %92 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %or115, ptr %call1, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %if.end107.if.end117_crit_edge
  %93 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %call1, align 8
  %95 = and i16 %94, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool121.not = icmp eq i16 %95, 0
  br i1 %tobool121.not, label %if.end117.if.end127_crit_edge, label %if.then122

if.end117.if.end127_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %or125 = or i16 %94, 1
  %96 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %or125, ptr %call1, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %if.end117.if.end127_crit_edge
  %97 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %call1, align 8
  %99 = or i16 %98, 16384
  br label %if.end134

if.end134:                                        ; preds = %if.end127, %lor.lhs.false94.if.end134_crit_edge
  %storemerge322 = phi i16 [ %99, %if.end127 ], [ 16877, %lor.lhs.false94.if.end134_crit_edge ]
  %100 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %storemerge322, ptr %call1, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %101 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @affs_dir_inode_operations, ptr %i_op, align 8
  %102 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @affs_dir_operations, ptr %102, align 8
  br label %do.body.i

sw.bb135:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %call1, align 8
  %106 = or i16 %105, 16384
  store i16 %106, ptr %call1, align 8
  br label %do.body.i

sw.bb140:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #8
  br label %do.body.i356

sw.bb141:                                         ; preds = %if.end85
  %size142 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr24, i32 0, i32 4
  %107 = ptrtoint ptr %size142 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size142, align 4
  %109 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %call1, align 8
  %111 = or i16 %110, -32768
  store i16 %111, ptr %call1, align 8
  %conv147 = zext i32 %108 to i64
  %112 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv147, ptr %i_size, align 8
  %113 = ptrtoint ptr %mmu_private to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv147, ptr %mmu_private, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool152.not = icmp eq i32 %108, 0
  br i1 %tobool152.not, label %sw.bb141.if.end163_crit_edge, label %if.then153

sw.bb141.if.end163_crit_edge:                     ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then153:                                       ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %108, -1
  %s_data_blksize = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 2
  %114 = ptrtoint ptr %s_data_blksize to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_data_blksize, align 4
  %div = udiv i32 %sub, %115
  %add = add nuw i32 %div, 1
  %116 = ptrtoint ptr %i_blkcnt to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add, ptr %i_blkcnt, align 4
  %s_hashsize = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 4
  %117 = ptrtoint ptr %s_hashsize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_hashsize, align 4
  %div159 = udiv i32 %div, %118
  %add160 = add nuw i32 %div159, 1
  %119 = ptrtoint ptr %i_extcnt to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add160, ptr %i_extcnt, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then153, %sw.bb141.if.end163_crit_edge
  %link_chain = getelementptr inbounds %struct.affs_tail, ptr %add.ptr24, i32 0, i32 10
  %120 = ptrtoint ptr %link_chain to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %link_chain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool164.not = icmp eq i32 %121, 0
  br i1 %tobool164.not, label %if.end163.if.end166_crit_edge, label %if.then165

if.end163.if.end166_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.then165:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_nlink(ptr noundef nonnull %call1, i32 noundef 2) #8
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %if.end163.if.end166_crit_edge
  %122 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_flags, align 4
  %and168 = and i32 %123, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  %cond = select i1 %tobool169.not, ptr @affs_aops, ptr @affs_aops_ofs
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %124 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %125, i32 0, i32 9
  %126 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %cond, ptr %a_ops, align 4
  %i_op170 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %127 = ptrtoint ptr %i_op170 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @affs_file_inode_operations, ptr %i_op170, align 8
  %128 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @affs_file_operations, ptr %128, align 8
  br label %do.body.i

sw.bb171:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_data, align 4
  %table = getelementptr inbounds %struct.affs_head, ptr %131, i32 0, i32 6
  %call173 = tail call i32 @strlen(ptr noundef %table) #11
  %conv174 = zext i32 %call173 to i64
  %132 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %conv174, ptr %i_size, align 8
  %133 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %call1, align 8
  %135 = or i16 %134, -24576
  store i16 %135, ptr %call1, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call1) #8
  %i_op180 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %136 = ptrtoint ptr %i_op180 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @affs_symlink_inode_operations, ptr %i_op180, align 8
  %a_ops181 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 46, i32 9
  %137 = ptrtoint ptr %a_ops181 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @affs_symlink_aops, ptr %a_ops181, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb171, %if.end166, %sw.bb135, %if.end134, %if.end85.do.body.i_crit_edge
  %change = getelementptr inbounds %struct.affs_tail, ptr %add.ptr24, i32 0, i32 6
  %138 = ptrtoint ptr %change to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %change, align 4
  %conv182 = zext i32 %139 to i64
  %mul = mul nuw nsw i64 %conv182, 86400
  %mins = getelementptr inbounds %struct.affs_date, ptr %change, i32 0, i32 1
  %140 = ptrtoint ptr %mins to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mins, align 4
  %mul184 = mul i32 %141, 60
  %conv185 = zext i32 %mul184 to i64
  %ticks = getelementptr inbounds %struct.affs_date, ptr %change, i32 0, i32 2
  %142 = ptrtoint ptr %ticks to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ticks, align 4
  %div188 = udiv i32 %143, 50
  %conv189 = zext i32 %div188 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %144 = load i32, ptr @sys_tz, align 4
  %mul192 = mul i32 %144, 60
  %conv193 = sext i32 %mul192 to i64
  %add186 = add nuw nsw i64 %mul, 252460800
  %add190 = add nuw nsw i64 %add186, %conv185
  %add191 = add nuw nsw i64 %add190, %conv189
  %add194 = add nsw i64 %add191, %conv193
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %145 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %add194, ptr %i_ctime, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %146 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %add194, ptr %i_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %147 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %add194, ptr %i_mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15, i32 1
  %148 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec199 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17, i32 1
  %149 = ptrtoint ptr %tv_nsec199 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %tv_nsec199, align 8
  %tv_nsec201 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16, i32 1
  %150 = ptrtoint ptr %tv_nsec201 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %tv_nsec201, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_iget, %if.then4.i354)) #8
          to label %affs_brelse.exit [label %if.then4.i354], !srcloc !73

if.then4.i354:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i324, i32 0, i32 3
  %151 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i64 noundef %152) #8
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i354, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i324) #8
  tail call void @unlock_new_inode(ptr noundef nonnull %call1) #8
  br label %cleanup

bad_inode:                                        ; preds = %affs_bread.exit.bad_inode_crit_edge, %affs_validblock.exit.i.bad_inode_crit_edge, %do.end.i.bad_inode_crit_edge
  tail call void (ptr, ptr, ptr, ...) @affs_warning(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %7) #8
  br label %affs_brelse.exit360

do.body.i356:                                     ; preds = %sw.bb140, %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_iget, %if.then4.i358)) #8
          to label %if.then.i.i359 [label %if.then4.i358], !srcloc !73

if.then4.i358:                                    ; preds = %do.body.i356
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.i357 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i324, i32 0, i32 3
  %153 = ptrtoint ptr %b_blocknr.i357 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %b_blocknr.i357, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i64 noundef %154) #8
  br label %if.then.i.i359

if.then.i.i359:                                   ; preds = %if.then4.i358, %do.body.i356
  tail call void @__brelse(ptr noundef nonnull %call.i.i324) #8
  br label %affs_brelse.exit360

affs_brelse.exit360:                              ; preds = %if.then.i.i359, %bad_inode
  tail call void @iget_failed(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %affs_brelse.exit360, %affs_brelse.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %affs_brelse.exit360 ], [ %call1, %affs_brelse.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_checksum_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @affs_prot_to_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_write_inode(ptr noundef %inode, ptr nocapture noundef readnone %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_write_inode.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_inode, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_write_inode.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.11, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %i_ino6 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino6, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_inode, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !73

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %8) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end5
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp.not.i.i = icmp sgt i32 %12, %8
  br i1 %cmp.not.i.i, label %do.end.i.if.then9_crit_edge, label %affs_validblock.exit.i

do.end.i.if.then9_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

affs_validblock.exit.i:                           ; preds = %do.end.i
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp2.i.i = icmp sgt i32 %14, %8
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.if.then9_crit_edge

affs_validblock.exit.i.if.then9_crit_edge:        ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %8 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %16, i64 noundef %conv.i, i32 noundef %18, i32 noundef 8) #8
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %affs_bread.exit.if.then9_crit_edge, label %if.end11

affs_bread.exit.if.then9_crit_edge:               ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %affs_bread.exit.if.then9_crit_edge, %affs_validblock.exit.i.if.then9_crit_edge, %do.end.i.if.then9_crit_edge
  %19 = ptrtoint ptr %i_ino6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino6, align 8
  tail call void (ptr, ptr, ptr, ...) @affs_error(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %20) #8
  br label %cleanup

if.end11:                                         ; preds = %affs_bread.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  %23 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 -200
  %stype = getelementptr inbounds %struct.affs_tail, ptr %add.ptr12, i32 0, i32 15
  %25 = ptrtoint ptr %stype to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp eq i32 %26, 1
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %27 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_mtime, align 8
  %root_change = getelementptr inbounds %struct.affs_root_tail, ptr %add.ptr12, i32 0, i32 3
  tail call void @affs_secs_to_datestamp(i64 noundef %28, ptr noundef %root_change) #8
  br label %do.body.i

if.else:                                          ; preds = %if.end11
  %i_protect = getelementptr i8, ptr %inode, i32 -16
  %29 = ptrtoint ptr %i_protect to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_protect, align 8
  %protect = getelementptr inbounds %struct.affs_tail, ptr %add.ptr12, i32 0, i32 3
  %31 = ptrtoint ptr %protect to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %protect, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %32 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %33 to i32
  %size = getelementptr inbounds %struct.affs_tail, ptr %add.ptr12, i32 0, i32 4
  %34 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %size, align 4
  %i_mtime19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %35 = ptrtoint ptr %i_mtime19 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_mtime19, align 8
  %change = getelementptr inbounds %struct.affs_tail, ptr %add.ptr12, i32 0, i32 6
  tail call void @affs_secs_to_datestamp(i64 noundef %36, ptr noundef %change) #8
  %37 = ptrtoint ptr %i_ino6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino6, align 8
  %39 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_root_block = getelementptr inbounds %struct.affs_sb_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %s_root_block to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_root_block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %42)
  %cmp23 = icmp eq i32 %38, %42
  br i1 %cmp23, label %if.else.do.body.i_crit_edge, label %if.then25

if.else.do.body.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then25:                                        ; preds = %if.else
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 53
  %45 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %47 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %48 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %46, [1 x i32] %48) #8
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i107 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 53
  %51 = ptrtoint ptr %s_user_ns.i.i107 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_user_ns.i.i107, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %53 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack.i108 = load i32, ptr %i_gid.i, align 8
  %54 = insertvalue [1 x i32] undef, i32 %.unpack.i108, 0
  %call1.i109 = tail call i32 @from_kgid(ptr noundef %52, [1 x i32] %54) #8
  %55 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags = getelementptr inbounds %struct.affs_sb_info, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_flags, align 4
  %and = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then25.if.end45_crit_edge, label %if.then30

if.then25.if.end45_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then30:                                        ; preds = %if.then25
  %59 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call1.i, label %if.then30.if.end36_crit_edge [
    i32 0, label %if.then30.if.then35_crit_edge
    i32 65535, label %if.then30.if.then35_crit_edge118
  ]

if.then30.if.then35_crit_edge118:                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then30.if.then35_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.then30.if.then35_crit_edge, %if.then30.if.then35_crit_edge118
  %xor = xor i32 %call1.i, -1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then30.if.end36_crit_edge
  %uid.0 = phi i32 [ %xor, %if.then35 ], [ %call1.i, %if.then30.if.end36_crit_edge ]
  %60 = zext i32 %call1.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call1.i109, label %if.end36.if.end45_crit_edge [
    i32 0, label %if.end36.if.then42_crit_edge
    i32 65535, label %if.end36.if.then42_crit_edge119
  ]

if.end36.if.then42_crit_edge119:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.end36.if.then42_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end36.if.then42_crit_edge, %if.end36.if.then42_crit_edge119
  %xor43 = xor i32 %call1.i109, -1
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end36.if.end45_crit_edge, %if.then25.if.end45_crit_edge
  %uid.1 = phi i32 [ %uid.0, %if.then42 ], [ %call1.i, %if.then25.if.end45_crit_edge ], [ %uid.0, %if.end36.if.end45_crit_edge ]
  %gid.0 = phi i32 [ %xor43, %if.then42 ], [ %call1.i109, %if.then25.if.end45_crit_edge ], [ %call1.i109, %if.end36.if.end45_crit_edge ]
  %and48 = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end45.if.end53_crit_edge

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %conv51 = trunc i32 %uid.1 to i16
  %uid52 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr12, i32 0, i32 1
  %61 = ptrtoint ptr %uid52 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv51, ptr %uid52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end45.if.end53_crit_edge
  %62 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags55 = getelementptr inbounds %struct.affs_sb_info, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %s_flags55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_flags55, align 4
  %and56 = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then58, label %if.end53.do.body.i_crit_edge

if.end53.do.body.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %conv59 = trunc i32 %gid.0 to i16
  %gid60 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr12, i32 0, i32 2
  %66 = ptrtoint ptr %gid60 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv59, ptr %gid60, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.then58, %if.end53.do.body.i_crit_edge, %if.else.do.body.i_crit_edge, %if.then13
  tail call void @affs_fix_checksum(ptr noundef %1, ptr noundef nonnull %call.i.i) #8
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i, ptr noundef %inode) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_write_inode, %if.then4.i113)) #8
          to label %affs_brelse.exit [label %if.then4.i113], !srcloc !73

if.then4.i113:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i64 noundef %68) #8
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i113, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #8
  tail call void @affs_free_prealloc(ptr noundef %inode) #8
  br label %cleanup

cleanup:                                          ; preds = %affs_brelse.exit, %if.then9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %affs_brelse.exit ], [ -5, %if.then9 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_secs_to_datestamp(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_fix_checksum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_free_prealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_notify_change(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_notify_change.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_notify_change, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_notify_change.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.lor.lhs.false_crit_edge, label %land.lhs.true

if.end7.lor.lhs.false_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end7
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.affs_sb_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %and11 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end7.lor.lhs.false_crit_edge
  %and14 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false.lor.lhs.false22_crit_edge, label %land.lhs.true16

lor.lhs.false.lor.lhs.false22_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false22

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %i_sb17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb17, align 4
  %s_fs_info.i85 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i85, align 16
  %s_flags19 = getelementptr inbounds %struct.affs_sb_info, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %s_flags19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_flags19, align 4
  %and20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true16.lor.lhs.false22_crit_edge, label %land.lhs.true16.if.then32_crit_edge

land.lhs.true16.if.then32_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

land.lhs.true16.lor.lhs.false22_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %land.lhs.true16.lor.lhs.false22_crit_edge, %lor.lhs.false.lor.lhs.false22_crit_edge
  %and24 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false22.if.end40_crit_edge, label %land.lhs.true26

lor.lhs.false22.if.end40_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true26:                                  ; preds = %lor.lhs.false22
  %i_sb27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb27, align 4
  %s_fs_info.i86 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i86, align 16
  %s_flags29 = getelementptr inbounds %struct.affs_sb_info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %s_flags29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flags29, align 4
  %and30 = and i32 %25, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %land.lhs.true26.if.end40_crit_edge, label %land.lhs.true26.if.then32_crit_edge

land.lhs.true26.if.then32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

land.lhs.true26.if.end40_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then32:                                        ; preds = %land.lhs.true26.if.then32_crit_edge, %land.lhs.true16.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge
  %i_sb33 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb33, align 4
  %s_fs_info.i87 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i87, align 16
  %s_flags35 = getelementptr inbounds %struct.affs_sb_info, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %s_flags35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_flags35, align 4
  %and36 = lshr i32 %31, 3
  %32 = and i32 %and36, 1
  %sext = add nsw i32 %32, -1
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true26.if.end40_crit_edge, %lor.lhs.false22.if.end40_crit_edge
  %and42 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end53_crit_edge, label %land.lhs.true44

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true44:                                  ; preds = %if.end40
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %33 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ia_size, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %land.lhs.true44
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !74
  %and.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %36 = tail call ptr @llvm.returnaddress(i32 0) #8
  %37 = ptrtoint ptr %36 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %37) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %37) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = tail call ptr @llvm.returnaddress(i32 0) #8
  %39 = ptrtoint ptr %38 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %39) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %39) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !75
  %and.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !76

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #8, !srcloc !77
  %41 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !79
  %43 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %44, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %42, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %44, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !80
  %45 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  %47 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %48, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %46)
  %cmp.not = icmp eq i64 %34, %46
  br i1 %cmp.not, label %i_size_read.exit.if.end53_crit_edge, label %if.then46

i_size_read.exit.if.end53_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then46:                                        ; preds = %i_size_read.exit
  %49 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ia_size, align 8
  %call48 = tail call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ia_size, align 8
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %52) #8
  tail call void @affs_truncate(ptr noundef %1) #8
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %i_size_read.exit.if.end53_crit_edge, %if.end40.if.end53_crit_edge
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #8
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #8
  %53 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %attr, align 8
  %and55 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.cleanup_crit_edge, label %if.then57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @affs_mode_to_prot(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end53.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.then32, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.then46.cleanup_crit_edge ], [ %call4, %do.end.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %if.end53.cleanup_crit_edge ], [ %sext, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_mode_to_prot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_evict_inode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_evict_inode, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_evict_inode.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #8
  %5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %i_size, align 8
  tail call void @affs_truncate(ptr noundef %inode) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #8
  tail call void @clear_inode(ptr noundef %inode) #8
  tail call void @affs_free_prealloc(ptr noundef %inode) #8
  %i_lc = getelementptr i8, ptr %inode, i32 -52
  %9 = ptrtoint ptr %i_lc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_lc, align 4
  %11 = ptrtoint ptr %10 to i32
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end5.if.end28_crit_edge, label %do.body9

if.end5.if.end28_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.body9:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_evict_inode.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_evict_inode, %if.then21)) #8
          to label %do.end24 [label %if.then21], !srcloc !73

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_evict_inode.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.21) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body9
  %12 = ptrtoint ptr %i_lc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %i_lc, align 4
  %i_ac = getelementptr i8, ptr %inode, i32 -36
  %13 = ptrtoint ptr %i_ac to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %i_ac, align 4
  tail call void @free_pages(i32 noundef %11, i32 noundef 0) #8
  br label %if.end28

if.end28:                                         ; preds = %do.end24, %if.end5.if.end28_crit_edge
  %i_ext_bh = getelementptr i8, ptr %inode, i32 -28
  %14 = ptrtoint ptr %i_ext_bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_ext_bh, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end28.affs_brelse.exit_crit_edge, label %do.body.i

if.end28.affs_brelse.exit_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_evict_inode, %if.then4.i)) #8
          to label %if.then.i.i [label %if.then4.i], !srcloc !73

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i64 noundef %17) #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %15) #8
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %if.end28.affs_brelse.exit_crit_edge
  %i_ext_last = getelementptr i8, ptr %inode, i32 -32
  %18 = ptrtoint ptr %i_ext_last to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2, ptr %i_ext_last, align 8
  %19 = ptrtoint ptr %i_ext_bh to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %i_ext_bh, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %if.then34, label %affs_brelse.exit.if.end36_crit_edge

affs_brelse.exit.if.end36_crit_edge:              ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %i_ino35 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino35, align 8
  tail call void @affs_free_block(ptr noundef %23, i32 noundef %25) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %affs_brelse.exit.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_free_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @affs_new_inode(ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %tmp18 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @new_inode(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %call1 = tail call i32 @affs_alloc_block(ptr noundef %dir, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.err_block_crit_edge, label %if.end4

if.end.err_block_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_block

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc ptr @affs_getzeroblk(ptr noundef %1, i32 noundef %call1)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %err_bh, label %do.body.i

do.body.i:                                        ; preds = %if.end4
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call5, ptr noundef nonnull %call) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_new_inode, %if.then4.i)) #8
          to label %affs_brelse.exit [label %if.then4.i], !srcloc !73

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call5, i32 0, i32 3
  %4 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i64 noundef %5) #8
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %call5) #8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %6 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsuid, align 4
  %14 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %15 = load ptr, ptr %task, align 8
  %cred16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred16, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fsgid, align 4
  %20 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %i_gid, align 8
  %i_ino17 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call1, ptr %i_ino17, align 8
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef 1) #8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp18) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp18, ptr noundef nonnull %call) #8
  %22 = call ptr @memcpy(ptr %i_ctime, ptr %tmp18, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp18) #8
  %23 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %24 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %add.ptr.i = getelementptr i8, ptr %call, i32 -248
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %add.ptr.i, align 4
  %i_blkcnt = getelementptr i8, ptr %call, i32 -60
  %26 = ptrtoint ptr %i_blkcnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %i_blkcnt, align 4
  %i_lc = getelementptr i8, ptr %call, i32 -52
  %i_ext_bh = getelementptr i8, ptr %call, i32 -28
  %i_extcnt = getelementptr i8, ptr %call, i32 -56
  %27 = call ptr @memset(ptr %i_lc, i32 0, i32 20)
  %28 = call ptr @memset(ptr %i_ext_bh, i32 0, i32 24)
  %29 = ptrtoint ptr %i_extcnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %i_extcnt, align 8
  %i_ext_last = getelementptr i8, ptr %call, i32 -32
  %30 = ptrtoint ptr %i_ext_last to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -2, ptr %i_ext_last, align 8
  %31 = ptrtoint ptr %i_ino17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino17, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call, i32 noundef %32) #8
  br label %cleanup

err_bh:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @affs_free_block(ptr noundef %1, i32 noundef %call1) #8
  br label %err_block

err_block:                                        ; preds = %err_bh, %if.end.err_block_crit_edge
  tail call void @iput(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err_block, %affs_brelse.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %affs_brelse.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %err_block ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_alloc_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @affs_getzeroblk(ptr nocapture noundef readonly %sb, i32 noundef %block) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_getzeroblk.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_getzeroblk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_getzeroblk.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.33, i32 noundef %block) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_reserved.i = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_reserved.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_reserved.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %block)
  %cmp.not.i = icmp sgt i32 %3, %block
  br i1 %cmp.not.i, label %do.end.cleanup_crit_edge, label %affs_validblock.exit

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

affs_validblock.exit:                             ; preds = %do.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %block)
  %cmp2.i = icmp sgt i32 %5, %block
  br i1 %cmp2.i, label %if.then4, label %affs_validblock.exit.cleanup_crit_edge

affs_validblock.exit.cleanup_crit_edge:           ; preds = %affs_validblock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %affs_validblock.exit
  %conv = sext i32 %block to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %7, i64 noundef %conv, i32 noundef %9, i32 noundef 8) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.34, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then4.if.then.i15_crit_edge

if.then4.if.then.i15_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i15

trylock_buffer.exit.i:                            ; preds = %if.then4
  tail call void @llvm.prefetch.p0(ptr %call.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i, ptr %call.i, i32 4, ptr elementtype(i32) %call.i) #8, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  %13 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i15_crit_edge

trylock_buffer.exit.i.if.then.i15_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i15

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i15:                                      ; preds = %trylock_buffer.exit.i.if.then.i15_crit_edge, %if.then4.if.then.i15_crit_edge
  tail call void @__lock_buffer(ptr noundef %call.i) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i15, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %16 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i, align 16
  %18 = call ptr @memset(ptr %15, i32 0, i32 %17)
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call.i) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %set_buffer_uptodate.exit, %affs_validblock.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %set_buffer_uptodate.exit ], [ null, %affs_validblock.exit.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @affs_add_entry(ptr noundef %dir, ptr noundef %inode, ptr noundef %dentry, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_add_entry.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_add_entry, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %i_ino4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino4, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_add_entry.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef %5, ptr noundef %dentry, i32 noundef %type) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i_ino5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_add_entry, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !73

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %7) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not.i.i = icmp sgt i32 %11, %7
  br i1 %cmp.not.i.i, label %do.end.i.affs_brelse.exit129_crit_edge, label %affs_validblock.exit.i

do.end.i.affs_brelse.exit129_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %affs_brelse.exit129

affs_validblock.exit.i:                           ; preds = %do.end.i
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp2.i.i = icmp sgt i32 %13, %7
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.affs_brelse.exit129_crit_edge

affs_validblock.exit.i.affs_brelse.exit129_crit_edge: ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %affs_brelse.exit129

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %7 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv.i, i32 noundef %17, i32 noundef 8) #8
  %tobool7.not = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not, label %affs_bread.exit.affs_brelse.exit129_crit_edge, label %if.end9

affs_bread.exit.affs_brelse.exit129_crit_edge:    ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %affs_brelse.exit129

if.end9:                                          ; preds = %affs_bread.exit
  %i_link_lock.i = getelementptr i8, ptr %inode, i32 -244
  tail call void @mutex_lock_nested(ptr noundef %i_link_lock.i, i32 noundef 0) #8
  %18 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %type, label %if.end9.sw.epilog_crit_edge [
    i32 -4, label %if.end9.sw.bb_crit_edge
    i32 4, label %if.end9.sw.bb_crit_edge152
  ]

if.end9.sw.bb_crit_edge152:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge152
  %i_ino10 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino10, align 8
  %call11 = tail call i32 @affs_alloc_block(ptr noundef %dir, i32 noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %sw.bb.if.end59_crit_edge, label %if.end14

sw.bb.if.end59_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end14:                                         ; preds = %sw.bb
  %call15 = tail call fastcc ptr @affs_getzeroblk(ptr noundef %1, i32 noundef %call11)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then58, label %if.end14.sw.epilog_crit_edge

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end14.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %block.0 = phi i32 [ 0, %if.end9.sw.epilog_crit_edge ], [ %call11, %if.end14.sw.epilog_crit_edge ]
  %bh.0 = phi ptr [ %call.i.i, %if.end9.sw.epilog_crit_edge ], [ %call15, %if.end14.sw.epilog_crit_edge ]
  %inode_bh.0 = phi ptr [ null, %if.end9.sw.epilog_crit_edge ], [ %call.i.i, %if.end14.sw.epilog_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %22, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %24 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %25 to i32
  %26 = load ptr, ptr %b_data, align 4
  %key = getelementptr inbounds %struct.affs_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %key, align 4
  %28 = load ptr, ptr %b_data, align 4
  %29 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %28, i32 %30
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 -200
  %name = getelementptr inbounds %struct.affs_tail, ptr %add.ptr21, i32 0, i32 7
  %call22 = tail call i32 @affs_copy_name(ptr noundef %name, ptr noundef %dentry) #8
  %31 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data, align 4
  %33 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr25 = getelementptr i8, ptr %32, i32 %34
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 -200
  %stype = getelementptr inbounds %struct.affs_tail, ptr %add.ptr26, i32 0, i32 15
  %35 = ptrtoint ptr %stype to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %type, ptr %stype, align 4
  %i_ino27 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %36 = ptrtoint ptr %i_ino27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino27, align 8
  %38 = load ptr, ptr %b_data, align 4
  %39 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr30 = getelementptr i8, ptr %38, i32 %39
  %add.ptr31 = getelementptr i8, ptr %add.ptr30, i32 -200
  %parent = getelementptr inbounds %struct.affs_tail, ptr %add.ptr31, i32 0, i32 13
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %parent, align 4
  %tobool32.not = icmp eq ptr %inode_bh.0, null
  br i1 %tobool32.not, label %sw.epilog.if.end53_crit_edge, label %if.then33

sw.epilog.if.end53_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %b_data34 = getelementptr inbounds %struct.buffer_head, ptr %inode_bh.0, i32 0, i32 5
  %41 = ptrtoint ptr %b_data34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data34, align 4
  %43 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr36 = getelementptr i8, ptr %42, i32 %44
  %add.ptr37 = getelementptr i8, ptr %add.ptr36, i32 -200
  %link_chain = getelementptr inbounds %struct.affs_tail, ptr %add.ptr37, i32 0, i32 10
  %45 = ptrtoint ptr %link_chain to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %link_chain, align 4
  %47 = ptrtoint ptr %i_ino5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_ino5, align 8
  %49 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_data, align 4
  %add.ptr41 = getelementptr i8, ptr %50, i32 %44
  %add.ptr42 = getelementptr i8, ptr %add.ptr41, i32 -200
  %original = getelementptr inbounds %struct.affs_tail, ptr %add.ptr42, i32 0, i32 9
  %51 = ptrtoint ptr %original to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %original, align 4
  %52 = load ptr, ptr %b_data, align 4
  %53 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr45 = getelementptr i8, ptr %52, i32 %53
  %add.ptr46 = getelementptr i8, ptr %add.ptr45, i32 -200
  %link_chain47 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr46, i32 0, i32 10
  %54 = ptrtoint ptr %link_chain47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %46, ptr %link_chain47, align 4
  %55 = load ptr, ptr %b_data34, align 4
  %56 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr50 = getelementptr i8, ptr %55, i32 %56
  %add.ptr51 = getelementptr i8, ptr %add.ptr50, i32 -200
  %link_chain52 = getelementptr inbounds %struct.affs_tail, ptr %add.ptr51, i32 0, i32 10
  %57 = ptrtoint ptr %link_chain52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %block.0, ptr %link_chain52, align 4
  %sub.neg = sub i32 %46, %block.0
  %58 = load ptr, ptr %b_data34, align 4
  %arrayidx.i = getelementptr i32, ptr %58, i32 5
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %sub.i = add i32 %sub.neg, %60
  store i32 %sub.i, ptr %arrayidx.i, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %inode_bh.0, ptr noundef %inode) #8
  tail call void @set_nlink(ptr noundef %inode, i32 noundef 2) #8
  tail call void @ihold(ptr noundef %inode) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then33, %sw.epilog.if.end53_crit_edge
  tail call void @affs_fix_checksum(ptr noundef %1, ptr noundef nonnull %bh.0) #8
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %bh.0, ptr noundef %inode) #8
  %61 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %b_blocknr, align 8
  %conv55 = trunc i64 %62 to i32
  %63 = inttoptr i32 %conv55 to ptr
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %64 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %d_fsdata, align 4
  %i_ext_lock.i = getelementptr i8, ptr %dir, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %i_ext_lock.i, i32 noundef 1) #8
  %call56 = tail call i32 @affs_insert_hash(ptr noundef %dir, ptr noundef nonnull %bh.0) #8
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %bh.0, ptr noundef %inode) #8
  tail call void @mutex_unlock(ptr noundef %i_ext_lock.i) #8
  tail call void @mutex_unlock(ptr noundef %i_link_lock.i) #8
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %inode) #8
  br label %done

done:                                             ; preds = %if.end59, %if.end53
  %retval1.0 = phi i32 [ %call56, %if.end53 ], [ %retval1.1149, %if.end59 ]
  %bh.1 = phi ptr [ %bh.0, %if.end53 ], [ %bh.2150, %if.end59 ]
  %inode_bh.1 = phi ptr [ %inode_bh.0, %if.end53 ], [ %inode_bh.2151, %if.end59 ]
  %tobool.not.i = icmp eq ptr %inode_bh.1, null
  br i1 %tobool.not.i, label %done.affs_brelse.exit_crit_edge, label %do.body.i

done.affs_brelse.exit_crit_edge:                  ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %done
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_add_entry, %if.then4.i123)) #8
          to label %if.then.i.i [label %if.then4.i123], !srcloc !73

if.then4.i123:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %inode_bh.1, i32 0, i32 3
  %65 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i64 noundef %66) #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i123, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %inode_bh.1) #8
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %done.affs_brelse.exit_crit_edge
  %tobool.not.i124 = icmp eq ptr %bh.1, null
  br i1 %tobool.not.i124, label %affs_brelse.exit.affs_brelse.exit129_crit_edge, label %do.body.i125

affs_brelse.exit.affs_brelse.exit129_crit_edge:   ; preds = %affs_brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %affs_brelse.exit129

do.body.i125:                                     ; preds = %affs_brelse.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_add_entry, %if.then4.i127)) #8
          to label %if.then.i.i128 [label %if.then4.i127], !srcloc !73

if.then4.i127:                                    ; preds = %do.body.i125
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr.i126 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 3
  %67 = ptrtoint ptr %b_blocknr.i126 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %b_blocknr.i126, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i64 noundef %68) #8
  br label %if.then.i.i128

if.then.i.i128:                                   ; preds = %if.then4.i127, %do.body.i125
  tail call void @__brelse(ptr noundef nonnull %bh.1) #8
  br label %affs_brelse.exit129

affs_brelse.exit129:                              ; preds = %if.then.i.i128, %affs_brelse.exit.affs_brelse.exit129_crit_edge, %affs_bread.exit.affs_brelse.exit129_crit_edge, %affs_validblock.exit.i.affs_brelse.exit129_crit_edge, %do.end.i.affs_brelse.exit129_crit_edge
  %retval1.0138145 = phi i32 [ %retval1.0, %affs_brelse.exit.affs_brelse.exit129_crit_edge ], [ %retval1.0, %if.then.i.i128 ], [ -5, %do.end.i.affs_brelse.exit129_crit_edge ], [ -5, %affs_validblock.exit.i.affs_brelse.exit129_crit_edge ], [ -5, %affs_bread.exit.affs_brelse.exit129_crit_edge ]
  ret i32 %retval1.0138145

if.then58:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @affs_free_block(ptr noundef %1, i32 noundef %call11) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %sw.bb.if.end59_crit_edge
  %inode_bh.2151 = phi ptr [ %call.i.i, %if.then58 ], [ null, %sw.bb.if.end59_crit_edge ]
  %bh.2150 = phi ptr [ null, %if.then58 ], [ %call.i.i, %sw.bb.if.end59_crit_edge ]
  %retval1.1149 = phi i32 [ -5, %if.then58 ], [ -28, %sw.bb.if.end59_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i_link_lock.i) #8
  br label %done
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_copy_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_insert_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/affs/inode.c", i32 35, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @affs_iget.__UNIQUE_ID_ddebug239, !1, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/affs/inode.c", i32 40, i32 20}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/affs/inode.c", i32 40, i32 34}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/affs/inode.c", i32 45, i32 7}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/affs/inode.c", i32 124, i32 34}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/affs/inode.c", i32 178, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @affs_write_inode.__UNIQUE_ID_ddebug240, !16, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/affs/inode.c", i32 185, i32 17}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/affs/inode.c", i32 185, i32 31}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/affs/inode.c", i32 225, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @affs_notify_change.__UNIQUE_ID_ddebug241, !25, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!28 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/affs/inode.c", i32 266, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @affs_evict_inode.__UNIQUE_ID_ddebug242, !30, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!33 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/affs/inode.c", i32 280, i32 3}
!36 = !{ptr @affs_evict_inode.__UNIQUE_ID_ddebug243, !35, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!37 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../fs/affs/inode.c", i32 313, i32 21}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../fs/affs/inode.c", i32 314, i32 21}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/affs/inode.c", i32 359, i32 2}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @affs_add_entry.__UNIQUE_ID_ddebug244, !43, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!46 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/affs/affs.h", i32 237, i32 2}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @affs_bread.__UNIQUE_ID_ddebug234, !48, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!52 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/affs/affs.h", i32 282, i32 3}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @affs_brelse.__UNIQUE_ID_ddebug238, !54, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!57 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/affs/affs.h", i32 254, i32 2}
!60 = !{ptr @affs_getzeroblk.__UNIQUE_ID_ddebug236, !59, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148241639, i64 2148241644, i64 2148241657, i64 2148241701, i64 2148241735, i64 2148241756}
!74 = !{i64 822504, i64 822565}
!75 = !{i64 825236}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 825521}
!78 = !{i64 2152515423}
!79 = !{i64 2152515265}
!80 = !{i64 2152515593}
!81 = !{i64 2150183291}
!82 = !{i64 2148437104, i64 2148437136, i64 2148437165, i64 2148437199, i64 2148437230, i64 2148437253}
!83 = !{i64 2148526185}
