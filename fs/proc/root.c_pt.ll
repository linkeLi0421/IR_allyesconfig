; ModuleID = '/llk/IR_all_yes/fs/proc/root.c_pt.bc'
source_filename = "../fs/proc/root.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.77, ptr, %union.anon.78, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.77 = type { ptr }
%union.anon.78 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.63, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.p_log = type { ptr, ptr }
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
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.fs_parse_result = type { i8, %union.anon.67 }
%union.anon.67 = type { i64 }
%struct.proc_fs_context = type { ptr, i32, i32, i32, i32 }
%struct.fs_parameter = type { ptr, i8, %union.anon.4, i32, i32 }
%union.anon.4 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8 }
%struct.llist_node = type { ptr }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.dir_context = type { ptr, i64 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mounts\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"self/mounts\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"driver\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fs/nfsd\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@proc_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.7, i32 24, ptr @proc_init_fs_context, ptr @proc_fs_parameters, ptr null, ptr @proc_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@proc_root_inode_operations = internal constant %struct.inode_operations { ptr @proc_root_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_root_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_root_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_root_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_root = dso_local global { %struct.proc_dir_entry, [40 x i8] } { %struct.proc_dir_entry { %struct.atomic_t zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @proc_root_inode_operations, %union.anon.77 { ptr @proc_root_operations }, ptr null, %union.anon.78 zeroinitializer, ptr null, ptr null, i32 0, i32 1, i32 2, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i64 0, ptr @proc_root, %struct.rb_root zeroinitializer, %struct.rb_node zeroinitializer, ptr @.str.6, i16 16749, i8 0, i8 5, [0 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/proc\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"proc\00", [27 x i8] zeroinitializer }, align 32
@proc_fs_parameters = internal constant { [4 x %struct.fs_parameter_spec], [32 x i8] } { [4 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.23, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.8, ptr @fs_param_is_string, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.24, ptr @fs_param_is_string, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [32 x i8] zeroinitializer }, align 32
@proc_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @proc_fs_context_free, ptr null, ptr @proc_parse_param, ptr null, ptr @proc_get_tree, ptr @proc_reconfigure }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hidepid\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"proc: unexpected type of hidepid value\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"proc: unknown value of hidepid - %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"noaccess\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"invisible\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ptraceable\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"proc: unsupported subset option - %s\0A\00", [58 x i8] zeroinitializer }, align 32
@proc_sops = external dso_local constant %struct.super_operations, align 4
@proc_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013proc_fill_super: get root inode failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"proc_fill_super\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/proc/root.c\00", [17 x i8] zeroinitializer }, align 32
@proc_fill_super._entry_ptr = internal global ptr @proc_fill_super._entry, section ".printk_index", align 4
@proc_fill_super._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.19, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013proc_fill_super: allocate dentry failed\0A\00", [53 x i8] zeroinitializer }, align 32
@proc_fill_super._entry_ptr.22 = internal global ptr @proc_fill_super._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"subset\00", [25 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@switch.table.proc_parse_param = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 294, i32 15 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 294, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 297, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 298, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 299, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 305, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"proc_fs_type\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 280, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"proc_root_operations\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 345, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"proc_root\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 362, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 372, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 281, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"proc_fs_parameters\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 46, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"proc_fs_context_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 240, i32 43 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 64, i32 46 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 69, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 73, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 78, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 80, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 82, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 84, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 103, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 106, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 199, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 205, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 47, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [18 x i8] c"../fs/proc/root.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 49, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [30 x i8] c"switch.table.proc_parse_param\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @proc_fill_super._entry, ptr @proc_fill_super._entry.20, ptr @proc_fill_super._entry_ptr, ptr @proc_fill_super._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @proc_fs_type, ptr @proc_root_operations, ptr @proc_root, ptr @.str.6, ptr @.str.7, ptr @proc_fs_parameters, ptr @proc_fs_context_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @switch.table.proc_parse_param], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_root_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_root to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fs_parameters to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fill_super._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.proc_parse_param to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_root_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @proc_init_kmemcache() #9
  tail call void @set_proc_pid_nlink() #9
  tail call void @proc_self_init() #9
  tail call void @proc_thread_self_init() #9
  %call = tail call ptr @proc_symlink(ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @.str.1) #9
  %call1 = tail call i32 @proc_net_init() #9
  %call2 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.2, ptr noundef null) #9
  %call3 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.3, ptr noundef null) #9
  %call4 = tail call ptr @proc_create_mount_point(ptr noundef nonnull @.str.4) #9
  tail call void @proc_tty_init() #9
  %call5 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.5, ptr noundef null) #9
  %call6 = tail call i32 @proc_sys_init() #9
  %call7 = tail call i32 @register_filesystem(ptr noundef nonnull @proc_fs_type) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_init_kmemcache() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_proc_pid_nlink() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_self_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_thread_self_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_net_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_mount_point(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_tty_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_sys_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_init_fs_context(ptr nocapture noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %call2 = tail call ptr @task_active_pid_ns(ptr noundef %4) #9
  %cmp.not.i = icmp eq ptr %call2, @init_pid_ns
  br i1 %cmp.not.i, label %if.end.get_pid_ns.exit_crit_edge, label %if.then.i

if.end.get_pid_ns.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pid_ns.exit

if.then.i:                                        ; preds = %if.end
  %count.i = getelementptr inbounds %struct.pid_namespace, ptr %call2, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !75

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pid_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, %if.end.get_pid_ns.exit_crit_edge
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %call7.i.i, align 8
  %user_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 6
  %8 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %get_pid_ns.exit.put_user_ns.exit_crit_edge, label %land.lhs.true.i

get_pid_ns.exit.put_user_ns.exit_crit_edge:       ; preds = %get_pid_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %get_pid_ns.exit
  %count.i14 = getelementptr inbounds %struct.user_namespace, ptr %9, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i14, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %count.i14, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i14, ptr %count.i14, i32 1, ptr elementtype(i32) %count.i14) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i17, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i16 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i16, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %count.i14, i32 noundef 3) #9
  br label %put_user_ns.exit

if.then.i17:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @__put_user_ns(ptr noundef nonnull %9) #9
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i17, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %get_pid_ns.exit.put_user_ns.exit_crit_edge
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %user_ns5 = getelementptr inbounds %struct.pid_namespace, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %user_ns5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns5, align 4
  %tobool.not.i18 = icmp eq ptr %14, null
  br i1 %tobool.not.i18, label %put_user_ns.exit.get_user_ns.exit_crit_edge, label %if.then.i23

put_user_ns.exit.get_user_ns.exit_crit_edge:      ; preds = %put_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_user_ns.exit

if.then.i23:                                      ; preds = %put_user_ns.exit
  %count.i19 = getelementptr inbounds %struct.user_namespace, ptr %14, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i19, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i19, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i19, ptr %count.i19, i32 1, ptr elementtype(i32) %count.i19) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i21 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i21)
  %tobool1.not.i.i.i.i22 = icmp eq i32 %asmresult.i.i.i.i.i.i21, 0
  br i1 %tobool1.not.i.i.i.i22, label %if.then.i23.if.end15.sink.split.i.i.i.i28_crit_edge, label %if.else.i.i.i.i26, !prof !75

if.then.i23.if.end15.sink.split.i.i.i.i28_crit_edge: ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i28

if.else.i.i.i.i26:                                ; preds = %if.then.i23
  %add.i.i.i.i24 = add i32 %asmresult.i.i.i.i.i.i21, 1
  %16 = or i32 %add.i.i.i.i24, %asmresult.i.i.i.i.i.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i25 = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i25, label %if.else.i.i.i.i26.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i26.if.end15.sink.split.i.i.i.i28_crit_edge, !prof !76

if.else.i.i.i.i26.if.end15.sink.split.i.i.i.i28_crit_edge: ; preds = %if.else.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i28

if.else.i.i.i.i26.get_user_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i28:                    ; preds = %if.else.i.i.i.i26.if.end15.sink.split.i.i.i.i28_crit_edge, %if.then.i23.if.end15.sink.split.i.i.i.i28_crit_edge
  %.sink.i.i.i.i27 = phi i32 [ 2, %if.then.i23.if.end15.sink.split.i.i.i.i28_crit_edge ], [ 1, %if.else.i.i.i.i26.if.end15.sink.split.i.i.i.i28_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i19, i32 noundef %.sink.i.i.i.i27) #9
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i28, %if.else.i.i.i.i26.get_user_ns.exit_crit_edge, %put_user_ns.exit.get_user_ns.exit_crit_edge
  %17 = ptrtoint ptr %user_ns to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %user_ns, align 4
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %18 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %19 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @proc_fs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_user_ns.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_user_ns.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_kill_sb(ptr noundef %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kill_anon_super(ptr noundef %sb) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %proc_self = getelementptr inbounds %struct.proc_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %proc_self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_self, align 4
  tail call void @dput(ptr noundef %3) #9
  %proc_thread_self = getelementptr inbounds %struct.proc_fs_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %proc_thread_self to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_thread_self, align 4
  tail call void @dput(ptr noundef %5) #9
  tail call void @kill_anon_super(ptr noundef %sb) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @put_pid_ns(ptr noundef %7) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_fs_context_free(ptr nocapture noundef readonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @put_pid_ns(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_parse_param(ptr noundef %fc, ptr noundef %param) #2 align 64 {
entry:
  %result.i = alloca %struct.fs_parse_result, align 8
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #9
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @proc_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %gid = getelementptr inbounds %struct.proc_fs_context, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gid, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %8 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result.i) #9
  %10 = call ptr @memset(ptr %result.i, i32 255, i32 16)
  %type.i = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load.i)
  %cmp.not.i = icmp eq i8 %bf.load.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %log1.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log1.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %13, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.9) #9
  br label %proc_parse_hidepid_param.exit

if.end.i:                                         ; preds = %sw.bb1
  %14 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr inbounds %struct.fs_parse_result, ptr %result.i, i32 0, i32 1
  %call.i21 = call i32 @kstrtouint(ptr noundef %16, i32 noundef 0, ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %switch.hole_check, label %if.then2.i.if.then5.i_crit_edge

if.then2.i.if.then5.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.then5.i:                                       ; preds = %switch.hole_check.if.then5.i_crit_edge, %if.then2.i.if.then5.i_crit_edge
  %log7.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %log7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log7.i, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %14, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %22, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.10, ptr noundef %24) #9
  br label %proc_parse_hidepid_param.exit

if.end9.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %14, align 4
  %call10.i = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(4) @.str.11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.proc_parse_hidepid_param.exit.thread_crit_edge, label %if.else.i

if.end9.i.proc_parse_hidepid_param.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %proc_parse_hidepid_param.exit.thread

if.else.i:                                        ; preds = %if.end9.i
  %call14.i = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(9) @.str.12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.else.i.proc_parse_hidepid_param.exit.thread_crit_edge, label %if.else18.i

if.else.i.proc_parse_hidepid_param.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %proc_parse_hidepid_param.exit.thread

if.else18.i:                                      ; preds = %if.else.i
  %call19.i = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(10) @.str.13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.else18.i.proc_parse_hidepid_param.exit.thread_crit_edge, label %if.else23.i

if.else18.i.proc_parse_hidepid_param.exit.thread_crit_edge: ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %proc_parse_hidepid_param.exit.thread

if.else23.i:                                      ; preds = %if.else18.i
  %call24.i = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(11) @.str.14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.else23.i.proc_parse_hidepid_param.exit.thread_crit_edge, label %if.else28.i

if.else23.i.proc_parse_hidepid_param.exit.thread_crit_edge: ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %proc_parse_hidepid_param.exit.thread

if.else28.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #11
  %log30.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %log30.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %log30.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %28, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.10, ptr noundef %26) #9
  br label %proc_parse_hidepid_param.exit

switch.hole_check:                                ; preds = %if.then2.i
  %switch.maskindex = trunc i32 %19 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %29 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %switch.lobit.not = icmp eq i8 %29, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then5.i_crit_edge, label %switch.lookup

switch.hole_check.if.then5.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.proc_parse_param, i32 0, i32 %19
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %proc_parse_hidepid_param.exit.thread

proc_parse_hidepid_param.exit.thread:             ; preds = %switch.lookup, %if.else23.i.proc_parse_hidepid_param.exit.thread_crit_edge, %if.else18.i.proc_parse_hidepid_param.exit.thread_crit_edge, %if.else.i.proc_parse_hidepid_param.exit.thread_crit_edge, %if.end9.i.proc_parse_hidepid_param.exit.thread_crit_edge
  %.sink = phi i32 [ 0, %if.end9.i.proc_parse_hidepid_param.exit.thread_crit_edge ], [ 1, %if.else.i.proc_parse_hidepid_param.exit.thread_crit_edge ], [ 2, %if.else18.i.proc_parse_hidepid_param.exit.thread_crit_edge ], [ 4, %if.else23.i.proc_parse_hidepid_param.exit.thread_crit_edge ], [ %switch.load, %switch.lookup ]
  %hidepid.i = getelementptr inbounds %struct.proc_fs_context, ptr %9, i32 0, i32 2
  %31 = ptrtoint ptr %hidepid.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %hidepid.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result.i) #9
  br label %sw.epilog

proc_parse_hidepid_param.exit:                    ; preds = %if.else28.i, %if.then5.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result.i) #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %32 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool.not21.i = icmp eq ptr %34, null
  br i1 %tobool.not21.i, label %sw.bb5.sw.epilog_crit_edge, label %while.body.lr.ph.i

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

while.body.lr.ph.i:                               ; preds = %sw.bb5
  %35 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fs_private, align 4
  %pidonly.i = getelementptr inbounds %struct.proc_fs_context, ptr %36, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %value.addr.022.i = phi ptr [ %34, %while.body.lr.ph.i ], [ %ptr.0.i, %cleanup.i.while.body.i_crit_edge ]
  %call.i23 = call ptr @strchr(ptr noundef nonnull %value.addr.022.i, i32 noundef 44) #9
  %cmp.not.i24 = icmp eq ptr %call.i23, null
  br i1 %cmp.not.i24, label %while.body.i.if.end.i26_crit_edge, label %if.then.i25

while.body.i.if.end.i26_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i26

if.then.i25:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr i8, ptr %call.i23, i32 1
  %37 = ptrtoint ptr %call.i23 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %call.i23, align 1
  br label %if.end.i26

if.end.i26:                                       ; preds = %if.then.i25, %while.body.i.if.end.i26_crit_edge
  %ptr.0.i = phi ptr [ %incdec.ptr.i, %if.then.i25 ], [ null, %while.body.i.if.end.i26_crit_edge ]
  %38 = ptrtoint ptr %value.addr.022.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %value.addr.022.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp1.not.i = icmp eq i8 %39, 0
  br i1 %cmp1.not.i, label %if.end.i26.cleanup.i_crit_edge, label %if.then3.i

if.end.i26.cleanup.i_crit_edge:                   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then3.i:                                       ; preds = %if.end.i26
  %call4.i = call i32 @strcmp(ptr noundef nonnull %value.addr.022.i, ptr noundef nonnull dereferenceable(4) @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %proc_parse_subset_param.exit

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %pidonly.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %pidonly.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then6.i, %if.end.i26.cleanup.i_crit_edge
  %tobool.not.i28 = icmp eq ptr %ptr.0.i, null
  br i1 %tobool.not.i28, label %cleanup.i.sw.epilog_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.sw.epilog_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

proc_parse_subset_param.exit:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %log7.i27 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %log7.i27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %log7.i27, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %42, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.16, ptr noundef nonnull %value.addr.022.i) #9
  br label %cleanup

sw.epilog:                                        ; preds = %cleanup.i.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %proc_parse_hidepid_param.exit.thread, %sw.bb
  %shl = shl nuw i32 1, %call.i
  %mask = getelementptr inbounds %struct.proc_fs_context, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mask, align 4
  %or = or i32 %44, %shl
  store i32 %or, ptr %mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %proc_parse_subset_param.exit, %proc_parse_hidepid_param.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %proc_parse_hidepid_param.exit ], [ -22, %proc_parse_subset_param.exit ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_get_tree(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_nodev(ptr noundef %fc, ptr noundef nonnull @proc_fill_super) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reconfigure(ptr nocapture noundef readonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @sync_filesystem(ptr noundef %3) #9
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_private.i, align 4
  %mask.i = getelementptr inbounds %struct.proc_fs_context, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask.i, align 4
  %and.i6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns, align 4
  %pid_gid.i = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 3
  %gid.i = getelementptr inbounds %struct.proc_fs_context, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gid.i, align 4
  %call.i = tail call i32 @make_kgid(ptr noundef %17, i32 noundef %19) #9
  %20 = ptrtoint ptr %pid_gid.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %pid_gid.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask.i, align 4
  %and2.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %hidepid.i = getelementptr inbounds %struct.proc_fs_context, ptr %7, i32 0, i32 2
  %23 = ptrtoint ptr %hidepid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hidepid.i, align 4
  %hide_pid.i = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %hide_pid.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %hide_pid.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %26 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask.i, align 4
  %and7.i = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.proc_apply_options.exit_crit_edge, label %if.then9.i

if.end5.i.proc_apply_options.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %proc_apply_options.exit

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %pidonly.i = getelementptr inbounds %struct.proc_fs_context, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %pidonly.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pidonly.i, align 4
  %pidonly10.i = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 5
  %30 = ptrtoint ptr %pidonly10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pidonly10.i, align 4
  br label %proc_apply_options.exit

proc_apply_options.exit:                          ; preds = %if.then9.i, %if.end5.i.proc_apply_options.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_fill_super(ptr noundef %s, ptr nocapture noundef readonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp eq ptr %4, @init_pid_ns
  br i1 %cmp.not.i, label %if.end.get_pid_ns.exit_crit_edge, label %if.then.i

if.end.get_pid_ns.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pid_ns.exit

if.then.i:                                        ; preds = %if.end
  %count.i = getelementptr inbounds %struct.pid_namespace, ptr %4, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !75

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pid_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, %if.end.get_pid_ns.exit_crit_edge
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_private, align 4
  %mask.i = getelementptr inbounds %struct.proc_fs_context, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %and.i53 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i, label %get_pid_ns.exit.if.end.i_crit_edge, label %if.then.i54

get_pid_ns.exit.if.end.i_crit_edge:               ; preds = %get_pid_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i54:                                      ; preds = %get_pid_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !64) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns, align 4
  %pid_gid.i = getelementptr inbounds %struct.proc_fs_info, ptr %call7.i.i, i32 0, i32 3
  %gid.i = getelementptr inbounds %struct.proc_fs_context, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gid.i, align 4
  %call.i = tail call i32 @make_kgid(ptr noundef %19, i32 noundef %21) #9
  %22 = ptrtoint ptr %pid_gid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i, ptr %pid_gid.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i54, %get_pid_ns.exit.if.end.i_crit_edge
  %23 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask.i, align 4
  %and2.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %hidepid.i = getelementptr inbounds %struct.proc_fs_context, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %hidepid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hidepid.i, align 4
  %hide_pid.i = getelementptr inbounds %struct.proc_fs_info, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %hide_pid.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %hide_pid.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %28 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask.i, align 4
  %and7.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.proc_apply_options.exit_crit_edge, label %if.then9.i

if.end5.i.proc_apply_options.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %proc_apply_options.exit

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %pidonly.i = getelementptr inbounds %struct.proc_fs_context, ptr %9, i32 0, i32 4
  %30 = ptrtoint ptr %pidonly.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pidonly.i, align 4
  %pidonly10.i = getelementptr inbounds %struct.proc_fs_info, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %pidonly10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pidonly10.i, align 4
  br label %proc_apply_options.exit

proc_apply_options.exit:                          ; preds = %if.then9.i, %if.end5.i.proc_apply_options.exit_crit_edge
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 11
  %33 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_iflags, align 8
  %or = or i32 %34, 22
  store i32 %or, ptr %s_iflags, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %35 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_flags, align 4
  %or5 = or i32 %36, 2058
  store i32 %or5, ptr %s_flags, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %37 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1024, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  %38 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 10, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %39 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 40864, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %40 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @proc_sops, ptr %s_op, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 34
  %41 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %s_time_gran, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_stack_depth = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 59
  %43 = ptrtoint ptr %s_stack_depth to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %s_stack_depth, align 4
  %seeks = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 46, i32 3
  %44 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %seeks, align 4
  %call.i.i.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1), i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1), i32 1, i32 3, i32 1) #9
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1), ptr getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1)) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i56 = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i56)
  %tobool1.not.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i56, 0
  br i1 %tobool1.not.i.i.i.i57, label %proc_apply_options.exit.if.end15.sink.split.i.i.i.i62_crit_edge, label %if.else.i.i.i.i60, !prof !75

proc_apply_options.exit.if.end15.sink.split.i.i.i.i62_crit_edge: ; preds = %proc_apply_options.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i62

if.else.i.i.i.i60:                                ; preds = %proc_apply_options.exit
  %add.i.i.i.i58 = add i32 %asmresult.i.i.i.i.i.i56, 1
  %46 = or i32 %add.i.i.i.i58, %asmresult.i.i.i.i.i.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i.i59 = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i.i59, label %if.else.i.i.i.i60.pde_get.exit_crit_edge, label %if.else.i.i.i.i60.if.end15.sink.split.i.i.i.i62_crit_edge, !prof !76

if.else.i.i.i.i60.if.end15.sink.split.i.i.i.i62_crit_edge: ; preds = %if.else.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i62

if.else.i.i.i.i60.pde_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %pde_get.exit

if.end15.sink.split.i.i.i.i62:                    ; preds = %if.else.i.i.i.i60.if.end15.sink.split.i.i.i.i62_crit_edge, %proc_apply_options.exit.if.end15.sink.split.i.i.i.i62_crit_edge
  %.sink.i.i.i.i61 = phi i32 [ 2, %proc_apply_options.exit.if.end15.sink.split.i.i.i.i62_crit_edge ], [ 1, %if.else.i.i.i.i60.if.end15.sink.split.i.i.i.i62_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1), i32 noundef %.sink.i.i.i.i61) #9
  br label %pde_get.exit

pde_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i62, %if.else.i.i.i.i60.pde_get.exit_crit_edge
  %call6 = tail call ptr @proc_get_inode(ptr noundef %s, ptr noundef nonnull @proc_root) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %pde_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %cleanup

if.end14:                                         ; preds = %pde_get.exit
  %call15 = tail call ptr @d_make_root(ptr noundef nonnull %call6) #9
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %47 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call15, ptr %s_root, align 64
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call25 = tail call i32 @proc_setup_self(ptr noundef %s) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 @proc_setup_thread_self(ptr noundef %s) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %do.end21, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end28 ], [ -12, %do.end21 ], [ -12, %do.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setup_self(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setup_thread_self(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_root_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_pid_lookup(ptr noundef %dentry, i32 noundef %flags) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call ptr @proc_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_root_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #9
  %4 = load i32, ptr getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 13), align 8
  %call1 = tail call i32 @nr_processes() #9
  %add = add i32 %call1, %4
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %5 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %nlink, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_pid_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_processes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_root_readdir(ptr noundef %file, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %1)
  %cmp = icmp slt i64 %1, 256
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @proc_readdir(ptr noundef %file, ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then.return_crit_edge, label %cleanup.thread, !prof !75

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 256, ptr %pos, align 8
  br label %if.end5

if.end5:                                          ; preds = %cleanup.thread, %entry.if.end5_crit_edge
  %call6 = tail call i32 @proc_pid_readdir(ptr noundef %file, ptr noundef %ctx) #9
  br label %return

return:                                           ; preds = %if.end5, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call6, %if.end5 ], [ %call, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_readdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_readdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/proc/root.c", i32 294, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/proc/root.c", i32 294, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/proc/root.c", i32 297, i32 13}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/proc/root.c", i32 298, i32 13}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/proc/root.c", i32 299, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc/root.c", i32 305, i32 13}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/proc/root.c", i32 372, i32 11}
!14 = !{ptr @proc_root, !15, !"proc_root", i1 false, i1 false}
!15 = !{!"../fs/proc/root.c", i32 362, i32 23}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/proc/root.c", i32 281, i32 12}
!18 = !{ptr @proc_fs_type, !19, !"proc_fs_type", i1 false, i1 false}
!19 = !{!"../fs/proc/root.c", i32 280, i32 32}
!20 = !{ptr @proc_fs_context_ops, !21, !"proc_fs_context_ops", i1 false, i1 false}
!21 = !{!"../fs/proc/root.c", i32 240, i32 43}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/proc/root.c", i32 64, i32 46}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/proc/root.c", i32 69, i32 10}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/proc/root.c", i32 73, i32 11}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/proc/root.c", i32 78, i32 29}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/proc/root.c", i32 80, i32 34}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/proc/root.c", i32 82, i32 34}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/proc/root.c", i32 84, i32 34}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/proc/root.c", i32 103, i32 23}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/proc/root.c", i32 106, i32 12}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../fs/proc/root.c", i32 174, i32 34}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/proc/root.c", i32 199, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @proc_fill_super._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @proc_fill_super._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/proc/root.c", i32 205, i32 3}
!50 = !{ptr @proc_fill_super._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @proc_fill_super._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../fs/proc/root.c", i32 223, i32 34}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/proc/root.c", i32 47, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/proc/root.c", i32 49, i32 2}
!58 = !{ptr @proc_fs_parameters, !59, !"proc_fs_parameters", i1 false, i1 false}
!59 = !{!"../fs/proc/root.c", i32 46, i32 39}
!60 = !{ptr @proc_root_inode_operations, !61, !"proc_root_inode_operations", i1 false, i1 false}
!61 = !{!"../fs/proc/root.c", i32 354, i32 38}
!62 = !{ptr @proc_root_operations, !63, !"proc_root_operations", i1 false, i1 false}
!63 = !{!"../fs/proc/root.c", i32 345, i32 37}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148451760, i64 2148451792, i64 2148451821, i64 2148451855, i64 2148451886, i64 2148451909}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2148539761}
!78 = !{i64 2148454225, i64 2148454257, i64 2148454286, i64 2148454320, i64 2148454351, i64 2148454374}
!79 = !{i64 2149575484}
