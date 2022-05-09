; ModuleID = '/llk/IR_all_yes/fs/affs/super.c_pt.bc'
source_filename = "../fs/affs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.export_operations = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.match_token = type { i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.affs_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, [32 x i8], %struct.spinlock, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.affs_root_tail = type { i32, [25 x i32], i32, %struct.affs_date, [32 x i8], i32, i32, %struct.affs_date, %struct.affs_date, i32, i32, i32, i32 }
%struct.affs_date = type { i32, i32, i32 }
%struct.substring_t = type { ptr, ptr }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.affs_inode_info = type { %struct.atomic_t, %struct.mutex, %struct.mutex, i32, i32, ptr, i32, i32, i32, ptr, i32, ptr, i64, i32, i32, i32, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.76 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__UNIQUE_ID_alias296 = internal constant [19 x i8] c"affs.alias=fs-affs\00", section ".modinfo", align 1
@affs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr null, ptr null, ptr @affs_mount, ptr @affs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description297 = internal constant [52 x i8] c"affs.description=Amiga filesystem support for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [23 x i8] c"affs.file=fs/affs/affs\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [17 x i8] c"affs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_affs__300_680_init_affs_fs6 = internal global ptr @init_affs_fs, section ".initcall6.init", align 4
@__exitcall_exit_affs_fs = internal global ptr @exit_affs_fs, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"affs\00", [27 x i8] zeroinitializer }, align 32
@affs_fill_super.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs_fill_super\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/affs/super.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_super(%s)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"affs: read_super(%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no options\00", [21 x i8] zeroinitializer }, align 32
@affs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @affs_alloc_inode, ptr null, ptr @affs_free_inode, ptr null, ptr @affs_write_inode, ptr null, ptr @affs_evict_inode, ptr @affs_put_super, ptr @affs_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @affs_statfs, ptr @affs_remount, ptr null, ptr @affs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@affs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sbi->s_bmlock\00", [17 x i8] zeroinitializer }, align 32
@affs_fill_super.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sbi->symlink_lock\00", [45 x i8] zeroinitializer }, align 32
@affs_fill_super.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sbi->work_lock\00", [16 x i8] zeroinitializer }, align 32
@affs_fill_super.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&sbi->sb_work)->work)\00", [54 x i8] zeroinitializer }, align 32
@affs_fill_super.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&sbi->sb_work)->timer\00", [40 x i8] zeroinitializer }, align 32
@affs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013affs: Error parsing options\0A\00", [33 x i8] zeroinitializer }, align 32
@affs_fill_super._entry_ptr = internal global ptr @affs_fill_super._entry, section ".printk_index", align 4
@affs_fill_super.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"initial blocksize=%d, #blocks=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"affs: initial blocksize=%d, #blocks=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@affs_fill_super.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.18, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"setting blocksize to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"affs: setting blocksize to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@affs_fill_super.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Dev %s, trying root=%u, bs=%d, size=%d, reserved=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"affs: Dev %s, trying root=%u, bs=%d, size=%d, reserved=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@affs_fill_super._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013affs: No valid root block on device %s\0A\00", [54 x i8] zeroinitializer }, align 32
@affs_fill_super._entry_ptr.24 = internal global ptr @affs_fill_super._entry.22, section ".printk_index", align 4
@affs_fill_super._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013affs: Cannot read boot block\0A\00", [32 x i8] zeroinitializer }, align 32
@affs_fill_super._entry_ptr.27 = internal global ptr @affs_fill_super._entry.25, section ".printk_index", align 4
@affs_fill_super._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015affs: Dircache FS - mounting %s read only\0A\00", [51 x i8] zeroinitializer }, align 32
@affs_fill_super._entry_ptr.30 = internal global ptr @affs_fill_super._entry.28, section ".printk_index", align 4
@affs_fill_super._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013affs: Unknown filesystem on device %s: %08X\0A\00", [49 x i8] zeroinitializer }, align 32
@affs_fill_super._entry_ptr.33 = internal global ptr @affs_fill_super._entry.31, section ".printk_index", align 4
@affs_fill_super._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015affs: Mounting volume \22%.*s\22: Type=%.3s\\%c, Blocksize=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@affs_fill_super._entry_ptr.36 = internal global ptr @affs_fill_super._entry.34, section ".printk_index", align 4
@affs_intl_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@affs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@affs_fill_super._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013affs: AFFS: Get root inode failed\0A\00", [59 x i8] zeroinitializer }, align 32
@affs_fill_super._entry_ptr.39 = internal global ptr @affs_fill_super._entry.37, section ".printk_index", align 4
@affs_export_ops = external dso_local constant %struct.export_operations, align 1
@affs_fill_super.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.40, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s_flags=%lX\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"affs: s_flags=%lX\0A\00", [45 x i8] zeroinitializer }, align 32
@affs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@affs_put_super.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"affs_put_super\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@affs_statfs.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_statfs\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() partsize=%d, reserved=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"affs: %s() partsize=%d, reserved=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@affs_remount.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"affs_remount\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(flags=0x%x,opts=\22%s\22)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"affs: %s(flags=0x%x,opts=\22%s\22)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",bs=%lu\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",mode=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",mufs\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c",nofilenametruncate\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",prefix=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",protect\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",reserved=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",root=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",setgid=%u\00", [21 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",setuid=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",verbose\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",volume=%s\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.65 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [17 x %struct.match_token], [56 x i8] } { [17 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.73 }, %struct.match_token { i32 1, ptr @.str.74 }, %struct.match_token { i32 2, ptr @.str.75 }, %struct.match_token { i32 3, ptr @.str.76 }, %struct.match_token { i32 4, ptr @.str.77 }, %struct.match_token { i32 5, ptr @.str.78 }, %struct.match_token { i32 6, ptr @.str.79 }, %struct.match_token { i32 7, ptr @.str.80 }, %struct.match_token { i32 8, ptr @.str.81 }, %struct.match_token { i32 9, ptr @.str.82 }, %struct.match_token { i32 10, ptr @.str.83 }, %struct.match_token { i32 11, ptr @.str.84 }, %struct.match_token { i32 12, ptr @.str.85 }, %struct.match_token { i32 12, ptr @.str.86 }, %struct.match_token { i32 12, ptr @.str.87 }, %struct.match_token { i32 12, ptr @.str.88 }, %struct.match_token { i32 13, ptr null }], [56 x i8] zeroinitializer }, align 32
@parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014affs: Invalid blocksize (512, 1024, 2048, 4096 allowed)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse_options\00", [18 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr = internal global ptr @parse_options._entry, section ".printk_index", align 4
@parse_options._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014affs: Unrecognized mount option \22%s\22 or missing value\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.72 = internal global ptr @parse_options._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bs=%u\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mode=%o\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mufs\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nofilenametruncate\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prefix=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"protect\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reserved=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"root=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setgid=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setuid=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"verbose\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"volume=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"grpquota\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noquota\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quota\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usrquota\00", [23 x i8] zeroinitializer }, align 32
@affs_bread.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.90, ptr @.str.91, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"affs_bread\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/affs/affs.h\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affs: %s: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@affs_brelse.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.90, ptr @.str.94, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"affs_brelse\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"affs: %s: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"affs_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ei->i_link_lock\00", [47 x i8] zeroinitializer }, align 32
@init_once.__key.98 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ei->i_ext_lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 1146049280, i64 1146049281, i64 1146049282, i64 1146049283, i64 1146049284, i64 1146049285, i64 1836402176, i64 1836402177, i64 1836402178, i64 1836402179, i64 1836402180, i64 1836402181, i64 1836402259]
@__sancov_gen_cov_switch_values.100 = internal global [10 x i64] [i64 8, i64 32, i64 1146049284, i64 1146049285, i64 1836402176, i64 1836402177, i64 1836402178, i64 1836402179, i64 1836402180, i64 1836402181]
@__sancov_gen_cov_switch_values.101 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"affs_fs_type\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 647, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 649, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 352, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [10 x i8] c"affs_sops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 151, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 368, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 369, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 370, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 371, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 376, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 393, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 409, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 424, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 444, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 456, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 469, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 505, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 512, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 543, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 548, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"affs_inode_cachep\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 97, i32 28 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 53, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 366, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 613, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 567, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 301, i32 17 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 303, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 305, i32 15 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 307, i32 15 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 309, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 311, i32 15 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 313, i32 17 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 315, i32 17 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 317, i32 17 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 320, i32 17 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 323, i32 15 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 325, i32 17 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 209, i32 31 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 169, i32 28 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 221, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 287, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 170, i32 11 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 171, i32 13 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 172, i32 13 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 173, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 174, i32 15 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 175, i32 16 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 176, i32 17 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 177, i32 13 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 178, i32 15 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 179, i32 15 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 180, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 181, i32 15 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 182, i32 15 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 183, i32 15 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 184, i32 15 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 185, i32 15 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 237, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [18 x i8] c"../fs/affs/affs.h\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 282, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 131, i32 40 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 124, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.395 = private constant [19 x i8] c"../fs/affs/super.c\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 125, i32 2 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_exit_affs_fs, ptr @__initcall__kmod_affs__300_680_init_affs_fs6, ptr @affs_fill_super._entry, ptr @affs_fill_super._entry.22, ptr @affs_fill_super._entry.25, ptr @affs_fill_super._entry.28, ptr @affs_fill_super._entry.31, ptr @affs_fill_super._entry.34, ptr @affs_fill_super._entry.37, ptr @affs_fill_super._entry_ptr, ptr @affs_fill_super._entry_ptr.24, ptr @affs_fill_super._entry_ptr.27, ptr @affs_fill_super._entry_ptr.30, ptr @affs_fill_super._entry_ptr.33, ptr @affs_fill_super._entry_ptr.36, ptr @affs_fill_super._entry_ptr.39, ptr @exit_affs_fs, ptr @parse_options._entry, ptr @parse_options._entry.70, ptr @parse_options._entry_ptr, ptr @parse_options._entry_ptr.72, ptr @affs_fs_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @affs_sops, ptr @affs_fill_super.__key, ptr @.str.6, ptr @affs_fill_super.__key.7, ptr @.str.8, ptr @affs_fill_super.__key.9, ptr @.str.10, ptr @affs_fill_super.__key.11, ptr @.str.12, ptr @affs_fill_super.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @affs_inode_cachep, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @tokens, ptr @.str.66, ptr @.str.67, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @init_once.__key, ptr @.str.97, ptr @init_once.__key.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_fill_super._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @affs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @affs_mark_sb_dirty(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_lock = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_queued = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %work_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %work_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %6 = load i32, ptr @dirty_writeback_interval, align 4
  %mul = mul i32 %6, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %7 = load ptr, ptr @system_long_wq, align 4
  %sb_work = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 21
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %sb_work, i32 noundef %call2.i) #10
  %8 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %work_queued, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else.i, %if.end.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_affs_fs() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @affs_fs_type) #10
  tail call void @rcu_barrier() #10
  %0 = load ptr, ptr @affs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_affs_fs() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.96, i32 noundef 1032, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #10
  store ptr %call.i, ptr @affs_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @affs_fs_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rcu_barrier() #10
  %0 = load ptr, ptr @affs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @affs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @affs_fill_super) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @affs_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kill_block_super(ptr noundef %sb) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @affs_free_bitmap(ptr noundef %sb) #10
  %s_root_bh = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_root_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root_bh, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.affs_brelse.exit_crit_edge, label %do.body.i

if.then.affs_brelse.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %affs_brelse.exit

do.body.i:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_kill_sb, %if.then4.i)) #10
          to label %if.then.i.i [label %if.then4.i], !srcloc !207

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_blocknr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i64 noundef %5) #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then4.i, %do.body.i
  tail call void @__brelse(ptr noundef nonnull %3) #10
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then.i.i, %if.then.affs_brelse.exit_crit_edge
  %s_prefix = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %s_prefix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_prefix, align 4
  tail call void @kfree(ptr noundef %7) #10
  %s_bmlock = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %s_bmlock) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %affs_brelse.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %root_block = alloca i32, align 4
  %blocksize = alloca i32, align 4
  %i = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %reserved = alloca i32, align 4
  %mount_flags = alloca i32, align 4
  %tmp_flags = alloca i32, align 4
  %sig = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_block) #10
  %0 = ptrtoint ptr %root_block to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %root_block, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocksize) #10
  %1 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %blocksize, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #10
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #10
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %uid, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #10
  %4 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %gid, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved) #10
  %5 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reserved, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mount_flags) #10
  %6 = ptrtoint ptr %mount_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mount_flags, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_flags) #10
  %7 = ptrtoint ptr %tmp_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmp_flags, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sig) #10
  %8 = getelementptr inbounds [4 x i8], ptr %sig, i32 0, i32 3
  %9 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %sig, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_fill_super.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_fill_super, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tobool3.not = icmp eq ptr %data, null
  %spec.select = select i1 %tobool3.not, ptr @.str.5, ptr %data
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_fill_super.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.4, ptr noundef nonnull %spec.select) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %10 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 44543, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %11 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @affs_sops, ptr %s_op, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %or = or i32 %13, 2048
  store i32 %or, ptr %s_flags, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %14 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1000000000, ptr %s_time_gran, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %15 = load i32, ptr @sys_tz, align 4
  %mul = mul i32 %15, 60
  %conv = sext i32 %mul to i64
  %add = add nsw i64 %conv, 252460800
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %16 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add, ptr %s_time_min, align 8
  %add5 = add nsw i64 %conv, 371085426835200
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %17 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add5, ptr %s_time_max, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 384) #13
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %sb10 = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %sb10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sb, ptr %sb10, align 8
  %s_bmlock = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %s_bmlock, ptr noundef nonnull @.str.6, ptr noundef nonnull @affs_fill_super.__key) #10
  %symlink_lock = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %symlink_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @affs_fill_super.__key.7, i16 noundef signext 3) #10
  %work_lock = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %work_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @affs_fill_super.__key.9, i16 noundef signext 3) #10
  %sb_work = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %sb_work, i32 noundef 0) #10
  %21 = ptrtoint ptr %sb_work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %sb_work, align 8
  %lockdep_map = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @affs_fill_super.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry31 = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1
  %22 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry31, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 21, i32 0, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @flush_superblock, ptr %func, align 4
  %timer = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 21, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @affs_fill_super.__key.13) #10
  %s_prefix = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 16
  %s_volume = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 17
  %call42 = call fastcc i32 @parse_options(ptr noundef %data, ptr noundef nonnull %uid, ptr noundef nonnull %gid, ptr noundef nonnull %i, ptr noundef nonnull %reserved, ptr noundef nonnull %root_block, ptr noundef nonnull %blocksize, ptr noundef %s_prefix, ptr noundef %s_volume, ptr noundef nonnull %mount_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.end50:                                         ; preds = %if.end9
  %25 = ptrtoint ptr %mount_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mount_flags, align 4
  %s_flags51 = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %s_flags51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %s_flags51, align 4
  %28 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i, align 4
  %conv52 = trunc i32 %29 to i16
  %s_mode = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %s_mode to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv52, ptr %s_mode, align 8
  %s_uid = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uid, align 4
  %33 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %s_uid, align 8
  %s_gid = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gid, align 4
  %36 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %s_gid, align 4
  %37 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reserved, align 4
  %s_reserved = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %s_reserved to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %s_reserved, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %40 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_bdev, align 4
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bd_nr_sectors.i, align 8
  %conv54 = trunc i64 %43 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_fill_super.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_fill_super, %if.then67)) #10
          to label %do.end70 [label %if.then67], !srcloc !207

if.then67:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_fill_super.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.17, i32 noundef 512, i32 noundef %conv54) #10
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %if.end50
  %call.i = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 4096) #10
  %44 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %do.end70.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

do.end70.bdev_logical_block_size.exit_crit_edge:  ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %47, i32 0, i32 37, i32 9
  %48 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool2.not.i.i = icmp eq i32 %49, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %49
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %do.end70.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %do.end70.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %50 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval1.0.i.i, ptr %i, align 4
  %51 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp = icmp sgt i32 %52, 0
  br i1 %cmp, label %if.then74, label %bdev_logical_block_size.exit.if.end76_crit_edge

bdev_logical_block_size.exit.if.end76_crit_edge:  ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then74:                                        ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %i, align 4
  %div465466 = lshr i32 %52, 9
  %div75 = sdiv i32 %conv54, %div465466
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %bdev_logical_block_size.exit.if.end76_crit_edge
  %j.0 = phi i32 [ %52, %if.then74 ], [ 4096, %bdev_logical_block_size.exit.if.end76_crit_edge ]
  %size.0 = phi i32 [ %div75, %if.then74 ], [ %conv54, %bdev_logical_block_size.exit.if.end76_crit_edge ]
  %54 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i, align 4
  %56 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %j.0)
  %cmp77.not476 = icmp sgt i32 %55, %j.0
  br i1 %cmp77.not476, label %if.end76.for.end147_crit_edge, label %for.body.lr.ph

if.end76.for.end147_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end147

for.body.lr.ph:                                   ; preds = %if.end76
  %s_root_block = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc146.for.body_crit_edge, %for.body.lr.ph
  %size.1478 = phi i32 [ %size.0, %for.body.lr.ph ], [ %shr, %for.inc146.for.body_crit_edge ]
  %shl474477 = phi i32 [ %55, %for.body.lr.ph ], [ %shl, %for.inc146.for.body_crit_edge ]
  %57 = ptrtoint ptr %root_block to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %root_block, align 4
  %59 = ptrtoint ptr %s_root_block to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %s_root_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp79 = icmp slt i32 %58, 0
  br i1 %cmp79, label %if.then81, label %for.body.do.body86_crit_edge

for.body.do.body86_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86

if.then81:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reserved, align 4
  %add82 = add i32 %size.1478, -1
  %sub = add i32 %add82, %61
  %div83 = sdiv i32 %sub, 2
  %62 = ptrtoint ptr %s_root_block to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div83, ptr %s_root_block, align 4
  br label %do.body86

do.body86:                                        ; preds = %if.then81, %for.body.do.body86_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_fill_super.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_fill_super, %if.then98)) #10
          to label %do.end101 [label %if.then98], !srcloc !207

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_fill_super.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.19, i32 noundef %shl474477) #10
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %do.body86
  %call.i450 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %shl474477) #10
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %size.1478, ptr %call7.i.i, align 8
  br label %do.body106

do.body106:                                       ; preds = %for.inc.do.body106_crit_edge, %do.end101
  %cmp103 = phi i1 [ true, %do.end101 ], [ false, %for.inc.do.body106_crit_edge ]
  %num_bm.0471 = phi i32 [ 0, %do.end101 ], [ 1, %for.inc.do.body106_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_fill_super.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_fill_super, %if.then118)) #10
          to label %do.end124 [label %if.then118], !srcloc !207

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %s_root_block to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_root_block, align 4
  %add121 = add i32 %65, %num_bm.0471
  %66 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reserved, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_fill_super.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.21, ptr noundef %s_id, i32 noundef %add121, i32 noundef %shl474477, i32 noundef %size.1478, i32 noundef %67) #10
  br label %do.end124

do.end124:                                        ; preds = %if.then118, %do.body106
  %68 = ptrtoint ptr %s_root_block to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_root_block, align 4
  %add126 = add i32 %69, %num_bm.0471
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_bread.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_fill_super, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !207

if.then.i:                                        ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_bread.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.89, i32 noundef %add126) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end124
  %70 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info, align 16
  %s_reserved.i.i = getelementptr inbounds %struct.affs_sb_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %s_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_reserved.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %add126)
  %cmp.not.i.i = icmp sgt i32 %73, %add126
  br i1 %cmp.not.i.i, label %do.end.i.for.inc_crit_edge, label %affs_validblock.exit.i

do.end.i.for.inc_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

affs_validblock.exit.i:                           ; preds = %do.end.i
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add126)
  %cmp2.i.i = icmp sgt i32 %75, %add126
  br i1 %cmp2.i.i, label %affs_bread.exit, label %affs_validblock.exit.i.for.inc_crit_edge

affs_validblock.exit.i.for.inc_crit_edge:         ; preds = %affs_validblock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

affs_bread.exit:                                  ; preds = %affs_validblock.exit.i
  %conv.i = sext i32 %add126 to i64
  %76 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_bdev, align 4
  %78 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %77, i64 noundef %conv.i, i32 noundef %79, i32 noundef 8) #10
  %tobool128.not = icmp eq ptr %call.i.i, null
  br i1 %tobool128.not, label %affs_bread.exit.for.inc_crit_edge, label %if.end130

affs_bread.exit.for.inc_crit_edge:                ; preds = %affs_bread.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end130:                                        ; preds = %affs_bread.exit
  %call131 = call i32 @affs_checksum_block(ptr noundef %sb, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %land.lhs.true, label %if.end130.do.body.i_crit_edge

if.end130.do.body.i_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

land.lhs.true:                                    ; preds = %if.end130
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %b_data, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp133 = icmp eq i32 %83, 2
  br i1 %cmp133, label %land.lhs.true135, label %land.lhs.true.do.body.i_crit_edge

land.lhs.true.do.body.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

land.lhs.true135:                                 ; preds = %land.lhs.true
  %84 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr = getelementptr i8, ptr %81, i32 -200
  %add.ptr137 = getelementptr i8, ptr %add.ptr, i32 %85
  %stype = getelementptr inbounds %struct.affs_root_tail, ptr %add.ptr137, i32 0, i32 12
  %86 = ptrtoint ptr %stype to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %stype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp138 = icmp eq i32 %87, 1
  br i1 %cmp138, label %if.then140, label %land.lhs.true135.do.body.i_crit_edge

land.lhs.true135.do.body.i_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then140:                                       ; preds = %land.lhs.true135
  %b_data.le = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl474477, ptr %blocksize, align 4
  %div141 = sdiv i32 %shl474477, 4
  %sub142 = add nsw i32 %div141, -56
  %s_hashsize = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %89 = ptrtoint ptr %s_hashsize to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub142, ptr %s_hashsize, align 8
  %90 = ptrtoint ptr %s_root_block to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_root_block, align 4
  %add144 = add i32 %91, %num_bm.0471
  store i32 %add144, ptr %s_root_block, align 4
  %s_root_bh = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %92 = ptrtoint ptr %s_root_bh to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.i, ptr %s_root_bh, align 4
  %93 = ptrtoint ptr %root_block to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add144, ptr %root_block, align 4
  %94 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_bdev, align 4
  %call.i452 = call ptr @__bread_gfp(ptr noundef %95, i64 noundef 0, i32 noundef %85, i32 noundef 8) #10
  %tobool160.not = icmp eq ptr %call.i452, null
  br i1 %tobool160.not, label %do.end164, label %brelse.exit

do.body.i:                                        ; preds = %land.lhs.true135.do.body.i_crit_edge, %land.lhs.true.do.body.i_crit_edge, %if.end130.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_brelse.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_fill_super, %if.then4.i453)) #10
          to label %affs_brelse.exit [label %if.then4.i453], !srcloc !207

if.then4.i453:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %b_blocknr.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_brelse.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i64 noundef %97) #10
  br label %affs_brelse.exit

affs_brelse.exit:                                 ; preds = %if.then4.i453, %do.body.i
  call void @__brelse(ptr noundef nonnull %call.i.i) #10
  br label %for.inc

for.inc:                                          ; preds = %affs_brelse.exit, %affs_bread.exit.for.inc_crit_edge, %affs_validblock.exit.i.for.inc_crit_edge, %do.end.i.for.inc_crit_edge
  br i1 %cmp103, label %for.inc.do.body106_crit_edge, label %for.inc146

for.inc.do.body106_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body106

for.inc146:                                       ; preds = %for.inc
  %shl = shl i32 %shl474477, 1
  %shr = ashr i32 %size.1478, 1
  %cmp77.not = icmp sgt i32 %shl, %j.0
  br i1 %cmp77.not, label %for.inc146.for.end147_crit_edge, label %for.inc146.for.body_crit_edge

for.inc146.for.body_crit_edge:                    ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc146.for.end147_crit_edge:                  ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end147

for.end147:                                       ; preds = %for.inc146.for.end147_crit_edge, %if.end76.for.end147_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool148.not = icmp eq i32 %silent, 0
  br i1 %tobool148.not, label %do.end152, label %for.end147.cleanup_crit_edge

for.end147.cleanup_crit_edge:                     ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end152:                                        ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #12
  %s_id154 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %s_id154) #14
  br label %cleanup

do.end164:                                        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  br label %cleanup

brelse.exit:                                      ; preds = %if.then140
  %b_data169 = getelementptr inbounds %struct.buffer_head, ptr %call.i452, i32 0, i32 5
  %98 = ptrtoint ptr %b_data169 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %b_data169, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %99, align 1
  %102 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %sig, align 4
  call void @__brelse(ptr noundef nonnull %call.i452) #10
  %103 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values)
  switch i32 %101, label %brelse.exit.do.end222_crit_edge [
    i32 1146049285, label %brelse.exit.land.lhs.true181_crit_edge
    i32 1836402181, label %brelse.exit.land.lhs.true181_crit_edge493
    i32 1146049284, label %brelse.exit.land.lhs.true181_crit_edge494
    i32 1836402180, label %brelse.exit.land.lhs.true181_crit_edge495
    i32 1836402259, label %brelse.exit.sw.bb_crit_edge
    i32 1836402179, label %brelse.exit.sw.bb_crit_edge496
    i32 1146049283, label %brelse.exit.sw.epilog.sink.split_crit_edge
    i32 1836402177, label %brelse.exit.sw.bb199_crit_edge
    i32 1146049281, label %brelse.exit.sw.epilog_crit_edge
    i32 1836402176, label %brelse.exit.sw.bb202_crit_edge
    i32 1146049280, label %brelse.exit.sw.bb205_crit_edge
    i32 1836402178, label %brelse.exit.sw.bb210_crit_edge
    i32 1146049282, label %brelse.exit.sw.bb213_crit_edge
  ]

brelse.exit.sw.bb213_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb213

brelse.exit.sw.bb210_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb210

brelse.exit.sw.bb205_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb205

brelse.exit.sw.bb202_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb202

brelse.exit.sw.epilog_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

brelse.exit.sw.bb199_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb199

brelse.exit.sw.epilog.sink.split_crit_edge:       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

brelse.exit.sw.bb_crit_edge496:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

brelse.exit.sw.bb_crit_edge:                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

brelse.exit.land.lhs.true181_crit_edge495:        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true181

brelse.exit.land.lhs.true181_crit_edge494:        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true181

brelse.exit.land.lhs.true181_crit_edge493:        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true181

brelse.exit.land.lhs.true181_crit_edge:           ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true181

brelse.exit.do.end222_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end222

land.lhs.true181:                                 ; preds = %brelse.exit.land.lhs.true181_crit_edge, %brelse.exit.land.lhs.true181_crit_edge493, %brelse.exit.land.lhs.true181_crit_edge494, %brelse.exit.land.lhs.true181_crit_edge495
  %104 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_flags, align 4
  %and.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end186, label %land.lhs.true181.if.end193_crit_edge

land.lhs.true181.if.end193_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

do.end186:                                        ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #12
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %s_id) #14
  %106 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_flags, align 4
  %or192 = or i32 %107, 1
  store i32 %or192, ptr %s_flags, align 4
  br label %if.end193

if.end193:                                        ; preds = %do.end186, %land.lhs.true181.if.end193_crit_edge
  %108 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %101, label %if.end193.do.end222_crit_edge [
    i32 1146049284, label %if.end193.sw.bb213_crit_edge
    i32 1836402179, label %if.end193.sw.bb_crit_edge
    i32 1836402181, label %if.end193.sw.bb_crit_edge497
    i32 1836402178, label %if.end193.sw.bb210_crit_edge
    i32 1146049285, label %if.end193.sw.epilog.sink.split_crit_edge
    i32 1836402177, label %if.end193.sw.bb199_crit_edge
    i32 1836402180, label %if.end193.sw.bb210_crit_edge498
    i32 1836402176, label %if.end193.sw.bb202_crit_edge
  ]

if.end193.sw.bb202_crit_edge:                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb202

if.end193.sw.bb210_crit_edge498:                  ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb210

if.end193.sw.bb199_crit_edge:                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb199

if.end193.sw.epilog.sink.split_crit_edge:         ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end193.sw.bb210_crit_edge:                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb210

if.end193.sw.bb_crit_edge497:                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end193.sw.bb_crit_edge:                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end193.sw.bb213_crit_edge:                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb213

if.end193.do.end222_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end222

sw.bb:                                            ; preds = %if.end193.sw.bb_crit_edge, %if.end193.sw.bb_crit_edge497, %brelse.exit.sw.bb_crit_edge, %brelse.exit.sw.bb_crit_edge496
  %109 = ptrtoint ptr %s_flags51 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_flags51, align 4
  %or195 = or i32 %110, 256
  store i32 %or195, ptr %s_flags51, align 4
  br label %sw.epilog.sink.split

sw.bb199:                                         ; preds = %if.end193.sw.bb199_crit_edge, %brelse.exit.sw.bb199_crit_edge
  br label %sw.epilog.sink.split

sw.bb202:                                         ; preds = %if.end193.sw.bb202_crit_edge, %brelse.exit.sw.bb202_crit_edge
  %111 = ptrtoint ptr %s_flags51 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %s_flags51, align 4
  %or204 = or i32 %112, 256
  store i32 %or204, ptr %s_flags51, align 4
  br label %sw.bb205

sw.bb205:                                         ; preds = %sw.bb202, %brelse.exit.sw.bb205_crit_edge
  %113 = ptrtoint ptr %s_flags51 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %s_flags51, align 4
  %or207 = or i32 %114, 512
  store i32 %or207, ptr %s_flags51, align 4
  br label %sw.epilog.sink.split

sw.bb210:                                         ; preds = %if.end193.sw.bb210_crit_edge, %if.end193.sw.bb210_crit_edge498, %brelse.exit.sw.bb210_crit_edge
  %115 = ptrtoint ptr %s_flags51 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %s_flags51, align 4
  %or212 = or i32 %116, 256
  store i32 %or212, ptr %s_flags51, align 4
  br label %sw.bb213

sw.bb213:                                         ; preds = %sw.bb210, %if.end193.sw.bb213_crit_edge, %brelse.exit.sw.bb213_crit_edge
  %117 = ptrtoint ptr %s_flags51 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_flags51, align 4
  %or217 = or i32 %118, 513
  store i32 %or217, ptr %s_flags51, align 4
  br label %sw.epilog.sink.split

do.end222:                                        ; preds = %if.end193.do.end222_crit_edge, %brelse.exit.do.end222_crit_edge
  %call226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %s_id, i32 noundef %101) #14
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb213, %sw.bb205, %sw.bb199, %sw.bb, %if.end193.sw.epilog.sink.split_crit_edge, %brelse.exit.sw.epilog.sink.split_crit_edge
  %s_flags.sink485 = phi ptr [ %s_flags, %sw.bb213 ], [ %s_flags, %sw.bb205 ], [ %s_flags51, %sw.bb199 ], [ %s_flags51, %brelse.exit.sw.epilog.sink.split_crit_edge ], [ %s_flags51, %if.end193.sw.epilog.sink.split_crit_edge ], [ %s_flags51, %sw.bb ]
  %.sink484 = phi i32 [ 8, %sw.bb213 ], [ 8, %sw.bb205 ], [ 256, %sw.bb199 ], [ 1, %brelse.exit.sw.epilog.sink.split_crit_edge ], [ 1, %if.end193.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb ]
  %119 = ptrtoint ptr %s_flags.sink485 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s_flags.sink485, align 4
  %or219 = or i32 %120, %.sink484
  store i32 %or219, ptr %s_flags.sink485, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %brelse.exit.sw.epilog_crit_edge
  %and = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool227.not = icmp eq i32 %and, 0
  br i1 %tobool227.not, label %sw.epilog.if.end257_crit_edge, label %if.then228

sw.epilog.if.end257_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end257

if.then228:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %b_data.le to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %b_data.le, align 4
  %123 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_blocksize.i.i, align 16
  %add.ptr231 = getelementptr i8, ptr %122, i32 %124
  %add.ptr232 = getelementptr i8, ptr %add.ptr231, i32 -200
  %disk_name = getelementptr inbounds %struct.affs_root_tail, ptr %add.ptr232, i32 0, i32 4
  %125 = ptrtoint ptr %disk_name to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %disk_name, align 4
  %127 = call i8 @llvm.umin.i8(i8 %126, i8 31)
  %spec.select437 = zext i8 %127 to i32
  %add.ptr251 = getelementptr i8, ptr %disk_name, i32 1
  %128 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %8, align 1
  %conv254 = zext i8 %129 to i32
  %add255 = add nuw nsw i32 %conv254, 48
  %call256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %spec.select437, ptr noundef %add.ptr251, ptr noundef nonnull %sig, i32 noundef %add255, i32 noundef %shl474477) #14
  br label %if.end257

if.end257:                                        ; preds = %if.then228, %sw.epilog.if.end257_crit_edge
  %130 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_flags, align 4
  %or259 = or i32 %131, 6
  store i32 %or259, ptr %s_flags, align 4
  %132 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %s_blocksize.i.i, align 16
  %s_data_blksize = getelementptr inbounds %struct.affs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %s_data_blksize to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %s_data_blksize, align 8
  %135 = ptrtoint ptr %s_flags51 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_flags51, align 4
  %and262 = and i32 %136, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %if.end257.if.end267_crit_edge, label %if.then264

if.end257.if.end267_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end267

if.then264:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #12
  %sub266 = add i32 %133, -24
  %137 = ptrtoint ptr %s_data_blksize to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub266, ptr %s_data_blksize, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %if.end257.if.end267_crit_edge
  %138 = ptrtoint ptr %tmp_flags to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or259, ptr %tmp_flags, align 4
  %call269 = call i32 @affs_init_bitmap(ptr noundef %sb, ptr noundef nonnull %tmp_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %if.end267.cleanup_crit_edge

if.end267.cleanup_crit_edge:                      ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end272:                                        ; preds = %if.end267
  %139 = ptrtoint ptr %tmp_flags to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tmp_flags, align 4
  %141 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %s_flags, align 4
  %142 = ptrtoint ptr %root_block to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %root_block, align 4
  %call274 = call ptr @affs_iget(ptr noundef %sb, i32 noundef %143) #10
  %cmp.i = icmp ugt ptr %call274, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then276, label %if.end278

if.then276:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %call274 to i32
  br label %cleanup

if.end278:                                        ; preds = %if.end272
  %145 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_fs_info, align 16
  %s_flags280 = getelementptr inbounds %struct.affs_sb_info, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %s_flags280 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_flags280, align 4
  %and281 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281)
  %tobool282.not = icmp eq i32 %and281, 0
  %spec.select486 = select i1 %tobool282.not, ptr @affs_dentry_operations, ptr @affs_intl_dentry_operations
  %149 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %spec.select486, ptr %149, align 8
  %call286 = call ptr @d_make_root(ptr noundef %call274) #10
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %151 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call286, ptr %s_root, align 64
  %tobool288.not = icmp eq ptr %call286, null
  br i1 %tobool288.not, label %do.end292, label %if.end295

do.end292:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #12
  %call294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #14
  br label %cleanup

if.end295:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #12
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %152 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @affs_export_ops, ptr %s_export_op, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_fill_super.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_fill_super, %if.then308)) #10
          to label %cleanup [label %if.then308], !srcloc !207

if.then308:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %s_flags, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_fill_super.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.41, i32 noundef %154) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then308, %if.end295, %do.end292, %if.then276, %if.end267.cleanup_crit_edge, %do.end222, %do.end164, %do.end152, %for.end147.cleanup_crit_edge, %do.end47, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end222 ], [ %144, %if.then276 ], [ -12, %do.end292 ], [ -22, %do.end164 ], [ -22, %do.end47 ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %do.end152 ], [ -22, %for.end147.cleanup_crit_edge ], [ %call269, %if.end267.cleanup_crit_edge ], [ 0, %if.then308 ], [ 0, %if.end295 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sig) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mount_flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocksize) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_block) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_superblock(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  %work_lock = getelementptr i8, ptr %work, i32 100
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_queued = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %work_queued, align 4
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  tail call fastcc void @affs_commit_super(ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_options(ptr noundef %options, ptr nocapture noundef writeonly %uid, ptr nocapture noundef writeonly %gid, ptr nocapture noundef writeonly %mode, ptr noundef %reserved, ptr noundef %root, ptr nocapture noundef writeonly %blocksize, ptr nocapture noundef %prefix, ptr noundef %volume, ptr nocapture noundef %mount_opts) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %n = alloca i32, align 4
  %option = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  %2 = tail call i32 @llvm.read_register.i32(metadata !197) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %uid1 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %uid1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uid1, align 4
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %uid, align 4
  %11 = load ptr, ptr %task, align 8
  %cred8 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred8, align 16
  %gid9 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %gid9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gid9, align 4
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %gid, align 4
  %17 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %reserved, align 4
  %18 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %root, align 4
  %19 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %blocksize, align 4
  %20 = ptrtoint ptr %volume to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 58, ptr %volume, align 1
  %arrayidx10 = getelementptr i8, ptr %volume, i32 1
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx10, align 1
  %22 = ptrtoint ptr %mount_opts to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mount_opts, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup127_crit_edge, label %while.cond.preheader

entry.cleanup127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup127

while.cond.preheader:                             ; preds = %entry
  %call11159 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.65) #10
  %cmp.not160 = icmp eq ptr %call11159, null
  br i1 %cmp.not160, label %while.cond.preheader.cleanup127_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup127_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup127

while.body:                                       ; preds = %cleanup123.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call11161 = phi ptr [ %call11, %cleanup123.while.body_crit_edge ], [ %call11159, %while.cond.preheader.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #10
  %23 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %n, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #10
  %24 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %option, align 4, !annotation !208
  %25 = ptrtoint ptr %call11161 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call11161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %while.body.cleanup123_crit_edge, label %if.end14

while.body.cleanup123_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123

if.end14:                                         ; preds = %while.body
  %call15 = call i32 @match_token(ptr noundef nonnull %call11161, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #10
  %27 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call15, label %do.end120 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb40
    i32 3, label %sw.bb42
    i32 4, label %sw.bb44
    i32 5, label %sw.bb51
    i32 6, label %sw.bb53
    i32 7, label %sw.bb59
    i32 8, label %sw.bb65
    i32 9, label %sw.bb86
    i32 10, label %sw.bb109
    i32 11, label %sw.bb111
    i32 12, label %if.end14.cleanup123_crit_edge
  ]

if.end14.cleanup123_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123

sw.bb:                                            ; preds = %if.end14
  %call17 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %n) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb.cleanup123.thread_crit_edge

sw.bb.cleanup123.thread_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end20:                                         ; preds = %sw.bb
  %28 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n, align 4
  %30 = add i32 %29, -512
  %31 = call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 23)
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %31, label %do.end30 [
    i32 0, label %if.end20.if.end33_crit_edge
    i32 1, label %if.end20.if.end33_crit_edge177
    i32 3, label %if.end20.if.end33_crit_edge178
    i32 7, label %if.end20.if.end33_crit_edge179
  ]

if.end20.if.end33_crit_edge179:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end20.if.end33_crit_edge178:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end20.if.end33_crit_edge177:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #14
  br label %cleanup123.thread

if.end33:                                         ; preds = %if.end20.if.end33_crit_edge, %if.end20.if.end33_crit_edge177, %if.end20.if.end33_crit_edge178, %if.end20.if.end33_crit_edge179
  %33 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %blocksize, align 4
  br label %cleanup123

sw.bb34:                                          ; preds = %if.end14
  %call36 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %sw.bb34.cleanup123.thread_crit_edge

sw.bb34.cleanup123.thread_crit_edge:              ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end39:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %option, align 4
  %and = and i32 %35, 511
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and, ptr %mode, align 4
  %37 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mount_opts, align 4
  %or = or i32 %38, 64
  store i32 %or, ptr %mount_opts, align 4
  br label %cleanup123

sw.bb40:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mount_opts, align 4
  %or41 = or i32 %40, 256
  store i32 %or41, ptr %mount_opts, align 4
  br label %cleanup123

sw.bb42:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mount_opts, align 4
  %or43 = or i32 %42, 4096
  store i32 %or43, ptr %mount_opts, align 4
  br label %cleanup123

sw.bb44:                                          ; preds = %if.end14
  %43 = ptrtoint ptr %prefix to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prefix, align 4
  call void @kfree(ptr noundef %44) #10
  %call46 = call ptr @match_strdup(ptr noundef nonnull %args) #10
  %45 = ptrtoint ptr %prefix to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call46, ptr %prefix, align 4
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %sw.bb44.cleanup123.thread_crit_edge, label %if.end49

sw.bb44.cleanup123.thread_crit_edge:              ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end49:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mount_opts, align 4
  %or50 = or i32 %47, 1024
  store i32 %or50, ptr %mount_opts, align 4
  br label %cleanup123

sw.bb51:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mount_opts, align 4
  %or52 = or i32 %49, 4
  store i32 %or52, ptr %mount_opts, align 4
  br label %cleanup123

sw.bb53:                                          ; preds = %if.end14
  %call55 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef %reserved) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %sw.bb53.cleanup123_crit_edge, label %sw.bb53.cleanup123.thread_crit_edge

sw.bb53.cleanup123.thread_crit_edge:              ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

sw.bb53.cleanup123_crit_edge:                     ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123

sw.bb59:                                          ; preds = %if.end14
  %call61 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef %root) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %sw.bb59.cleanup123_crit_edge, label %sw.bb59.cleanup123.thread_crit_edge

sw.bb59.cleanup123.thread_crit_edge:              ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

sw.bb59.cleanup123_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123

sw.bb65:                                          ; preds = %if.end14
  %call67 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %sw.bb65.cleanup123.thread_crit_edge

sw.bb65.cleanup123.thread_crit_edge:              ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end70:                                         ; preds = %sw.bb65
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %cred79 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 99
  %52 = ptrtoint ptr %cred79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cred79, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %53, i32 0, i32 25
  %54 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %user_ns, align 4
  %56 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %option, align 4
  %call80 = call i32 @make_kgid(ptr noundef %55, i32 noundef %57) #10
  %58 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call80, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call80)
  %cmp.i.not = icmp eq i32 %call80, -1
  br i1 %cmp.i.not, label %if.end70.cleanup123.thread_crit_edge, label %if.end84

if.end70.cleanup123.thread_crit_edge:             ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end84:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mount_opts, align 4
  %or85 = or i32 %60, 32
  store i32 %or85, ptr %mount_opts, align 4
  br label %cleanup123

sw.bb86:                                          ; preds = %if.end14
  %call88 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %sw.bb86.cleanup123.thread_crit_edge

sw.bb86.cleanup123.thread_crit_edge:              ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end91:                                         ; preds = %sw.bb86
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 8
  %cred100 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 99
  %63 = ptrtoint ptr %cred100 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cred100, align 16
  %user_ns101 = getelementptr inbounds %struct.cred, ptr %64, i32 0, i32 25
  %65 = ptrtoint ptr %user_ns101 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %user_ns101, align 4
  %67 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %option, align 4
  %call102 = call i32 @make_kuid(ptr noundef %66, i32 noundef %68) #10
  %69 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call102, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call102)
  %cmp.i153.not = icmp eq i32 %call102, -1
  br i1 %cmp.i153.not, label %if.end91.cleanup123.thread_crit_edge, label %if.end107

if.end91.cleanup123.thread_crit_edge:             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

if.end107:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mount_opts, align 4
  %or108 = or i32 %71, 16
  store i32 %or108, ptr %mount_opts, align 4
  br label %cleanup123

sw.bb109:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mount_opts, align 4
  %or110 = or i32 %73, 2048
  store i32 %or110, ptr %mount_opts, align 4
  br label %cleanup123

sw.bb111:                                         ; preds = %if.end14
  %call113 = call ptr @match_strdup(ptr noundef nonnull %args) #10
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %sw.bb111.cleanup123.thread_crit_edge, label %cleanup

sw.bb111.cleanup123.thread_crit_edge:             ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup123.thread

cleanup:                                          ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #12
  %call117 = call i32 @strlcpy(ptr noundef %volume, ptr noundef nonnull %call113, i32 noundef 32) #10
  call void @kfree(ptr noundef nonnull %call113) #10
  br label %cleanup123

do.end120:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull %call11161) #14
  br label %cleanup123.thread

cleanup123.thread:                                ; preds = %do.end120, %sw.bb111.cleanup123.thread_crit_edge, %if.end91.cleanup123.thread_crit_edge, %sw.bb86.cleanup123.thread_crit_edge, %if.end70.cleanup123.thread_crit_edge, %sw.bb65.cleanup123.thread_crit_edge, %sw.bb59.cleanup123.thread_crit_edge, %sw.bb53.cleanup123.thread_crit_edge, %sw.bb44.cleanup123.thread_crit_edge, %sw.bb34.cleanup123.thread_crit_edge, %do.end30, %sw.bb.cleanup123.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  br label %cleanup127

cleanup123:                                       ; preds = %cleanup, %sw.bb109, %if.end107, %if.end84, %sw.bb59.cleanup123_crit_edge, %sw.bb53.cleanup123_crit_edge, %sw.bb51, %if.end49, %sw.bb42, %sw.bb40, %if.end39, %if.end33, %if.end14.cleanup123_crit_edge, %while.body.cleanup123_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  %call11 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.65) #10
  %cmp.not = icmp eq ptr %call11, null
  br i1 %cmp.not, label %cleanup123.cleanup127_crit_edge, label %cleanup123.while.body_crit_edge

cleanup123.while.body_crit_edge:                  ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup123.cleanup127_crit_edge:                  ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup127

cleanup127:                                       ; preds = %cleanup123.cleanup127_crit_edge, %cleanup123.thread, %while.cond.preheader.cleanup127_crit_edge, %entry.cleanup127_crit_edge
  %retval.4 = phi i32 [ 1, %entry.cleanup127_crit_edge ], [ 0, %cleanup123.thread ], [ 1, %while.cond.preheader.cleanup127_crit_edge ], [ 1, %cleanup123.cleanup127_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  ret i32 %retval.4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_checksum_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_init_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @affs_iget(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @affs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @affs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vfs_inode = getelementptr inbounds %struct.affs_inode_info, ptr %call, i32 0, i32 16
  %i_version.i.i = getelementptr inbounds %struct.affs_inode_info, ptr %call, i32 0, i32 16, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #10
  %i_lc = getelementptr inbounds %struct.affs_inode_info, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %i_lc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %i_lc, align 4
  %i_ext_bh = getelementptr inbounds %struct.affs_inode_info, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %i_ext_bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %i_ext_bh, align 4
  %i_pa_cnt = getelementptr inbounds %struct.affs_inode_info, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %i_pa_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %i_pa_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @affs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @affs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -248
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_write_inode(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_evict_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @affs_put_super(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_put_super.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_put_super, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_put_super.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sb_work = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 21
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %sb_work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_sync_fs(ptr noundef %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @affs_commit_super(ptr noundef %sb, i32 noundef %wait)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_statfs.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_statfs, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %s_reserved = getelementptr inbounds %struct.affs_sb_info, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %s_reserved to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_reserved, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_statfs.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %9, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = lshr i32 %5, 12
  %shl.i.i = and i32 %12, 1048320
  %and1.i.i = and i32 %5, 255
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %5, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %call6 = tail call i32 @affs_count_free_blocks(ptr noundef %1) #10
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 44543, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %16 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %f_bsize, align 4
  %s_fs_info.i28 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i28, align 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %s_reserved10 = getelementptr inbounds %struct.affs_sb_info, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %s_reserved10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_reserved10, align 4
  %sub = sub i32 %20, %22
  %conv = sext i32 %sub to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %23 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %f_blocks, align 8
  %conv11 = sext i32 %call6 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %24 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv11, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %25 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv11, ptr %f_bavail, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp13.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp13.sroa.0.0.insert.shift = shl nuw i64 %tmp13.sroa.0.0.insert.ext, 32
  %26 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %tmp13.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %27 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 30, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_remount(ptr noundef %sb, ptr noundef %flags, ptr noundef %data) #0 align 64 {
entry:
  %blocksize = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %mode = alloca i32, align 4
  %reserved = alloca i32, align 4
  %root_block = alloca i32, align 4
  %mount_flags = alloca i32, align 4
  %volume = alloca [32 x i8], align 1
  %prefix = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocksize) #10
  %2 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %blocksize, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #10
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %uid, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #10
  %4 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %gid, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #10
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mode, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved) #10
  %6 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reserved, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_block) #10
  %7 = ptrtoint ptr %root_block to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %root_block, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mount_flags) #10
  %8 = ptrtoint ptr %mount_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mount_flags, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %volume) #10
  %9 = call ptr @memset(ptr %volume, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prefix) #10
  %10 = ptrtoint ptr %prefix to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %prefix, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @affs_remount.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@affs_remount, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @affs_remount.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %12, ptr noundef %data) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @sync_filesystem(ptr noundef %sb) #10
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or = or i32 %14, 2048
  store i32 %or, ptr %flags, align 4
  %s_volume = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 17
  %15 = call ptr @memcpy(ptr %volume, ptr %s_volume, i32 32)
  %call7 = call fastcc i32 @parse_options(ptr noundef %data, ptr noundef nonnull %uid, ptr noundef nonnull %gid, ptr noundef nonnull %mode, ptr noundef nonnull %reserved, ptr noundef nonnull %root_block, ptr noundef nonnull %blocksize, ptr noundef nonnull %prefix, ptr noundef nonnull %volume, ptr noundef nonnull %mount_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %prefix to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prefix, align 4
  call void @kfree(ptr noundef %17) #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %sb_work = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 21
  %call11 = call zeroext i1 @flush_delayed_work(ptr noundef %sb_work) #10
  %18 = ptrtoint ptr %mount_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mount_flags, align 4
  %s_flags = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %s_flags, align 4
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  %conv = trunc i32 %22 to i16
  %s_mode = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %s_mode to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %s_mode, align 4
  %s_uid = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uid, align 4
  %26 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %s_uid, align 4
  %s_gid = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gid, align 4
  %29 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %s_gid, align 4
  %symlink_lock = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %symlink_lock) #10
  %30 = ptrtoint ptr %prefix to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prefix, align 4
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %s_prefix = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %s_prefix to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_prefix, align 4
  call void @kfree(ptr noundef %33) #10
  %34 = ptrtoint ptr %s_prefix to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %s_prefix, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %35 = call ptr @memcpy(ptr %s_volume, ptr %volume, i32 32)
  call void @_raw_spin_unlock(ptr noundef %symlink_lock) #10
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %38 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %40 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp eq i32 %40, 0
  %cmp = xor i1 %41, %tobool.i
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end26

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  br i1 %41, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void @affs_free_bitmap(ptr noundef %sb) #10
  br label %cleanup

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = call i32 @affs_init_bitmap(ptr noundef %sb, ptr noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then29, %if.end15.cleanup_crit_edge, %if.then9
  %retval.0 = phi i32 [ -22, %if.then9 ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.then29 ], [ %call30, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prefix) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %volume) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mount_flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_block) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocksize) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @affs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, i32 noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_flags = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %s_mode = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %s_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_mode, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, i32 noundef %conv) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %10 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags, align 4
  %and6 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.54) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %and11 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end14_crit_edge, label %if.then13

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.55) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  %14 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags, align 4
  %and16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %s_prefix = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 16
  %16 = ptrtoint ptr %s_prefix to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_prefix, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef %17) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %18 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_flags, align 4
  %and21 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end24_crit_edge, label %if.then23

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.57) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %s_reserved = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %s_reserved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not = icmp eq i32 %21, 2
  br i1 %cmp.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %21) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %s_root_block = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %s_root_block to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_root_block, align 4
  %24 = ptrtoint ptr %s_reserved to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_reserved, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %add = add i32 %25, -1
  %sub = add i32 %add, %27
  %div = sdiv i32 %sub, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %div)
  %cmp30.not = icmp eq i32 %23, %div
  br i1 %cmp30.not, label %if.end28.if.end34_crit_edge, label %if.then32

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %23) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %28 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_flags, align 4
  %and36 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end40_crit_edge, label %if.then38

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %s_gid = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack91 = load i32, ptr %s_gid, align 4
  %31 = insertvalue [1 x i32] undef, i32 %.unpack91, 0
  %call39 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %31) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, i32 noundef %call39) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34.if.end40_crit_edge
  %32 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_flags, align 4
  %and42 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end47_crit_edge, label %if.then44

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %s_uid = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack = load i32, ptr %s_uid, align 4
  %35 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call46 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %35) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, i32 noundef %call46) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %36 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_flags, align 4
  %and49 = and i32 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end52_crit_edge, label %if.then51

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.62) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end47.if.end52_crit_edge
  %s_volume = getelementptr inbounds %struct.affs_sb_info, ptr %3, i32 0, i32 17
  %38 = ptrtoint ptr %s_volume to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %s_volume, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool53.not = icmp eq i8 %39, 0
  br i1 %tobool53.not, label %if.end52.if.end56_crit_edge, label %if.then54

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef %s_volume) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52.if.end56_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @affs_commit_super(ptr noundef %sb, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_root_bh = getelementptr inbounds %struct.affs_sb_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %s_root_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -200
  tail call void @__might_sleep(ptr noundef nonnull @.str.45, i32 noundef 366) #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %and.i.i.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 4, ptr elementtype(i32) %3) #10, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !210
  %11 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %3) #10
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %call2 = tail call i64 @ktime_get_real_seconds() #10
  %disk_change = getelementptr inbounds %struct.affs_root_tail, ptr %add.ptr1, i32 0, i32 7
  tail call void @affs_secs_to_datestamp(i64 noundef %call2, ptr noundef %disk_change) #10
  tail call void @affs_fix_checksum(ptr noundef %sb, ptr noundef %3) #10
  tail call void @unlock_buffer(ptr noundef %3) #10
  tail call void @mark_buffer_dirty(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %lock_buffer.exit.if.end_crit_edge, label %if.then

lock_buffer.exit.if.end_crit_edge:                ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @sync_dirty_buffer(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %lock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_secs_to_datestamp(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_fix_checksum(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @affs_count_free_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @affs_free_bitmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_link_lock = getelementptr inbounds %struct.affs_inode_info, ptr %foo, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %i_link_lock, ptr noundef nonnull @.str.97, ptr noundef nonnull @init_once.__key) #10
  %i_ext_lock = getelementptr inbounds %struct.affs_inode_info, ptr %foo, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %i_ext_lock, ptr noundef nonnull @.str.99, ptr noundef nonnull @init_once.__key.98) #10
  %vfs_inode = getelementptr inbounds %struct.affs_inode_info, ptr %foo, i32 0, i32 16
  tail call void @inode_init_once(ptr noundef %vfs_inode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !138, !140, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !183, !184, !186, !187, !188, !189, !191, !193, !194, !196}
!llvm.named.register.sp = !{!197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__UNIQUE_ID_alias296, !1, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!1 = !{!"../fs/affs/super.c", i32 654, i32 1}
!2 = !{ptr @__UNIQUE_ID_description297, !3, !"__UNIQUE_ID_description297", i1 false, i1 false}
!3 = !{!"../fs/affs/super.c", i32 677, i32 1}
!4 = !{ptr @__UNIQUE_ID_file298, !5, !"__UNIQUE_ID_file298", i1 false, i1 false}
!5 = !{!"../fs/affs/super.c", i32 678, i32 1}
!6 = !{ptr @__UNIQUE_ID_license299, !5, !"__UNIQUE_ID_license299", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_affs__300_680_init_affs_fs6, !8, !"__initcall__kmod_affs__300_680_init_affs_fs6", i1 false, i1 false}
!8 = !{!"../fs/affs/super.c", i32 680, i32 1}
!9 = !{ptr @__exitcall_exit_affs_fs, !10, !"__exitcall_exit_affs_fs", i1 false, i1 false}
!10 = !{!"../fs/affs/super.c", i32 681, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/affs/super.c", i32 649, i32 11}
!13 = !{ptr @affs_fs_type, !14, !"affs_fs_type", i1 false, i1 false}
!14 = !{!"../fs/affs/super.c", i32 647, i32 32}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/affs/super.c", i32 352, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @affs_fill_super.__UNIQUE_ID_ddebug289, !16, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!20 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @affs_fill_super.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/affs/super.c", i32 368, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @affs_fill_super.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../fs/affs/super.c", i32 369, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @affs_fill_super.__key.9, !29, !"__key", i1 false, i1 false}
!29 = !{!"../fs/affs/super.c", i32 370, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @affs_fill_super.__key.11, !32, !"__key", i1 false, i1 false}
!32 = !{!"../fs/affs/super.c", i32 371, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @affs_fill_super.__key.13, !32, !"__key", i1 false, i1 false}
!35 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/affs/super.c", i32 376, i32 3}
!38 = !{ptr @affs_fill_super._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @affs_fill_super._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/affs/super.c", i32 393, i32 2}
!42 = !{ptr @affs_fill_super.__UNIQUE_ID_ddebug290, !41, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!43 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/affs/super.c", i32 409, i32 3}
!46 = !{ptr @affs_fill_super.__UNIQUE_ID_ddebug291, !45, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!47 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/affs/super.c", i32 424, i32 4}
!50 = !{ptr @affs_fill_super.__UNIQUE_ID_ddebug292, !49, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!51 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/affs/super.c", i32 444, i32 3}
!54 = !{ptr @affs_fill_super._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @affs_fill_super._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/affs/super.c", i32 456, i32 3}
!58 = !{ptr @affs_fill_super._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @affs_fill_super._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/affs/super.c", i32 469, i32 3}
!62 = !{ptr @affs_fill_super._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @affs_fill_super._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/affs/super.c", i32 505, i32 3}
!66 = !{ptr @affs_fill_super._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @affs_fill_super._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/affs/super.c", i32 512, i32 3}
!70 = !{ptr @affs_fill_super._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @affs_fill_super._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/affs/super.c", i32 543, i32 3}
!74 = !{ptr @affs_fill_super._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @affs_fill_super._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/affs/super.c", i32 548, i32 2}
!78 = !{ptr @affs_fill_super.__UNIQUE_ID_ddebug293, !77, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!79 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @affs_sops, !81, !"affs_sops", i1 false, i1 false}
!81 = !{!"../fs/affs/super.c", i32 151, i32 38}
!82 = !{ptr @affs_inode_cachep, !83, !"affs_inode_cachep", i1 false, i1 false}
!83 = !{!"../fs/affs/super.c", i32 97, i32 28}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/affs/super.c", i32 53, i32 2}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @affs_put_super.__UNIQUE_ID_ddebug288, !85, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!88 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/affs/super.c", i32 613, i32 2}
!93 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @affs_statfs.__UNIQUE_ID_ddebug295, !92, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!95 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/affs/super.c", i32 567, i32 2}
!98 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @affs_remount.__UNIQUE_ID_ddebug294, !97, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!100 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/affs/super.c", i32 301, i32 17}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/affs/super.c", i32 303, i32 17}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/affs/super.c", i32 305, i32 15}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/affs/super.c", i32 307, i32 15}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/affs/super.c", i32 309, i32 17}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/affs/super.c", i32 311, i32 15}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/affs/super.c", i32 313, i32 17}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/affs/super.c", i32 315, i32 17}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/affs/super.c", i32 317, i32 17}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/affs/super.c", i32 320, i32 17}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/affs/super.c", i32 323, i32 15}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/affs/super.c", i32 325, i32 17}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../fs/affs/super.c", i32 198, i32 16}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../fs/affs/super.c", i32 199, i32 16}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/affs/super.c", i32 209, i32 31}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/affs/super.c", i32 221, i32 5}
!133 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @parse_options._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @parse_options._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../fs/affs/super.c", i32 259, i32 21}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../fs/affs/super.c", i32 267, i32 21}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/affs/super.c", i32 287, i32 4}
!142 = !{ptr @parse_options._entry.70, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @parse_options._entry_ptr.72, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/affs/super.c", i32 170, i32 11}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/affs/super.c", i32 171, i32 13}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/affs/super.c", i32 172, i32 13}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/affs/super.c", i32 173, i32 19}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/affs/super.c", i32 174, i32 15}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/affs/super.c", i32 175, i32 16}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/affs/super.c", i32 176, i32 17}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/affs/super.c", i32 177, i32 13}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/affs/super.c", i32 178, i32 15}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/affs/super.c", i32 179, i32 15}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/affs/super.c", i32 180, i32 16}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/affs/super.c", i32 181, i32 15}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/affs/super.c", i32 182, i32 15}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/affs/super.c", i32 183, i32 15}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/affs/super.c", i32 184, i32 15}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/affs/super.c", i32 185, i32 15}
!176 = !{ptr @tokens, !177, !"tokens", i1 false, i1 false}
!177 = !{!"../fs/affs/super.c", i32 169, i32 28}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/affs/affs.h", i32 237, i32 2}
!180 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @affs_bread.__UNIQUE_ID_ddebug283, !179, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!183 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/affs/affs.h", i32 282, i32 3}
!186 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @affs_brelse.__UNIQUE_ID_ddebug287, !185, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!188 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/affs/super.c", i32 131, i32 40}
!191 = !{ptr @init_once.__key, !192, !"__key", i1 false, i1 false}
!192 = !{!"../fs/affs/super.c", i32 124, i32 2}
!193 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @init_once.__key.98, !195, !"__key", i1 false, i1 false}
!195 = !{!"../fs/affs/super.c", i32 125, i32 2}
!196 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!197 = !{!"sp"}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i64 2148968525, i64 2148968530, i64 2148968543, i64 2148968587, i64 2148968621, i64 2148968642}
!208 = !{!"auto-init"}
!209 = !{i64 2148364006, i64 2148364038, i64 2148364067, i64 2148364101, i64 2148364132, i64 2148364155}
!210 = !{i64 2148453111}
