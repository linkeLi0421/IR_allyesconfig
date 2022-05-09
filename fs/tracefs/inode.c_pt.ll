; ModuleID = '/llk/IR_all_yes/fs/tracefs/inode.c_pt.bc'
source_filename = "../fs/tracefs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
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
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.substring_t = type { ptr, ptr }
%struct.tracefs_mount_opts = type { %struct.kuid_t, %struct.kgid_t, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }

@__UNIQUE_ID_alias232 = internal constant [25 x i8] c"tracefs.alias=fs-tracefs\00", section ".modinfo", align 1
@tracefs_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @default_read_file, ptr @default_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@tracefs_ops.0 = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@tracefs_ops.1 = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/tracefs/inode.c\00", [45 x i8] zeroinitializer }, align 32
@tracefs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracefs_syscall_mkdir, ptr @tracefs_syscall_rmdir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@trace_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.1, i32 0, ptr null, ptr null, ptr @trace_mount, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@tracefs_mount = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tracefs_mount_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tracefs_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__initcall__kmod_tracefs__234_630_tracefs_init1 = internal global ptr @tracefs_init, section ".initcall1.init", align 4
@start_creating.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tracefs\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start_creating\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tracefs: creating file '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@trace_fill_super.trace_files = internal constant { [1 x %struct.tree_descr], [20 x i8] } { [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.4, ptr null, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tracefs_super_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @tracefs_remount, ptr null, ptr @tracefs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [4 x %struct.match_token], [32 x i8] } { [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.7 }, %struct.match_token { i32 1, ptr @.str.8 }, %struct.match_token { i32 2, ptr @.str.9 }, %struct.match_token { i32 3, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mode=%o\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",mode=%o\00", [23 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tracing\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"tracefs_file_operations\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 43, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 572, i32 6 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"trace_fs_type\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 379, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"tracefs_mount\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 27, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"tracefs_mount_count\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 28, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"tracefs_registered\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 392, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"trace_files\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 341, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 341, i32 51 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"tracefs_super_operations\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 333, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 246, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 153, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 154, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 155, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 156, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 322, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 325, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 328, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 695, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 723, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [22 x i8] c"../fs/tracefs/inode.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 620, i32 49 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__initcall__kmod_tracefs__234_630_tracefs_init1, ptr @tracefs_file_operations, ptr @.str, ptr @trace_fs_type, ptr @tracefs_mount, ptr @tracefs_mount_count, ptr @tracefs_registered, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @trace_fill_super.trace_files, ptr @.str.4, ptr @tracefs_super_operations, ptr @.str.5, ptr @tokens, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracefs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracefs_mount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracefs_mount_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracefs_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_fill_super.trace_files to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracefs_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tracefs_create_file(ptr noundef %name, i16 noundef zeroext %mode, ptr noundef %parent, ptr noundef %data, ptr noundef %fops) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_locked_down(i32 noundef 22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %mode)
  %tobool1.not = icmp ult i16 %mode, 4096
  %or = or i16 %mode, -32768
  %spec.select = select i1 %tobool1.not, i16 %or, i16 %mode
  %0 = and i16 %spec.select, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %0)
  %cmp.not = icmp eq i16 %0, -32768
  br i1 %cmp.not, label %do.end19, label %do.body13, !prof !70

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/tracefs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #12, !srcloc !71
  unreachable

do.end19:                                         ; preds = %if.end
  %call20 = tail call fastcc ptr @start_creating(ptr noundef %name, ptr noundef %parent)
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19.cleanup_crit_edge, label %if.end23

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %do.end19
  %d_sb = getelementptr inbounds %struct.dentry, ptr %call20, i32 0, i32 9
  %1 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_sb, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %2) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @failed_creating(ptr noundef %call20)
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %call1.i = tail call i32 @get_next_ino() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #12
  %4 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #12
  %5 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %6 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %spec.select, ptr %call.i, align 8
  %tobool37.not = icmp eq ptr %fops, null
  %spec.select65 = select i1 %tobool37.not, ptr @tracefs_file_operations, ptr %fops
  %8 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select65, ptr %8, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 54
  %10 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %i_private, align 4
  %i_uid = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %d_parent = getelementptr inbounds %struct.dentry, ptr %call20, i32 0, i32 3
  %11 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %i_uid39 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %i_uid39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_uid39, align 4
  %17 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %18 = load ptr, ptr %d_parent, align 8
  %d_inode.i66 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i66 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i66, align 8
  %i_gid42 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %i_gid42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_gid42, align 8
  %23 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %i_gid, align 8
  call void @d_instantiate(ptr noundef %call20, ptr noundef nonnull %call.i) #12
  %24 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_parent, align 8
  %d_inode.i67 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i67, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %30 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i, label %if.end36.fsnotify_create.exit_crit_edge, label %if.end.i.i.i

if.end36.fsnotify_create.exit_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_create.exit

if.end.i.i.i:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %d_name.i.i = getelementptr inbounds %struct.dentry, ptr %call20, i32 0, i32 4
  %call1.i.i.i = call i32 @fsnotify(i32 noundef 256, ptr noundef %call20, i32 noundef 3, ptr noundef %27, ptr noundef %d_name.i.i, ptr noundef null, i32 noundef 0) #12
  br label %fsnotify_create.exit

fsnotify_create.exit:                             ; preds = %if.end.i.i.i, %if.end36.fsnotify_create.exit_crit_edge
  %32 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_parent, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fsnotify_create.exit, %if.then34, %do.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then34 ], [ %call20, %fsnotify_create.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end19.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @start_creating(ptr noundef %name, ptr noundef %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_creating.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_creating, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @start_creating.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.3, ptr noundef %name) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @simple_pin_fs(ptr noundef nonnull @trace_fs_type, ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %tobool8.not = icmp eq ptr %parent, null
  br i1 %tobool8.not, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %1 = load ptr, ptr @tracefs_mount, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %parent.addr.0 = phi ptr [ %parent, %if.end7.if.end10_crit_edge ], [ %3, %if.then9 ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent.addr.0, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end24, label %if.end10.if.then32_crit_edge, !prof !70

if.end10.if.then32_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.end24:                                         ; preds = %if.end10
  %call22 = tail call i32 @strlen(ptr noundef %name) #15
  %call23 = tail call ptr @lookup_one_len(ptr noundef %name, ptr noundef %parent.addr.0, i32 noundef %call22) #12
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end24.if.then32_crit_edge, label %land.lhs.true

if.end24.if.then32_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

land.lhs.true:                                    ; preds = %if.end24
  %d_inode.i48 = getelementptr inbounds %struct.dentry, ptr %call23, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i48, align 8
  %tobool27.not = icmp eq ptr %11, null
  br i1 %tobool27.not, label %land.lhs.true.cleanup_crit_edge, label %if.then28

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dput(ptr noundef %call23) #12
  br label %if.then32

if.then32:                                        ; preds = %if.then28, %if.end24.if.then32_crit_edge, %if.end10.if.then32_crit_edge
  %dentry.157 = phi ptr [ inttoptr (i32 -17 to ptr), %if.then28 ], [ inttoptr (i32 -2 to ptr), %if.end10.if.then32_crit_edge ], [ %call23, %if.end24.if.then32_crit_edge ]
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i51 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i51) #12
  tail call void @simple_release_fs(ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %land.lhs.true.cleanup_crit_edge, %if.then5
  %retval.0 = phi ptr [ %0, %if.then5 ], [ %dentry.157, %if.then32 ], [ %call23, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @failed_creating(ptr noundef %dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  tail call void @dput(ptr noundef %dentry) #12
  tail call void @simple_release_fs(ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tracefs_create_dir(ptr noundef %name, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__create_dir(ptr noundef %name, ptr noundef %parent, ptr noundef nonnull @simple_dir_inode_operations)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__create_dir(ptr noundef %name, ptr noundef %parent, ptr noundef %ops) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @start_creating(ptr noundef %name, ptr noundef %parent)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %1) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @failed_creating(ptr noundef %call)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call1.i = tail call i32 @get_next_ino() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #12
  %3 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #12
  %4 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %5 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16872, ptr %call.i, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ops, ptr %i_op, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @simple_dir_operations, ptr %8, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %d_parent = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %i_uid10 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %i_uid10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_uid10, align 4
  %16 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %17 = load ptr, ptr %d_parent, align 8
  %d_inode.i36 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i36, align 8
  %i_gid13 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %i_gid13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_gid13, align 8
  %22 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i_gid, align 8
  call void @inc_nlink(ptr noundef nonnull %call.i) #12
  call void @d_instantiate(ptr noundef %call, ptr noundef nonnull %call.i) #12
  %23 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_parent, align 8
  %d_inode.i37 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i37, align 8
  call void @inc_nlink(ptr noundef %26) #12
  %27 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_parent, align 8
  %d_inode.i38 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %d_inode.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i38, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #12
  %33 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i, label %if.end8.fsnotify_mkdir.exit_crit_edge, label %if.end.i.i.i

if.end8.fsnotify_mkdir.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %fsnotify_mkdir.exit

if.end.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %d_name.i.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 4
  %call1.i.i.i = call i32 @fsnotify(i32 noundef 1073742080, ptr noundef %call, i32 noundef 3, ptr noundef %30, ptr noundef %d_name.i.i, ptr noundef null, i32 noundef 0) #12
  br label %fsnotify_mkdir.exit

fsnotify_mkdir.exit:                              ; preds = %if.end.i.i.i, %if.end8.fsnotify_mkdir.exit_crit_edge
  %35 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_parent, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fsnotify_mkdir.exit, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ %call, %fsnotify_mkdir.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tracefs_create_instance_dir(ptr noundef %name, ptr noundef %parent, ptr noundef %mkdir, ptr noundef %rmdir) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tracefs_ops.0, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr @tracefs_ops.1, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end23, label %lor.rhs.do.end_crit_edge, !prof !70

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 572, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %lor.rhs
  %call = tail call fastcc ptr @__create_dir(ptr noundef %name, ptr noundef %parent, ptr noundef nonnull @tracefs_dir_inode_operations)
  %tobool24.not = icmp eq ptr %call, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %mkdir, ptr @tracefs_ops.0, align 4
  store ptr %rmdir, ptr @tracefs_ops.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end26 ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracefs_remove(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dentry, null
  %cmp.i = icmp ugt ptr %dentry, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @simple_pin_fs(ptr noundef nonnull @trace_fs_type, ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #12
  tail call void @simple_recursive_removal(ptr noundef nonnull %dentry, ptr noundef nonnull @remove_one) #12
  tail call void @simple_release_fs(ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_recursive_removal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @remove_one(ptr nocapture noundef readnone %victim) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @simple_release_fs(ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tracefs_initialized() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @tracefs_registered, align 1
  ret i1 %.b1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tracefs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call i32 @sysfs_create_mount_point(ptr noundef %0, ptr noundef nonnull @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_filesystem(ptr noundef nonnull @trace_fs_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tracefs_registered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @default_read_file(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @default_write_file(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tracefs_syscall_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr nocapture noundef readonly %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name.i, align 8
  %name3.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name3.i, align 8
  %add.i = add i32 %1, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #16
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %call9.i.i, ptr %3, i32 %1)
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  %6 = load ptr, ptr @tracefs_ops.0, align 4
  %call1 = tail call i32 %6(ptr noundef nonnull %call9.i.i) #12
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tracefs_syscall_rmdir(ptr noundef %inode, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_name.i, align 8
  %name3.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name3.i, align 8
  %add.i = add i32 %1, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #16
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %call9.i.i, ptr %3, i32 %1)
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i10 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i10) #12
  %8 = load ptr, ptr @tracefs_ops.1, align 4
  %call2 = tail call i32 %8(ptr noundef nonnull %call9.i.i) #12
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #12
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i13 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i13) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @trace_mount(ptr noundef %fs_type, i32 noundef %flags, ptr nocapture noundef readnone %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_single(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %data, ptr noundef nonnull @trace_fill_super) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_single(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #17
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @tracefs_parse_options(ptr noundef %data, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef 1953653091, ptr noundef nonnull @trace_fill_super.trace_files) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tracefs_super_operations, ptr %s_op, align 4
  tail call fastcc void @tracefs_apply_options(ptr noundef %sb)
  br label %cleanup

fail:                                             ; preds = %if.end4.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.fail_crit_edge ], [ %call5, %if.end4.fail_crit_edge ], [ -12, %entry.fail_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #12
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end8
  %retval.0 = phi i32 [ %err.0, %fail ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tracefs_parse_options(ptr noundef %data, ptr nocapture noundef writeonly %opts) unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %option = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %data.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #12
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #12
  %2 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %option, align 4, !annotation !73
  %mode = getelementptr inbounds %struct.tracefs_mount_opts, ptr %opts, i32 0, i32 2
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 448, ptr %mode, align 4
  %call57 = call ptr @strsep(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.5) #12
  %cmp.not58 = icmp eq ptr %call57, null
  br i1 %cmp.not58, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %gid37 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %opts, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call59 = phi ptr [ %call57, %while.body.lr.ph ], [ %call, %while.cond.backedge.while.body_crit_edge ]
  %4 = ptrtoint ptr %call59 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %call1 = call i32 @match_token(ptr noundef nonnull %call59, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #12
  %6 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %if.end.while.cond.backedge_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb38
  ]

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

sw.bb:                                            ; preds = %if.end
  %call2 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %7 = call i32 @llvm.read_register.i32(metadata !60) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns, align 4
  %15 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %option, align 4
  %call9 = call i32 @make_kuid(ptr noundef %14, i32 noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp.i.not = icmp eq i32 %call9, -1
  br i1 %cmp.i.not, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call9, ptr %opts, align 4
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %if.end
  %call17 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %sw.bb15
  %18 = call i32 @llvm.read_register.i32(metadata !60) #12
  %and.i55 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i55 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task28, align 8
  %cred29 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred29, align 16
  %user_ns30 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %user_ns30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_ns30, align 4
  %26 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %option, align 4
  %call31 = call i32 @make_kgid(ptr noundef %25, i32 noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call31)
  %cmp.i56.not = icmp eq i32 %call31, -1
  br i1 %cmp.i56.not, label %if.end20.cleanup_crit_edge, label %if.end36

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %gid37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call31, ptr %gid37, align 4
  br label %while.cond.backedge

sw.bb38:                                          ; preds = %if.end
  %call40 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %sw.bb38.cleanup_crit_edge

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %option, align 4
  %31 = trunc i32 %30 to i16
  %conv = and i16 %31, 4095
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %mode, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end43, %if.end36, %if.end13, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %data.addr, ptr noundef nonnull @.str.5) #12
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ], [ -22, %sw.bb38.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %sw.bb15.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracefs_apply_options(ptr nocapture noundef readonly %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 8
  %8 = and i16 %7, -4096
  store i16 %8, ptr %5, align 8
  %mode = getelementptr inbounds %struct.tracefs_mount_opts, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mode, align 4
  %or1 = or i16 %10, %8
  store i16 %or1, ptr %5, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %i_uid, align 4
  %14 = load ptr, ptr %s_root, align 64
  %gid = getelementptr inbounds %struct.tracefs_mount_opts, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %gid, align 4
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #12
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i, align 8
  %tobool.not.i77.i = icmp eq ptr %17, null
  br i1 %tobool.not.i77.i, label %entry.repeat.i.preheader_crit_edge, label %if.end.i.i

entry.repeat.i.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %repeat.i.preheader

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.unpack, ptr %i_gid.i.i, align 8
  br label %repeat.i.preheader

repeat.i.preheader:                               ; preds = %if.end.i.i, %entry.repeat.i.preheader_crit_edge
  br label %repeat.i

repeat.loopexit.i:                                ; preds = %change_gid.exit83.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.le.i = getelementptr i8, ptr %next.1.i9, i32 -184
  %d_lockref11.i = getelementptr inbounds %struct.dentry, ptr %this_parent.1.i, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref11.i) #12
  %dep_map.i = getelementptr i8, ptr %next.1.i9, i32 -56
  %19 = tail call ptr @llvm.returnaddress(i32 0) #12
  %20 = ptrtoint ptr %19 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %20) #12
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %20) #12
  br label %repeat.i

repeat.i:                                         ; preds = %repeat.loopexit.i, %repeat.i.preheader
  %this_parent.0.i = phi ptr [ %add.ptr.le.i, %repeat.loopexit.i ], [ %14, %repeat.i.preheader ]
  %d_subdirs.i = getelementptr inbounds %struct.dentry, ptr %this_parent.0.i, i32 0, i32 14
  %21 = ptrtoint ptr %d_subdirs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_subdirs.i, align 8
  br label %resume.i

resume.critedge.i:                                ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  br label %resume.backedge.i

resume.backedge.i:                                ; preds = %if.then.i90.i, %resume.critedge108.i, %resume.critedge104.i, %resume.critedge.i
  %23 = tail call i32 @llvm.read_register.i32(metadata !60) #12
  %and.i.i.i.i.i91.c.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i91.c.i to ptr
  %preempt_count.i.i.i.i92.c.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i92.c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i92.c.i, align 4
  %sub.i.i.i.c.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i.c.i, ptr %preempt_count.i.i.i.i92.c.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %resume.i

resume.critedge104.i:                             ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  br label %resume.backedge.i

resume.critedge108.i:                             ; preds = %land.lhs.true2.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  br label %resume.backedge.i

resume.i:                                         ; preds = %resume.backedge.i, %repeat.i
  %next.0.i = phi ptr [ %22, %repeat.i ], [ %41, %resume.backedge.i ]
  %this_parent.1.i = phi ptr [ %this_parent.0.i, %repeat.i ], [ %39, %resume.backedge.i ]
  %d_subdirs3.i = getelementptr inbounds %struct.dentry, ptr %this_parent.1.i, i32 0, i32 14
  %cmp.not.i8 = icmp eq ptr %next.0.i, %d_subdirs3.i
  br i1 %cmp.not.i8, label %resume.i.while.end.i_crit_edge, label %resume.i.while.body.i_crit_edge

resume.i.while.body.i_crit_edge:                  ; preds = %resume.i
  br label %while.body.i

resume.i.while.end.i_crit_edge:                   ; preds = %resume.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %resume.i.while.body.i_crit_edge
  %next.1.i9 = phi ptr [ %28, %cleanup.i.while.body.i_crit_edge ], [ %next.0.i, %resume.i.while.body.i_crit_edge ]
  %27 = ptrtoint ptr %next.1.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next.1.i9, align 4
  %d_lockref6.i = getelementptr i8, ptr %next.1.i9, i32 -72
  tail call void @_raw_spin_lock_nested(ptr noundef %d_lockref6.i, i32 noundef 1) #12
  %d_inode.i78.i = getelementptr i8, ptr %next.1.i9, i32 -112
  %29 = ptrtoint ptr %d_inode.i78.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_inode.i78.i, align 8
  %tobool.not.i79.i = icmp eq ptr %30, null
  br i1 %tobool.not.i79.i, label %while.body.i.change_gid.exit83.i_crit_edge, label %if.end.i82.i

while.body.i.change_gid.exit83.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %change_gid.exit83.i

if.end.i82.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_gid.i81.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %i_gid.i81.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.unpack, ptr %i_gid.i81.i, align 8
  br label %change_gid.exit83.i

change_gid.exit83.i:                              ; preds = %if.end.i82.i, %while.body.i.change_gid.exit83.i_crit_edge
  %d_subdirs9.i = getelementptr i8, ptr %next.1.i9, i32 8
  %32 = ptrtoint ptr %d_subdirs9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %d_subdirs9.i, align 4
  %cmp.i.not.i = icmp eq ptr %33, %d_subdirs9.i
  br i1 %cmp.i.not.i, label %cleanup.i, label %repeat.loopexit.i

cleanup.i:                                        ; preds = %change_gid.exit83.i
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref6.i) #12
  %cmp.not.i = icmp eq ptr %28, %d_subdirs3.i
  br i1 %cmp.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %resume.i.while.end.i_crit_edge
  %34 = tail call i32 @llvm.read_register.i32(metadata !60) #12
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %while.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

while.end.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %while.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %while.end.i.rcu_read_lock.exit.i_crit_edge
  %cmp21.not119.i = icmp eq ptr %this_parent.1.i, %14
  br i1 %cmp21.not119.i, label %rcu_read_lock.exit.i.if.end43.i_crit_edge, label %rcu_read_lock.exit.i.if.then22.i_crit_edge

rcu_read_lock.exit.i.if.then22.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  br label %if.then22.i

rcu_read_lock.exit.i.if.end43.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

ascend.loopexit.i:                                ; preds = %do.body27.i
  %cmp21.not.i = icmp eq ptr %39, %14
  br i1 %cmp21.not.i, label %ascend.loopexit.i.if.end43.i_crit_edge, label %ascend.loopexit.i.if.then22.i_crit_edge

ascend.loopexit.i.if.then22.i_crit_edge:          ; preds = %ascend.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

ascend.loopexit.i.if.end43.i_crit_edge:           ; preds = %ascend.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then22.i:                                      ; preds = %ascend.loopexit.i.if.then22.i_crit_edge, %rcu_read_lock.exit.i.if.then22.i_crit_edge
  %this_parent.4120.i = phi ptr [ %39, %ascend.loopexit.i.if.then22.i_crit_edge ], [ %this_parent.1.i, %rcu_read_lock.exit.i.if.then22.i_crit_edge ]
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %this_parent.4120.i, i32 0, i32 3
  %38 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_parent.i, align 8
  %d_lockref23.i = getelementptr inbounds %struct.dentry, ptr %this_parent.4120.i, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref23.i) #12
  %d_lockref25.i = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref25.i) #12
  %d_subdirs29.i = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 14
  br label %do.body27.i

do.body27.i:                                      ; preds = %if.end32.i.do.body27.i_crit_edge, %if.then22.i
  %child.0.i = phi ptr [ %this_parent.4120.i, %if.then22.i ], [ %add.ptr35.i, %if.end32.i.do.body27.i_crit_edge ]
  %d_child.i = getelementptr inbounds %struct.dentry, ptr %child.0.i, i32 0, i32 13
  %40 = ptrtoint ptr %d_child.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_child.i, align 8
  %cmp30.i = icmp eq ptr %41, %d_subdirs29.i
  br i1 %cmp30.i, label %ascend.loopexit.i, label %if.end32.i

if.end32.i:                                       ; preds = %do.body27.i
  %add.ptr35.i = getelementptr i8, ptr %41, i32 -184
  %42 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr35.i, align 8
  %and.i = and i32 %43, 32768
  %tobool37.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool37.not.i, label %do.end40.i, label %if.end32.i.do.body27.i_crit_edge, !prof !70

if.end32.i.do.body27.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.i

do.end40.i:                                       ; preds = %if.end32.i
  %call.i84.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i84.i, label %resume.critedge.i, label %land.lhs.true.i87.i

land.lhs.true.i87.i:                              ; preds = %do.end40.i
  %call1.i85.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85.i)
  %tobool.not.i86.i = icmp eq i32 %call1.i85.i, 0
  br i1 %tobool.not.i86.i, label %resume.critedge104.i, label %land.lhs.true2.i89.i

land.lhs.true2.i89.i:                             ; preds = %land.lhs.true.i87.i
  %.b4.i88.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88.i, label %resume.critedge108.i, label %if.then.i90.i

if.then.i90.i:                                    ; preds = %land.lhs.true2.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  br label %resume.backedge.i

if.end43.i:                                       ; preds = %ascend.loopexit.i.if.end43.i_crit_edge, %rcu_read_lock.exit.i.if.end43.i_crit_edge
  %call.i93.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i93.i, label %if.end43.i.set_gid.exit_crit_edge, label %land.lhs.true.i96.i

if.end43.i.set_gid.exit_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_gid.exit

land.lhs.true.i96.i:                              ; preds = %if.end43.i
  %call1.i94.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94.i)
  %tobool.not.i95.i = icmp eq i32 %call1.i94.i, 0
  br i1 %tobool.not.i95.i, label %land.lhs.true.i96.i.set_gid.exit_crit_edge, label %land.lhs.true2.i98.i

land.lhs.true.i96.i.set_gid.exit_crit_edge:       ; preds = %land.lhs.true.i96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_gid.exit

land.lhs.true2.i98.i:                             ; preds = %land.lhs.true.i96.i
  %.b4.i97.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97.i, label %land.lhs.true2.i98.i.set_gid.exit_crit_edge, label %if.then.i99.i

land.lhs.true2.i98.i.set_gid.exit_crit_edge:      ; preds = %land.lhs.true2.i98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_gid.exit

if.then.i99.i:                                    ; preds = %land.lhs.true2.i98.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %set_gid.exit

set_gid.exit:                                     ; preds = %if.then.i99.i, %land.lhs.true2.i98.i.set_gid.exit_crit_edge, %land.lhs.true.i96.i.set_gid.exit_crit_edge, %if.end43.i.set_gid.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %44 = tail call i32 @llvm.read_register.i32(metadata !60) #12
  %and.i.i.i.i.i100.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i100.i to ptr
  %preempt_count.i.i.i.i101.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i101.i, align 4
  %sub.i.i.i102.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i102.i, ptr %preempt_count.i.i.i.i101.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #12
  ret void
}

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tracefs_remount(ptr noundef %sb, ptr nocapture noundef readnone %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #12
  %call1 = tail call fastcc i32 @tracefs_parse_options(ptr noundef %data, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tracefs_apply_options(ptr noundef %sb)
  br label %fail

fail:                                             ; preds = %if.end, %entry.fail_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tracefs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call4 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %5) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %call4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gid = getelementptr inbounds %struct.tracefs_mount_opts, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack29 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack29)
  %cmp.i31 = icmp eq i32 %.unpack29, 0
  br i1 %cmp.i31, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = insertvalue [1 x i32] undef, i32 %.unpack29, 0
  %call13 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %call13) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %mode = getelementptr inbounds %struct.tracefs_mount_opts, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 448, i16 %9)
  %cmp.not = icmp eq i16 %9, 448
  br i1 %cmp.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef %conv) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__UNIQUE_ID_alias232, !1, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!1 = !{!"../fs/tracefs/inode.c", i32 385, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/tracefs/inode.c", i32 572, i32 6}
!4 = !{ptr @__initcall__kmod_tracefs__234_630_tracefs_init1, !5, !"__initcall__kmod_tracefs__234_630_tracefs_init1", i1 false, i1 false}
!5 = !{!"../fs/tracefs/inode.c", i32 630, i32 1}
!6 = !{ptr @tracefs_mount, !7, !"tracefs_mount", i1 false, i1 false}
!7 = !{!"../fs/tracefs/inode.c", i32 27, i32 25}
!8 = !{ptr @tracefs_mount_count, !9, !"tracefs_mount_count", i1 false, i1 false}
!9 = !{!"../fs/tracefs/inode.c", i32 28, i32 12}
!10 = distinct !{null, !11, !"tracefs_registered", i1 false, i1 false}
!11 = !{!"../fs/tracefs/inode.c", i32 29, i32 13}
!12 = distinct !{null, !13, !"tracefs_ops", i1 false, i1 false}
!13 = !{!"../fs/tracefs/inode.c", i32 53, i32 3}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/tracefs/inode.c", i32 392, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @start_creating.__UNIQUE_ID_ddebug233, !15, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!19 = !{ptr @tracefs_file_operations, !20, !"tracefs_file_operations", i1 false, i1 false}
!20 = !{!"../fs/tracefs/inode.c", i32 43, i32 37}
!21 = !{ptr @tracefs_dir_inode_operations, !22, !"tracefs_dir_inode_operations", i1 false, i1 false}
!22 = !{!"../fs/tracefs/inode.c", i32 124, i32 38}
!23 = !{ptr @trace_fs_type, !24, !"trace_fs_type", i1 false, i1 false}
!24 = !{!"../fs/tracefs/inode.c", i32 379, i32 32}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/tracefs/inode.c", i32 341, i32 51}
!27 = !{ptr @trace_fill_super.trace_files, !28, !"trace_files", i1 false, i1 false}
!28 = !{!"../fs/tracefs/inode.c", i32 341, i32 33}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/tracefs/inode.c", i32 246, i32 28}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../fs/tracefs/inode.c", i32 255, i32 20}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../fs/tracefs/inode.c", i32 263, i32 20}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/tracefs/inode.c", i32 154, i32 12}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/tracefs/inode.c", i32 155, i32 12}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/tracefs/inode.c", i32 156, i32 13}
!41 = !{ptr @tokens, !42, !"tokens", i1 false, i1 false}
!42 = !{!"../fs/tracefs/inode.c", i32 153, i32 28}
!43 = !{ptr @tracefs_super_operations, !44, !"tracefs_super_operations", i1 false, i1 false}
!44 = !{!"../fs/tracefs/inode.c", i32 333, i32 38}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/tracefs/inode.c", i32 322, i32 17}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/tracefs/inode.c", i32 325, i32 17}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/tracefs/inode.c", i32 328, i32 17}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/tracefs/inode.c", i32 620, i32 49}
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
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2153838069, i64 2153838552, i64 2153838106, i64 2153838162, i64 2153838196, i64 2153838220, i64 2153838261, i64 2153838282, i64 2153838310, i64 2153838344}
!72 = !{i64 2148967641, i64 2148967646, i64 2148967659, i64 2148967703, i64 2148967737, i64 2148967758}
!73 = !{!"auto-init"}
!74 = !{i64 2149370689}
!75 = !{i64 2149370423}
