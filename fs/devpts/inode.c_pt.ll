; ModuleID = '/llk/IR_all_yes/fs/devpts/inode.c_pt.bc'
source_filename = "../fs/devpts/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.match_token = type { i32, ptr }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
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
%struct.pts_fs_info = type { %struct.ida, %struct.pts_mount_opts, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pts_mount_opts = type { i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.74 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { %struct.spinlock, i32 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.substring_t = type { ptr, ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pty_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@pty_limit = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@pty_reserve = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@devpts_pty_kill.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/devpts/inode.c\00", [46 x i8] zeroinitializer }, align 32
@__initcall__kmod_devpts__234_637_init_devpts_fs6 = internal global ptr @init_devpts_fs, section ".initcall6.init", align 4
@fsnotify_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/fsnotify.h\00", [39 x i8] zeroinitializer }, align 32
@devpts_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.4, i32 8, ptr null, ptr null, ptr @devpts_mount, ptr @devpts_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@pty_root_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.30, ptr null, i32 0, i16 365, ptr @pty_kern_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"devpts\00", [25 x i8] zeroinitializer }, align 32
@devpts_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @devpts_remount, ptr null, ptr @devpts_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@simple_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@devpts_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013devpts: get root dentry failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"devpts_fill_super\00", [46 x i8] zeroinitializer }, align 32
@devpts_fill_super._entry_ptr = internal global ptr @devpts_fill_super._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",mode=%03o\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",ptmxmode=%03o\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",max=%d\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 128
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [7 x %struct.match_token], [40 x i8] } { [7 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.17 }, %struct.match_token { i32 1, ptr @.str.18 }, %struct.match_token { i32 2, ptr @.str.19 }, %struct.match_token { i32 3, ptr @.str.20 }, %struct.match_token { i32 4, ptr @.str.21 }, %struct.match_token { i32 5, ptr @.str.22 }, %struct.match_token { i32 6, ptr null }], [40 x i8] zeroinitializer }, align 32
@parse_mount_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013devpts: called with bogus options\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parse_mount_options\00", [44 x i8] zeroinitializer }, align 32
@parse_mount_options._entry_ptr = internal global ptr @parse_mount_options._entry, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mode=%o\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ptmxmode=%o\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"newinstance\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptmx\00", [27 x i8] zeroinitializer }, align 32
@mknod_ptmx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013devpts: Unable to alloc dentry for ptmx node\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mknod_ptmx\00", [21 x i8] zeroinitializer }, align 32
@mknod_ptmx._entry_ptr = internal global ptr @mknod_ptmx._entry, section ".printk_index", align 4
@mknod_ptmx._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013devpts: Unable to alloc inode for ptmx node\0A\00", [49 x i8] zeroinitializer }, align 32
@mknod_ptmx._entry_ptr.29 = internal global ptr @mknod_ptmx._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@pty_kern_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.31, ptr null, i32 0, i16 365, ptr @pty_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pty\00", [28 x i8] zeroinitializer }, align 32
@pty_table = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.32, ptr @pty_limit, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @pty_limit_min, ptr @pty_limit_max }, %struct.ctl_table { ptr @.str.33, ptr @pty_reserve, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @pty_limit_min, ptr @pty_limit_max }, %struct.ctl_table { ptr @.str.34, ptr @pty_count, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@pty_limit_min = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pty_limit_max = internal global { i32, [28 x i8] } { i32 2147483647, [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reserve\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"nr\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"pty_count\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 46, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"pty_limit\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 42, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"pty_reserve\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 43, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 584, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 620, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [28 x i8] c"../include/linux/fsnotify.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 271, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"devpts_fs_type\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 518, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"pty_root_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 84, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 519, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"devpts_sops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 422, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 480, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 409, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 412, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 414, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 415, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 417, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 378, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 267, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 109, i32 28 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 314, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 110, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 111, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 112, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 113, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 114, i32 20 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 115, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 342, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 344, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 353, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 86, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"pty_kern_table\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 75, i32 25 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 77, i32 15 }
@___asan_gen_.155 = private unnamed_addr constant [10 x i8] c"pty_table\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 48, i32 25 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 50, i32 15 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"pty_limit_min\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 44, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"pty_limit_max\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 45, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 58, i32 15 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [21 x i8] c"../fs/devpts/inode.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 66, i32 15 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__initcall__kmod_devpts__234_637_init_devpts_fs6, ptr @devpts_fill_super._entry, ptr @devpts_fill_super._entry_ptr, ptr @mknod_ptmx._entry, ptr @mknod_ptmx._entry.27, ptr @mknod_ptmx._entry_ptr, ptr @mknod_ptmx._entry_ptr.29, ptr @parse_mount_options._entry, ptr @parse_mount_options._entry_ptr, ptr @pty_count, ptr @pty_limit, ptr @pty_reserve, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @devpts_fs_type, ptr @pty_root_table, ptr @.str.4, ptr @devpts_sops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @xa_init_flags.__key, ptr @.str.12, ptr @.str.13, ptr @tokens, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @pty_kern_table, ptr @.str.31, ptr @pty_table, ptr @.str.32, ptr @pty_limit_min, ptr @pty_limit_max, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_reserve to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devpts_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_root_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devpts_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devpts_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_mount_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mknod_ptmx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mknod_ptmx._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_kern_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_limit_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pty_limit_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devpts_mntget(ptr nocapture noundef readonly %filp, ptr noundef readnone %fsi) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #10
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %f_path = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %1 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %f_path, align 8
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %path, align 8
  call void @path_get(ptr noundef nonnull %path) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %7, %9
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @follow_up(ptr noundef nonnull %path) #10
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %10 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mnt_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7377, i32 %15)
  %cmp3.not = icmp eq i32 %15, 7377
  br i1 %cmp3.not, label %lor.lhs.false, label %while.end.if.then8_crit_edge

while.end.if.then8_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false:                                    ; preds = %while.end
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %cmp7.not = icmp eq ptr %17, %fsi
  br i1 %cmp7.not, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %while.end.if.then8_crit_edge
  %call.i = call i32 @path_pts(ptr noundef nonnull %path) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.if.end10.thread_crit_edge

if.then8.if.end10.thread_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.thread

if.end.i:                                         ; preds = %if.then8
  %18 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %path, align 8
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mnt_sb.i, align 4
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7377, i32 %23)
  %cmp.not.i = icmp eq i32 %23, 7377
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.end10.thread_crit_edge

if.end.i.if.end10.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 13
  %26 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_root.i, align 64
  %cmp2.not.i = icmp eq ptr %25, %27
  br i1 %cmp2.not.i, label %lor.lhs.false.i.if.then12_crit_edge, label %lor.lhs.false.i.if.end10.thread_crit_edge

lor.lhs.false.i.if.end10.thread_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.thread

lor.lhs.false.i.if.then12_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end10.thread:                                  ; preds = %lor.lhs.false.i.if.end10.thread_crit_edge, %if.end.i.if.end10.thread_crit_edge, %if.then8.if.end10.thread_crit_edge
  %err.0.ph = phi i32 [ -19, %lor.lhs.false.i.if.end10.thread_crit_edge ], [ -19, %if.end.i.if.end10.thread_crit_edge ], [ %call.i, %if.then8.if.end10.thread_crit_edge ]
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 4
  call void @dput(ptr noundef %29) #10
  br label %if.end20

if.then12:                                        ; preds = %lor.lhs.false.i.if.then12_crit_edge, %lor.lhs.false.if.then12_crit_edge
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %0, align 4
  call void @dput(ptr noundef %31) #10
  %32 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %path, align 8
  %mnt_sb14 = getelementptr inbounds %struct.vfsmount, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %mnt_sb14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mnt_sb14, align 4
  %s_fs_info.i26 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i26, align 16
  %cmp16 = icmp eq ptr %37, %fsi
  br i1 %cmp16, label %if.then12.cleanup_crit_edge, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.then12.if.end20_crit_edge, %if.end10.thread
  %err.1 = phi i32 [ -19, %if.then12.if.end20_crit_edge ], [ %err.0.ph, %if.end10.thread ]
  %38 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %path, align 8
  call void @mntput(ptr noundef %39) #10
  %40 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then12.cleanup_crit_edge
  %retval.0 = phi ptr [ %40, %if.end20 ], [ %33, %if.then12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #10
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devpts_acquire(ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #10
  %f_path = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %0 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %f_path, align 8
  %2 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %path, align 8
  call void @path_get(ptr noundef nonnull %path) #10
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %path, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mnt_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7377, i32 %8)
  %cmp.not = icmp eq i32 %8, 7377
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %call.i = call i32 @path_pts(ptr noundef nonnull %path) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 8
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mnt_sb.i, align 4
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7377, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 7377
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 13
  %17 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_root.i, align 64
  %cmp2.not.i = icmp eq ptr %16, %18
  br i1 %cmp2.not.i, label %lor.lhs.false.i.if.end3_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

cleanup:                                          ; preds = %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %lor.lhs.false.i.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ]
  %19 = inttoptr i32 %retval.0.i.ph to ptr
  br label %out

if.end3:                                          ; preds = %lor.lhs.false.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %20 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %path, align 8
  %mnt_sb5 = getelementptr inbounds %struct.vfsmount, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %mnt_sb5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mnt_sb5, align 4
  %s_active = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 16
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #10
  %24 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 1, ptr elementtype(i32) %s_active) #10, !srcloc !114
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  br label %out

out:                                              ; preds = %if.end3, %cleanup
  %result.1 = phi ptr [ %19, %cleanup ], [ %26, %if.end3 ]
  call void @path_put(ptr noundef nonnull %path) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #10
  ret ptr %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devpts_release(ptr nocapture noundef readonly %fsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sb = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb, align 4
  tail call void @deactivate_super(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devpts_new_index(ptr noundef %fsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pty_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @llvm.prefetch.p0(ptr nonnull @pty_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pty_count, ptr nonnull @pty_count, i32 1, ptr nonnull elementtype(i32) @pty_count) #10, !srcloc !116
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  %1 = load i32, ptr @pty_limit, align 4
  %reserve = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %reserve to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserve, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load i32, ptr @pty_reserve, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %sub = sub i32 %1, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %sub)
  %cmp.not = icmp slt i32 %asmresult.i.i.i.i, %sub
  br i1 %cmp.not, label %out, label %cond.end.if.then5_crit_edge

cond.end.if.then5_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

out:                                              ; preds = %cond.end
  %max = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 1, i32 7
  %5 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max, align 4
  %sub2 = add i32 %6, -1
  %call.i = tail call i32 @ida_alloc_range(ptr noundef %fsi, i32 noundef 0, i32 noundef %sub2, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %out.if.then5_crit_edge, label %out.if.end6_crit_edge

out.if.end6_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

out.if.then5_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %out.if.then5_crit_edge, %cond.end.if.then5_crit_edge
  %index.014 = phi i32 [ %call.i, %out.if.then5_crit_edge ], [ -28, %cond.end.if.then5_crit_edge ]
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pty_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @pty_count, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pty_count, ptr nonnull @pty_count, i32 1, ptr nonnull elementtype(i32) @pty_count) #10, !srcloc !118
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %out.if.end6_crit_edge
  %index.013 = phi i32 [ %index.014, %if.then5 ], [ %call.i, %out.if.end6_crit_edge ]
  ret i32 %index.013
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devpts_kill_index(ptr noundef %fsi, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ida_free(ptr noundef %fsi, i32 noundef %idx) #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pty_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull @pty_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pty_count, ptr nonnull @pty_count, i32 1, ptr nonnull elementtype(i32) @pty_count) #10, !srcloc !118
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devpts_pty_new(ptr nocapture noundef readonly %fsi, i32 noundef %index, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %s = alloca [12 x i8], align 1
  %tmp16 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 2
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %s) #10
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %2 = call ptr @memset(ptr %s, i32 255, i32 12)
  %3 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_root, align 64
  %call = tail call ptr @new_inode(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 1
  %add = add i32 %index, 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %i_ino, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %do.end, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %uid = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 1, i32 2
  br label %cond.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !104) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 10
  br label %cond.end

cond.end:                                         ; preds = %do.end, %cond.true
  %storemerge55.in = phi ptr [ %uid, %cond.true ], [ %fsuid, %do.end ]
  %14 = ptrtoint ptr %storemerge55.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %storemerge55 = load i32, ptr %storemerge55.in, align 4
  %15 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge55, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %setgid = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %setgid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %setgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %do.end10, label %cond.true6

cond.true6:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %gid = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 1, i32 3
  br label %cond.end15

do.end10:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call i32 @llvm.read_register.i32(metadata !104) #10
  %and.i56 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i56 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task13, align 8
  %cred14 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred14, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 11
  br label %cond.end15

cond.end15:                                       ; preds = %do.end10, %cond.true6
  %storemerge.in = phi ptr [ %gid, %cond.true6 ], [ %fsgid, %do.end10 ]
  %24 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %25 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %i_gid, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp16) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp16, ptr noundef nonnull %call) #10
  %26 = call ptr @memcpy(ptr %i_ctime, ptr %tmp16, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp16) #10
  %27 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %28 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %mode = getelementptr inbounds %struct.pts_fs_info, ptr %fsi, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mode, align 4
  %31 = or i16 %30, 8192
  %or18 = or i32 %index, 142606336
  call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %31, i32 noundef %or18) #10
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %s, ptr noundef nonnull @.str, i32 noundef %index)
  %call21 = call ptr @d_alloc_name(ptr noundef %4, ptr noundef nonnull %s) #10
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %cond.end15
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %call21, i32 0, i32 11
  %32 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %priv, ptr %d_fsdata, align 4
  call void @d_add(ptr noundef nonnull %call21, ptr noundef nonnull %call) #10
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #10
  %37 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i, label %if.then23.cleanup_crit_edge, label %if.end.i.i.i

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %d_name.i.i = getelementptr inbounds %struct.dentry, ptr %call21, i32 0, i32 4
  %call1.i.i.i = call i32 @fsnotify(i32 noundef 256, ptr noundef nonnull %call21, i32 noundef 3, ptr noundef %34, ptr noundef %d_name.i.i, ptr noundef null, i32 noundef 0) #10
  br label %cleanup

if.else:                                          ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void @iput(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.i.i.i, %if.then23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.else ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call21, %if.then23.cleanup_crit_edge ], [ %call21, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %s) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @devpts_get_priv(ptr nocapture noundef readonly %dentry) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7377, i32 %3)
  %cmp.not = icmp eq i32 %3, 7377
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devpts_pty_kill(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7377, i32 %3)
  %cmp.not = icmp eq i32 %3, 7377
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @devpts_pty_kill.__already_done, align 1
  br i1 %.b43, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !119

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @devpts_pty_kill.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 620, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %d_fsdata, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode, align 8
  tail call void @drop_nlink(ptr noundef %6) #10
  tail call void @d_drop(ptr noundef %dentry) #10
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %7 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dentry, align 8
  %and.i.i.i.i = and i32 %12, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.rhs.i, label %if.end37.critedge.i

land.rhs.i:                                       ; preds = %if.end27
  %.b43.i = load i1, ptr @fsnotify_unlink.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.fsnotify_unlink.exit_crit_edge, label %if.then.i, !prof !119

land.rhs.i.fsnotify_unlink.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsnotify_unlink.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fsnotify_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %fsnotify_unlink.exit

if.end37.critedge.i:                              ; preds = %if.end27
  %13 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #10
  %19 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i45.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i45.i, label %if.end37.critedge.i.fsnotify_unlink.exit_crit_edge, label %if.end.i.i.i

if.end37.critedge.i.fsnotify_unlink.exit_crit_edge: ; preds = %if.end37.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsnotify_unlink.exit

if.end.i.i.i:                                     ; preds = %if.end37.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %d_name.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %21 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %21)
  %cmp.i.i = icmp eq i16 %21, 16384
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073742336, i32 512
  %call1.i.i.i = tail call i32 @fsnotify(i32 noundef %spec.select.i.i, ptr noundef %14, i32 noundef 2, ptr noundef %10, ptr noundef %d_name.i.i, ptr noundef null, i32 noundef 0) #10
  br label %fsnotify_unlink.exit

fsnotify_unlink.exit:                             ; preds = %if.end.i.i.i, %if.end37.critedge.i.fsnotify_unlink.exit_crit_edge, %if.then.i, %land.rhs.i.fsnotify_unlink.exit_crit_edge
  tail call void @dput(ptr noundef %dentry) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_devpts_fs() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @devpts_fs_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call ptr @register_sysctl_table(ptr noundef nonnull @pty_root_table) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_pts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @devpts_mount(ptr noundef %fs_type, i32 noundef %flags, ptr nocapture noundef readnone %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_nodev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %data, ptr noundef nonnull @devpts_fill_super) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devpts_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ida_destroy(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kill_litter_super(ptr noundef %sb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_nodev(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devpts_fill_super(ptr noundef %s, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %tmp28.i = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_iflags, align 8
  %and = and i32 %1, -5
  store i32 %and, ptr %s_iflags, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1024, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  %3 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7377, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %5 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @devpts_sops, ptr %s_op, align 4
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 45
  %6 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @simple_dentry_operations, ptr %s_d_op, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 34
  %7 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %s_time_gran, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 88) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %new_pts_fs_info.exit.thread, label %if.end

new_pts_fs_info.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %s_fs_info56 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info56 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %s_fs_info56, align 16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67108869, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %mode.i = getelementptr inbounds %struct.pts_fs_info, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 384, ptr %mode.i, align 4
  %ptmxmode.i = getelementptr inbounds %struct.pts_fs_info, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %ptmxmode.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %ptmxmode.i, align 2
  %sb2.i = getelementptr inbounds %struct.pts_fs_info, ptr %call7.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %sb2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %s, ptr %sb2.i, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %s_fs_info, align 16
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %call7.i.i.i, i32 0, i32 1
  %call3 = tail call fastcc i32 @parse_mount_options(ptr noundef %data, i32 noundef 0, ptr noundef %mount_opts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @new_inode(ptr noundef %s) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %i_ino = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call7) #10
  %17 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %18 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %19 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %20 = ptrtoint ptr %call7 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 16877, ptr %call7, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 7
  %21 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @simple_dir_inode_operations, ptr %i_op, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 44
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @simple_dir_operations, ptr %22, align 8
  call void @set_nlink(ptr noundef nonnull %call7, i32 noundef 2) #10
  %call11 = call ptr @d_make_root(ptr noundef nonnull %call7) #10
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %24 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call11, ptr %s_root, align 64
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %25 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info, align 16
  %27 = call i32 @llvm.read_register.i32(metadata !104) #10
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 99
  %31 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %ptmx_uid.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 11
  %34 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %ptmx_gid.sroa.0.0.copyload.i = load i32, ptr %fsgid.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #10
  %ptmx_dentry.i = getelementptr inbounds %struct.pts_fs_info, ptr %26, i32 0, i32 3
  %37 = ptrtoint ptr %ptmx_dentry.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptmx_dentry.i, align 4
  %tobool.not.i53 = icmp eq ptr %38, null
  br i1 %tobool.not.i53, label %if.end.i54, label %if.end17.mknod_ptmx.exit.thread_crit_edge

if.end17.mknod_ptmx.exit.thread_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %mknod_ptmx.exit.thread

if.end.i54:                                       ; preds = %if.end17
  %call10.i = call ptr @d_alloc_name(ptr noundef nonnull %call11, ptr noundef nonnull @.str.24) #10
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %fail_dput

if.end18.i:                                       ; preds = %if.end.i54
  %call19.i = call ptr @new_inode(ptr noundef %s) #10
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end27.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  call void @dput(ptr noundef nonnull %call10.i) #10
  br label %fail_dput

if.end27.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call19.i, i32 0, i32 11
  %39 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %i_ino.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call19.i, i32 0, i32 16
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call19.i, i32 0, i32 15
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call19.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp28.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp28.i, ptr noundef nonnull %call19.i) #10
  %40 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp28.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp28.i) #10
  %41 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %42 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %ptmxmode.i55 = getelementptr inbounds %struct.pts_fs_info, ptr %26, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %ptmxmode.i55 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ptmxmode.i55, align 2
  %45 = or i16 %44, 8192
  call void @init_special_inode(ptr noundef nonnull %call19.i, i16 noundef zeroext %45, i32 noundef 5242882) #10
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call19.i, i32 0, i32 2
  %46 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %ptmx_uid.sroa.0.0.copyload.i, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call19.i, i32 0, i32 3
  %47 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %ptmx_gid.sroa.0.0.copyload.i, ptr %i_gid.i, align 8
  call void @d_add(ptr noundef nonnull %call10.i, ptr noundef nonnull %call19.i) #10
  %48 = ptrtoint ptr %ptmx_dentry.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call10.i, ptr %ptmx_dentry.i, align 4
  br label %mknod_ptmx.exit.thread

mknod_ptmx.exit.thread:                           ; preds = %if.end27.i, %if.end17.mknod_ptmx.exit.thread_crit_edge
  %49 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i53.i59 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i53.i59) #10
  br label %cleanup

fail_dput:                                        ; preds = %do.end24.i, %do.end15.i
  %51 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i53.i = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i53.i) #10
  %53 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_root, align 64
  call void @dput(ptr noundef %54) #10
  %55 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %s_root, align 64
  br label %cleanup

cleanup:                                          ; preds = %fail_dput, %mknod_ptmx.exit.thread, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %new_pts_fs_info.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ -12, %fail_dput ], [ -12, %do.end ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %new_pts_fs_info.exit.thread ], [ 0, %mknod_ptmx.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_mount_options(ptr noundef %data, i32 noundef %op, ptr nocapture noundef writeonly %opts) unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %option = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %data.addr, align 4
  %setgid = getelementptr inbounds %struct.pts_mount_opts, ptr %opts, i32 0, i32 1
  %uid1 = getelementptr inbounds %struct.pts_mount_opts, ptr %opts, i32 0, i32 2
  %gid2 = getelementptr inbounds %struct.pts_mount_opts, ptr %opts, i32 0, i32 3
  %mode = getelementptr inbounds %struct.pts_mount_opts, ptr %opts, i32 0, i32 4
  %1 = call ptr @memset(ptr %opts, i32 0, i32 16)
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 384, ptr %mode, align 4
  %ptmxmode = getelementptr inbounds %struct.pts_mount_opts, ptr %opts, i32 0, i32 5
  %3 = ptrtoint ptr %ptmxmode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %ptmxmode, align 2
  %max = getelementptr inbounds %struct.pts_mount_opts, ptr %opts, i32 0, i32 7
  %4 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1048576, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp = icmp eq i32 %op, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !104) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 110
  %9 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsproxy, align 4
  %mnt_ns = getelementptr inbounds %struct.nsproxy, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mnt_ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mnt_ns, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 110) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 110), align 4
  %mnt_ns5 = getelementptr inbounds %struct.nsproxy, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mnt_ns5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mnt_ns5, align 4
  %cmp6 = icmp eq ptr %12, %15
  %conv = zext i1 %cmp6 to i32
  %reserve = getelementptr inbounds %struct.pts_mount_opts, ptr %opts, i32 0, i32 6
  %16 = ptrtoint ptr %reserve to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %reserve, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call7111 = call ptr @strsep(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.13) #10
  %cmp8.not112 = icmp eq ptr %call7111, null
  br i1 %cmp8.not112, label %if.end.cleanup88_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %call7113 = phi ptr [ %call7, %cleanup.while.body_crit_edge ], [ %call7111, %if.end.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %17 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #10
  %18 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %option, align 4, !annotation !120
  %19 = ptrtoint ptr %call7113 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call7113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end11

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %call12 = call i32 @match_token(ptr noundef nonnull %call7113, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #10
  %21 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %do.end83 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb52
    i32 3, label %sw.bb60
    i32 4, label %if.end11.cleanup_crit_edge
    i32 5, label %sw.bb69
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  %call13 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %sw.bb.cleanup.thread_crit_edge

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end16:                                         ; preds = %sw.bb
  %22 = call i32 @llvm.read_register.i32(metadata !104) #10
  %and.i107 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i107 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task20, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 99
  %26 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %user_ns, align 4
  %30 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %option, align 4
  %call21 = call i32 @make_kuid(ptr noundef %29, i32 noundef %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp.i.not = icmp eq i32 %call21, -1
  br i1 %cmp.i.not, label %if.end16.cleanup.thread_crit_edge, label %if.end25

if.end16.cleanup.thread_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %uid1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call21, ptr %uid1, align 4
  %33 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %opts, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %if.end11
  %call30 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sw.bb28.cleanup.thread_crit_edge

sw.bb28.cleanup.thread_crit_edge:                 ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end33:                                         ; preds = %sw.bb28
  %34 = call i32 @llvm.read_register.i32(metadata !104) #10
  %and.i108 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i108 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task41, align 8
  %cred42 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 99
  %38 = ptrtoint ptr %cred42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cred42, align 16
  %user_ns43 = getelementptr inbounds %struct.cred, ptr %39, i32 0, i32 25
  %40 = ptrtoint ptr %user_ns43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %user_ns43, align 4
  %42 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %option, align 4
  %call44 = call i32 @make_kgid(ptr noundef %41, i32 noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44)
  %cmp.i109.not = icmp eq i32 %call44, -1
  br i1 %cmp.i109.not, label %if.end33.cleanup.thread_crit_edge, label %if.end49

if.end33.cleanup.thread_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end49:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %gid2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call44, ptr %gid2, align 4
  %45 = ptrtoint ptr %setgid to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %setgid, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %if.end11
  %call54 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %sw.bb52.cleanup.thread_crit_edge

sw.bb52.cleanup.thread_crit_edge:                 ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end57:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %option, align 4
  %48 = trunc i32 %47 to i16
  %conv58 = and i16 %48, 4095
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv58, ptr %mode, align 4
  br label %cleanup

sw.bb60:                                          ; preds = %if.end11
  %call62 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %sw.bb60.cleanup.thread_crit_edge

sw.bb60.cleanup.thread_crit_edge:                 ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end65:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %option, align 4
  %52 = trunc i32 %51 to i16
  %conv67 = and i16 %52, 4095
  %53 = ptrtoint ptr %ptmxmode to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv67, ptr %ptmxmode, align 2
  br label %cleanup

sw.bb69:                                          ; preds = %if.end11
  %call71 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false, label %sw.bb69.cleanup.thread_crit_edge

sw.bb69.cleanup.thread_crit_edge:                 ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %sw.bb69
  %54 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %option, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %55)
  %56 = icmp ugt i32 %55, 1048576
  br i1 %56, label %lor.lhs.false.cleanup.thread_crit_edge, label %if.end79

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end79:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %max, align 4
  br label %cleanup

do.end83:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end83, %lor.lhs.false.cleanup.thread_crit_edge, %sw.bb69.cleanup.thread_crit_edge, %sw.bb60.cleanup.thread_crit_edge, %sw.bb52.cleanup.thread_crit_edge, %if.end33.cleanup.thread_crit_edge, %sw.bb28.cleanup.thread_crit_edge, %if.end16.cleanup.thread_crit_edge, %sw.bb.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  br label %cleanup88

cleanup:                                          ; preds = %if.end79, %if.end65, %if.end57, %if.end49, %if.end25, %if.end11.cleanup_crit_edge, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  %call7 = call ptr @strsep(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.13) #10
  %cmp8.not = icmp eq ptr %call7, null
  br i1 %cmp8.not, label %cleanup.cleanup88_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup88_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup.cleanup88_crit_edge, %cleanup.thread, %if.end.cleanup88_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ 0, %if.end.cleanup88_crit_edge ], [ 0, %cleanup.cleanup88_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devpts_remount(ptr nocapture noundef readonly %sb, ptr nocapture noundef readnone %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %1, i32 0, i32 1
  %call1 = tail call fastcc i32 @parse_mount_options(ptr noundef %data, i32 noundef 1, ptr noundef %mount_opts)
  %ptmx_dentry.i = getelementptr inbounds %struct.pts_fs_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ptmx_dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptmx_dentry.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.update_ptmx_mode.exit_crit_edge, label %if.then.i

entry.update_ptmx_mode.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_ptmx_mode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %ptmxmode.i = getelementptr inbounds %struct.pts_fs_info, ptr %1, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %ptmxmode.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ptmxmode.i, align 2
  %8 = or i16 %7, 8192
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %5, align 8
  br label %update_ptmx_mode.exit

update_ptmx_mode.exit:                            ; preds = %if.then.i, %entry.update_ptmx_mode.exit_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devpts_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
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
  %mount_opts = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %uid = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack23 = load i32, ptr %uid, align 4
  %7 = insertvalue [1 x i32] undef, i32 %.unpack23, 0
  %call1 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %call1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %setgid = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %setgid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %setgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %gid = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %gid, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call5 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %11) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i32 noundef %call5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %mode = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode, align 4
  %conv = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %conv) #10
  %ptmxmode = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %ptmxmode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ptmxmode, align 2
  %conv7 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %conv7) #10
  %max = getelementptr inbounds %struct.pts_fs_info, ptr %3, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %17)
  %cmp = icmp slt i32 %17, 1048576
  br i1 %cmp, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %17) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/devpts/inode.c", i32 579, i32 44}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/devpts/inode.c", i32 580, i32 44}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/devpts/inode.c", i32 584, i32 13}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../fs/devpts/inode.c", i32 620, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_devpts__234_637_init_devpts_fs6, !10, !"__initcall__kmod_devpts__234_637_init_devpts_fs6", i1 false, i1 false}
!10 = !{!"../fs/devpts/inode.c", i32 637, i32 1}
!11 = !{ptr @pty_count, !12, !"pty_count", i1 false, i1 false}
!12 = !{!"../fs/devpts/inode.c", i32 46, i32 17}
!13 = !{ptr @pty_limit, !14, !"pty_limit", i1 false, i1 false}
!14 = !{!"../fs/devpts/inode.c", i32 42, i32 12}
!15 = !{ptr @pty_reserve, !16, !"pty_reserve", i1 false, i1 false}
!16 = !{!"../fs/devpts/inode.c", i32 43, i32 12}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/fsnotify.h", i32 271, i32 6}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/devpts/inode.c", i32 519, i32 11}
!22 = !{ptr @devpts_fs_type, !23, !"devpts_fs_type", i1 false, i1 false}
!23 = !{!"../fs/devpts/inode.c", i32 518, i32 32}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/devpts/inode.c", i32 480, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @devpts_fill_super._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @devpts_fill_super._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @devpts_sops, !30, !"devpts_sops", i1 false, i1 false}
!30 = !{!"../fs/devpts/inode.c", i32 422, i32 38}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/devpts/inode.c", i32 409, i32 19}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/devpts/inode.c", i32 412, i32 19}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/devpts/inode.c", i32 414, i32 18}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/devpts/inode.c", i32 415, i32 18}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/devpts/inode.c", i32 417, i32 19}
!41 = !{ptr @xa_init_flags.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/devpts/inode.c", i32 267, i32 28}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../fs/devpts/inode.c", i32 280, i32 20}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../fs/devpts/inode.c", i32 289, i32 20}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/devpts/inode.c", i32 314, i32 4}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @parse_mount_options._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @parse_mount_options._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/devpts/inode.c", i32 110, i32 12}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/devpts/inode.c", i32 111, i32 12}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/devpts/inode.c", i32 112, i32 13}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/devpts/inode.c", i32 113, i32 17}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/devpts/inode.c", i32 114, i32 20}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/devpts/inode.c", i32 115, i32 12}
!67 = !{ptr @tokens, !68, !"tokens", i1 false, i1 false}
!68 = !{!"../fs/devpts/inode.c", i32 109, i32 28}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../fs/devpts/inode.c", i32 331, i32 20}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../fs/devpts/inode.c", i32 332, i32 20}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/devpts/inode.c", i32 342, i32 30}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/devpts/inode.c", i32 344, i32 3}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mknod_ptmx._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @mknod_ptmx._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/devpts/inode.c", i32 353, i32 3}
!82 = !{ptr @mknod_ptmx._entry.27, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mknod_ptmx._entry_ptr.29, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/devpts/inode.c", i32 86, i32 15}
!86 = !{ptr @pty_root_table, !87, !"pty_root_table", i1 false, i1 false}
!87 = !{!"../fs/devpts/inode.c", i32 84, i32 25}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/devpts/inode.c", i32 77, i32 15}
!90 = !{ptr @pty_kern_table, !91, !"pty_kern_table", i1 false, i1 false}
!91 = !{!"../fs/devpts/inode.c", i32 75, i32 25}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/devpts/inode.c", i32 50, i32 15}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/devpts/inode.c", i32 58, i32 15}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/devpts/inode.c", i32 66, i32 15}
!98 = !{ptr @pty_table, !99, !"pty_table", i1 false, i1 false}
!99 = !{!"../fs/devpts/inode.c", i32 48, i32 25}
!100 = !{ptr @pty_limit_min, !101, !"pty_limit_min", i1 false, i1 false}
!101 = !{!"../fs/devpts/inode.c", i32 44, i32 12}
!102 = !{ptr @pty_limit_max, !103, !"pty_limit_max", i1 false, i1 false}
!103 = !{!"../fs/devpts/inode.c", i32 45, i32 12}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2148353091, i64 2148353117, i64 2148353146, i64 2148353180, i64 2148353211, i64 2148353234}
!115 = !{i64 2148438526}
!116 = !{i64 2148353811, i64 2148353843, i64 2148353872, i64 2148353906, i64 2148353937, i64 2148353960}
!117 = !{i64 2148438755}
!118 = !{i64 2148355556, i64 2148355582, i64 2148355611, i64 2148355645, i64 2148355676, i64 2148355699}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{!"auto-init"}
