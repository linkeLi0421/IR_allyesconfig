; ModuleID = '/llk/IR_all_yes/fs/cifs/dfs_cache.c_pt.bc'
source_filename = "../fs/cifs/dfs_cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.125 }
%union.anon.125 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.uuid_t = type { [16 x i8] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mount_group = type { %struct.list_head, %struct.uuid_t, [64 x ptr], i32, %struct.spinlock, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.cache_entry = type { %struct.hlist_node, ptr, i32, i32, i32, i32, %struct.timespec64, i32, i32, %struct.list_head, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dfs_info3_param = type { i32, i32, i32, i32, ptr, ptr, i32 }
%struct.dfs_cache_tgt_list = type { i32, %struct.list_head }
%struct.dfs_cache_tgt_iterator = type { ptr, i32, %struct.list_head }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.146, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.146 = type { %struct.anon.148 }
%struct.anon.148 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.149 }
%union.anon.149 = type { ptr, [124 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.108 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cache_dfs_tgt = type { ptr, i32, %struct.list_head }
%struct.sockaddr = type { i16, [14 x i8] }

@cache_cp = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dfs_cache_canonical_path._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dfs_cache_canonical_path = private unnamed_addr constant [25 x i8] c"dfs_cache_canonical_path\00", align 1
@dfs_cache_canonical_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.dfs_cache_canonical_path, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s: failed to convert path to utf16\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/cifs/dfs_cache.c\00", [44 x i8] zeroinitializer }, align 32
@dfs_cache_canonical_path._entry_ptr = internal global ptr @dfs_cache_canonical_path._entry, section ".printk_index", align 4
@dfs_cache_canonical_path._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_canonical_path._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.dfs_cache_canonical_path, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013CIFS: VFS: %s: failed to convert path from utf16\0A\00", [44 x i8] zeroinitializer }, align 32
@dfs_cache_canonical_path._entry_ptr.6 = internal global ptr @dfs_cache_canonical_path._entry.4, section ".printk_index", align 4
@dfscache_proc_ops = dso_local constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @dfscache_proc_open, ptr @seq_read, ptr null, ptr @dfscache_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cifs-dfscache\00", [18 x i8] zeroinitializer }, align 32
@dfscache_wq = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_dfs_cache\00", [17 x i8] zeroinitializer }, align 32
@cache_slab = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@cache_htable = internal global { [32 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@cache_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@dfs_cache_init._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_init.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfs_cache_init\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: %s: initialized DFS referral cache\0A\00", [50 x i8] zeroinitializer }, align 32
@refresh_task = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @refresh_task, i64 4), ptr getelementptr (i8, ptr @refresh_task, i64 4) }, ptr @refresh_cache_worker, %struct.lockdep_map { ptr @refresh_task, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.51, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_destroy._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_destroy.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dfs_cache_destroy\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: %s: destroyed DFS referral cache\0A\00", [52 x i8] zeroinitializer }, align 32
@htable_rw_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.102, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @htable_rw_lock, i64 56), ptr getelementptr (i8, ptr @htable_rw_lock, i64 56) }, ptr @htable_rw_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.103, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@dfs_cache_noreq_find._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_noreq_find.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dfs_cache_noreq_find\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIFS: %s: %s: path: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@dfs_cache_update_tgthint._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_update_tgthint.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dfs_cache_update_tgthint\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: %s: update target hint - path: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@dfs_cache_update_tgthint._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_update_tgthint.descriptor.20 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.2, ptr @.str.21, i8 1, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIFS: %s: %s: new target hint: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@dfs_cache_noreq_update_tgthint._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_noreq_update_tgthint.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.22, ptr @.str.2, ptr @.str.16, i8 1, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dfs_cache_noreq_update_tgthint\00", [33 x i8] zeroinitializer }, align 32
@dfs_cache_noreq_update_tgthint._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_noreq_update_tgthint.descriptor.24 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.22, ptr @.str.2, ptr @.str.21, i8 1, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dfs_cache_get_tgt_referral._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_get_tgt_referral.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.2, ptr @.str.16, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dfs_cache_get_tgt_referral\00", [37 x i8] zeroinitializer }, align 32
@dfs_cache_get_tgt_referral._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_get_tgt_referral.descriptor.27 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIFS: %s: %s: target name: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@dfs_cache_add_refsrv_session.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dfs_cache_add_refsrv_session.__already_done.29 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mount_group_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.107, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mount_group_list_lock, i64 52), ptr getelementptr (i8, ptr @mount_group_list_lock, i64 52) }, ptr @mount_group_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.108, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%.*s%c%.*s\00", [21 x i8] zeroinitializer }, align 32
@dfs_cache_remount_fs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_remount_fs.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dfs_cache_remount_fs\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIFS: %s: %s: not a dfs mount\0A\00", [33 x i8] zeroinitializer }, align 32
@dfs_cache_remount_fs._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_remount_fs.descriptor.34 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.2, ptr @.str.35, i8 1, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: %s: %s: no dfs mount group id\0A\00", [59 x i8] zeroinitializer }, align 32
@dfs_cache_remount_fs._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfs_cache_remount_fs.descriptor.37 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.2, ptr @.str.38, i8 1, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"CIFS: %s: %s: no ipc session for refreshing referral\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DFS cache\0A---------\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"cache entry: path=%s,type=%s,ttl=%d,etime=%ld,hdr_flags=0x%x,ref_flags=0x%x,interlink=%s,path_consumed=%d,expired=%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"root\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  %s%s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" (target hint)\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dfscache_proc_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dfscache_proc_write.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dfscache_proc_write\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIFS: %s: clearing dfs cache\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(refresh_task).work\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/cifs/dfs_cache.c:84\00", [41 x i8] zeroinitializer }, align 32
@mount_group_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mount_group_list, ptr @mount_group_list }, [24 x i8] zeroinitializer }, align 32
@cache_ttl_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.99, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@cache_ttl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cifs_tcp_ses_lock = external dso_local global %struct.spinlock, align 4
@cifs_tcp_ses_list = external dso_local global %struct.list_head, align 4
@__refresh_tcon._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__refresh_tcon.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 1, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__refresh_tcon\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: %s: could not find ipc session\0A\00", [54 x i8] zeroinitializer }, align 32
@__refresh_tcon._rs.54 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__refresh_tcon.descriptor.55 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.52, ptr @.str.2, ptr @.str.56, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: %s: could not get dfs targets: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__refresh_tcon._rs.57 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__refresh_tcon.descriptor.58 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.52, ptr @.str.2, ptr @.str.59, i8 1, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__refresh_tcon._rs.60 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__refresh_tcon.descriptor.61 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.52, ptr @.str.2, ptr @.str.62, i8 1, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\\\\%.*s\\IPC$\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@get_dfs_referral._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_dfs_referral.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_dfs_referral\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: %s: get an DFS referral for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dump_refs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_refs.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_refs\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: DFS referrals returned by the server:\0A\00", [47 x i8] zeroinitializer }, align 32
@dump_refs._rs.71 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_refs.descriptor.72 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.69, ptr @.str.2, ptr @.str.73, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [150 x i8], [42 x i8] } { [150 x i8] c"CIFS: %s: \0Aflags:         0x%x\0Apath_consumed: %d\0Aserver_type:   0x%x\0Aref_flag:      0x%x\0Apath_name:     %s\0Anode_name:     %s\0Attl:           %d (%dm)\0A\00", [42 x i8] zeroinitializer }, align 32
@add_cache_entry_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@add_cache_entry_locked.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_cache_entry_locked\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CIFS: %s: %s: reached max cache size (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@remove_oldest_entry_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@remove_oldest_entry_locked.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"remove_oldest_entry_locked\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIFS: %s: %s: no entry to remove\0A\00", [62 x i8] zeroinitializer }, align 32
@remove_oldest_entry_locked._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@remove_oldest_entry_locked.descriptor.79 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.76, ptr @.str.2, ptr @.str.80, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIFS: %s: %s: removing entry\0A\00", [34 x i8] zeroinitializer }, align 32
@cache_entry_hash._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cache_entry_hash = private unnamed_addr constant [17 x i8] c"cache_entry_hash\00", align 1
@cache_entry_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @__func__.cache_entry_hash, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013CIFS: VFS: %s: can't convert char\0A\00", [59 x i8] zeroinitializer }, align 32
@cache_entry_hash._entry_ptr = internal global ptr @cache_entry_hash._entry, section ".printk_index", align 4
@dump_ce._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_ce.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dump_ce\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"CIFS: %s: cache entry: path=%s,type=%s,ttl=%d,etime=%ld,hdr_flags=0x%x,ref_flags=0x%x,interlink=%s,path_consumed=%d,expired=%s\0A\00", [32 x i8] zeroinitializer }, align 32
@dump_tgts._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_tgts.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_tgts\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIFS: %s: target list:\0A\00", [40 x i8] zeroinitializer }, align 32
@dump_tgts._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_tgts.descriptor.87 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.84, ptr @.str.2, ptr @.str.88, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CIFS: %s:   %s%s\0A\00", [46 x i8] zeroinitializer }, align 32
@mark_for_reconnect_if_needed._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mark_for_reconnect_if_needed.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 1, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mark_for_reconnect_if_needed\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"CIFS: %s: %s: no cached or matched targets. mark dfs share for reconnect.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\\\\%.*s\00", [25 x i8] zeroinitializer }, align 32
@target_share_equal._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@target_share_equal.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 1, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"target_share_equal\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"CIFS: %s: %s: could not resolve %.*s. assuming server address matches.\0A\00", [56 x i8] zeroinitializer }, align 32
@target_share_equal._rs.94 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@target_share_equal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.92, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013CIFS: VFS: %s: failed to convert address '%s'. skip address matching.\0A\00", [55 x i8] zeroinitializer }, align 32
@target_share_equal._entry_ptr = internal global ptr @target_share_equal._entry, section ".printk_index", align 4
@refresh_cache._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@refresh_cache.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.96, ptr @.str.2, ptr @.str.59, i8 1, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"refresh_cache\00", [18 x i8] zeroinitializer }, align 32
@refresh_cache._rs.97 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@refresh_cache.descriptor.98 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.96, ptr @.str.2, ptr @.str.62, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cache_ttl_lock\00", [17 x i8] zeroinitializer }, align 32
@cache_refresh_path._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cache_refresh_path.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cache_refresh_path\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIFS: %s: %s: search path: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"htable_rw_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"htable_rw_lock\00", [17 x i8] zeroinitializer }, align 32
@setup_referral._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_referral.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_referral\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIFS: %s: %s: set up new ref\0A\00", [34 x i8] zeroinitializer }, align 32
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@__get_mount_group_locked.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mg->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mount_group_list_lock.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mount_group_list_lock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"cache_cp\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 69, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 200, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 208, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"dfscache_proc_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 329, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 400, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 404, i32 33 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"cache_htable\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 76, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"cache_count\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 74, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 416, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 420, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"refresh_task\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 728, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"htable_rw_lock\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1005, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1058, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1080, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1116, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1135, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1165, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1175, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"mount_group_list_lock\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1291, i32 28 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1459, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1464, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1472, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 273, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 284, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 285, i32 49 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 285, i32 58 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 287, i32 42 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 287, i32 50 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 291, i32 19 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 293, i32 28 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 293, i32 47 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 315, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 84, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"mount_group_list\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 79, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant [15 x i8] c"cache_ttl_lock\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [10 x i8] c"cache_ttl\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 66, i32 12 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1376, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1386, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1395, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1397, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 92, i32 25 }
@___asan_gen_.327 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 609, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 108, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 763, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 366, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 370, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 591, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 572, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 576, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 438, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 351, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 342, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 344, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1357, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1317, i32 30 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1321, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1327, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1588, i32 9 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1590, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 67, i32 8 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 801, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 77, i32 8 }
@___asan_gen_.470 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 849, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 151, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.486 = private constant [23 x i8] c"../fs/cifs/dfs_cache.c\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 80, i32 8 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @cache_entry_hash._entry, ptr @cache_entry_hash._entry_ptr, ptr @dfs_cache_canonical_path._entry, ptr @dfs_cache_canonical_path._entry.4, ptr @dfs_cache_canonical_path._entry_ptr, ptr @dfs_cache_canonical_path._entry_ptr.6, ptr @target_share_equal._entry, ptr @target_share_equal._entry_ptr, ptr @cache_cp, ptr @dfs_cache_canonical_path._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dfs_cache_canonical_path._rs.3, ptr @.str.5, ptr @dfscache_proc_ops, ptr @.str.7, ptr @.str.8, ptr @cache_htable, ptr @cache_count, ptr @.str.9, ptr @dfs_cache_init._rs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @refresh_task, ptr @dfs_cache_destroy._rs, ptr @.str.13, ptr @.str.14, ptr @htable_rw_lock, ptr @dfs_cache_noreq_find._rs, ptr @.str.15, ptr @.str.16, ptr @dfs_cache_update_tgthint._rs, ptr @.str.17, ptr @.str.18, ptr @dfs_cache_update_tgthint._rs.19, ptr @.str.21, ptr @dfs_cache_noreq_update_tgthint._rs, ptr @.str.22, ptr @dfs_cache_noreq_update_tgthint._rs.23, ptr @dfs_cache_get_tgt_referral._rs, ptr @.str.25, ptr @dfs_cache_get_tgt_referral._rs.26, ptr @.str.28, ptr @mount_group_list_lock, ptr @.str.30, ptr @dfs_cache_remount_fs._rs, ptr @.str.31, ptr @.str.32, ptr @dfs_cache_remount_fs._rs.33, ptr @.str.35, ptr @dfs_cache_remount_fs._rs.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @dfscache_proc_write._rs, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @mount_group_list, ptr @cache_ttl_lock, ptr @cache_ttl, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @get_dfs_referral._rs, ptr @.str.67, ptr @.str.68, ptr @dump_refs._rs, ptr @.str.69, ptr @.str.70, ptr @dump_refs._rs.71, ptr @.str.73, ptr @add_cache_entry_locked._rs, ptr @.str.74, ptr @.str.75, ptr @remove_oldest_entry_locked._rs, ptr @.str.76, ptr @.str.77, ptr @remove_oldest_entry_locked._rs.78, ptr @.str.80, ptr @cache_entry_hash._rs, ptr @.str.81, ptr @dump_ce._rs, ptr @.str.82, ptr @.str.83, ptr @dump_tgts._rs, ptr @.str.84, ptr @.str.85, ptr @dump_tgts._rs.86, ptr @.str.88, ptr @mark_for_reconnect_if_needed._rs, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @target_share_equal._rs, ptr @.str.92, ptr @.str.93, ptr @target_share_equal._rs.94, ptr @.str.95, ptr @refresh_cache._rs, ptr @.str.96, ptr @refresh_cache._rs.97, ptr @.str.99, ptr @cache_refresh_path._rs, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @setup_referral._rs, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_cp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_canonical_path._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_canonical_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_canonical_path._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_canonical_path._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfscache_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_htable to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_init._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refresh_task to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_destroy._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htable_rw_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_noreq_find._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_update_tgthint._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_update_tgthint._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_noreq_update_tgthint._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_noreq_update_tgthint._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_get_tgt_referral._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_get_tgt_referral._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_group_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_remount_fs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_remount_fs._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_cache_remount_fs._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfscache_proc_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_group_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_ttl_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_ttl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dfs_referral._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_refs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_refs._rs.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_cache_entry_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_oldest_entry_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_oldest_entry_locked._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_entry_hash._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_entry_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ce._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_tgts._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_tgts._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_for_reconnect_if_needed._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_share_equal._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_share_equal._rs.94 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_share_equal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refresh_cache._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refresh_cache._rs.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_refresh_path._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_referral._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dfs_cache_canonical_path(ptr noundef %path, ptr noundef %cp, i32 noundef %remap) local_unnamed_addr #0 align 64 {
entry:
  %plen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plen) #14
  %0 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %plen, align 4
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %path) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp ult i32 %call, 3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %1 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %path, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %lor.lhs.false1.cleanup_crit_edge [
    i8 92, label %lor.lhs.false1.if.end_crit_edge
    i8 47, label %lor.lhs.false1.if.end_crit_edge72
  ]

lor.lhs.false1.if.end_crit_edge72:                ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false1.if.end_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1.if.end_crit_edge, %lor.lhs.false1.if.end_crit_edge72
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp, align 4
  %6 = load ptr, ptr @cache_cp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %5, ptr noundef %8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then13, !prof !262

if.then13:                                        ; preds = %if.end
  %call15 = call ptr @cifs_strndup_to_utf16(ptr noundef nonnull %path, i32 noundef %call, ptr noundef nonnull %plen, ptr noundef %cp, i32 noundef %remap) #14
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.body18, label %if.end31

do.body18:                                        ; preds = %if.then13
  %call19 = call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_canonical_path._rs, ptr noundef nonnull @__func__.dfs_cache_canonical_path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.body18.cleanup.sink.split_crit_edge

do.body18.cleanup.sink.split_crit_edge:           ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.then13
  %9 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %plen, align 4
  %11 = load ptr, ptr @cache_cp, align 4
  %call32 = call ptr @cifs_strndup_from_utf16(ptr noundef nonnull %call15, i32 noundef %10, i1 noundef zeroext true, ptr noundef %11) #14
  call void @kfree(ptr noundef nonnull %call15) #14
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.body36, label %if.end31.if.end57_crit_edge

if.end31.if.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

do.body36:                                        ; preds = %if.end31
  %call37 = call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_canonical_path._rs.3, ptr noundef nonnull @__func__.dfs_cache_canonical_path) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body36.cleanup_crit_edge, label %do.body36.cleanup.sink.split_crit_edge

do.body36.cleanup.sink.split_crit_edge:           ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call52 = tail call noalias ptr @kstrdup(ptr noundef nonnull %path, i32 noundef 3264) #14
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.else.cleanup_crit_edge, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end57:                                         ; preds = %if.else.if.end57_crit_edge, %if.end31.if.end57_crit_edge
  %npath.0 = phi ptr [ %call32, %if.end31.if.end57_crit_edge ], [ %call52, %if.else.if.end57_crit_edge ]
  %call1.i = call ptr @strchr(ptr noundef nonnull %npath.0, i32 noundef 47) #14
  %tobool.not2.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not2.i, label %if.end57.cleanup_crit_edge, label %if.end57.while.body.i_crit_edge

if.end57.while.body.i_crit_edge:                  ; preds = %if.end57
  br label %while.body.i

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end57.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call1.i, %if.end57.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 92, ptr %call3.i, align 1
  %call.i = call ptr @strchr(ptr noundef nonnull %call3.i, i32 noundef 47) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body36.cleanup.sink.split_crit_edge, %do.body18.cleanup.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.1, %do.body18.cleanup.sink.split_crit_edge ], [ @.str.5, %do.body36.cleanup.sink.split_crit_edge ]
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink, ptr noundef nonnull @__func__.dfs_cache_canonical_path) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body.i.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.body36.cleanup_crit_edge, %do.body18.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %lor.lhs.false1.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body18.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body36.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup_crit_edge ], [ %npath.0, %if.end57.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.sink.split ], [ %npath.0, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen) #14
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_strndup_to_utf16(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_strndup_from_utf16(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfscache_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dfscache_proc_show, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfscache_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 308) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !263
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer, i32 -1226833921) #14, !srcloc !266
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #14, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  %conv3 = and i32 %asmresult1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %conv3)
  %cmp.not = icmp eq i32 %conv3, 48
  br i1 %cmp.not, label %do.body7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body7:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body7.do.end24_crit_edge, label %do.body10

do.body7.do.end24_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

do.body10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfscache_proc_write.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfscache_proc_write, %land.lhs.true)) #14
          to label %do.end24 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body10
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @dfscache_proc_write._rs, ptr noundef nonnull @.str.48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end24_crit_edge, label %if.then18

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfscache_proc_write.descriptor, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.2) #14
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %land.lhs.true.do.end24_crit_edge, %do.body10, %do.body7.do.end24_crit_edge
  tail call void @down_write(ptr noundef nonnull @htable_rw_lock) #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %do.end24
  %i.032.i = phi i32 [ 0, %do.end24 ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @cache_htable, i32 0, i32 %i.032.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not30.i = icmp eq ptr %6, null
  br i1 %tobool3.not30.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %ce.031.i = phi ptr [ %8, %for.inc.i.land.rhs.i_crit_edge ], [ %6, %for.body.i.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %ce.031.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ce.031.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %ce.031.i, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i, label %land.rhs.i.for.inc.i_crit_edge, label %if.then.i

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @flush_cache_ent(ptr noundef nonnull %ce.031.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.rhs.i.for.inc.i_crit_edge
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %flush_cache_ents.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

flush_cache_ents.exit:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @up_write(ptr noundef nonnull @htable_rw_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %flush_cache_ents.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %flush_cache_ents.exit ], [ %asmresult, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dfs_cache_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1) #14
  store ptr %call, ptr @dfscache_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 72, i32 noundef 0, i32 noundef 8192, ptr noundef null) #14
  store ptr %call1, ptr @cache_slab, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %0 = call ptr @memset(ptr @cache_htable, i32 0, i32 128)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cache_count, i32 noundef 4) #14
  store volatile i32 0, ptr @cache_count, align 4
  %call5 = tail call ptr @load_nls(ptr noundef nonnull @.str.9) #14
  store ptr %call5, ptr @cache_cp, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %for.body.preheader.do.body10_crit_edge

for.body.preheader.do.body10_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %1 = load ptr, ptr @dfscache_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #14
  br label %cleanup

if.then7:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call ptr @load_nls_default() #14
  store ptr %call8, ptr @cache_cp, align 4
  br label %do.body10

do.body10:                                        ; preds = %if.then7, %for.body.preheader.do.body10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body10.cleanup_crit_edge, label %do.body13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_init.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_init, %land.lhs.true)) #14
          to label %cleanup [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body13
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_init._rs, ptr noundef nonnull @.str.11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.cleanup_crit_edge, label %if.then20

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_init.descriptor, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true.cleanup_crit_edge, %do.body13, %do.body10.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body10.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dfs_cache_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @refresh_task) #14
  %0 = load ptr, ptr @cache_cp, align 4
  tail call void @unload_nls(ptr noundef %0) #14
  %1 = load ptr, ptr @mount_group_list, align 4
  %cmp.not15.i = icmp eq ptr %1, @mount_group_list
  br i1 %cmp.not15.i, label %entry.for.body.i13.preheader_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.body.i13.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i13.preheader

for.body.i:                                       ; preds = %__mount_group_release.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %mg.016.i = phi ptr [ %tmp_mg.0.i, %__mount_group_release.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %mg.016.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_mg.0.i = load ptr, ptr %mg.016.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mg.016.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mg.016.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %mg.016.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mg.016.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %9 = ptrtoint ptr %mg.016.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %mg.016.i, ptr %mg.016.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %mg.016.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mg.016.i, ptr %prev.i3.i.i, align 4
  %num_sessions.i.i = getelementptr inbounds %struct.mount_group, ptr %mg.016.i, i32 0, i32 3
  %11 = ptrtoint ptr %num_sessions.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_sessions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.i.i = icmp sgt i32 %12, 0
  br i1 %cmp5.i.i, label %list_del_init.exit.i.for.body.i.i_crit_edge, label %list_del_init.exit.i.__mount_group_release.exit.i_crit_edge

list_del_init.exit.i.__mount_group_release.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mount_group_release.exit.i

list_del_init.exit.i.for.body.i.i_crit_edge:      ; preds = %list_del_init.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %list_del_init.exit.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %list_del_init.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mount_group, ptr %mg.016.i, i32 0, i32 2, i32 %i.06.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @cifs_put_smb_ses(ptr noundef %14) #14
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %15 = ptrtoint ptr %num_sessions.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_sessions.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %16
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__mount_group_release.exit.i_crit_edge

for.body.i.i.__mount_group_release.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mount_group_release.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

__mount_group_release.exit.i:                     ; preds = %for.body.i.i.__mount_group_release.exit.i_crit_edge, %list_del_init.exit.i.__mount_group_release.exit.i_crit_edge
  tail call void @kfree(ptr noundef %mg.016.i) #14
  %cmp.not.i = icmp eq ptr %tmp_mg.0.i, @mount_group_list
  br i1 %cmp.not.i, label %__mount_group_release.exit.i.for.body.i13.preheader_crit_edge, label %__mount_group_release.exit.i.for.body.i_crit_edge

__mount_group_release.exit.i.for.body.i_crit_edge: ; preds = %__mount_group_release.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

__mount_group_release.exit.i.for.body.i13.preheader_crit_edge: ; preds = %__mount_group_release.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i13.preheader

for.body.i13.preheader:                           ; preds = %__mount_group_release.exit.i.for.body.i13.preheader_crit_edge, %entry.for.body.i13.preheader_crit_edge
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.end.i.for.body.i13_crit_edge, %for.body.i13.preheader
  %i.032.i = phi i32 [ %inc.i, %for.end.i.for.body.i13_crit_edge ], [ 0, %for.body.i13.preheader ]
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @cache_htable, i32 0, i32 %i.032.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not30.i = icmp eq ptr %18, null
  br i1 %tobool3.not30.i, label %for.body.i13.for.end.i_crit_edge, label %for.body.i13.land.rhs.i_crit_edge

for.body.i13.land.rhs.i_crit_edge:                ; preds = %for.body.i13
  br label %land.rhs.i

for.body.i13.for.end.i_crit_edge:                 ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i13.land.rhs.i_crit_edge
  %ce.031.i = phi ptr [ %20, %for.inc.i.land.rhs.i_crit_edge ], [ %18, %for.body.i13.land.rhs.i_crit_edge ]
  %19 = ptrtoint ptr %ce.031.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ce.031.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %ce.031.i, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.not.i, label %land.rhs.i.for.inc.i_crit_edge, label %if.then.i

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @flush_cache_ent(ptr noundef nonnull %ce.031.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.rhs.i.for.inc.i_crit_edge
  %tobool3.not.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i13.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %flush_cache_ents.exit, label %for.end.i.for.body.i13_crit_edge

for.end.i.for.body.i13_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i13

flush_cache_ents.exit:                            ; preds = %for.end.i
  %23 = load ptr, ptr @cache_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %23) #14
  %24 = load ptr, ptr @dfscache_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %24) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %25 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %flush_cache_ents.exit.do.end12_crit_edge, label %do.body2

flush_cache_ents.exit.do.end12_crit_edge:         ; preds = %flush_cache_ents.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.body2:                                         ; preds = %flush_cache_ents.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_destroy.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_destroy, %land.lhs.true)) #14
          to label %do.end12 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_destroy._rs, ptr noundef nonnull @.str.13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %if.then9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_destroy.descriptor, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #14
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true.do.end12_crit_edge, %do.body2, %flush_cache_ents.exit.do.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dfs_cache_find(i32 noundef %xid, ptr noundef %ses, ptr noundef %cp, i32 noundef %remap, ptr noundef %path, ptr noundef %ref, ptr noundef %tgt_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dfs_cache_canonical_path(ptr noundef %path, ptr noundef %cp, i32 noundef %remap)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @cache_refresh_path(i32 noundef %xid, ptr noundef %ses, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_free_path_crit_edge

if.end.out_free_path_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_path

if.end5:                                          ; preds = %if.end
  tail call void @down_read(ptr noundef nonnull @htable_rw_lock) #14
  %call6 = tail call fastcc ptr @lookup_cache_entry(ptr noundef %call)
  %cmp.i36 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @up_read(ptr noundef nonnull @htable_rw_lock) #14
  %1 = ptrtoint ptr %call6 to i32
  br label %out_free_path

if.end10:                                         ; preds = %if.end5
  %tobool11.not = icmp eq ptr %ref, null
  br i1 %tobool11.not, label %if.end10.land.lhs.true_crit_edge, label %if.then12

if.end10.land.lhs.true_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then12:                                        ; preds = %if.end10
  %tgthint.i = getelementptr inbounds %struct.cache_entry, ptr %call6, i32 0, i32 10
  %2 = ptrtoint ptr %tgthint.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgthint.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then12.if.end15_crit_edge, label %cond.true.i

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

cond.true.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %if.end15

if.end15:                                         ; preds = %cond.true.i, %if.then12.if.end15_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ inttoptr (i32 -2 to ptr), %if.then12.if.end15_crit_edge ]
  %call14 = tail call fastcc i32 @setup_referral(ptr noundef %path, ptr noundef %call6, ptr noundef nonnull %ref, ptr noundef %cond.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end15.land.lhs.true_crit_edge, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end15.land.lhs.true_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15.land.lhs.true_crit_edge, %if.end10.land.lhs.true_crit_edge
  %tobool17.not = icmp eq ptr %tgt_list, null
  br i1 %tobool17.not, label %land.lhs.true.if.end20_crit_edge, label %if.then18

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call fastcc i32 @get_targets(ptr noundef %call6, ptr noundef nonnull %tgt_list)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %rc.1 = phi i32 [ %call14, %if.end15.if.end20_crit_edge ], [ %call19, %if.then18 ], [ 0, %land.lhs.true.if.end20_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @htable_rw_lock) #14
  br label %out_free_path

out_free_path:                                    ; preds = %if.end20, %if.then8, %if.end.out_free_path_crit_edge
  %rc.2 = phi i32 [ %call3, %if.end.out_free_path_crit_edge ], [ %1, %if.then8 ], [ %rc.1, %if.end20 ]
  tail call void @kfree(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free_path, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %rc.2, %out_free_path ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cache_refresh_path(i32 noundef %xid, ptr noundef %ses, ptr noundef %path) unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %refs = alloca ptr, align 4
  %numrefs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refs) #14
  %0 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %refs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numrefs) #14
  %1 = ptrtoint ptr %numrefs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %numrefs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cache_refresh_path.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cache_refresh_path, %land.lhs.true)) #14
          to label %do.end13 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cache_refresh_path._rs, ptr noundef nonnull @.str.100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cache_refresh_path.descriptor, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.100, ptr noundef %path) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  tail call void @down_write(ptr noundef nonnull @htable_rw_lock) #14
  %call14 = tail call fastcc ptr @lookup_cache_entry(ptr noundef %path)
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13.if.end21_crit_edge, label %if.then16

do.end13.if.end21_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then16:                                        ; preds = %do.end13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #14
  %3 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %ts.i) #14
  %etime.i = getelementptr inbounds %struct.cache_entry, ptr %call14, i32 0, i32 6
  %4 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts.i, align 8
  %6 = ptrtoint ptr %etime.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %etime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.i.i = icmp slt i64 %5, %7
  br i1 %cmp.i.i, label %cache_entry_expired.exit.thread44, label %if.end.i.i

cache_entry_expired.exit.thread44:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %if.then18

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp4.i.i = icmp sgt i64 %5, %7
  br i1 %cmp4.i.i, label %cache_entry_expired.exit.thread, label %cache_entry_expired.exit

cache_entry_expired.exit.thread:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %if.end21

cache_entry_expired.exit:                         ; preds = %if.end.i.i
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec7.i.i = getelementptr inbounds %struct.cache_entry, ptr %call14, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %tv_nsec7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec7.i.i, align 8
  %sub.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %phi.cmp.i = icmp sgt i32 %sub.i.i, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br i1 %phi.cmp.i, label %cache_entry_expired.exit.if.end21_crit_edge, label %cache_entry_expired.exit.if.then18_crit_edge

cache_entry_expired.exit.if.then18_crit_edge:     ; preds = %cache_entry_expired.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

cache_entry_expired.exit.if.end21_crit_edge:      ; preds = %cache_entry_expired.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then18:                                        ; preds = %cache_entry_expired.exit.if.then18_crit_edge, %cache_entry_expired.exit.thread44
  call fastcc void @dump_ce(ptr noundef %call14)
  call void @up_write(ptr noundef nonnull @htable_rw_lock) #14
  br label %cleanup

if.end21:                                         ; preds = %cache_entry_expired.exit.if.end21_crit_edge, %cache_entry_expired.exit.thread, %do.end13.if.end21_crit_edge
  %call22 = call fastcc i32 @get_dfs_referral(i32 noundef %xid, ptr noundef %ses, ptr noundef %path, ptr noundef nonnull %refs, ptr noundef nonnull %numrefs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_unlock_crit_edge

if.end21.out_unlock_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end25:                                         ; preds = %if.end21
  %12 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %refs, align 4
  %14 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %numrefs, align 4
  call fastcc void @dump_refs(ptr noundef %13, i32 noundef %15)
  %16 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %refs, align 4
  %18 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numrefs, align 4
  br i1 %cmp.i, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %call28 = call fastcc i32 @update_cache_entry_locked(ptr noundef %call14, ptr noundef %17, i32 noundef %19)
  br label %out_unlock

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %call30 = call fastcc i32 @add_cache_entry_locked(ptr noundef %17, i32 noundef %19)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end29, %if.then27, %if.end21.out_unlock_crit_edge
  %rc.0 = phi i32 [ %call22, %if.end21.out_unlock_crit_edge ], [ %call30, %if.end29 ], [ %call28, %if.then27 ]
  call void @up_write(ptr noundef nonnull @htable_rw_lock) #14
  %20 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %refs, align 4
  %22 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i41 = icmp eq i32 %23, 0
  %cmp1.i = icmp eq ptr %21, null
  %or.cond.i = or i1 %cmp1.i, %cmp.i41
  br i1 %or.cond.i, label %out_unlock.cleanup_crit_edge, label %for.cond.preheader.i

out_unlock.cleanup_crit_edge:                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader.i:                             ; preds = %out_unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp211.i = icmp sgt i32 %23, 0
  br i1 %cmp211.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %path_name.i = getelementptr %struct.dfs_info3_param, ptr %21, i32 %i.012.i, i32 4
  %24 = ptrtoint ptr %path_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %path_name.i, align 4
  call void @kfree(ptr noundef %25) #14
  %node_name.i = getelementptr %struct.dfs_info3_param, ptr %21, i32 %i.012.i, i32 5
  %26 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node_name.i, align 4
  call void @kfree(ptr noundef %27) #14
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %21) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %out_unlock.cleanup_crit_edge, %if.then18
  %retval.0 = phi i32 [ 0, %if.then18 ], [ %rc.0, %out_unlock.cleanup_crit_edge ], [ %rc.0, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numrefs) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refs) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_cache_entry(ptr noundef %path) unnamed_addr #0 align 64 {
entry:
  %hash = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %path, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash) #14
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hash, align 4, !annotation !268
  %conv = zext i8 %1 to i32
  %call106 = tail call ptr @strchr(ptr noundef %path, i32 noundef %conv)
  %tobool.not107 = icmp eq ptr %call106, null
  br i1 %tobool.not107, label %entry.if.then_crit_edge, label %land.rhs.preheader

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.rhs.preheader:                               ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %call106, i32 1
  %call = tail call ptr @strchr(ptr noundef %incdec.ptr, i32 noundef %conv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.rhs.preheader.if.then_crit_edge, label %land.rhs.1

land.rhs.preheader.if.then_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

land.rhs.1:                                       ; preds = %land.rhs.preheader
  %incdec.ptr.1 = getelementptr i8, ptr %call, i32 1
  %call.1 = tail call ptr @strchr(ptr noundef %incdec.ptr.1, i32 noundef %conv)
  %call.1123 = ptrtoint ptr %call.1 to i32
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %land.rhs.1.if.then_crit_edge, label %if.end11

land.rhs.1.if.then_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %land.rhs.1.if.then_crit_edge, %land.rhs.preheader.if.then_crit_edge, %entry.if.then_crit_edge
  %call4 = tail call i32 @strlen(ptr noundef %path) #17
  %call5 = call fastcc i32 @cache_entry_hash(ptr noundef %path, i32 noundef %call4, ptr noundef nonnull %hash)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %3 = inttoptr i32 %call5 to ptr
  br label %cleanup58

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash, align 4
  %call9 = tail call i32 @strlen(ptr noundef %path) #17
  %call10 = tail call fastcc ptr @__lookup_cache_entry(ptr noundef %path, i32 noundef %5, i32 noundef %call9)
  br label %cleanup58

if.end11:                                         ; preds = %land.rhs.1
  %call12 = tail call i32 @strlen(ptr noundef %path) #17
  %add.ptr = getelementptr i8, ptr %path, i32 %call12
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 -1
  %cmp15117 = icmp ugt ptr %add.ptr13, %call.1
  br i1 %cmp15117, label %while.cond18.preheader.lr.ph, label %if.end11.cleanup58_crit_edge

if.end11.cleanup58_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup58

while.cond18.preheader.lr.ph:                     ; preds = %if.end11
  %sub.ptr.rhs.cast = ptrtoint ptr %path to i32
  br label %while.cond18.preheader

while.cond18.preheader:                           ; preds = %cleanup.while.cond18.preheader_crit_edge, %while.cond18.preheader.lr.ph
  %e.0118 = phi ptr [ %add.ptr13, %while.cond18.preheader.lr.ph ], [ %e.2.lcssa, %cleanup.while.cond18.preheader_crit_edge ]
  %e.0118124 = ptrtoint ptr %e.0118 to i32
  %cmp19110 = icmp ugt ptr %e.0118, %call.1
  br i1 %cmp19110, label %land.rhs21.preheader, label %while.cond18.preheader.while.end29_crit_edge

while.cond18.preheader.while.end29_crit_edge:     ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end29

land.rhs21.preheader:                             ; preds = %while.cond18.preheader
  %uglygep = getelementptr i8, ptr %e.0118, i32 %call.1123
  %6 = sub i32 0, %e.0118124
  %uglygep125 = getelementptr i8, ptr %uglygep, i32 %6
  br label %land.rhs21

land.rhs21:                                       ; preds = %while.body27.land.rhs21_crit_edge, %land.rhs21.preheader
  %e.1111 = phi ptr [ %incdec.ptr28, %while.body27.land.rhs21_crit_edge ], [ %e.0118, %land.rhs21.preheader ]
  %7 = ptrtoint ptr %e.1111 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %e.1111, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %1)
  %cmp24 = icmp eq i8 %8, %1
  br i1 %cmp24, label %while.body27, label %land.rhs21.while.end29.loopexit_crit_edge

land.rhs21.while.end29.loopexit_crit_edge:        ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end29.loopexit

while.body27:                                     ; preds = %land.rhs21
  %incdec.ptr28 = getelementptr i8, ptr %e.1111, i32 -1
  %cmp19 = icmp ugt ptr %incdec.ptr28, %call.1
  br i1 %cmp19, label %while.body27.land.rhs21_crit_edge, label %while.body27.while.end29.loopexit_crit_edge

while.body27.while.end29.loopexit_crit_edge:      ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end29.loopexit

while.body27.land.rhs21_crit_edge:                ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs21

while.end29.loopexit:                             ; preds = %while.body27.while.end29.loopexit_crit_edge, %land.rhs21.while.end29.loopexit_crit_edge
  %e.1.lcssa.ph = phi ptr [ %e.1111, %land.rhs21.while.end29.loopexit_crit_edge ], [ %uglygep125, %while.body27.while.end29.loopexit_crit_edge ]
  %.pre = ptrtoint ptr %e.1.lcssa.ph to i32
  br label %while.end29

while.end29:                                      ; preds = %while.end29.loopexit, %while.cond18.preheader.while.end29_crit_edge
  %e.1.lcssa127.pre-phi = phi i32 [ %.pre, %while.end29.loopexit ], [ %e.0118124, %while.cond18.preheader.while.end29_crit_edge ]
  %e.1.lcssa = phi ptr [ %e.1.lcssa.ph, %while.end29.loopexit ], [ %e.0118, %while.cond18.preheader.while.end29_crit_edge ]
  %cmp30 = icmp eq ptr %e.1.lcssa, %call.1
  br i1 %cmp30, label %while.end29.cleanup58_crit_edge, label %if.end33

while.end29.cleanup58_crit_edge:                  ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup58

if.end33:                                         ; preds = %while.end29
  %add.ptr34 = getelementptr i8, ptr %e.1.lcssa, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr34 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call35 = call fastcc i32 @cache_entry_hash(ptr noundef %path, i32 noundef %sub.ptr.sub, ptr noundef nonnull %hash)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %9 = inttoptr i32 %call35 to ptr
  br label %cleanup58

if.end39:                                         ; preds = %if.end33
  %10 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash, align 4
  %call40 = tail call fastcc ptr @__lookup_cache_entry(ptr noundef %path, i32 noundef %11, i32 noundef %sub.ptr.sub)
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.cond44.preheader, label %if.end39.cleanup58_crit_edge

if.end39.cleanup58_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup58

while.cond44.preheader:                           ; preds = %if.end39
  %cmp45113 = icmp ugt ptr %e.1.lcssa, %call.1
  br i1 %cmp45113, label %land.rhs47.preheader, label %while.cond44.preheader.cleanup_crit_edge

while.cond44.preheader.cleanup_crit_edge:         ; preds = %while.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs47.preheader:                             ; preds = %while.cond44.preheader
  %uglygep126 = getelementptr i8, ptr %e.1.lcssa, i32 %call.1123
  %12 = sub i32 0, %e.1.lcssa127.pre-phi
  %uglygep128 = getelementptr i8, ptr %uglygep126, i32 %12
  br label %land.rhs47

land.rhs47:                                       ; preds = %while.body53.land.rhs47_crit_edge, %land.rhs47.preheader
  %e.2114 = phi ptr [ %incdec.ptr54, %while.body53.land.rhs47_crit_edge ], [ %e.1.lcssa, %land.rhs47.preheader ]
  %13 = ptrtoint ptr %e.2114 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %e.2114, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %1)
  %cmp50.not = icmp eq i8 %14, %1
  br i1 %cmp50.not, label %land.rhs47.cleanup_crit_edge, label %while.body53

land.rhs47.cleanup_crit_edge:                     ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body53:                                     ; preds = %land.rhs47
  %incdec.ptr54 = getelementptr i8, ptr %e.2114, i32 -1
  %cmp45 = icmp ugt ptr %incdec.ptr54, %call.1
  br i1 %cmp45, label %while.body53.land.rhs47_crit_edge, label %while.body53.cleanup_crit_edge

while.body53.cleanup_crit_edge:                   ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body53.land.rhs47_crit_edge:                ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs47

cleanup:                                          ; preds = %while.body53.cleanup_crit_edge, %land.rhs47.cleanup_crit_edge, %while.cond44.preheader.cleanup_crit_edge
  %e.2.lcssa = phi ptr [ %e.1.lcssa, %while.cond44.preheader.cleanup_crit_edge ], [ %e.2114, %land.rhs47.cleanup_crit_edge ], [ %uglygep128, %while.body53.cleanup_crit_edge ]
  %cmp15 = icmp ugt ptr %e.2.lcssa, %call.1
  br i1 %cmp15, label %cleanup.while.cond18.preheader_crit_edge, label %cleanup.cleanup58_crit_edge

cleanup.cleanup58_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup58

cleanup.while.cond18.preheader_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond18.preheader

cleanup58:                                        ; preds = %cleanup.cleanup58_crit_edge, %if.end39.cleanup58_crit_edge, %if.then37, %while.end29.cleanup58_crit_edge, %if.end11.cleanup58_crit_edge, %if.end, %if.then7
  %retval.2 = phi ptr [ %3, %if.then7 ], [ %call10, %if.end ], [ %9, %if.then37 ], [ inttoptr (i32 -17 to ptr), %if.end11.cleanup58_crit_edge ], [ inttoptr (i32 -17 to ptr), %cleanup.cleanup58_crit_edge ], [ inttoptr (i32 -17 to ptr), %while.end29.cleanup58_crit_edge ], [ %call40, %if.end39.cleanup58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash) #14
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_referral(ptr noundef %path, ptr nocapture noundef readonly %ce, ptr nocapture noundef %ref, ptr noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_referral.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_referral, %land.lhs.true)) #14
          to label %do.end13 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @setup_referral._rs, ptr noundef nonnull @.str.104) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_referral.descriptor, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.104) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %1 = call ptr @memset(ptr %ref, i32 0, i32 28)
  %call14 = tail call noalias ptr @kstrdup(ptr noundef %path, i32 noundef 2592) #14
  %path_name = getelementptr inbounds %struct.dfs_info3_param, ptr %ref, i32 0, i32 4
  %2 = ptrtoint ptr %path_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call14, ptr %path_name, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.end13.cleanup_crit_edge, label %if.end18

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %do.end13
  %call19 = tail call noalias ptr @kstrdup(ptr noundef %target, i32 noundef 2592) #14
  %node_name = getelementptr inbounds %struct.dfs_info3_param, ptr %ref, i32 0, i32 5
  %3 = ptrtoint ptr %node_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call19, ptr %node_name, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %path_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path_name, align 4
  tail call void @kfree(ptr noundef %5) #14
  %6 = ptrtoint ptr %path_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %path_name, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %path_consumed = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 7
  %7 = ptrtoint ptr %path_consumed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %path_consumed, align 8
  %path_consumed24 = getelementptr inbounds %struct.dfs_info3_param, ptr %ref, i32 0, i32 1
  %9 = ptrtoint ptr %path_consumed24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %path_consumed24, align 4
  %ttl = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 3
  %10 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ttl, align 8
  %ttl25 = getelementptr inbounds %struct.dfs_info3_param, ptr %ref, i32 0, i32 6
  %12 = ptrtoint ptr %ttl25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ttl25, align 4
  %srvtype = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 4
  %13 = ptrtoint ptr %srvtype to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %srvtype, align 4
  %server_type = getelementptr inbounds %struct.dfs_info3_param, ptr %ref, i32 0, i32 2
  %15 = ptrtoint ptr %server_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %server_type, align 4
  %ref_flags = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 5
  %16 = ptrtoint ptr %ref_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ref_flags, align 8
  %ref_flag = getelementptr inbounds %struct.dfs_info3_param, ptr %ref, i32 0, i32 3
  %18 = ptrtoint ptr %ref_flag to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ref_flag, align 4
  %hdr_flags = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 2
  %19 = ptrtoint ptr %hdr_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hdr_flags, align 4
  %21 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ref, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -12, %if.then22 ], [ -12, %do.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_targets(ptr noundef readonly %ce, ptr noundef %tl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_list = getelementptr inbounds %struct.dfs_cache_tgt_list, ptr %tl, i32 0, i32 1
  %0 = ptrtoint ptr %tl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tl, align 4
  %1 = ptrtoint ptr %tl_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %tl_list, ptr %tl_list, align 4
  %prev.i = getelementptr inbounds %struct.dfs_cache_tgt_list, ptr %tl, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tl_list, ptr %prev.i, align 4
  %tlist = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 9
  %3 = ptrtoint ptr %tlist to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn78 = load ptr, ptr %tlist, align 4
  %cmp.not80 = icmp eq ptr %.pn78, %tlist
  br i1 %cmp.not80, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tgthint = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn81 = phi ptr [ %.pn78, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %t.082 = getelementptr i8, ptr %.pn81, i32 -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 16) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.err_free_it_crit_edge, label %if.end

for.body.err_free_it_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_it

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %t.082 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t.082, align 4
  %call2 = tail call noalias ptr @kstrdup(ptr noundef %6, i32 noundef 2592) #14
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %err_free_it

if.end6:                                          ; preds = %if.end
  %path_consumed = getelementptr i8, ptr %.pn81, i32 -4
  %8 = ptrtoint ptr %path_consumed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %path_consumed, align 4
  %it_path_consumed = getelementptr inbounds %struct.dfs_cache_tgt_iterator, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %it_path_consumed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %it_path_consumed, align 4
  %11 = ptrtoint ptr %tgthint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tgthint, align 8
  %cmp7 = icmp eq ptr %12, %t.082
  %it_list = getelementptr inbounds %struct.dfs_cache_tgt_iterator, ptr %call7.i.i, i32 0, i32 2
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %tl_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tl_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %it_list, ptr noundef %tl_list, ptr noundef %14) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end6
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i71 = tail call zeroext i1 @__list_add_valid(ptr noundef %it_list, ptr noundef %16, ptr noundef %tl_list) #14
  br i1 %call.i.i71, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.end.i.i
  %prev.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i ], [ %prev.i, %if.else.for.inc.sink.split_crit_edge ]
  %tl_list.sink = phi ptr [ %14, %if.end.i.i ], [ %tl_list, %if.else.for.inc.sink.split_crit_edge ]
  %.sink90 = phi ptr [ %tl_list, %if.end.i.i ], [ %16, %if.else.for.inc.sink.split_crit_edge ]
  %17 = ptrtoint ptr %prev.i.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %it_list, ptr %prev.i.sink, align 4
  %18 = ptrtoint ptr %it_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tl_list.sink, ptr %it_list, align 8
  %prev3.i.i72 = getelementptr inbounds %struct.dfs_cache_tgt_iterator, ptr %call7.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i72 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.sink90, ptr %prev3.i.i72, align 4
  %20 = ptrtoint ptr %.sink90 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %it_list, ptr %.sink90, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then8.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn81, align 4
  %cmp.not = icmp eq ptr %.pn, %tlist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %numtgts = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 8
  %22 = ptrtoint ptr %numtgts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numtgts, align 4
  %24 = ptrtoint ptr %tl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tl, align 4
  br label %cleanup

err_free_it:                                      ; preds = %if.then5, %for.body.err_free_it_crit_edge
  %25 = ptrtoint ptr %tl_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tl_list, align 4
  %cmp27.not83 = icmp eq ptr %26, %tl_list
  br i1 %cmp27.not83, label %err_free_it.cleanup_crit_edge, label %err_free_it.for.body29_crit_edge

err_free_it.for.body29_crit_edge:                 ; preds = %err_free_it
  br label %for.body29

err_free_it.cleanup_crit_edge:                    ; preds = %err_free_it
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body29:                                       ; preds = %list_del.exit.for.body29_crit_edge, %err_free_it.for.body29_crit_edge
  %.pn68.in84 = phi ptr [ %.pn68, %list_del.exit.for.body29_crit_edge ], [ %26, %err_free_it.for.body29_crit_edge ]
  %it.0 = getelementptr i8, ptr %.pn68.in84, i32 -8
  %27 = ptrtoint ptr %.pn68.in84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn68 = load ptr, ptr %.pn68.in84, align 4
  %call.i.i74 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn68.in84) #14
  br i1 %call.i.i74, label %if.end.i.i75, label %for.body29.list_del.exit_crit_edge

for.body29.list_del.exit_crit_edge:               ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i75:                                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn68.in84, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %.pn68.in84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn68.in84, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i75, %for.body29.list_del.exit_crit_edge
  %34 = ptrtoint ptr %.pn68.in84 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn68.in84, align 4
  %prev.i76 = getelementptr inbounds %struct.list_head, ptr %.pn68.in84, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i76, align 4
  %36 = ptrtoint ptr %it.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %it.0, align 4
  tail call void @kfree(ptr noundef %37) #14
  tail call void @kfree(ptr noundef %it.0) #14
  %cmp27.not = icmp eq ptr %.pn68, %tl_list
  br i1 %cmp27.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body29_crit_edge

list_del.exit.for.body29_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body29

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %err_free_it.cleanup_crit_edge, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %err_free_it.cleanup_crit_edge ], [ -12, %list_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dfs_cache_noreq_find(ptr noundef %path, ptr noundef %ref, ptr noundef %tgt_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_noreq_find.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_noreq_find, %land.lhs.true)) #14
          to label %do.end13 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_noreq_find._rs, ptr noundef nonnull @.str.15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_noreq_find.descriptor, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15, ptr noundef %path) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  tail call void @down_read(ptr noundef nonnull @htable_rw_lock) #14
  %call14 = tail call fastcc ptr @lookup_cache_entry(ptr noundef %path)
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call14 to i32
  br label %out_unlock

if.end18:                                         ; preds = %do.end13
  %tobool19.not = icmp eq ptr %ref, null
  br i1 %tobool19.not, label %if.end18.land.lhs.true26_crit_edge, label %if.then20

if.end18.land.lhs.true26_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26

if.then20:                                        ; preds = %if.end18
  %tgthint.i = getelementptr inbounds %struct.cache_entry, ptr %call14, i32 0, i32 10
  %2 = ptrtoint ptr %tgthint.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgthint.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then20.if.end24_crit_edge, label %cond.true.i

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

cond.true.i:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %if.end24

if.end24:                                         ; preds = %cond.true.i, %if.then20.if.end24_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ inttoptr (i32 -2 to ptr), %if.then20.if.end24_crit_edge ]
  %call22 = tail call fastcc i32 @setup_referral(ptr noundef %path, ptr noundef %call14, ptr noundef nonnull %ref, ptr noundef %cond.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool25.not = icmp eq i32 %call22, 0
  br i1 %tobool25.not, label %if.end24.land.lhs.true26_crit_edge, label %if.end24.out_unlock_crit_edge

if.end24.out_unlock_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end24.land.lhs.true26_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end24.land.lhs.true26_crit_edge, %if.end18.land.lhs.true26_crit_edge
  %tobool27.not = icmp eq ptr %tgt_list, null
  br i1 %tobool27.not, label %land.lhs.true26.out_unlock_crit_edge, label %if.then28

land.lhs.true26.out_unlock_crit_edge:             ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call fastcc i32 @get_targets(ptr noundef %call14, ptr noundef nonnull %tgt_list)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then28, %land.lhs.true26.out_unlock_crit_edge, %if.end24.out_unlock_crit_edge, %if.then16
  %rc.1 = phi i32 [ %1, %if.then16 ], [ %call22, %if.end24.out_unlock_crit_edge ], [ %call29, %if.then28 ], [ 0, %land.lhs.true26.out_unlock_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @htable_rw_lock) #14
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dfs_cache_update_tgthint(i32 noundef %xid, ptr noundef %ses, ptr noundef %cp, i32 noundef %remap, ptr noundef %path, ptr nocapture noundef readonly %it) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dfs_cache_canonical_path(ptr noundef %path, ptr noundef %cp, i32 noundef %remap)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body3.do.end18_crit_edge, label %do.body5

do.body3.do.end18_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

do.body5:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_update_tgthint.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_update_tgthint, %land.lhs.true)) #14
          to label %do.end18 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body5
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_update_tgthint._rs, ptr noundef nonnull @.str.17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end18_crit_edge, label %if.then12

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_update_tgthint.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17, ptr noundef %call) #14
  br label %do.end18

do.end18:                                         ; preds = %if.then12, %land.lhs.true.do.end18_crit_edge, %do.body5, %do.body3.do.end18_crit_edge
  %call19 = tail call fastcc i32 @cache_refresh_path(i32 noundef %xid, ptr noundef %ses, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end18.out_free_path_crit_edge

do.end18.out_free_path_crit_edge:                 ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_path

if.end22:                                         ; preds = %do.end18
  tail call void @down_write(ptr noundef nonnull @htable_rw_lock) #14
  %call23 = tail call fastcc ptr @lookup_cache_entry(ptr noundef %call)
  %cmp.i110 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call23 to i32
  br label %out_unlock

if.end27:                                         ; preds = %if.end22
  %tgthint = getelementptr inbounds %struct.cache_entry, ptr %call23, i32 0, i32 10
  %3 = ptrtoint ptr %tgthint to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tgthint, align 8
  %5 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %it, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %call28 = tail call i32 @strcasecmp(ptr noundef %6, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.out_unlock_crit_edge, label %if.end39, !prof !262

if.end27.out_unlock_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end39:                                         ; preds = %if.end27
  %tlist = getelementptr inbounds %struct.cache_entry, ptr %call23, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end39
  %.pn.in = phi ptr [ %tlist, %if.end39 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %tlist
  br i1 %cmp.not, label %for.cond.out_unlock_crit_edge, label %for.body

for.cond.out_unlock_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

for.body:                                         ; preds = %for.cond
  %t.0 = getelementptr i8, ptr %.pn, i32 -8
  %10 = ptrtoint ptr %t.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t.0, align 4
  %call46 = tail call i32 @strcasecmp(ptr noundef %11, ptr noundef %6)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then48:                                        ; preds = %for.body
  %t.0.le = getelementptr i8, ptr %.pn, i32 -8
  %12 = ptrtoint ptr %tgthint to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %t.0.le, ptr %tgthint, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and52 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then48.out_unlock_crit_edge, label %do.body55

if.then48.out_unlock_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

do.body55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_update_tgthint.descriptor.20, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_update_tgthint, %land.lhs.true67)) #14
          to label %out_unlock [label %land.lhs.true67], !srcloc !267

land.lhs.true67:                                  ; preds = %do.body55
  %call68 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_update_tgthint._rs.19, ptr noundef nonnull @.str.17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.out_unlock_crit_edge, label %if.then70

land.lhs.true67.out_unlock_crit_edge:             ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then70:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %it, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_update_tgthint.descriptor.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17, ptr noundef %15) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.then70, %land.lhs.true67.out_unlock_crit_edge, %do.body55, %if.then48.out_unlock_crit_edge, %for.cond.out_unlock_crit_edge, %if.end27.out_unlock_crit_edge, %if.then25
  %rc.0 = phi i32 [ %2, %if.then25 ], [ 0, %if.end27.out_unlock_crit_edge ], [ 0, %if.then70 ], [ 0, %land.lhs.true67.out_unlock_crit_edge ], [ 0, %if.then48.out_unlock_crit_edge ], [ 0, %do.body55 ], [ 0, %for.cond.out_unlock_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @htable_rw_lock) #14
  br label %out_free_path

out_free_path:                                    ; preds = %out_unlock, %do.end18.out_free_path_crit_edge
  %rc.1 = phi i32 [ %call19, %do.end18.out_free_path_crit_edge ], [ %rc.0, %out_unlock ]
  tail call void @kfree(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free_path, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %rc.1, %out_free_path ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dfs_cache_noreq_update_tgthint(ptr noundef %path, ptr noundef readonly %it) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %it, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body1.do.end16_crit_edge, label %do.body4

do.body1.do.end16_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

do.body4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_noreq_update_tgthint.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_noreq_update_tgthint, %land.lhs.true)) #14
          to label %do.end16 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_noreq_update_tgthint._rs, ptr noundef nonnull @.str.22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end16_crit_edge, label %if.then10

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_noreq_update_tgthint.descriptor, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.22, ptr noundef %path) #14
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %land.lhs.true.do.end16_crit_edge, %do.body4, %do.body1.do.end16_crit_edge
  tail call void @down_write(ptr noundef nonnull @htable_rw_lock) #14
  %call17 = tail call fastcc ptr @lookup_cache_entry(ptr noundef %path)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call17 to i32
  br label %out_unlock

if.end21:                                         ; preds = %do.end16
  %tgthint = getelementptr inbounds %struct.cache_entry, ptr %call17, i32 0, i32 10
  %2 = ptrtoint ptr %tgthint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgthint, align 8
  %4 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %it, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call22 = tail call i32 @strcasecmp(ptr noundef %5, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.out_unlock_crit_edge, label %if.end33, !prof !269

if.end21.out_unlock_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end33:                                         ; preds = %if.end21
  %tlist = getelementptr inbounds %struct.cache_entry, ptr %call17, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end33
  %.pn.in = phi ptr [ %tlist, %if.end33 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %tlist
  br i1 %cmp.not, label %for.cond.out_unlock_crit_edge, label %for.body

for.cond.out_unlock_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

for.body:                                         ; preds = %for.cond
  %t.0 = getelementptr i8, ptr %.pn, i32 -8
  %9 = ptrtoint ptr %t.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t.0, align 4
  %call40 = tail call i32 @strcasecmp(ptr noundef %10, ptr noundef %5)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then42:                                        ; preds = %for.body
  %t.0.le = getelementptr i8, ptr %.pn, i32 -8
  %11 = ptrtoint ptr %tgthint to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %t.0.le, ptr %tgthint, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %12 = load i32, ptr @cifsFYI, align 4
  %and46 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then42.out_unlock_crit_edge, label %do.body49

if.then42.out_unlock_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

do.body49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_noreq_update_tgthint.descriptor.24, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_noreq_update_tgthint, %land.lhs.true61)) #14
          to label %out_unlock [label %land.lhs.true61], !srcloc !267

land.lhs.true61:                                  ; preds = %do.body49
  %call62 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_noreq_update_tgthint._rs.23, ptr noundef nonnull @.str.22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true61.out_unlock_crit_edge, label %if.then64

land.lhs.true61.out_unlock_crit_edge:             ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %it, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_noreq_update_tgthint.descriptor.24, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.22, ptr noundef %14) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.then64, %land.lhs.true61.out_unlock_crit_edge, %do.body49, %if.then42.out_unlock_crit_edge, %for.cond.out_unlock_crit_edge, %if.end21.out_unlock_crit_edge, %if.then19
  %rc.0 = phi i32 [ %1, %if.then19 ], [ 0, %if.end21.out_unlock_crit_edge ], [ 0, %if.then64 ], [ 0, %land.lhs.true61.out_unlock_crit_edge ], [ 0, %if.then42.out_unlock_crit_edge ], [ 0, %do.body49 ], [ 0, %for.cond.out_unlock_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @htable_rw_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dfs_cache_get_tgt_referral(ptr noundef %path, ptr noundef readonly %it, ptr noundef %ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %it, null
  %tobool1.not = icmp eq ptr %ref, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body2.do.end17_crit_edge, label %do.body5

do.body2.do.end17_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

do.body5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_get_tgt_referral.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_get_tgt_referral, %land.lhs.true)) #14
          to label %do.end17 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body5
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_get_tgt_referral._rs, ptr noundef nonnull @.str.25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end17_crit_edge, label %if.then11

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_get_tgt_referral.descriptor, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25, ptr noundef %path) #14
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %land.lhs.true.do.end17_crit_edge, %do.body5, %do.body2.do.end17_crit_edge
  tail call void @down_read(ptr noundef nonnull @htable_rw_lock) #14
  %call18 = tail call fastcc ptr @lookup_cache_entry(ptr noundef %path)
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %do.body24

if.then20:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call18 to i32
  br label %out_unlock

do.body24:                                        ; preds = %do.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and25 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end52_crit_edge, label %do.body28

do.body24.do.end52_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_get_tgt_referral.descriptor.27, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_get_tgt_referral, %land.lhs.true40)) #14
          to label %do.end52 [label %land.lhs.true40], !srcloc !267

land.lhs.true40:                                  ; preds = %do.body28
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_get_tgt_referral._rs.26, ptr noundef nonnull @.str.25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end52_crit_edge, label %if.then43

land.lhs.true40.do.end52_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end52

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %it, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_get_tgt_referral.descriptor.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25, ptr noundef %4) #14
  br label %do.end52

do.end52:                                         ; preds = %if.then43, %land.lhs.true40.do.end52_crit_edge, %do.body28, %do.body24.do.end52_crit_edge
  %5 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %it, align 4
  %call54 = tail call fastcc i32 @setup_referral(ptr noundef %path, ptr noundef %call18, ptr noundef nonnull %ref, ptr noundef %6)
  br label %out_unlock

out_unlock:                                       ; preds = %do.end52, %if.then20
  %rc.0 = phi i32 [ %1, %if.then20 ], [ %call54, %do.end52 ]
  tail call void @up_read(ptr noundef nonnull @htable_rw_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dfs_cache_add_refsrv_session(ptr noundef readonly %mount_id, ptr noundef %ses) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mount_id, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %lor.lhs.false

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

lor.lhs.false:                                    ; preds = %entry
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %mount_id, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  %tobool1.not = icmp eq ptr %ses, null
  %spec.select = or i1 %tobool1.not, %cmp.i.i
  br i1 %spec.select, label %lor.lhs.false.land.rhs_crit_edge, label %if.end40

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b119 = load i1, ptr @dfs_cache_add_refsrv_session.__already_done, align 1
  br i1 %.b119, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !262

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @dfs_cache_add_refsrv_session.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1194, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @mount_group_list_lock, i32 noundef 0) #14
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end40
  %mg.0.in.i.i.i = phi ptr [ @mount_group_list, %if.end40 ], [ %mg.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %0 = ptrtoint ptr %mg.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mg.0.i.i.i = load ptr, ptr %mg.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %mg.0.i.i.i, @mount_group_list
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.end.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %id1.i.i.i = getelementptr inbounds %struct.mount_group, ptr %mg.0.i.i.i, i32 0, i32 1
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %id1.i.i.i, ptr noundef nonnull dereferenceable(16) %mount_id, i32 16) #20
  %cmp.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %find_mount_group_locked.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i.i

find_mount_group_locked.exit.i.i:                 ; preds = %for.body.i.i.i
  %cmp.i.i.i = icmp ugt ptr %mg.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %find_mount_group_locked.exit.i.i.if.end.i.i_crit_edge, label %find_mount_group_locked.exit.i.i.__get_mount_group_locked.exit.i_crit_edge

find_mount_group_locked.exit.i.i.__get_mount_group_locked.exit.i_crit_edge: ; preds = %find_mount_group_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__get_mount_group_locked.exit.i

find_mount_group_locked.exit.i.i.if.end.i.i_crit_edge: ; preds = %find_mount_group_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %find_mount_group_locked.exit.i.i.if.end.i.i_crit_edge, %for.cond.i.i.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 340) #19
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.land.rhs50_crit_edge, label %if.end5.i.i

if.end.i.i.land.rhs50_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs50

if.end5.i.i:                                      ; preds = %if.end.i.i
  %refcount.i.i = getelementptr inbounds %struct.mount_group, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount.i.i, align 8
  %id6.i.i = getelementptr inbounds %struct.mount_group, ptr %call7.i.i.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %id6.i.i, ptr %mount_id, i32 16)
  %num_sessions.i.i = getelementptr inbounds %struct.mount_group, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %num_sessions.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_sessions.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.mount_group, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @__get_mount_group_locked.__key, i16 noundef signext 3) #14
  %5 = load ptr, ptr @mount_group_list, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @mount_group_list, ptr noundef %5) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end5.i.i.__get_mount_group_locked.exit.i_crit_edge

if.end5.i.i.__get_mount_group_locked.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__get_mount_group_locked.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mount_group_list, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @mount_group_list, align 4
  br label %__get_mount_group_locked.exit.i

__get_mount_group_locked.exit.i:                  ; preds = %if.end.i.i.i.i, %if.end5.i.i.__get_mount_group_locked.exit.i_crit_edge, %find_mount_group_locked.exit.i.i.__get_mount_group_locked.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %mg.0.i.i.i, %find_mount_group_locked.exit.i.i.__get_mount_group_locked.exit.i_crit_edge ], [ %call7.i.i.i, %if.end5.i.i.__get_mount_group_locked.exit.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i.i ]
  %cmp.i.i122 = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i122, label %__get_mount_group_locked.exit.i.land.rhs50_crit_edge, label %if.then.i

__get_mount_group_locked.exit.i.land.rhs50_crit_edge: ; preds = %__get_mount_group_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs50

if.then.i:                                        ; preds = %__get_mount_group_locked.exit.i
  %refcount.i = getelementptr inbounds %struct.mount_group, ptr %retval.0.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !270
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !269

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end98_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !262

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end98_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %if.end98

land.rhs50:                                       ; preds = %__get_mount_group_locked.exit.i.land.rhs50_crit_edge, %if.end.i.i.land.rhs50_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mount_group_list_lock) #14
  %.b117118 = load i1, ptr @dfs_cache_add_refsrv_session.__already_done.29, align 1
  br i1 %.b117118, label %land.rhs50.cleanup_crit_edge, label %if.then61, !prof !262

land.rhs50.cleanup_crit_edge:                     ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then61:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @dfs_cache_add_refsrv_session.__already_done.29, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1198, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end98:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end98_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mount_group_list_lock) #14
  %lock = getelementptr inbounds %struct.mount_group, ptr %retval.0.i.i, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %num_sessions = getelementptr inbounds %struct.mount_group, ptr %retval.0.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %num_sessions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_sessions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %cmp = icmp ult i32 %12, 64
  br i1 %cmp, label %if.then99, label %if.end98.if.end101_crit_edge

if.end98.if.end101_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then99:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nuw nsw i32 %12, 1
  %13 = ptrtoint ptr %num_sessions to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc, ptr %num_sessions, align 4
  %arrayidx = getelementptr %struct.mount_group, ptr %retval.0.i.i, i32 0, i32 2, i32 %12
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ses, ptr %arrayidx, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end98.if.end101_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %refcount = getelementptr inbounds %struct.mount_group, ptr %retval.0.i.i, i32 0, i32 6
  tail call fastcc void @kref_put(ptr noundef %refcount)
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then61, %land.rhs50.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !271
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !272
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !262

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !273
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -336
  tail call void @mutex_lock_nested(ptr noundef nonnull @mount_group_list_lock, i32 noundef 0) #14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %kref, i32 -332
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i, align 4
  %prev.i.i = getelementptr i8, ptr %kref, i32 -332
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @mount_group_list_lock) #14
  %num_sessions.i.i = getelementptr i8, ptr %kref, i32 -56
  %9 = ptrtoint ptr %num_sessions.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_sessions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.i.i = icmp sgt i32 %10, 0
  br i1 %cmp5.i.i, label %list_del.exit.i.for.body.i.i_crit_edge, label %list_del.exit.i.mount_group_release.exit_crit_edge

list_del.exit.i.mount_group_release.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mount_group_release.exit

list_del.exit.i.for.body.i.i_crit_edge:           ; preds = %list_del.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %list_del.exit.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %list_del.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mount_group, ptr %add.ptr.i, i32 0, i32 2, i32 %i.06.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @cifs_put_smb_ses(ptr noundef %12) #14
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %13 = ptrtoint ptr %num_sessions.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_sessions.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %14
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.mount_group_release.exit_crit_edge

for.body.i.i.mount_group_release.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mount_group_release.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

mount_group_release.exit:                         ; preds = %for.body.i.i.mount_group_release.exit_crit_edge, %list_del.exit.i.mount_group_release.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #14
  br label %return

return:                                           ; preds = %mount_group_release.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dfs_cache_put_refsrv_sessions(ptr noundef readonly %mount_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mount_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %mount_id, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @mount_group_list_lock, i32 noundef 0) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %mg.0.in.i = phi ptr [ @mount_group_list, %if.end ], [ %mg.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mg.0.i = load ptr, ptr %mg.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mg.0.i, @mount_group_list
  br i1 %cmp.not.i, label %for.cond.i.if.then3_crit_edge, label %for.body.i

for.cond.i.if.then3_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr inbounds %struct.mount_group, ptr %mg.0.i, i32 0, i32 1
  %bcmp.i.i9 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %id1.i, ptr noundef nonnull dereferenceable(16) %mount_id, i32 16) #20
  %cmp.i.i10 = icmp eq i32 %bcmp.i.i9, 0
  br i1 %cmp.i.i10, label %find_mount_group_locked.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_mount_group_locked.exit:                     ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %mg.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_mount_group_locked.exit.if.then3_crit_edge, label %if.end4

find_mount_group_locked.exit.if.then3_crit_edge:  ; preds = %find_mount_group_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.then3:                                         ; preds = %find_mount_group_locked.exit.if.then3_crit_edge, %for.cond.i.if.then3_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mount_group_list_lock) #14
  br label %cleanup

if.end4:                                          ; preds = %find_mount_group_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @mount_group_list_lock) #14
  %refcount = getelementptr inbounds %struct.mount_group, ptr %mg.0.i, i32 0, i32 6
  tail call fastcc void @kref_put(ptr noundef %refcount)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dfs_cache_get_tgt_share(ptr noundef %path, ptr noundef readonly %it, ptr noundef %share, ptr noundef writeonly %prefix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %it, null
  %tobool1.not = icmp eq ptr %path, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool3.not = icmp eq ptr %share, null
  %or.cond118 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %prefix, null
  %or.cond119 = or i1 %or.cond118, %tobool5.not
  br i1 %or.cond119, label %entry.cleanup_crit_edge, label %lor.lhs.false6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false6:                                   ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %path) #17
  %it_path_consumed = getelementptr inbounds %struct.dfs_cache_tgt_iterator, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %it_path_consumed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it_path_consumed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %2 = ptrtoint ptr %share to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %share, align 4
  %3 = ptrtoint ptr %prefix to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %prefix, align 4
  %4 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %it, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 92, label %if.end.if.end13_crit_edge
    i8 47, label %if.end.if.end13_crit_edge124
  ]

if.end.if.end13_crit_edge124:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.end.if.end13_crit_edge124
  %add.ptr = getelementptr i8, ptr %5, i32 1
  %call16 = tail call ptr @strchr(ptr noundef %add.ptr, i32 noundef %conv)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %add.ptr20 = getelementptr i8, ptr %call16, i32 1
  %call22 = tail call ptr @strchrnul(ptr noundef %add.ptr20, i32 noundef %conv) #14
  %9 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %it, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call22 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call25 = tail call ptr @kstrndup(ptr noundef %10, i32 noundef %sub.ptr.sub, i32 noundef 3264) #14
  %11 = ptrtoint ptr %share to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %share, align 4
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end19.cleanup_crit_edge, label %if.end28

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %12 = ptrtoint ptr %call22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool29.not = icmp ne i8 %13, 0
  %spec.select.idx = zext i1 %tobool29.not to i32
  %spec.select = getelementptr i8, ptr %call22, i32 %spec.select.idx
  %14 = ptrtoint ptr %it_path_consumed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %it_path_consumed, align 4
  %add.ptr33 = getelementptr i8, ptr %path, i32 %15
  %16 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr33, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %7)
  %cmp36 = icmp eq i8 %17, %7
  %p.0.idx = zext i1 %cmp36 to i32
  %p.0 = getelementptr i8, ptr %add.ptr33, i32 %p.0.idx
  %18 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %it, align 4
  %call43 = tail call i32 @strlen(ptr noundef %19) #17
  %add.ptr44 = getelementptr i8, ptr %19, i32 %call43
  %sub.ptr.lhs.cast45 = ptrtoint ptr %add.ptr44 to i32
  %sub.ptr.rhs.cast46 = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub47 = sub i32 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %call48 = tail call i32 @strlen(ptr noundef nonnull %path) #17
  %add.ptr49 = getelementptr i8, ptr %path, i32 %call48
  %sub.ptr.lhs.cast50 = ptrtoint ptr %add.ptr49 to i32
  %sub.ptr.rhs.cast51 = ptrtoint ptr %p.0 to i32
  %sub.ptr.sub52 = sub i32 %sub.ptr.lhs.cast50, %sub.ptr.rhs.cast51
  %tobool53.not = icmp eq ptr %add.ptr44, %spec.select
  %tobool55.not = icmp eq ptr %add.ptr49, %p.0
  %or.cond120 = select i1 %tobool53.not, i1 %tobool55.not, i1 false
  br i1 %or.cond120, label %if.end28.cleanup_crit_edge, label %if.then56

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then56:                                        ; preds = %if.end28
  %add = add i32 %sub.ptr.sub52, %sub.ptr.sub47
  %add57 = add i32 %add, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add57, i32 noundef 3264) #21
  %20 = ptrtoint ptr %prefix to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %prefix, align 4
  %tobool59.not = icmp eq ptr %call9.i, null
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %share to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %share, align 4
  tail call void @kfree(ptr noundef %22) #14
  %23 = ptrtoint ptr %share to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %share, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.then56
  br i1 %tobool53.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %call65 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i, i32 noundef %add57, ptr noundef nonnull @.str.30, i32 noundef %sub.ptr.sub47, ptr noundef %spec.select, i32 noundef %conv, i32 noundef %sub.ptr.sub52, ptr noundef %p.0) #14
  br label %cleanup

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %call66 = tail call i32 @strscpy(ptr noundef nonnull %call9.i, ptr noundef %p.0, i32 noundef %add57) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then63, %if.then60, %if.end28.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then60 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dfs_cache_remount_fs(ptr noundef %cifs_sb) local_unnamed_addr #0 align 64 {
entry:
  %sessions = alloca [65 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %sessions) #14
  %0 = call ptr @memset(ptr %sessions, i32 0, i32 260)
  %tobool.not = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %master_tlink = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 2
  %1 = ptrtoint ptr %master_tlink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master_tlink, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @cifs_sb_master_tcon(ptr noundef nonnull %cifs_sb) #14
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ses, align 8
  %server2 = getelementptr inbounds %struct.cifs_ses, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server2, align 8
  %origin_fullpath = getelementptr inbounds %struct.TCP_Server_Info, ptr %6, i32 0, i32 91
  %7 = ptrtoint ptr %origin_fullpath to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %origin_fullpath, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %do.body5, label %if.end22

do.body5:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body5.cleanup_crit_edge, label %do.body8

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_remount_fs.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_remount_fs, %land.lhs.true)) #14
          to label %cleanup [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body8
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_remount_fs._rs, ptr noundef nonnull @.str.31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %if.then15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_remount_fs.descriptor, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %dfs_mount_id = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 10
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dfs_mount_id, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %do.body26, label %if.end55

do.body26:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and27 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %do.body30

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_remount_fs.descriptor.34, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_remount_fs, %land.lhs.true42)) #14
          to label %cleanup [label %land.lhs.true42], !srcloc !267

land.lhs.true42:                                  ; preds = %do.body30
  %call43 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_remount_fs._rs.33, ptr noundef nonnull @.str.31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup_crit_edge, label %if.then45

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_remount_fs.descriptor.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.end55:                                         ; preds = %if.end22
  tail call void @mutex_lock_nested(ptr noundef nonnull @mount_group_list_lock, i32 noundef 0) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end55
  %mg.0.in.i = phi ptr [ @mount_group_list, %if.end55 ], [ %mg.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %mg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %mg.0.i = load ptr, ptr %mg.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mg.0.i, @mount_group_list
  br i1 %cmp.not.i, label %for.cond.i.if.then59_crit_edge, label %for.body.i

for.cond.i.if.then59_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr inbounds %struct.mount_group, ptr %mg.0.i, i32 0, i32 1
  %bcmp.i.i122 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %id1.i, ptr noundef dereferenceable(16) %dfs_mount_id, i32 16) #20
  %cmp.i.i123 = icmp eq i32 %bcmp.i.i122, 0
  br i1 %cmp.i.i123, label %find_mount_group_locked.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

find_mount_group_locked.exit:                     ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %mg.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_mount_group_locked.exit.if.then59_crit_edge, label %if.end91

find_mount_group_locked.exit.if.then59_crit_edge: ; preds = %find_mount_group_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

if.then59:                                        ; preds = %find_mount_group_locked.exit.if.then59_crit_edge, %for.cond.i.if.then59_crit_edge
  %retval.0.i124129 = phi ptr [ %mg.0.i, %find_mount_group_locked.exit.if.then59_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.i.if.then59_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @mount_group_list_lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %12 = load i32, ptr @cifsFYI, align 4
  %and62 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then59.do.end89_crit_edge, label %do.body65

if.then59.do.end89_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end89

do.body65:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dfs_cache_remount_fs.descriptor.37, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dfs_cache_remount_fs, %land.lhs.true77)) #14
          to label %do.end89 [label %land.lhs.true77], !srcloc !267

land.lhs.true77:                                  ; preds = %do.body65
  %call78 = tail call i32 @___ratelimit(ptr noundef nonnull @dfs_cache_remount_fs._rs.36, ptr noundef nonnull @.str.31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end89_crit_edge, label %if.then80

land.lhs.true77.do.end89_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end89

if.then80:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dfs_cache_remount_fs.descriptor.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.31) #14
  br label %do.end89

do.end89:                                         ; preds = %if.then80, %land.lhs.true77.do.end89_crit_edge, %do.body65, %if.then59.do.end89_crit_edge
  %13 = ptrtoint ptr %retval.0.i124129 to i32
  br label %cleanup

if.end91:                                         ; preds = %find_mount_group_locked.exit
  %refcount = getelementptr inbounds %struct.mount_group, ptr %mg.0.i, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !270
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end91.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !269

if.end91.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end91
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !262

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end91.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end91.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mount_group_list_lock) #14
  %lock = getelementptr inbounds %struct.mount_group, ptr %mg.0.i, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %sessions92 = getelementptr inbounds %struct.mount_group, ptr %mg.0.i, i32 0, i32 2
  %num_sessions = getelementptr inbounds %struct.mount_group, ptr %mg.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %num_sessions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_sessions, align 4
  %mul = shl i32 %17, 2
  %18 = call ptr @memcpy(ptr %sessions, ptr %sessions92, i32 %mul)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  tail call void @cifs_autodisable_serverino(ptr noundef nonnull %cifs_sb) #14
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %19 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mnt_cifs_flags, align 4
  %or = or i32 %20, 16777216
  store i32 %or, ptr %mnt_cifs_flags, align 4
  %21 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ses, align 8
  %server1.i = getelementptr inbounds %struct.cifs_ses, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %server1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %server1.i, align 8
  %refpath_lock.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %24, i32 0, i32 90
  tail call void @mutex_lock_nested(ptr noundef %refpath_lock.i, i32 noundef 0) #14
  %leaf_fullpath.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %24, i32 0, i32 92
  %25 = ptrtoint ptr %leaf_fullpath.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %leaf_fullpath.i, align 4
  %origin_fullpath.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %24, i32 0, i32 91
  %27 = ptrtoint ptr %origin_fullpath.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %origin_fullpath.i, align 8
  %call.i = tail call i32 @strcasecmp(ptr noundef %26, ptr noundef %28) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %kref_get.exit.refresh_tcon.exit_crit_edge, label %if.then.i

kref_get.exit.refresh_tcon.exit_crit_edge:        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %refresh_tcon.exit

if.then.i:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %26, i32 1
  call fastcc void @__refresh_tcon(ptr noundef %add.ptr.i, ptr noundef nonnull %sessions, ptr noundef %call, i1 noundef zeroext true) #14
  br label %refresh_tcon.exit

refresh_tcon.exit:                                ; preds = %if.then.i, %kref_get.exit.refresh_tcon.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %refpath_lock.i) #14
  %29 = ptrtoint ptr %origin_fullpath.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %origin_fullpath.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %30, i32 1
  call fastcc void @__refresh_tcon(ptr noundef %add.ptr7.i, ptr noundef nonnull %sessions, ptr noundef %call, i1 noundef zeroext true) #14
  tail call fastcc void @kref_put(ptr noundef %refcount)
  br label %cleanup

cleanup:                                          ; preds = %refresh_tcon.exit, %do.end89, %if.then45, %land.lhs.true42.cleanup_crit_edge, %do.body30, %do.body26.cleanup_crit_edge, %if.then15, %land.lhs.true.cleanup_crit_edge, %do.body8, %do.body5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end89 ], [ 0, %refresh_tcon.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then15 ], [ -22, %do.body26.cleanup_crit_edge ], [ -22, %land.lhs.true42.cleanup_crit_edge ], [ -22, %if.then45 ], [ 0, %do.body8 ], [ -22, %do.body30 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %sessions) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_autodisable_serverino(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfscache_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.39) #14
  tail call void @down_read(ptr noundef nonnull @htable_rw_lock) #14
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end44.for.body_crit_edge, %entry
  %i.082 = phi i32 [ 0, %entry ], [ %inc, %for.end44.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @cache_htable, i32 0, i32 %i.082
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %ce.079 = load ptr, ptr %arrayidx, align 4
  %tobool3.not80 = icmp eq ptr %ce.079, null
  br i1 %tobool3.not80, label %for.body.for.end44_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.end44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end44

for.body4:                                        ; preds = %for.inc31.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %ce.081 = phi ptr [ %ce.0, %for.inc31.for.body4_crit_edge ], [ %ce.079, %for.body.for.body4_crit_edge ]
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %ce.081, i32 0, i32 1
  %1 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %2, null
  br i1 %tobool.not.i.not, label %for.body4.for.inc31_crit_edge, label %if.end

for.body4.for.inc31_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc31

if.end:                                           ; preds = %for.body4
  %path = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 1
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %path, align 8
  %srvtype = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 4
  %5 = ptrtoint ptr %srvtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %srvtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp6 = icmp eq i32 %6, 1
  %cond7 = select i1 %cmp6, ptr @.str.41, ptr @.str.42
  %ttl = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 3
  %7 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ttl, align 8
  %tv_nsec = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec, align 8
  %hdr_flags = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 2
  %11 = ptrtoint ptr %hdr_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdr_flags, align 4
  %ref_flags = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 5
  %13 = ptrtoint ptr %ref_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_flags, align 8
  %15 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %16 = icmp eq i32 %15, 1
  %cond13 = select i1 %16, ptr @.str.43, ptr @.str.44
  %path_consumed = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 7
  %17 = ptrtoint ptr %path_consumed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %path_consumed, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #14
  %19 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %ts.i) #14
  %etime.i = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 6
  %20 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ts.i, align 8
  %22 = ptrtoint ptr %etime.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %etime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp.i.i = icmp slt i64 %21, %23
  br i1 %cmp.i.i, label %cache_entry_expired.exit.thread74, label %if.end.i.i

cache_entry_expired.exit.thread74:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %29

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp4.i.i = icmp sgt i64 %21, %23
  br i1 %cmp4.i.i, label %cache_entry_expired.exit.thread, label %cache_entry_expired.exit

cache_entry_expired.exit.thread:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %28

cache_entry_expired.exit:                         ; preds = %if.end.i.i
  %24 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tv_nsec.i.i, align 8
  %26 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tv_nsec, align 8
  %sub.i.i = sub i32 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %phi.cmp.i = icmp sgt i32 %sub.i.i, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br i1 %phi.cmp.i, label %cache_entry_expired.exit._crit_edge, label %cache_entry_expired.exit._crit_edge83

cache_entry_expired.exit._crit_edge83:            ; preds = %cache_entry_expired.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %29

cache_entry_expired.exit._crit_edge:              ; preds = %cache_entry_expired.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %28

28:                                               ; preds = %cache_entry_expired.exit._crit_edge, %cache_entry_expired.exit.thread
  br label %29

29:                                               ; preds = %28, %cache_entry_expired.exit._crit_edge83, %cache_entry_expired.exit.thread74
  %30 = phi ptr [ @.str.43, %28 ], [ @.str.44, %cache_entry_expired.exit._crit_edge83 ], [ @.str.44, %cache_entry_expired.exit.thread74 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, ptr noundef %4, ptr noundef nonnull %cond7, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %cond13, i32 noundef %18, ptr noundef nonnull %30) #14
  %tlist = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 9
  %31 = ptrtoint ptr %tlist to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn76 = load ptr, ptr %tlist, align 4
  %cmp21.not77 = icmp eq ptr %.pn76, %tlist
  br i1 %cmp21.not77, label %.for.inc31_crit_edge, label %for.body23.lr.ph

.for.inc31_crit_edge:                             ; preds = %29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc31

for.body23.lr.ph:                                 ; preds = %29
  %tgthint = getelementptr inbounds %struct.cache_entry, ptr %ce.081, i32 0, i32 10
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.lr.ph
  %.pn78 = phi ptr [ %.pn76, %for.body23.lr.ph ], [ %.pn, %for.body23.for.body23_crit_edge ]
  %t.0 = getelementptr i8, ptr %.pn78, i32 -8
  %32 = ptrtoint ptr %t.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t.0, align 4
  %34 = ptrtoint ptr %tgthint to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tgthint, align 8
  %cmp24 = icmp eq ptr %35, %t.0
  %cond25 = select i1 %cmp24, ptr @.str.46, ptr @.str.47
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, ptr noundef %33, ptr noundef nonnull %cond25) #14
  %36 = ptrtoint ptr %.pn78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %.pn78, align 4
  %cmp21.not = icmp eq ptr %.pn, %tlist
  br i1 %cmp21.not, label %for.body23.for.inc31_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23

for.body23.for.inc31_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc31

for.inc31:                                        ; preds = %for.body23.for.inc31_crit_edge, %.for.inc31_crit_edge, %for.body4.for.inc31_crit_edge
  %37 = ptrtoint ptr %ce.081 to i32
  call void @__asan_load4_noabort(i32 %37)
  %ce.0 = load ptr, ptr %ce.081, align 4
  %tobool3.not = icmp eq ptr %ce.0, null
  br i1 %tobool3.not, label %for.inc31.for.end44_crit_edge, label %for.inc31.for.body4_crit_edge

for.inc31.for.body4_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4

for.inc31.for.end44_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end44

for.end44:                                        ; preds = %for.inc31.for.end44_crit_edge, %for.body.for.end44_crit_edge
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end46, label %for.end44.for.body_crit_edge

for.end44.for.body_crit_edge:                     ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end46:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #16
  call void @up_read(ptr noundef nonnull @htable_rw_lock) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @refresh_cache_worker(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %tcons.i = alloca %struct.list_head, align 4
  %mglist = alloca %struct.list_head, align 4
  %sessions = alloca [65 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mglist) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %mglist, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %sessions) #14
  %1 = call ptr @memset(ptr %sessions, i32 0, i32 260)
  %2 = ptrtoint ptr %mglist to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mglist, ptr %mglist, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mglist, ptr %0, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @mount_group_list_lock, i32 noundef 0) #14
  %mg.086 = load ptr, ptr @mount_group_list, align 4
  %cmp.not87 = icmp eq ptr %mg.086, @mount_group_list
  br i1 %cmp.not87, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mg.088 = phi ptr [ %mg.0, %list_add.exit.for.body_crit_edge ], [ %mg.086, %entry.for.body_crit_edge ]
  %refcount = getelementptr inbounds %struct.mount_group, ptr %mg.088, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %4 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !270
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !269

for.body.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !262

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %refresh_list = getelementptr inbounds %struct.mount_group, ptr %mg.088, i32 0, i32 5
  %6 = ptrtoint ptr %mglist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mglist, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %refresh_list, ptr noundef nonnull %mglist, ptr noundef %7) #14
  br i1 %call.i.i, label %if.end.i.i, label %kref_get.exit.list_add.exit_crit_edge

kref_get.exit.list_add.exit_crit_edge:            ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %refresh_list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %refresh_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %refresh_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mount_group, ptr %mg.088, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mglist, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %mglist to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %refresh_list, ptr %mglist, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %kref_get.exit.list_add.exit_crit_edge
  %12 = ptrtoint ptr %mg.088 to i32
  call void @__asan_load4_noabort(i32 %12)
  %mg.0 = load ptr, ptr %mg.088, align 4
  %cmp.not = icmp eq ptr %mg.0, @mount_group_list
  br i1 %cmp.not, label %list_add.exit.for.end_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @mount_group_list_lock) #14
  %13 = ptrtoint ptr %mglist to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn89 = load ptr, ptr %mglist, align 4
  %cmp11.not90 = icmp eq ptr %.pn89, %mglist
  br i1 %cmp11.not90, label %for.end.for.end28_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  br label %if.end

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end28

if.end:                                           ; preds = %if.end.if.end_crit_edge, %for.end.if.end_crit_edge
  %.pn92 = phi ptr [ %.pn, %if.end.if.end_crit_edge ], [ %.pn89, %for.end.if.end_crit_edge ]
  %i.091 = phi i32 [ %add21, %if.end.if.end_crit_edge ], [ 0, %for.end.if.end_crit_edge ]
  %lock = getelementptr i8, ptr %.pn92, i32 -44
  call void @_raw_spin_lock(ptr noundef %lock) #14
  %num_sessions = getelementptr i8, ptr %.pn92, i32 -48
  %14 = ptrtoint ptr %num_sessions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sessions, align 4
  %add = add i32 %15, %i.091
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp15 = icmp sgt i32 %add, 64
  %sub = sub i32 64, %i.091
  %count.0 = select i1 %cmp15, i32 %sub, i32 %15
  %arrayidx = getelementptr [65 x ptr], ptr %sessions, i32 0, i32 %i.091
  %sessions19 = getelementptr i8, ptr %.pn92, i32 -304
  %mul = shl i32 %count.0, 2
  %16 = call ptr @memcpy(ptr %arrayidx, ptr %sessions19, i32 %mul)
  call void @_raw_spin_unlock(ptr noundef %lock) #14
  %add21 = add i32 %count.0, %i.091
  %17 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp11.not = icmp eq ptr %.pn, %mglist
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add21)
  %cmp14 = icmp sgt i32 %add21, 63
  %or.cond = select i1 %cmp11.not, i1 true, i1 %cmp14
  br i1 %or.cond, label %if.end.for.end28_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.for.end28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end28

for.end28:                                        ; preds = %if.end.for.end28_crit_edge, %for.end.for.end28_crit_edge
  %18 = ptrtoint ptr %sessions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sessions, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.end28.if.end33_crit_edge, label %if.then30

for.end28.if.end33_crit_edge:                     ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then30:                                        ; preds = %for.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcons.i) #14
  %20 = getelementptr inbounds %struct.list_head, ptr %tcons.i, i32 0, i32 1
  %21 = ptrtoint ptr %tcons.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %tcons.i, ptr %tcons.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tcons.i, ptr %20, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_tcp_ses_list to i32))
  %server.0115.i = load ptr, ptr @cifs_tcp_ses_list, align 4
  %cmp.not116.i = icmp eq ptr %server.0115.i, @cifs_tcp_ses_list
  br i1 %cmp.not116.i, label %if.then30.for.end43.i_crit_edge, label %if.then30.for.body.i_crit_edge

if.then30.for.body.i_crit_edge:                   ; preds = %if.then30
  br label %for.body.i

if.then30.for.end43.i_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43.i

for.body.i:                                       ; preds = %for.inc37.i.for.body.i_crit_edge, %if.then30.for.body.i_crit_edge
  %server.0117.i = phi ptr [ %server.0.i, %for.inc37.i.for.body.i_crit_edge ], [ %server.0115.i, %if.then30.for.body.i_crit_edge ]
  %is_dfs_conn.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0117.i, i32 0, i32 89
  %23 = ptrtoint ptr %is_dfs_conn.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_dfs_conn.i, align 8, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc37.i_crit_edge, label %if.end.i

for.body.i.for.inc37.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc37.i

if.end.i:                                         ; preds = %for.body.i
  %smb_ses_list.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.0117.i, i32 0, i32 1
  %25 = ptrtoint ptr %smb_ses_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %ses.0112.i = load ptr, ptr %smb_ses_list.i, align 8
  %cmp7.not113.i = icmp eq ptr %ses.0112.i, %smb_ses_list.i
  br i1 %cmp7.not113.i, label %if.end.i.for.inc37.i_crit_edge, label %if.end.i.for.body9.i_crit_edge

if.end.i.for.body9.i_crit_edge:                   ; preds = %if.end.i
  br label %for.body9.i

if.end.i.for.inc37.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc37.i

for.cond4.loopexit.i:                             ; preds = %for.inc.i.for.cond4.loopexit.i_crit_edge, %for.body9.i.for.cond4.loopexit.i_crit_edge
  %26 = ptrtoint ptr %ses.0114.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %ses.0.i = load ptr, ptr %ses.0114.i, align 8
  %cmp7.not.i = icmp eq ptr %ses.0.i, %smb_ses_list.i
  br i1 %cmp7.not.i, label %for.cond4.loopexit.i.for.inc37.i_crit_edge, label %for.cond4.loopexit.i.for.body9.i_crit_edge

for.cond4.loopexit.i.for.body9.i_crit_edge:       ; preds = %for.cond4.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body9.i

for.cond4.loopexit.i.for.inc37.i_crit_edge:       ; preds = %for.cond4.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc37.i

for.body9.i:                                      ; preds = %for.cond4.loopexit.i.for.body9.i_crit_edge, %if.end.i.for.body9.i_crit_edge
  %ses.0114.i = phi ptr [ %ses.0.i, %for.cond4.loopexit.i.for.body9.i_crit_edge ], [ %ses.0112.i, %if.end.i.for.body9.i_crit_edge ]
  %tcon_list.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.0114.i, i32 0, i32 2
  %27 = ptrtoint ptr %tcon_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %tcon.0109.i = load ptr, ptr %tcon_list.i, align 8
  %cmp17.not110.i = icmp eq ptr %tcon.0109.i, %tcon_list.i
  br i1 %cmp17.not110.i, label %for.body9.i.for.cond4.loopexit.i_crit_edge, label %for.body9.i.for.body19.i_crit_edge

for.body9.i.for.body19.i_crit_edge:               ; preds = %for.body9.i
  br label %for.body19.i

for.body9.i.for.cond4.loopexit.i_crit_edge:       ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond4.loopexit.i

for.body19.i:                                     ; preds = %for.inc.i.for.body19.i_crit_edge, %for.body9.i.for.body19.i_crit_edge
  %tcon.0111.i = phi ptr [ %tcon.0.i, %for.inc.i.for.body19.i_crit_edge ], [ %tcon.0109.i, %for.body9.i.for.body19.i_crit_edge ]
  %ipc.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0111.i, i32 0, i32 22
  %28 = ptrtoint ptr %ipc.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %ipc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %bf.cast.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %land.lhs.true.i, label %for.body19.i.for.inc.i_crit_edge

for.body19.i.for.inc.i_crit_edge:                 ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body19.i
  %need_reconnect.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0111.i, i32 0, i32 27
  %29 = ptrtoint ptr %need_reconnect.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load20.i = load i8, ptr %need_reconnect.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20.i)
  %bf.cast22.not.i = icmp sgt i8 %bf.load20.i, -1
  br i1 %bf.cast22.not.i, label %if.then23.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  %tc_count.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0111.i, i32 0, i32 1
  %30 = ptrtoint ptr %tc_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tc_count.i, align 8
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %tc_count.i, align 8
  %ulist.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0111.i, i32 0, i32 44
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %20, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ulist.i, ptr noundef %33, ptr noundef nonnull %tcons.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then23.i.for.inc.i_crit_edge

if.then23.i.for.inc.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ulist.i, ptr %20, align 4
  %35 = ptrtoint ptr %ulist.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tcons.i, ptr %ulist.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0111.i, i32 0, i32 44, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %ulist.i, ptr %33, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.then23.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body19.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %tcon.0111.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %tcon.0.i = load ptr, ptr %tcon.0111.i, align 8
  %cmp17.not.i = icmp eq ptr %tcon.0.i, %tcon_list.i
  br i1 %cmp17.not.i, label %for.inc.i.for.cond4.loopexit.i_crit_edge, label %for.inc.i.for.body19.i_crit_edge

for.inc.i.for.body19.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i

for.inc.i.for.cond4.loopexit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond4.loopexit.i

for.inc37.i:                                      ; preds = %for.cond4.loopexit.i.for.inc37.i_crit_edge, %if.end.i.for.inc37.i_crit_edge, %for.body.i.for.inc37.i_crit_edge
  %39 = ptrtoint ptr %server.0117.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %server.0.i = load ptr, ptr %server.0117.i, align 4
  %cmp.not.i = icmp eq ptr %server.0.i, @cifs_tcp_ses_list
  br i1 %cmp.not.i, label %for.inc37.i.for.end43.i_crit_edge, label %for.inc37.i.for.body.i_crit_edge

for.inc37.i.for.body.i_crit_edge:                 ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc37.i.for.end43.i_crit_edge:                ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.inc37.i.for.end43.i_crit_edge, %if.then30.for.end43.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #14
  %40 = ptrtoint ptr %tcons.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tcons.i, align 4
  %cmp55.not120.i = icmp eq ptr %41, %tcons.i
  br i1 %cmp55.not120.i, label %for.end43.i.refresh_mounts.exit_crit_edge, label %for.end43.i.for.body57.i_crit_edge

for.end43.i.for.body57.i_crit_edge:               ; preds = %for.end43.i
  br label %for.body57.i

for.end43.i.refresh_mounts.exit_crit_edge:        ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refresh_mounts.exit

for.body57.i:                                     ; preds = %if.end67.i.for.body57.i_crit_edge, %for.end43.i.for.body57.i_crit_edge
  %.pn.in121.i = phi ptr [ %.pn124.i, %if.end67.i.for.body57.i_crit_edge ], [ %41, %for.end43.i.for.body57.i_crit_edge ]
  %tcon.1123.i = getelementptr i8, ptr %.pn.in121.i, i32 -2044
  %42 = ptrtoint ptr %.pn.in121.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn124.i = load ptr, ptr %.pn.in121.i, align 4
  %ses59.i = getelementptr i8, ptr %.pn.in121.i, i32 -1964
  %43 = ptrtoint ptr %ses59.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ses59.i, align 8
  %server60.i = getelementptr inbounds %struct.cifs_ses, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %server60.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %server60.i, align 8
  %call.i.i107.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in121.i) #14
  br i1 %call.i.i107.i, label %if.end.i.i108.i, label %for.body57.i.list_del_init.exit.i_crit_edge

for.body57.i.list_del_init.exit.i_crit_edge:      ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i108.i:                                  ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in121.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %.pn.in121.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %.pn.in121.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i108.i, %for.body57.i.list_del_init.exit.i_crit_edge
  %53 = ptrtoint ptr %.pn.in121.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %.pn.in121.i, ptr %.pn.in121.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in121.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %.pn.in121.i, ptr %prev.i3.i.i, align 4
  %refpath_lock.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %46, i32 0, i32 90
  call void @mutex_lock_nested(ptr noundef %refpath_lock.i, i32 noundef 0) #14
  %leaf_fullpath.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %46, i32 0, i32 92
  %55 = ptrtoint ptr %leaf_fullpath.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %leaf_fullpath.i, align 4
  %origin_fullpath.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %46, i32 0, i32 91
  %57 = ptrtoint ptr %origin_fullpath.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %origin_fullpath.i, align 8
  %call.i = call i32 @strcasecmp(ptr noundef %56, ptr noundef %58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool62.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool62.not.i, label %list_del_init.exit.i.if.end67.i_crit_edge, label %if.then63.i

list_del_init.exit.i.if.end67.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67.i

if.then63.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr65.i = getelementptr i8, ptr %56, i32 1
  call fastcc void @__refresh_tcon(ptr noundef %add.ptr65.i, ptr noundef nonnull %sessions, ptr noundef %tcon.1123.i, i1 noundef zeroext false) #14
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then63.i, %list_del_init.exit.i.if.end67.i_crit_edge
  call void @mutex_unlock(ptr noundef %refpath_lock.i) #14
  %59 = ptrtoint ptr %origin_fullpath.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %origin_fullpath.i, align 8
  %add.ptr70.i = getelementptr i8, ptr %60, i32 1
  call fastcc void @__refresh_tcon(ptr noundef %add.ptr70.i, ptr noundef nonnull %sessions, ptr noundef %tcon.1123.i, i1 noundef zeroext false) #14
  call void @cifs_put_tcon(ptr noundef %tcon.1123.i) #14
  %cmp55.not.i = icmp eq ptr %.pn124.i, %tcons.i
  br i1 %cmp55.not.i, label %if.end67.i.refresh_mounts.exit_crit_edge, label %if.end67.i.for.body57.i_crit_edge

if.end67.i.for.body57.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body57.i

if.end67.i.refresh_mounts.exit_crit_edge:         ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refresh_mounts.exit

refresh_mounts.exit:                              ; preds = %if.end67.i.refresh_mounts.exit_crit_edge, %for.end43.i.refresh_mounts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcons.i) #14
  call fastcc void @refresh_cache(ptr noundef nonnull %sessions)
  br label %if.end33

if.end33:                                         ; preds = %refresh_mounts.exit, %for.end28.if.end33_crit_edge
  %61 = ptrtoint ptr %mglist to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mglist, align 4
  %cmp45.not93 = icmp eq ptr %62, %mglist
  br i1 %cmp45.not93, label %if.end33.for.end56_crit_edge, label %if.end33.for.body47_crit_edge

if.end33.for.body47_crit_edge:                    ; preds = %if.end33
  br label %for.body47

if.end33.for.end56_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end56

for.body47:                                       ; preds = %list_del_init.exit.for.body47_crit_edge, %if.end33.for.body47_crit_edge
  %.pn81.in94 = phi ptr [ %.pn81, %list_del_init.exit.for.body47_crit_edge ], [ %62, %if.end33.for.body47_crit_edge ]
  %63 = ptrtoint ptr %.pn81.in94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn81 = load ptr, ptr %.pn81.in94, align 4
  %call.i.i83 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn81.in94) #14
  br i1 %call.i.i83, label %if.end.i.i84, label %for.body47.list_del_init.exit_crit_edge

for.body47.list_del_init.exit_crit_edge:          ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i84:                                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn81.in94, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %.pn81.in94 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %.pn81.in94, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i84, %for.body47.list_del_init.exit_crit_edge
  %70 = ptrtoint ptr %.pn81.in94 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %.pn81.in94, ptr %.pn81.in94, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn81.in94, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %.pn81.in94, ptr %prev.i3.i, align 4
  %refcount49 = getelementptr i8, ptr %.pn81.in94, i32 8
  call fastcc void @kref_put(ptr noundef %refcount49)
  %cmp45.not = icmp eq ptr %.pn81, %mglist
  br i1 %cmp45.not, label %list_del_init.exit.for.end56_crit_edge, label %list_del_init.exit.for.body47_crit_edge

list_del_init.exit.for.body47_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body47

list_del_init.exit.for.end56_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end56

for.end56:                                        ; preds = %list_del_init.exit.for.end56_crit_edge, %if.end33.for.end56_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @cache_ttl_lock) #14
  %72 = load ptr, ptr @dfscache_wq, align 4
  %73 = load i32, ptr @cache_ttl, align 4
  %mul57 = mul i32 %73, 100
  %call.i85 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %72, ptr noundef nonnull @refresh_task, i32 noundef %mul57) #14
  call void @_raw_spin_unlock(ptr noundef nonnull @cache_ttl_lock) #14
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %sessions) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mglist) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refresh_cache(ptr nocapture noundef readonly %sessions) unnamed_addr #0 align 64 {
entry:
  %ts.i183 = alloca %struct.timespec64, align 8
  %host.i.i165 = alloca ptr, align 4
  %len.i.i166 = alloca i32, align 4
  %unc.i167 = alloca [89 x i8], align 1
  %host.i.i = alloca ptr, align 4
  %len.i.i = alloca i32, align 4
  %unc.i = alloca [89 x i8], align 1
  %ts.i = alloca %struct.timespec64, align 8
  %ref_paths = alloca [64 x ptr], align 4
  %refs = alloca ptr, align 4
  %numrefs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ref_paths) #14
  %0 = call ptr @memset(ptr %ref_paths, i32 255, i32 256)
  tail call void @down_read(ptr noundef nonnull @htable_rw_lock) #14
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %entry
  %i.0222 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27.for.body_crit_edge ]
  %count.0221 = phi i32 [ 0, %entry ], [ %count.1.lcssa, %for.inc27.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @cache_htable, i32 0, i32 %i.0222
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %ce.0217 = load ptr, ptr %arrayidx, align 4
  %tobool3.not218 = icmp eq ptr %ce.0217, null
  br i1 %tobool3.not218, label %for.body.for.inc27_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %ce.0220 = phi ptr [ %ce.0, %for.inc.for.body4_crit_edge ], [ %ce.0217, %for.body.for.body4_crit_edge ]
  %count.1219 = phi i32 [ %count.2, %for.inc.for.body4_crit_edge ], [ %count.0221, %for.body.for.body4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.1219)
  %cmp5 = icmp eq i32 %count.1219, 64
  br i1 %cmp5, label %out_unlock.thread, label %if.end

out_unlock.thread:                                ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #16
  call void @up_read(ptr noundef nonnull @htable_rw_lock) #14
  br label %for.body32.lr.ph

if.end:                                           ; preds = %for.body4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %ce.0220, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.not, label %if.end.for.inc_crit_edge, label %lor.lhs.false

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #14
  %4 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %ts.i) #14
  %etime.i = getelementptr inbounds %struct.cache_entry, ptr %ce.0220, i32 0, i32 6
  %5 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ts.i, align 8
  %7 = ptrtoint ptr %etime.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %etime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.i.i = icmp slt i64 %6, %8
  br i1 %cmp.i.i, label %cache_entry_expired.exit.thread198, label %if.end.i.i

cache_entry_expired.exit.thread198:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %for.inc

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp4.i.i = icmp sgt i64 %6, %8
  br i1 %cmp4.i.i, label %cache_entry_expired.exit.thread, label %cache_entry_expired.exit

cache_entry_expired.exit.thread:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %lor.lhs.false8

cache_entry_expired.exit:                         ; preds = %if.end.i.i
  %9 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec7.i.i = getelementptr inbounds %struct.cache_entry, ptr %ce.0220, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %tv_nsec7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec7.i.i, align 8
  %sub.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %phi.cmp.i = icmp sgt i32 %sub.i.i, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br i1 %phi.cmp.i, label %cache_entry_expired.exit.lor.lhs.false8_crit_edge, label %cache_entry_expired.exit.for.inc_crit_edge

cache_entry_expired.exit.for.inc_crit_edge:       ; preds = %cache_entry_expired.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

cache_entry_expired.exit.lor.lhs.false8_crit_edge: ; preds = %cache_entry_expired.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %cache_entry_expired.exit.lor.lhs.false8_crit_edge, %cache_entry_expired.exit.thread
  %path = getelementptr inbounds %struct.cache_entry, ptr %ce.0220, i32 0, i32 1
  %13 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %path, align 8
  call void @llvm.lifetime.start.p0(i64 89, ptr nonnull %unc.i) #14
  %15 = call ptr @memset(ptr %unc.i, i32 0, i32 89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host.i.i) #14
  %16 = ptrtoint ptr %host.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %host.i.i, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #14
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %len.i.i, align 4, !annotation !268
  call void @extract_unc_hostname(ptr noundef %14, ptr noundef nonnull %host.i.i, ptr noundef nonnull %len.i.i) #14
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %20 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %unc.i, i32 noundef 89, ptr noundef nonnull @.str.63, i32 noundef %19, ptr noundef %21) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host.i.i) #14
  %22 = ptrtoint ptr %sessions to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sessions, align 4
  %tobool.not8.i = icmp eq ptr %23, null
  br i1 %tobool.not8.i, label %lor.lhs.false8.find_ipc_from_server_path.exit.thread_crit_edge, label %lor.lhs.false8.for.body.i_crit_edge

lor.lhs.false8.for.body.i_crit_edge:              ; preds = %lor.lhs.false8
  br label %for.body.i

lor.lhs.false8.find_ipc_from_server_path.exit.thread_crit_edge: ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_ipc_from_server_path.exit.thread

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr ptr, ptr %ses.addr.09.i, i32 1
  %24 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i163 = icmp eq ptr %25, null
  br i1 %tobool.not.i163, label %for.cond.i.find_ipc_from_server_path.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.find_ipc_from_server_path.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_ipc_from_server_path.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %lor.lhs.false8.for.body.i_crit_edge
  %26 = phi ptr [ %25, %for.cond.i.for.body.i_crit_edge ], [ %23, %lor.lhs.false8.for.body.i_crit_edge ]
  %ses.addr.09.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %sessions, %lor.lhs.false8.for.body.i_crit_edge ]
  %tcon_ipc.i = getelementptr inbounds %struct.cifs_ses, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %tcon_ipc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tcon_ipc.i, align 8
  %treeName.i = getelementptr inbounds %struct.cifs_tcon, ptr %28, i32 0, i32 8
  %call.i = call i32 @strcasecmp(ptr noundef nonnull %unc.i, ptr noundef %treeName.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %find_ipc_from_server_path.exit, label %for.cond.i

find_ipc_from_server_path.exit.thread:            ; preds = %for.cond.i.find_ipc_from_server_path.exit.thread_crit_edge, %lor.lhs.false8.find_ipc_from_server_path.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 89, ptr nonnull %unc.i) #14
  br label %for.inc

find_ipc_from_server_path.exit:                   ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 89, ptr nonnull %unc.i) #14
  %cmp.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_ipc_from_server_path.exit.for.inc_crit_edge, label %if.end12

find_ipc_from_server_path.exit.for.inc_crit_edge: ; preds = %find_ipc_from_server_path.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end12:                                         ; preds = %find_ipc_from_server_path.exit
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %path, align 8
  %call14 = call noalias ptr @kstrdup(ptr noundef %30, i32 noundef 2592) #14
  %inc = add i32 %count.1219, 1
  %arrayidx15 = getelementptr [64 x ptr], ptr %ref_paths, i32 0, i32 %count.1219
  %31 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call14, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %find_ipc_from_server_path.exit.for.inc_crit_edge, %find_ipc_from_server_path.exit.thread, %cache_entry_expired.exit.for.inc_crit_edge, %cache_entry_expired.exit.thread198, %if.end.for.inc_crit_edge
  %count.2 = phi i32 [ %count.1219, %if.end.for.inc_crit_edge ], [ %count.1219, %find_ipc_from_server_path.exit.for.inc_crit_edge ], [ %inc, %if.end12 ], [ %count.1219, %cache_entry_expired.exit.for.inc_crit_edge ], [ %count.1219, %cache_entry_expired.exit.thread198 ], [ %count.1219, %find_ipc_from_server_path.exit.thread ]
  %32 = ptrtoint ptr %ce.0220 to i32
  call void @__asan_load4_noabort(i32 %32)
  %ce.0 = load ptr, ptr %ce.0220, align 4
  %tobool3.not = icmp eq ptr %ce.0, null
  br i1 %tobool3.not, label %for.inc.for.inc27_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4

for.inc.for.inc27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc.for.inc27_crit_edge, %for.body.for.inc27_crit_edge
  %count.1.lcssa = phi i32 [ %count.0221, %for.body.for.inc27_crit_edge ], [ %count.2, %for.inc.for.inc27_crit_edge ]
  %inc28 = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc28, 32
  br i1 %exitcond.not, label %out_unlock, label %for.inc27.for.body_crit_edge

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

out_unlock:                                       ; preds = %for.inc27
  call void @up_read(ptr noundef nonnull @htable_rw_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa)
  %cmp31223 = icmp sgt i32 %count.1.lcssa, 0
  br i1 %cmp31223, label %out_unlock.for.body32.lr.ph_crit_edge, label %out_unlock.for.end124_crit_edge

out_unlock.for.end124_crit_edge:                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end124

out_unlock.for.body32.lr.ph_crit_edge:            ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body32.lr.ph

for.body32.lr.ph:                                 ; preds = %out_unlock.for.body32.lr.ph_crit_edge, %out_unlock.thread
  %count.3232 = phi i32 [ 64, %out_unlock.thread ], [ %count.1.lcssa, %out_unlock.for.body32.lr.ph_crit_edge ]
  %tv_nsec.i.i188 = getelementptr inbounds %struct.timespec64, ptr %ts.i183, i32 0, i32 1
  br label %for.body32

for.body32:                                       ; preds = %cleanup116.for.body32_crit_edge, %for.body32.lr.ph
  %i.1224 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc123, %cleanup116.for.body32_crit_edge ]
  %arrayidx34 = getelementptr [64 x ptr], ptr %ref_paths, i32 0, i32 %i.1224
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refs) #14
  %35 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %refs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numrefs) #14
  %36 = ptrtoint ptr %numrefs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %numrefs, align 4
  %tobool35.not = icmp eq ptr %34, null
  br i1 %tobool35.not, label %for.body32.cleanup116_crit_edge, label %if.end37

for.body32.cleanup116_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup116

if.end37:                                         ; preds = %for.body32
  call void @llvm.lifetime.start.p0(i64 89, ptr nonnull %unc.i167) #14
  %37 = call ptr @memset(ptr %unc.i167, i32 0, i32 89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host.i.i165) #14
  %38 = ptrtoint ptr %host.i.i165 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %host.i.i165, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i166) #14
  %39 = ptrtoint ptr %len.i.i166 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %len.i.i166, align 4, !annotation !268
  call void @extract_unc_hostname(ptr noundef nonnull %34, ptr noundef nonnull %host.i.i165, ptr noundef nonnull %len.i.i166) #14
  %40 = ptrtoint ptr %len.i.i166 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i166, align 4
  %42 = ptrtoint ptr %host.i.i165 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host.i.i165, align 4
  %call.i.i168 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %unc.i167, i32 noundef 89, ptr noundef nonnull @.str.63, i32 noundef %41, ptr noundef %43) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i166) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host.i.i165) #14
  %44 = ptrtoint ptr %sessions to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sessions, align 4
  %tobool.not8.i169 = icmp eq ptr %45, null
  br i1 %tobool.not8.i169, label %if.end37.find_ipc_from_server_path.exit180.thread_crit_edge, label %if.end37.for.body.i178_crit_edge

if.end37.for.body.i178_crit_edge:                 ; preds = %if.end37
  br label %for.body.i178

if.end37.find_ipc_from_server_path.exit180.thread_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_ipc_from_server_path.exit180.thread

for.cond.i172:                                    ; preds = %for.body.i178
  %incdec.ptr.i170 = getelementptr ptr, ptr %ses.addr.09.i173, i32 1
  %46 = ptrtoint ptr %incdec.ptr.i170 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %incdec.ptr.i170, align 4
  %tobool.not.i171 = icmp eq ptr %47, null
  br i1 %tobool.not.i171, label %for.cond.i172.find_ipc_from_server_path.exit180.thread_crit_edge, label %for.cond.i172.for.body.i178_crit_edge

for.cond.i172.for.body.i178_crit_edge:            ; preds = %for.cond.i172
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i178

for.cond.i172.find_ipc_from_server_path.exit180.thread_crit_edge: ; preds = %for.cond.i172
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_ipc_from_server_path.exit180.thread

for.body.i178:                                    ; preds = %for.cond.i172.for.body.i178_crit_edge, %if.end37.for.body.i178_crit_edge
  %48 = phi ptr [ %47, %for.cond.i172.for.body.i178_crit_edge ], [ %45, %if.end37.for.body.i178_crit_edge ]
  %ses.addr.09.i173 = phi ptr [ %incdec.ptr.i170, %for.cond.i172.for.body.i178_crit_edge ], [ %sessions, %if.end37.for.body.i178_crit_edge ]
  %tcon_ipc.i174 = getelementptr inbounds %struct.cifs_ses, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %tcon_ipc.i174 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tcon_ipc.i174, align 8
  %treeName.i175 = getelementptr inbounds %struct.cifs_tcon, ptr %50, i32 0, i32 8
  %call.i176 = call i32 @strcasecmp(ptr noundef nonnull %unc.i167, ptr noundef %treeName.i175) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool3.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool3.not.i177, label %find_ipc_from_server_path.exit180, label %for.cond.i172

find_ipc_from_server_path.exit180.thread:         ; preds = %for.cond.i172.find_ipc_from_server_path.exit180.thread_crit_edge, %if.end37.find_ipc_from_server_path.exit180.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 89, ptr nonnull %unc.i167) #14
  br label %next_referral

find_ipc_from_server_path.exit180:                ; preds = %for.body.i178
  call void @llvm.lifetime.end.p0(i64 89, ptr nonnull %unc.i167) #14
  %cmp.i181 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %find_ipc_from_server_path.exit180.next_referral_crit_edge, label %if.end41

find_ipc_from_server_path.exit180.next_referral_crit_edge: ; preds = %find_ipc_from_server_path.exit180
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_referral

if.end41:                                         ; preds = %find_ipc_from_server_path.exit180
  %call42 = call i32 @_get_xid() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %51 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.end41.do.end66_crit_edge, label %do.body46

if.end41.do.end66_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

do.body46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @refresh_cache.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@refresh_cache, %land.lhs.true)) #14
          to label %do.end66 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body46
  %call52 = call i32 @___ratelimit(ptr noundef nonnull @refresh_cache._rs, ptr noundef nonnull @.str.96) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true.do.end66_crit_edge, label %if.then54

land.lhs.true.do.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %52 = call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 99
  %56 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %58)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call58 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @refresh_cache.descriptor, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.96, i32 noundef %call42, i32 noundef %call58) #14
  br label %do.end66

do.end66:                                         ; preds = %if.then54, %land.lhs.true.do.end66_crit_edge, %do.body46, %if.end41.do.end66_crit_edge
  call fastcc void @trace_smb3_enter(i32 noundef %call42, ptr noundef nonnull @.str.96)
  %call68 = call fastcc i32 @get_dfs_referral(i32 noundef %call42, ptr noundef nonnull %48, ptr noundef nonnull %34, ptr noundef nonnull %refs, ptr noundef nonnull %numrefs)
  call void @_free_xid(i32 noundef %call42) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %59 = load i32, ptr @cifsFYI, align 4
  %and72 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.end66.do.end99_crit_edge, label %do.body75

do.end66.do.end99_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end99

do.body75:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @refresh_cache.descriptor.98, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@refresh_cache, %land.lhs.true87)) #14
          to label %do.end99 [label %land.lhs.true87], !srcloc !267

land.lhs.true87:                                  ; preds = %do.body75
  %call88 = call i32 @___ratelimit(ptr noundef nonnull @refresh_cache._rs.97, ptr noundef nonnull @.str.96) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true87.do.end99_crit_edge, label %if.then90

land.lhs.true87.do.end99_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end99

if.then90:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @refresh_cache.descriptor.98, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.96, i32 noundef %call42, i32 noundef %call68) #14
  br label %do.end99

do.end99:                                         ; preds = %if.then90, %land.lhs.true87.do.end99_crit_edge, %do.body75, %do.end66.do.end99_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool100.not = icmp eq i32 %call68, 0
  br i1 %tobool100.not, label %if.else102, label %if.then101

if.then101:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @trace_smb3_exit_err(i32 noundef %call42, ptr noundef nonnull @.str.96, i32 noundef %call68)
  br label %next_referral

if.else102:                                       ; preds = %do.end99
  call fastcc void @trace_smb3_exit_done(i32 noundef %call42, ptr noundef nonnull @.str.96)
  call void @down_write(ptr noundef nonnull @htable_rw_lock) #14
  %call108 = call fastcc ptr @lookup_cache_entry(ptr noundef nonnull %34)
  %cmp.i182 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.else102.if.end114_crit_edge, label %land.lhs.true110

if.else102.if.end114_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

land.lhs.true110:                                 ; preds = %if.else102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i183) #14
  %60 = call ptr @memset(ptr %ts.i183, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %ts.i183) #14
  %etime.i184 = getelementptr inbounds %struct.cache_entry, ptr %call108, i32 0, i32 6
  %61 = ptrtoint ptr %ts.i183 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ts.i183, align 8
  %63 = ptrtoint ptr %etime.i184 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %etime.i184, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %64)
  %cmp.i.i185 = icmp slt i64 %62, %64
  br i1 %cmp.i.i185, label %cache_entry_expired.exit194.thread209, label %if.end.i.i187

cache_entry_expired.exit194.thread209:            ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i183) #14
  br label %if.end114

if.end.i.i187:                                    ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %64)
  %cmp4.i.i186 = icmp sgt i64 %62, %64
  br i1 %cmp4.i.i186, label %cache_entry_expired.exit194.thread, label %cache_entry_expired.exit194

cache_entry_expired.exit194.thread:               ; preds = %if.end.i.i187
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i183) #14
  br label %if.then112

cache_entry_expired.exit194:                      ; preds = %if.end.i.i187
  %65 = ptrtoint ptr %tv_nsec.i.i188 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tv_nsec.i.i188, align 8
  %tv_nsec7.i.i189 = getelementptr inbounds %struct.cache_entry, ptr %call108, i32 0, i32 6, i32 1
  %67 = ptrtoint ptr %tv_nsec7.i.i189 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tv_nsec7.i.i189, align 8
  %sub.i.i190 = sub i32 %66, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i190)
  %phi.cmp.i191 = icmp sgt i32 %sub.i.i190, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i183) #14
  br i1 %phi.cmp.i191, label %cache_entry_expired.exit194.if.then112_crit_edge, label %cache_entry_expired.exit194.if.end114_crit_edge

cache_entry_expired.exit194.if.end114_crit_edge:  ; preds = %cache_entry_expired.exit194
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

cache_entry_expired.exit194.if.then112_crit_edge: ; preds = %cache_entry_expired.exit194
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then112

if.then112:                                       ; preds = %cache_entry_expired.exit194.if.then112_crit_edge, %cache_entry_expired.exit194.thread
  %69 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %refs, align 4
  %71 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %numrefs, align 4
  %call113 = call fastcc i32 @update_cache_entry_locked(ptr noundef %call108, ptr noundef %70, i32 noundef %72)
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %cache_entry_expired.exit194.if.end114_crit_edge, %cache_entry_expired.exit194.thread209, %if.else102.if.end114_crit_edge
  call void @up_write(ptr noundef nonnull @htable_rw_lock) #14
  br label %next_referral

next_referral:                                    ; preds = %if.end114, %if.then101, %find_ipc_from_server_path.exit180.next_referral_crit_edge, %find_ipc_from_server_path.exit180.thread
  call void @kfree(ptr noundef nonnull %34) #14
  %73 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %refs, align 4
  %75 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %numrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i195 = icmp eq i32 %76, 0
  %cmp1.i = icmp eq ptr %74, null
  %or.cond.i = or i1 %cmp1.i, %cmp.i195
  br i1 %or.cond.i, label %next_referral.cleanup116_crit_edge, label %for.cond.preheader.i

next_referral.cleanup116_crit_edge:               ; preds = %next_referral
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup116

for.cond.preheader.i:                             ; preds = %next_referral
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp211.i = icmp sgt i32 %76, 0
  br i1 %cmp211.i, label %for.cond.preheader.i.for.body.i196_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.cond.preheader.i.for.body.i196_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i196

for.body.i196:                                    ; preds = %for.body.i196.for.body.i196_crit_edge, %for.cond.preheader.i.for.body.i196_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i196.for.body.i196_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i196_crit_edge ]
  %path_name.i = getelementptr %struct.dfs_info3_param, ptr %74, i32 %i.012.i, i32 4
  %77 = ptrtoint ptr %path_name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %path_name.i, align 4
  call void @kfree(ptr noundef %78) #14
  %node_name.i = getelementptr %struct.dfs_info3_param, ptr %74, i32 %i.012.i, i32 5
  %79 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %node_name.i, align 4
  call void @kfree(ptr noundef %80) #14
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %76
  br i1 %exitcond.not.i, label %for.body.i196.for.end.i_crit_edge, label %for.body.i196.for.body.i196_crit_edge

for.body.i196.for.body.i196_crit_edge:            ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i196

for.body.i196.for.end.i_crit_edge:                ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i196.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %74) #14
  br label %cleanup116

cleanup116:                                       ; preds = %for.end.i, %next_referral.cleanup116_crit_edge, %for.body32.cleanup116_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numrefs) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refs) #14
  %inc123 = add nuw nsw i32 %i.1224, 1
  %exitcond229.not = icmp eq i32 %inc123, %count.3232
  br i1 %exitcond229.not, label %cleanup116.for.end124_crit_edge, label %cleanup116.for.body32_crit_edge

cleanup116.for.body32_crit_edge:                  ; preds = %cleanup116
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body32

cleanup116.for.end124_crit_edge:                  ; preds = %cleanup116
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end124

for.end124:                                       ; preds = %cleanup116.for.end124_crit_edge, %out_unlock.for.end124_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ref_paths) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__refresh_tcon(ptr noundef %path, ptr nocapture noundef readonly %sessions, ptr nocapture noundef readonly %tcon, i1 noundef zeroext %force_refresh) unnamed_addr #0 align 64 {
entry:
  %ts.i14 = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  %host.i.i = alloca ptr, align 4
  %len.i.i = alloca i32, align 4
  %unc.i = alloca [89 x i8], align 1
  %refs = alloca ptr, align 4
  %numrefs = alloca i32, align 4
  %tl = alloca %struct.dfs_cache_tgt_list, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refs) #14
  %0 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %refs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numrefs) #14
  %1 = ptrtoint ptr %numrefs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %numrefs, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tl) #14
  %2 = getelementptr inbounds %struct.dfs_cache_tgt_list, ptr %tl, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dfs_cache_tgt_list, ptr %tl, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %tl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tl, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 89, ptr nonnull %unc.i) #14
  %7 = call ptr @memset(ptr %unc.i, i32 0, i32 89)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host.i.i) #14
  %8 = ptrtoint ptr %host.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %host.i.i, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #14
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %len.i.i, align 4, !annotation !268
  call void @extract_unc_hostname(ptr noundef %path, ptr noundef nonnull %host.i.i, ptr noundef nonnull %len.i.i) #14
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %12 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %unc.i, i32 noundef 89, ptr noundef nonnull @.str.63, i32 noundef %11, ptr noundef %13) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host.i.i) #14
  %14 = ptrtoint ptr %sessions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sessions, align 4
  %tobool.not8.i = icmp eq ptr %15, null
  br i1 %tobool.not8.i, label %entry.find_ipc_from_server_path.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.find_ipc_from_server_path.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_ipc_from_server_path.exit.thread

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr ptr, ptr %ses.addr.09.i, i32 1
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.cond.i.find_ipc_from_server_path.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.find_ipc_from_server_path.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_ipc_from_server_path.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %18 = phi ptr [ %17, %for.cond.i.for.body.i_crit_edge ], [ %15, %entry.for.body.i_crit_edge ]
  %ses.addr.09.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %sessions, %entry.for.body.i_crit_edge ]
  %tcon_ipc.i = getelementptr inbounds %struct.cifs_ses, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %tcon_ipc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tcon_ipc.i, align 8
  %treeName.i = getelementptr inbounds %struct.cifs_tcon, ptr %20, i32 0, i32 8
  %call.i = call i32 @strcasecmp(ptr noundef nonnull %unc.i, ptr noundef %treeName.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %find_ipc_from_server_path.exit, label %for.cond.i

find_ipc_from_server_path.exit.thread:            ; preds = %for.cond.i.find_ipc_from_server_path.exit.thread_crit_edge, %entry.find_ipc_from_server_path.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 89, ptr nonnull %unc.i) #14
  br label %do.body4

find_ipc_from_server_path.exit:                   ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 89, ptr nonnull %unc.i) #14
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_ipc_from_server_path.exit.do.body4_crit_edge, label %if.end21

find_ipc_from_server_path.exit.do.body4_crit_edge: ; preds = %find_ipc_from_server_path.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4

do.body4:                                         ; preds = %find_ipc_from_server_path.exit.do.body4_crit_edge, %find_ipc_from_server_path.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %21 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4.cleanup_crit_edge, label %do.body6

do.body4.cleanup_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body6:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__refresh_tcon.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__refresh_tcon, %land.lhs.true)) #14
          to label %cleanup [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body6
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @__refresh_tcon._rs, ptr noundef nonnull @.str.52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %if.then14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__refresh_tcon.descriptor, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52) #14
  br label %cleanup

if.end21:                                         ; preds = %find_ipc_from_server_path.exit
  call void @down_read(ptr noundef nonnull @htable_rw_lock) #14
  %call22 = call fastcc ptr @lookup_cache_entry(ptr noundef %path)
  %cmp.i11 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %force_refresh, i1 true, i1 %cmp.i11
  br i1 %or.cond, label %if.end21.lor.end_crit_edge, label %lor.rhs

if.end21.lor.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #14
  %22 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %ts.i) #14
  %etime.i = getelementptr inbounds %struct.cache_entry, ptr %call22, i32 0, i32 6
  %23 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ts.i, align 8
  %25 = ptrtoint ptr %etime.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %etime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp.i.i = icmp slt i64 %24, %26
  br i1 %cmp.i.i, label %lor.rhs.cache_entry_expired.exit_crit_edge, label %if.end.i.i

lor.rhs.cache_entry_expired.exit_crit_edge:       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cache_entry_expired.exit

if.end.i.i:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp4.i.i = icmp sgt i64 %24, %26
  br i1 %cmp4.i.i, label %if.end.i.i.cache_entry_expired.exit_crit_edge, label %if.end6.i.i

if.end.i.i.cache_entry_expired.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cache_entry_expired.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %27 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec7.i.i = getelementptr inbounds %struct.cache_entry, ptr %call22, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %tv_nsec7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tv_nsec7.i.i, align 8
  %sub.i.i = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %phi.cmp.i = icmp sgt i32 %sub.i.i, -1
  br label %cache_entry_expired.exit

cache_entry_expired.exit:                         ; preds = %if.end6.i.i, %if.end.i.i.cache_entry_expired.exit_crit_edge, %lor.rhs.cache_entry_expired.exit_crit_edge
  %retval.0.i.i = phi i1 [ %phi.cmp.i, %if.end6.i.i ], [ false, %lor.rhs.cache_entry_expired.exit_crit_edge ], [ true, %if.end.i.i.cache_entry_expired.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %lor.end

lor.end:                                          ; preds = %cache_entry_expired.exit, %if.end21.lor.end_crit_edge
  %31 = phi i1 [ true, %if.end21.lor.end_crit_edge ], [ %retval.0.i.i, %cache_entry_expired.exit ]
  br i1 %cmp.i11, label %lor.end.if.end63_crit_edge, label %if.then28

lor.end.if.end63_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then28:                                        ; preds = %lor.end
  %call29 = call fastcc i32 @get_targets(ptr noundef %call22, ptr noundef nonnull %tl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end63_crit_edge, label %do.body33

if.then28.if.end63_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

do.body33:                                        ; preds = %if.then28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %32 = load i32, ptr @cifsFYI, align 4
  %and34 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.if.end63_crit_edge, label %do.body37

do.body33.if.end63_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

do.body37:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__refresh_tcon.descriptor.55, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__refresh_tcon, %land.lhs.true49)) #14
          to label %if.end63 [label %land.lhs.true49], !srcloc !267

land.lhs.true49:                                  ; preds = %do.body37
  %call50 = call i32 @___ratelimit(ptr noundef nonnull @__refresh_tcon._rs.54, ptr noundef nonnull @.str.52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.if.end63_crit_edge, label %if.then52

land.lhs.true49.if.end63_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__refresh_tcon.descriptor.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef %call29) #14
  br label %if.end63

if.end63:                                         ; preds = %if.then52, %land.lhs.true49.if.end63_crit_edge, %do.body37, %do.body33.if.end63_crit_edge, %if.then28.if.end63_crit_edge, %lor.end.if.end63_crit_edge
  call void @up_read(ptr noundef nonnull @htable_rw_lock) #14
  br i1 %31, label %if.end66, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end66:                                         ; preds = %if.end63
  %call67 = call i32 @_get_xid() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %33 = load i32, ptr @cifsFYI, align 4
  %and70 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end66.do.end103_crit_edge, label %do.body73

if.end66.do.end103_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end103

do.body73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__refresh_tcon.descriptor.58, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__refresh_tcon, %land.lhs.true85)) #14
          to label %do.end103 [label %land.lhs.true85], !srcloc !267

land.lhs.true85:                                  ; preds = %do.body73
  %call86 = call i32 @___ratelimit(ptr noundef nonnull @__refresh_tcon._rs.57, ptr noundef nonnull @.str.52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %land.lhs.true85.do.end103_crit_edge, label %if.then88

land.lhs.true85.do.end103_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end103

if.then88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #16
  %34 = call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 99
  %38 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %40)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call94 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__refresh_tcon.descriptor.58, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef %call67, i32 noundef %call94) #14
  br label %do.end103

do.end103:                                        ; preds = %if.then88, %land.lhs.true85.do.end103_crit_edge, %do.body73, %if.end66.do.end103_crit_edge
  call fastcc void @trace_smb3_enter(i32 noundef %call67, ptr noundef nonnull @.str.52)
  %call105 = call fastcc i32 @get_dfs_referral(i32 noundef %call67, ptr noundef nonnull %18, ptr noundef %path, ptr noundef nonnull %refs, ptr noundef nonnull %numrefs)
  call void @_free_xid(i32 noundef %call67) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %41 = load i32, ptr @cifsFYI, align 4
  %and109 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.end103.do.end136_crit_edge, label %do.body112

do.end103.do.end136_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end136

do.body112:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__refresh_tcon.descriptor.61, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__refresh_tcon, %land.lhs.true124)) #14
          to label %do.end136 [label %land.lhs.true124], !srcloc !267

land.lhs.true124:                                 ; preds = %do.body112
  %call125 = call i32 @___ratelimit(ptr noundef nonnull @__refresh_tcon._rs.60, ptr noundef nonnull @.str.52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %land.lhs.true124.do.end136_crit_edge, label %if.then127

land.lhs.true124.do.end136_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end136

if.then127:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__refresh_tcon.descriptor.61, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef %call67, i32 noundef %call105) #14
  br label %do.end136

do.end136:                                        ; preds = %if.then127, %land.lhs.true124.do.end136_crit_edge, %do.body112, %do.end103.do.end136_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool137.not = icmp eq i32 %call105, 0
  br i1 %tobool137.not, label %if.else139, label %if.then138

if.then138:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @trace_smb3_exit_err(i32 noundef %call67, ptr noundef nonnull @.str.52, i32 noundef %call105)
  br label %out

if.else139:                                       ; preds = %do.end136
  call fastcc void @trace_smb3_exit_done(i32 noundef %call67, ptr noundef nonnull @.str.52)
  %42 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %refs, align 4
  %44 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %numrefs, align 4
  call fastcc void @dump_refs(ptr noundef %43, i32 noundef %45)
  call void @down_write(ptr noundef nonnull @htable_rw_lock) #14
  %call145 = call fastcc ptr @lookup_cache_entry(ptr noundef %path)
  %cmp.i13 = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i13, label %if.then147, label %if.else149

if.then147:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %refs, align 4
  %48 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %numrefs, align 4
  %call148 = call fastcc i32 @add_cache_entry_locked(ptr noundef %47, i32 noundef %49)
  br label %if.end156

if.else149:                                       ; preds = %if.else139
  br i1 %force_refresh, label %if.else149.if.then153_crit_edge, label %lor.lhs.false151

if.else149.if.then153_crit_edge:                  ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then153

lor.lhs.false151:                                 ; preds = %if.else149
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i14) #14
  %50 = call ptr @memset(ptr %ts.i14, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %ts.i14) #14
  %etime.i15 = getelementptr inbounds %struct.cache_entry, ptr %call145, i32 0, i32 6
  %51 = ptrtoint ptr %ts.i14 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ts.i14, align 8
  %53 = ptrtoint ptr %etime.i15 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %etime.i15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %54)
  %cmp.i.i16 = icmp slt i64 %52, %54
  br i1 %cmp.i.i16, label %cache_entry_expired.exit25.thread37, label %if.end.i.i18

cache_entry_expired.exit25.thread37:              ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i14) #14
  br label %if.end156

if.end.i.i18:                                     ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %54)
  %cmp4.i.i17 = icmp sgt i64 %52, %54
  br i1 %cmp4.i.i17, label %cache_entry_expired.exit25.thread, label %cache_entry_expired.exit25

cache_entry_expired.exit25.thread:                ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i14) #14
  br label %if.then153

cache_entry_expired.exit25:                       ; preds = %if.end.i.i18
  %tv_nsec.i.i19 = getelementptr inbounds %struct.timespec64, ptr %ts.i14, i32 0, i32 1
  %55 = ptrtoint ptr %tv_nsec.i.i19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tv_nsec.i.i19, align 8
  %tv_nsec7.i.i20 = getelementptr inbounds %struct.cache_entry, ptr %call145, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %tv_nsec7.i.i20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tv_nsec7.i.i20, align 8
  %sub.i.i21 = sub i32 %56, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i21)
  %phi.cmp.i22 = icmp sgt i32 %sub.i.i21, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i14) #14
  br i1 %phi.cmp.i22, label %cache_entry_expired.exit25.if.then153_crit_edge, label %cache_entry_expired.exit25.if.end156_crit_edge

cache_entry_expired.exit25.if.end156_crit_edge:   ; preds = %cache_entry_expired.exit25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

cache_entry_expired.exit25.if.then153_crit_edge:  ; preds = %cache_entry_expired.exit25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then153

if.then153:                                       ; preds = %cache_entry_expired.exit25.if.then153_crit_edge, %cache_entry_expired.exit25.thread, %if.else149.if.then153_crit_edge
  %59 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %refs, align 4
  %61 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %numrefs, align 4
  %call154 = call fastcc i32 @update_cache_entry_locked(ptr noundef %call145, ptr noundef %60, i32 noundef %62)
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %cache_entry_expired.exit25.if.end156_crit_edge, %cache_entry_expired.exit25.thread37, %if.then147
  call void @up_write(ptr noundef nonnull @htable_rw_lock) #14
  %63 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %refs, align 4
  %65 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %numrefs, align 4
  call fastcc void @mark_for_reconnect_if_needed(ptr noundef %tcon, ptr noundef nonnull %tl, ptr noundef %64, i32 noundef %66)
  br label %out

out:                                              ; preds = %if.end156, %if.then138, %if.end63.out_crit_edge
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %2, align 4
  %cmp.i.not.i = icmp eq ptr %68, %2
  br i1 %cmp.i.not.i, label %out.dfs_cache_free_tgts.exit_crit_edge, label %out.for.body.i26_crit_edge

out.for.body.i26_crit_edge:                       ; preds = %out
  br label %for.body.i26

out.dfs_cache_free_tgts.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %dfs_cache_free_tgts.exit

for.body.i26:                                     ; preds = %list_del.exit.i.for.body.i26_crit_edge, %out.for.body.i26_crit_edge
  %.pn.in27.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i26_crit_edge ], [ %68, %out.for.body.i26_crit_edge ]
  %it.0.i = getelementptr i8, ptr %.pn.in27.i, i32 -8
  %69 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn.i = load ptr, ptr %.pn.in27.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in27.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i26.list_del.exit.i_crit_edge

for.body.i26.list_del.exit.i_crit_edge:           ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i, align 4
  %72 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %.pn.in27.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i26.list_del.exit.i_crit_edge
  %76 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in27.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %78 = ptrtoint ptr %it.0.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %it.0.i, align 4
  call void @kfree(ptr noundef %79) #14
  call void @kfree(ptr noundef %it.0.i) #14
  %cmp.not.i = icmp eq ptr %.pn.i, %2
  br i1 %cmp.not.i, label %for.end.i, label %list_del.exit.i.for.body.i26_crit_edge

list_del.exit.i.for.body.i26_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i26

for.end.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %tl to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %tl, align 4
  br label %dfs_cache_free_tgts.exit

dfs_cache_free_tgts.exit:                         ; preds = %for.end.i, %out.dfs_cache_free_tgts.exit_crit_edge
  %81 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %refs, align 4
  %83 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %numrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i27 = icmp eq i32 %84, 0
  %cmp1.i = icmp eq ptr %82, null
  %or.cond.i = or i1 %cmp1.i, %cmp.i27
  br i1 %or.cond.i, label %dfs_cache_free_tgts.exit.cleanup_crit_edge, label %for.cond.preheader.i

dfs_cache_free_tgts.exit.cleanup_crit_edge:       ; preds = %dfs_cache_free_tgts.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader.i:                             ; preds = %dfs_cache_free_tgts.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp211.i = icmp sgt i32 %84, 0
  br i1 %cmp211.i, label %for.cond.preheader.i.for.body.i28_crit_edge, label %for.cond.preheader.i.for.end.i29_crit_edge

for.cond.preheader.i.for.end.i29_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i29

for.cond.preheader.i.for.body.i28_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.body.i28.for.body.i28_crit_edge, %for.cond.preheader.i.for.body.i28_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i28.for.body.i28_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i28_crit_edge ]
  %path_name.i = getelementptr %struct.dfs_info3_param, ptr %82, i32 %i.012.i, i32 4
  %85 = ptrtoint ptr %path_name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %path_name.i, align 4
  call void @kfree(ptr noundef %86) #14
  %node_name.i = getelementptr %struct.dfs_info3_param, ptr %82, i32 %i.012.i, i32 5
  %87 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %node_name.i, align 4
  call void @kfree(ptr noundef %88) #14
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %84
  br i1 %exitcond.not.i, label %for.body.i28.for.end.i29_crit_edge, label %for.body.i28.for.body.i28_crit_edge

for.body.i28.for.body.i28_crit_edge:              ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i28

for.body.i28.for.end.i29_crit_edge:               ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i29

for.end.i29:                                      ; preds = %for.body.i28.for.end.i29_crit_edge, %for.cond.preheader.i.for.end.i29_crit_edge
  call void @kfree(ptr noundef nonnull %82) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end.i29, %dfs_cache_free_tgts.exit.cleanup_crit_edge, %if.then14, %land.lhs.true.cleanup_crit_edge, %do.body6, %do.body4.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tl) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numrefs) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tcon(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !267

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !275
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !276
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 609, ptr noundef nonnull @.str.65) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !278
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_dfs_referral(i32 noundef %xid, ptr noundef %ses, ptr noundef %path, ptr noundef %refs, ptr noundef %numrefs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dfs_referral.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_dfs_referral, %land.lhs.true)) #14
          to label %do.end13 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @get_dfs_referral._rs, ptr noundef nonnull @.str.67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_dfs_referral.descriptor, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.67, ptr noundef %path) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %1 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %refs, align 4
  %2 = ptrtoint ptr %numrefs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %numrefs, align 4
  %tobool14.not = icmp eq ptr %ses, null
  br i1 %tobool14.not, label %do.end13.cleanup_crit_edge, label %lor.lhs.false

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end13
  %server = getelementptr inbounds %struct.cifs_ses, ptr %ses, i32 0, i32 5
  %3 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %server, align 8
  %tobool15.not = icmp eq ptr %4, null
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %get_dfs_refer = getelementptr inbounds %struct.smb_version_operations, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %get_dfs_refer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_dfs_refer, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %lor.lhs.false16.cleanup_crit_edge, label %if.end20

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false16
  %9 = load ptr, ptr @cache_cp, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.end31, !prof !269

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %call35 = tail call i32 %8(i32 noundef %xid, ptr noundef nonnull %ses, ptr noundef %path, ptr noundef %refs, ptr noundef %numrefs, ptr noundef nonnull %9, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then37:                                        ; preds = %if.end31
  %10 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %refs, align 4
  %12 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numrefs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp54 = icmp sgt i32 %13, 0
  br i1 %cmp54, label %if.then37.for.body_crit_edge, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then37.for.body_crit_edge:                     ; preds = %if.then37
  br label %for.body

for.body:                                         ; preds = %convert_delimiter.exit.for.body_crit_edge, %if.then37.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %convert_delimiter.exit.for.body_crit_edge ], [ 0, %if.then37.for.body_crit_edge ]
  %path_name = getelementptr %struct.dfs_info3_param, ptr %11, i32 %i.055, i32 4
  %14 = ptrtoint ptr %path_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path_name, align 4
  %call1.i = tail call ptr @strchr(ptr noundef %15, i32 noundef 47) #14
  %tobool.not2.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not2.i, label %for.body.convert_delimiter.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.convert_delimiter.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %convert_delimiter.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call1.i, %for.body.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 92, ptr %call3.i, align 1
  %call.i = tail call ptr @strchr(ptr noundef nonnull %call3.i, i32 noundef 47) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.convert_delimiter.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.convert_delimiter.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %convert_delimiter.exit

convert_delimiter.exit:                           ; preds = %while.body.i.convert_delimiter.exit_crit_edge, %for.body.convert_delimiter.exit_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %17 = ptrtoint ptr %numrefs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numrefs, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %convert_delimiter.exit.for.body_crit_edge, label %convert_delimiter.exit.cleanup_crit_edge

convert_delimiter.exit.cleanup_crit_edge:         ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

convert_delimiter.exit.for.body_crit_edge:        ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %convert_delimiter.exit.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false16.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %do.end13.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ %call35, %if.end31.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %convert_delimiter.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !267

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !279
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !280
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_smb3_exit_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 558, ptr noundef nonnull @.str.65) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !278
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_done(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !267

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !262

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !281
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !282
  %13 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !262

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_smb3_exit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 610, ptr noundef nonnull @.str.65) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !278
  %31 = tail call i32 @llvm.read_register.i32(metadata !252) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_refs(ptr nocapture noundef readonly %refs, i32 noundef %numrefs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_refs.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_refs, %land.lhs.true)) #14
          to label %do.end13 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_refs._rs, ptr noundef nonnull @.str.69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_refs.descriptor, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numrefs)
  %cmp59 = icmp sgt i32 %numrefs, 0
  br i1 %cmp59, label %do.end13.for.body_crit_edge, label %do.end13.for.end_crit_edge

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end13.for.body_crit_edge:                      ; preds = %do.end13
  br label %for.body

for.body:                                         ; preds = %do.end44.for.body_crit_edge, %do.end13.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %do.end44.for.body_crit_edge ], [ 0, %do.end13.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.060
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and16 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.body.do.end44_crit_edge, label %do.body19

for.body.do.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end44

do.body19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_refs.descriptor.72, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_refs, %land.lhs.true31)) #14
          to label %do.end44 [label %land.lhs.true31], !srcloc !267

land.lhs.true31:                                  ; preds = %do.body19
  %call32 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_refs._rs.71, ptr noundef nonnull @.str.69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end44_crit_edge, label %if.then34

land.lhs.true31.do.end44_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end44

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %path_consumed = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.060, i32 1
  %4 = ptrtoint ptr %path_consumed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %path_consumed, align 4
  %server_type = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.060, i32 2
  %6 = ptrtoint ptr %server_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %server_type, align 4
  %ref_flag = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.060, i32 3
  %8 = ptrtoint ptr %ref_flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref_flag, align 4
  %path_name = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.060, i32 4
  %10 = ptrtoint ptr %path_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path_name, align 4
  %node_name = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.060, i32 5
  %12 = ptrtoint ptr %node_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node_name, align 4
  %ttl = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.060, i32 6
  %14 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ttl, align 4
  %div = sdiv i32 %15, 60
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_refs.descriptor.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %div) #14
  br label %do.end44

do.end44:                                         ; preds = %if.then34, %land.lhs.true31.do.end44_crit_edge, %do.body19, %for.body.do.end44_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %numrefs
  br i1 %exitcond.not, label %do.end44.for.end_crit_edge, label %do.end44.for.body_crit_edge

do.end44.for.body_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end44.for.end_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %do.end44.for.end_crit_edge, %do.end13.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_cache_entry_locked(ptr nocapture noundef %refs, i32 noundef %numrefs) unnamed_addr #0 align 64 {
entry:
  %hash = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash) #14
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hash, align 4, !annotation !268
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @htable_rw_lock, i32 noundef 4) #14
  %1 = load volatile i32, ptr @htable_rw_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !269

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 588, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @cache_count, i32 noundef 4) #14
  %2 = load volatile i32, ptr @cache_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %2)
  %cmp = icmp sgt i32 %2, 63
  br i1 %cmp, label %do.body24, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.body24:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.body24.do.end47_crit_edge, label %do.body27

do.body24.do.end47_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end47

do.body27:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_cache_entry_locked.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_cache_entry_locked, %land.lhs.true)) #14
          to label %do.end47 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body27
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @add_cache_entry_locked._rs, ptr noundef nonnull @.str.74) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true.do.end47_crit_edge, label %if.then39

land.lhs.true.do.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end47

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_cache_entry_locked.descriptor, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.74, i32 noundef 64) #14
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %land.lhs.true.do.end47_crit_edge, %do.body27, %do.body24.do.end47_crit_edge
  tail call fastcc void @remove_oldest_entry_locked()
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end.if.end48_crit_edge
  %path_name = getelementptr inbounds %struct.dfs_info3_param, ptr %refs, i32 0, i32 4
  %4 = ptrtoint ptr %path_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path_name, align 4
  %call51 = tail call i32 @strlen(ptr noundef %5) #17
  %call52 = call fastcc i32 @cache_entry_hash(ptr noundef %5, i32 noundef %call51, ptr noundef nonnull %hash)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %6 = load ptr, ptr @cache_slab, align 4
  %call.i.i87 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call.i.i87, null
  br i1 %tobool.not.i, label %if.end55.if.then58_crit_edge, label %if.end.i

if.end55.if.then58_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58

if.end.i:                                         ; preds = %if.end55
  %7 = ptrtoint ptr %path_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %path_name, align 4
  %path.i = getelementptr inbounds %struct.cache_entry, ptr %call.i.i87, i32 0, i32 1
  %9 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %path.i, align 8
  store ptr null, ptr %path_name, align 4
  %10 = ptrtoint ptr %call.i.i87 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %call.i.i87, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i.i87, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i, align 4
  %tlist.i = getelementptr inbounds %struct.cache_entry, ptr %call.i.i87, i32 0, i32 9
  %12 = ptrtoint ptr %tlist.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %tlist.i, ptr %tlist.i, align 8
  %prev.i.i = getelementptr inbounds %struct.cache_entry, ptr %call.i.i87, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tlist.i, ptr %prev.i.i, align 4
  %call4.i = tail call fastcc i32 @copy_ref_data(ptr noundef %refs, i32 noundef %numrefs, ptr noundef nonnull %call.i.i87, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.alloc_cache_entry.exit_crit_edge, label %if.then6.i

if.end.i.alloc_cache_entry.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_cache_entry.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path.i, align 8
  tail call void @kfree(ptr noundef %15) #14
  %16 = load ptr, ptr @cache_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %call.i.i87) #14
  %17 = inttoptr i32 %call4.i to ptr
  br label %alloc_cache_entry.exit

alloc_cache_entry.exit:                           ; preds = %if.then6.i, %if.end.i.alloc_cache_entry.exit_crit_edge
  %retval.0.i88 = phi ptr [ %17, %if.then6.i ], [ %call.i.i87, %if.end.i.alloc_cache_entry.exit_crit_edge ]
  %cmp.i89 = icmp ugt ptr %retval.0.i88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %alloc_cache_entry.exit.if.then58_crit_edge, label %if.end60

alloc_cache_entry.exit.if.then58_crit_edge:       ; preds = %alloc_cache_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58

if.then58:                                        ; preds = %alloc_cache_entry.exit.if.then58_crit_edge, %if.end55.if.then58_crit_edge
  %retval.0.i8896 = phi ptr [ %retval.0.i88, %alloc_cache_entry.exit.if.then58_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end55.if.then58_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i8896 to i32
  br label %cleanup

if.end60:                                         ; preds = %alloc_cache_entry.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @cache_ttl_lock) #14
  %19 = load i32, ptr @cache_ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool61.not = icmp eq i32 %19, 0
  %ttl = getelementptr inbounds %struct.cache_entry, ptr %retval.0.i88, i32 0, i32 3
  %20 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ttl, align 8
  br i1 %tobool61.not, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %21, ptr @cache_ttl, align 4
  %22 = load ptr, ptr @dfscache_wq, align 4
  %mul = mul i32 %21, 100
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef nonnull @refresh_task, i32 noundef %mul) #14
  br label %if.end70

if.else64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %23 = tail call i32 @llvm.smin.i32(i32 %19, i32 %21)
  store i32 %23, ptr @cache_ttl, align 4
  %24 = load ptr, ptr @dfscache_wq, align 4
  %mul68 = mul i32 %23, 100
  %call.i90 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef nonnull @refresh_task, i32 noundef %mul68) #14
  br label %if.end70

if.end70:                                         ; preds = %if.else64, %if.then62
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cache_ttl_lock) #14
  %25 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash, align 4
  %arrayidx71 = getelementptr [32 x %struct.hlist_head], ptr @cache_htable, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx71, align 4
  %29 = ptrtoint ptr %retval.0.i88 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %retval.0.i88, align 4
  %tobool.not.i91 = icmp eq ptr %28, null
  br i1 %tobool.not.i91, label %if.end70.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end70.hlist_add_head.exit_crit_edge:           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %retval.0.i88, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end70.hlist_add_head.exit_crit_edge
  %31 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %retval.0.i88, ptr %arrayidx71, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %retval.0.i88, i32 0, i32 1
  %32 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx71, ptr %pprev34.i, align 4
  tail call fastcc void @dump_ce(ptr noundef %retval.0.i88)
  %call.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cache_count, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull @cache_count, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cache_count, ptr nonnull @cache_count, i32 1, ptr nonnull elementtype(i32) @cache_count) #14, !srcloc !283
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %if.then58, %if.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then58 ], [ 0, %hlist_add_head.exit ], [ %call52, %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_cache_entry_locked(ptr noundef %ce, ptr nocapture noundef readonly %refs, i32 noundef %numrefs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @htable_rw_lock, i32 noundef 4) #14
  %0 = load volatile i32, ptr @htable_rw_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i.not = icmp eq i32 %0, 0
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !269

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 738, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tgthint = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 10
  %1 = ptrtoint ptr %tgthint to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tgthint, align 8
  %tobool21.not = icmp eq ptr %2, null
  br i1 %tobool21.not, label %if.end.if.end28_crit_edge, label %if.then22

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then22:                                        ; preds = %if.end
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call24 = tail call noalias ptr @kstrdup(ptr noundef %4, i32 noundef 2592) #14
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then22.cleanup_crit_edge, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %th.0 = phi ptr [ %call24, %if.then22.if.end28_crit_edge ], [ null, %if.end.if.end28_crit_edge ]
  %tlist.i = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 9
  %5 = ptrtoint ptr %tlist.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tlist.i, align 8
  %cmp.not20.i = icmp eq ptr %6, %tlist.i
  br i1 %cmp.not20.i, label %if.end28.free_tgts.exit_crit_edge, label %if.end28.for.body.i_crit_edge

if.end28.for.body.i_crit_edge:                    ; preds = %if.end28
  br label %for.body.i

if.end28.free_tgts.exit_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_tgts.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end28.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %6, %if.end28.for.body.i_crit_edge ]
  %t.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -8
  %7 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #14
  br i1 %call.i.i.i39, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %t.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t.0.i, align 4
  tail call void @kfree(ptr noundef %17) #14
  tail call void @kfree(ptr noundef %t.0.i) #14
  %cmp.not.i = icmp eq ptr %.pn.i, %tlist.i
  br i1 %cmp.not.i, label %list_del.exit.i.free_tgts.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.free_tgts.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_tgts.exit

free_tgts.exit:                                   ; preds = %list_del.exit.i.free_tgts.exit_crit_edge, %if.end28.free_tgts.exit_crit_edge
  %numtgts = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 8
  %18 = ptrtoint ptr %numtgts to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %numtgts, align 4
  %call29 = tail call fastcc i32 @copy_ref_data(ptr noundef %refs, i32 noundef %numrefs, ptr noundef %ce, ptr noundef %th.0)
  tail call void @kfree(ptr noundef %th.0) #14
  br label %cleanup

cleanup:                                          ; preds = %free_tgts.exit, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %free_tgts.exit ], [ -12, %if.then22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_for_reconnect_if_needed(ptr nocapture noundef readonly %tcon, ptr noundef %tl, ptr nocapture noundef readonly %refs, i32 noundef %numrefs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tl, null
  br i1 %tobool.not.i, label %entry.do.body8_crit_edge, label %if.end.i

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8

if.end.i:                                         ; preds = %entry
  %tl_list.i = getelementptr inbounds %struct.dfs_cache_tgt_list, ptr %tl, i32 0, i32 1
  %0 = ptrtoint ptr %tl_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tl_list.i, align 4
  %cmp.not.i = icmp eq ptr %1, %tl_list.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %tobool.not44 = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %cmp.not.i, %tobool.not44
  br i1 %or.cond, label %if.end.i.do.body8_crit_edge, label %for.cond1.preheader.lr.ph

if.end.i.do.body8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8

for.cond1.preheader.lr.ph:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numrefs)
  %cmp42 = icmp sgt i32 %numrefs, 0
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %tl_list.i37 = getelementptr inbounds %struct.dfs_cache_tgt_list, ptr %tl, i32 0, i32 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %lor.lhs.false4.i.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %it.045 = phi ptr [ %add.ptr.i, %for.cond1.preheader.lr.ph ], [ %add.ptr.i38, %lor.lhs.false4.i.for.cond1.preheader_crit_edge ]
  br i1 %cmp42, label %for.cond1.preheader.dfs_cache_get_tgt_name.exit_crit_edge, label %for.cond1.preheader.lor.lhs.false.i_crit_edge

for.cond1.preheader.lor.lhs.false.i_crit_edge:    ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

for.cond1.preheader.dfs_cache_get_tgt_name.exit_crit_edge: ; preds = %for.cond1.preheader
  br label %dfs_cache_get_tgt_name.exit

for.cond1:                                        ; preds = %dfs_cache_get_tgt_name.exit
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %numrefs
  br i1 %exitcond.not, label %for.inc5, label %for.cond1.dfs_cache_get_tgt_name.exit_crit_edge

for.cond1.dfs_cache_get_tgt_name.exit_crit_edge:  ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #16
  br label %dfs_cache_get_tgt_name.exit

dfs_cache_get_tgt_name.exit:                      ; preds = %for.cond1.dfs_cache_get_tgt_name.exit_crit_edge, %for.cond1.preheader.dfs_cache_get_tgt_name.exit_crit_edge
  %i.043 = phi i32 [ %inc, %for.cond1.dfs_cache_get_tgt_name.exit_crit_edge ], [ 0, %for.cond1.preheader.dfs_cache_get_tgt_name.exit_crit_edge ]
  %2 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server, align 8
  %6 = ptrtoint ptr %it.045 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %it.045, align 4
  %node_name = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.043, i32 5
  %8 = ptrtoint ptr %node_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node_name, align 4
  %call4 = tail call fastcc zeroext i1 @target_share_equal(ptr noundef %5, ptr noundef %7, ptr noundef %9)
  br i1 %call4, label %dfs_cache_get_tgt_name.exit.cleanup_crit_edge, label %for.cond1

dfs_cache_get_tgt_name.exit.cleanup_crit_edge:    ; preds = %dfs_cache_get_tgt_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc5:                                         ; preds = %for.cond1
  br i1 %tobool.not.i, label %for.inc5.do.body8_crit_edge, label %for.inc5.lor.lhs.false.i_crit_edge

for.inc5.lor.lhs.false.i_crit_edge:               ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

for.inc5.do.body8_crit_edge:                      ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8

lor.lhs.false.i:                                  ; preds = %for.inc5.lor.lhs.false.i_crit_edge, %for.cond1.preheader.lor.lhs.false.i_crit_edge
  %10 = ptrtoint ptr %tl_list.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %tl_list.i37, align 4
  %cmp.i.i = icmp eq ptr %11, %tl_list.i37
  br i1 %cmp.i.i, label %lor.lhs.false.i.do.body8_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.do.body8_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %it_list.i = getelementptr inbounds %struct.dfs_cache_tgt_iterator, ptr %it.045, i32 0, i32 2
  %12 = ptrtoint ptr %it_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %it_list.i, align 4
  %cmp.i13.not.i = icmp eq ptr %13, %tl_list.i37
  %add.ptr.i38 = getelementptr i8, ptr %13, i32 -8
  %tobool.not = icmp eq ptr %add.ptr.i38, null
  %or.cond51 = or i1 %cmp.i13.not.i, %tobool.not
  br i1 %or.cond51, label %lor.lhs.false4.i.do.body8_crit_edge, label %lor.lhs.false4.i.for.cond1.preheader_crit_edge

lor.lhs.false4.i.for.cond1.preheader_crit_edge:   ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader

lor.lhs.false4.i.do.body8_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8

do.body8:                                         ; preds = %lor.lhs.false4.i.do.body8_crit_edge, %lor.lhs.false.i.do.body8_crit_edge, %for.inc5.do.body8_crit_edge, %if.end.i.do.body8_crit_edge, %entry.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body8.do.end24_crit_edge, label %do.body11

do.body8.do.end24_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

do.body11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mark_for_reconnect_if_needed.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mark_for_reconnect_if_needed, %land.lhs.true)) #14
          to label %do.end24 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body11
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @mark_for_reconnect_if_needed._rs, ptr noundef nonnull @.str.89) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end24_crit_edge, label %if.then18

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mark_for_reconnect_if_needed.descriptor, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.89) #14
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %land.lhs.true.do.end24_crit_edge, %do.body11, %do.body8.do.end24_crit_edge
  %ses25 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %15 = ptrtoint ptr %ses25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ses25, align 8
  %server26 = getelementptr inbounds %struct.cifs_ses, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %server26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %server26, align 8
  tail call void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef %18, i1 noundef zeroext true) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %dfs_cache_get_tgt_name.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @extract_unc_hostname(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_enter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_err(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_done(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_oldest_entry_locked() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @htable_rw_lock, i32 noundef 4) #14
  %0 = load volatile i32, ptr @htable_rw_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i.not = icmp eq i32 %0, 0
  br i1 %cmp.i.not, label %do.end, label %entry.for.body.preheader_crit_edge, !prof !269

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 557, i32 noundef 9, ptr noundef null) #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.preheader
  %i.0142 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %to_del.0141 = phi ptr [ %to_del.1.lcssa, %for.end.for.body_crit_edge ], [ null, %for.body.preheader ]
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @cache_htable, i32 0, i32 %i.0142
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %ce.0137 = load ptr, ptr %arrayidx, align 4
  %tobool25.not138 = icmp eq ptr %ce.0137, null
  br i1 %tobool25.not138, label %for.body.for.end_crit_edge, label %for.body.for.body26_crit_edge

for.body.for.body26_crit_edge:                    ; preds = %for.body
  br label %for.body26

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %for.body.for.body26_crit_edge
  %ce.0140 = phi ptr [ %ce.0, %for.inc.for.body26_crit_edge ], [ %ce.0137, %for.body.for.body26_crit_edge ]
  %to_del.1139 = phi ptr [ %to_del.2, %for.inc.for.body26_crit_edge ], [ %to_del.0141, %for.body.for.body26_crit_edge ]
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %ce.0140, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.not, label %for.body26.for.inc_crit_edge, label %if.end30

for.body26.for.inc_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end30:                                         ; preds = %for.body26
  %tobool31.not = icmp eq ptr %to_del.1139, null
  br i1 %tobool31.not, label %if.end30.if.then35_crit_edge, label %lor.lhs.false

if.end30.if.then35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end30
  %etime = getelementptr inbounds %struct.cache_entry, ptr %ce.0140, i32 0, i32 6
  %etime32 = getelementptr inbounds %struct.cache_entry, ptr %to_del.1139, i32 0, i32 6
  %4 = ptrtoint ptr %etime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %etime, align 8
  %6 = ptrtoint ptr %etime32 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %etime32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.i128 = icmp slt i64 %5, %7
  br i1 %cmp.i128, label %lor.lhs.false.if.then35_crit_edge, label %if.end.i

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp4.i = icmp sgt i64 %5, %7
  br i1 %cmp4.i, label %if.end.i.for.inc_crit_edge, label %timespec64_compare.exit

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

timespec64_compare.exit:                          ; preds = %if.end.i
  %tv_nsec.i = getelementptr inbounds %struct.cache_entry, ptr %ce.0140, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec7.i = getelementptr inbounds %struct.cache_entry, ptr %to_del.1139, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec7.i, align 8
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp34 = icmp slt i32 %sub.i, 0
  br i1 %cmp34, label %timespec64_compare.exit.if.then35_crit_edge, label %timespec64_compare.exit.for.inc_crit_edge

timespec64_compare.exit.for.inc_crit_edge:        ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

timespec64_compare.exit.if.then35_crit_edge:      ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.then35:                                        ; preds = %timespec64_compare.exit.if.then35_crit_edge, %lor.lhs.false.if.then35_crit_edge, %if.end30.if.then35_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %timespec64_compare.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body26.for.inc_crit_edge
  %to_del.2 = phi ptr [ %to_del.1139, %for.body26.for.inc_crit_edge ], [ %ce.0140, %if.then35 ], [ %to_del.1139, %timespec64_compare.exit.for.inc_crit_edge ], [ %to_del.1139, %if.end.i.for.inc_crit_edge ]
  %12 = ptrtoint ptr %ce.0140 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ce.0 = load ptr, ptr %ce.0140, align 4
  %tobool25.not = icmp eq ptr %ce.0, null
  br i1 %tobool25.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %to_del.1.lcssa = phi ptr [ %to_del.0141, %for.body.for.end_crit_edge ], [ %to_del.2, %for.inc.for.end_crit_edge ]
  %inc = add nuw nsw i32 %i.0142, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end49, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end49:                                        ; preds = %for.end
  %tobool50.not = icmp eq ptr %to_del.1.lcssa, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %do.body53, label %do.body79

do.body53:                                        ; preds = %for.end49
  br i1 %tobool54.not, label %do.body53.cleanup_crit_edge, label %do.body56

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body56:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_oldest_entry_locked.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_oldest_entry_locked, %land.lhs.true)) #14
          to label %cleanup [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body56
  %call66 = tail call i32 @___ratelimit(ptr noundef nonnull @remove_oldest_entry_locked._rs, ptr noundef nonnull @.str.76) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true.cleanup_crit_edge, label %if.then68

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remove_oldest_entry_locked.descriptor, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.76) #14
  br label %cleanup

do.body79:                                        ; preds = %for.end49
  br i1 %tobool54.not, label %do.body79.do.end107_crit_edge, label %do.body83

do.body79.do.end107_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end107

do.body83:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_oldest_entry_locked.descriptor.79, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_oldest_entry_locked, %land.lhs.true95)) #14
          to label %do.end107 [label %land.lhs.true95], !srcloc !267

land.lhs.true95:                                  ; preds = %do.body83
  %call96 = tail call i32 @___ratelimit(ptr noundef nonnull @remove_oldest_entry_locked._rs.78, ptr noundef nonnull @.str.76) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true95.do.end107_crit_edge, label %if.then98

land.lhs.true95.do.end107_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end107

if.then98:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remove_oldest_entry_locked.descriptor.79, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.76) #14
  br label %do.end107

do.end107:                                        ; preds = %if.then98, %land.lhs.true95.do.end107_crit_edge, %do.body83, %do.body79.do.end107_crit_edge
  tail call fastcc void @dump_ce(ptr noundef nonnull %to_del.1.lcssa)
  tail call fastcc void @flush_cache_ent(ptr noundef nonnull %to_del.1.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %if.then68, %land.lhs.true.cleanup_crit_edge, %do.body56, %do.body53.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cache_entry_hash(ptr noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %hash) unnamed_addr #0 align 64 {
entry:
  %c = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c) #14
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %c, align 2, !annotation !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp28 = icmp sgt i32 %size, 0
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %entry.for.body_crit_edge
  %h.030 = phi i32 [ %sub105.i, %if.end13.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.029 = phi i32 [ %add, %if.end13.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @cache_cp, align 4
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %char2uni, align 4
  %arrayidx = getelementptr i8, ptr %data, i32 %i.029
  %sub = sub i32 %size, %i.029
  %call = call i32 %3(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.body3, label %if.end13, !prof !269

do.body3:                                         ; preds = %for.body
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @cache_entry_hash._rs, ptr noundef nonnull @__func__.cache_entry_hash) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body3.cleanup_crit_edge, label %do.end

do.body3.cleanup_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.cache_entry_hash) #18
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %c, align 2
  %call14 = call zeroext i16 @cifs_toupper(i16 noundef zeroext %5) #14
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call14, ptr %c, align 2
  %add1.i = add i32 %h.030, -559038735
  %7 = shl i16 %call14, 8
  %shl79.i = zext i16 %7 to i32
  %add80.i = add i32 %add1.i, %shl79.i
  %8 = lshr i16 %call14, 8
  %9 = zext i16 %8 to i32
  %add84.i = add i32 %add80.i, %9
  %or.i.i = call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #14
  %sub87.i = sub i32 0, %or.i.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i1.i = call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #14
  %sub90.i = sub i32 %xor88.i, %or.i1.i
  %xor91.i = xor i32 %sub90.i, %add1.i
  %or.i2.i = call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #14
  %sub93.i = sub i32 %xor91.i, %or.i2.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i3.i = call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #14
  %sub96.i = sub i32 %xor94.i, %or.i3.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i4.i = call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #14
  %sub99.i = sub i32 %xor97.i, %or.i4.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i5.i = call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #14
  %sub102.i = sub i32 %xor100.i, %or.i5.i
  %or.i6.i = call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #14
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %sub105.i = sub i32 %xor103.i, %or.i6.i
  %add = add i32 %call, %i.029
  %cmp = icmp slt i32 %add, %size
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %for.end.loopexit

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %phi.bo = and i32 %sub105.i, 31
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %h.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %10 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %h.0.lcssa, ptr %hash, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %do.body3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %do.end ], [ %call, %do.body3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_ce(ptr noundef readonly %ce) unnamed_addr #6 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end22_crit_edge, label %do.body2

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_ce.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_ce, %land.lhs.true)) #14
          to label %do.end22 [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_ce._rs, ptr noundef nonnull @.str.82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end22_crit_edge, label %if.then8

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

if.then8:                                         ; preds = %land.lhs.true
  %path = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 1
  %1 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %path, align 8
  %srvtype = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 4
  %3 = ptrtoint ptr %srvtype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srvtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  %cond = select i1 %cmp, ptr @.str.41, ptr @.str.42
  %ttl = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 3
  %5 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ttl, align 8
  %tv_nsec = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec, align 8
  %hdr_flags = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 2
  %9 = ptrtoint ptr %hdr_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hdr_flags, align 4
  %ref_flags = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 5
  %11 = ptrtoint ptr %ref_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_flags, align 8
  %and10 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and13 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %phi.sel = select i1 %tobool14.not, ptr @.str.43, ptr @.str.44
  %13 = select i1 %tobool11.not, ptr @.str.44, ptr %phi.sel
  %path_consumed = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 7
  %14 = ptrtoint ptr %path_consumed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %path_consumed, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #14
  %16 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %ts.i) #14
  %etime.i = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 6
  %17 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ts.i, align 8
  %19 = ptrtoint ptr %etime.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %etime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp.i.i = icmp slt i64 %18, %20
  br i1 %cmp.i.i, label %cache_entry_expired.exit.thread35, label %if.end.i.i

cache_entry_expired.exit.thread35:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %26

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp4.i.i = icmp sgt i64 %18, %20
  br i1 %cmp4.i.i, label %cache_entry_expired.exit.thread, label %cache_entry_expired.exit

cache_entry_expired.exit.thread:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br label %25

cache_entry_expired.exit:                         ; preds = %if.end.i.i
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %21 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_nsec.i.i, align 8
  %23 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tv_nsec, align 8
  %sub.i.i = sub i32 %22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %phi.cmp.i = icmp sgt i32 %sub.i.i, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #14
  br i1 %phi.cmp.i, label %cache_entry_expired.exit._crit_edge, label %cache_entry_expired.exit._crit_edge37

cache_entry_expired.exit._crit_edge37:            ; preds = %cache_entry_expired.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %26

cache_entry_expired.exit._crit_edge:              ; preds = %cache_entry_expired.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %25

25:                                               ; preds = %cache_entry_expired.exit._crit_edge, %cache_entry_expired.exit.thread
  br label %26

26:                                               ; preds = %25, %cache_entry_expired.exit._crit_edge37, %cache_entry_expired.exit.thread35
  %27 = phi ptr [ @.str.43, %25 ], [ @.str.44, %cache_entry_expired.exit._crit_edge37 ], [ @.str.44, %cache_entry_expired.exit.thread35 ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_ce.descriptor, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2, ptr noundef %2, ptr noundef nonnull %cond, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, i32 noundef %15, ptr noundef nonnull %27) #14
  br label %do.end22

do.end22:                                         ; preds = %26, %land.lhs.true.do.end22_crit_edge, %do.body2, %entry.do.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %28 = load i32, ptr @cifsFYI, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end22.do.end13.i_crit_edge, label %do.body2.i

do.end22.do.end13.i_crit_edge:                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

do.body2.i:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_tgts.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_ce, %land.lhs.true.i)) #14
          to label %do.end13.i [label %land.lhs.true.i], !srcloc !267

land.lhs.true.i:                                  ; preds = %do.body2.i
  %call6.i = call i32 @___ratelimit(ptr noundef nonnull @dump_tgts._rs, ptr noundef nonnull @.str.84) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end13.i_crit_edge, label %if.then8.i

land.lhs.true.i.do.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_tgts.descriptor, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.2) #14
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then8.i, %land.lhs.true.i.do.end13.i_crit_edge, %do.body2.i, %do.end22.do.end13.i_crit_edge
  %tlist.i = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 9
  %29 = ptrtoint ptr %tlist.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn64.i = load ptr, ptr %tlist.i, align 4
  %cmp.not66.i = icmp eq ptr %.pn64.i, %tlist.i
  br i1 %cmp.not66.i, label %do.end13.i.dump_tgts.exit_crit_edge, label %do.body19.lr.ph.i

do.end13.i.dump_tgts.exit_crit_edge:              ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_tgts.exit

do.body19.lr.ph.i:                                ; preds = %do.end13.i
  %tgthint.i = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 10
  br label %do.body19.i

do.body19.i:                                      ; preds = %for.inc.i.do.body19.i_crit_edge, %do.body19.lr.ph.i
  %.pn67.i = phi ptr [ %.pn64.i, %do.body19.lr.ph.i ], [ %.pn.i, %for.inc.i.do.body19.i_crit_edge ]
  %t.068.i = getelementptr i8, ptr %.pn67.i, i32 -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %30 = load i32, ptr @cifsFYI, align 4
  %and20.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.for.inc.i_crit_edge, label %do.body23.i

do.body19.i.for.inc.i_crit_edge:                  ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

do.body23.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_tgts.descriptor.87, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_ce, %land.lhs.true35.i)) #14
          to label %for.inc.i [label %land.lhs.true35.i], !srcloc !267

land.lhs.true35.i:                                ; preds = %do.body23.i
  %call36.i = call i32 @___ratelimit(ptr noundef nonnull @dump_tgts._rs.86, ptr noundef nonnull @.str.84) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true35.i.for.inc.i_crit_edge, label %if.then38.i

land.lhs.true35.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then38.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %t.068.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t.068.i, align 4
  %33 = ptrtoint ptr %tgthint.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tgthint.i, align 8
  %cmp39.i = icmp eq ptr %34, %t.068.i
  %cond.i = select i1 %cmp39.i, ptr @.str.46, ptr @.str.47
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_tgts.descriptor.87, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.2, ptr noundef %32, ptr noundef nonnull %cond.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then38.i, %land.lhs.true35.i.for.inc.i_crit_edge, %do.body23.i, %do.body19.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %.pn67.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn67.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tlist.i
  br i1 %cmp.not.i, label %for.inc.i.dump_tgts.exit_crit_edge, label %for.inc.i.do.body19.i_crit_edge

for.inc.i.do.body19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body19.i

for.inc.i.dump_tgts.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dump_tgts.exit

dump_tgts.exit:                                   ; preds = %for.inc.i.dump_tgts.exit_crit_edge, %do.end13.i.dump_tgts.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_cache_ent(ptr noundef %ce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %ce, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i3.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %ce to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ce, align 4
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  %path = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 1
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %path, align 8
  tail call void @kfree(ptr noundef %9) #14
  %tlist.i = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 9
  %10 = ptrtoint ptr %tlist.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tlist.i, align 8
  %cmp.not20.i = icmp eq ptr %11, %tlist.i
  br i1 %cmp.not20.i, label %hlist_del_init.exit.free_tgts.exit_crit_edge, label %hlist_del_init.exit.for.body.i_crit_edge

hlist_del_init.exit.for.body.i_crit_edge:         ; preds = %hlist_del_init.exit
  br label %for.body.i

hlist_del_init.exit.free_tgts.exit_crit_edge:     ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_tgts.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %hlist_del_init.exit.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %11, %hlist_del_init.exit.for.body.i_crit_edge ]
  %t.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -8
  %12 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %t.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t.0.i, align 4
  tail call void @kfree(ptr noundef %22) #14
  tail call void @kfree(ptr noundef %t.0.i) #14
  %cmp.not.i = icmp eq ptr %.pn.i, %tlist.i
  br i1 %cmp.not.i, label %list_del.exit.i.free_tgts.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del.exit.i.free_tgts.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_tgts.exit

free_tgts.exit:                                   ; preds = %list_del.exit.i.free_tgts.exit_crit_edge, %hlist_del_init.exit.free_tgts.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cache_count, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull @cache_count, i32 1, i32 3, i32 1) #14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cache_count, ptr nonnull @cache_count, i32 1, ptr nonnull elementtype(i32) @cache_count) #14, !srcloc !284
  %24 = load ptr, ptr @cache_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef %ce) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cifs_toupper(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_ref_data(ptr nocapture noundef readonly %refs, i32 noundef %numrefs, ptr noundef %ce, ptr noundef readonly %tgthint) unnamed_addr #0 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  %tmp2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ttl = getelementptr inbounds %struct.dfs_info3_param, ptr %refs, i32 0, i32 6
  %0 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ttl, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 120)
  %ttl1 = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 3
  %3 = ptrtoint ptr %ttl1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ttl1, align 8
  %etime = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %conv.i81 = zext i32 %2 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #14, !noalias !285
  %4 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %now.i) #14, !noalias !285
  %5 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.0.load.i = load i64, ptr %now.i, align 8, !noalias !285
  %.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %now.i, i32 0, i32 1
  %6 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8, !noalias !285
  %7 = call ptr @memset(ptr %tmp2, i32 255, i32 16)
  %add.i.i = add i64 %.fca.0.load.i, %conv.i81
  %conv.i.i = ashr i64 %.fca.1.load.i, 32
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp2, i64 noundef %add.i.i, i64 noundef %conv.i.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #14, !noalias !285
  %8 = call ptr @memcpy(ptr %etime, ptr %tmp2, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2) #14
  %server_type = getelementptr inbounds %struct.dfs_info3_param, ptr %refs, i32 0, i32 2
  %9 = ptrtoint ptr %server_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %server_type, align 4
  %srvtype = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 4
  %11 = ptrtoint ptr %srvtype to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %srvtype, align 4
  %12 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refs, align 4
  %hdr_flags = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 2
  %14 = ptrtoint ptr %hdr_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hdr_flags, align 4
  %ref_flag = getelementptr inbounds %struct.dfs_info3_param, ptr %refs, i32 0, i32 3
  %15 = ptrtoint ptr %ref_flag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_flag, align 4
  %ref_flags = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 5
  %17 = ptrtoint ptr %ref_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ref_flags, align 8
  %path_consumed = getelementptr inbounds %struct.dfs_info3_param, ptr %refs, i32 0, i32 1
  %18 = ptrtoint ptr %path_consumed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %path_consumed, align 4
  %path_consumed8 = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 7
  %20 = ptrtoint ptr %path_consumed8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %path_consumed8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numrefs)
  %cmp983 = icmp sgt i32 %numrefs, 0
  br i1 %cmp983, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tlist = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 9, i32 1
  %numtgts = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup.thread.for.body_crit_edge, %for.body.lr.ph
  %tgthint.addr.085 = phi ptr [ %tgthint, %for.body.lr.ph ], [ %tgthint.addr.1, %cleanup.thread.for.body_crit_edge ]
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %cleanup.thread.for.body_crit_edge ]
  %node_name = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.084, i32 5
  %21 = ptrtoint ptr %node_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node_name, align 4
  %path_consumed12 = getelementptr %struct.dfs_info3_param, ptr %refs, i32 %i.084, i32 1
  %23 = ptrtoint ptr %path_consumed12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %path_consumed12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 2592, i32 noundef 16) #19
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then_crit_edge, label %if.end.i

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %call2.i = call noalias ptr @kstrdup(ptr noundef %22, i32 noundef 2592) #14
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call2.i, ptr %call7.i.i, align 8
  %tobool5.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %alloc_target.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %if.then

alloc_target.exit:                                ; preds = %if.end.i
  %path_consumed9.i = getelementptr inbounds %struct.cache_dfs_tgt, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %path_consumed9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %path_consumed9.i, align 4
  %list.i = getelementptr inbounds %struct.cache_dfs_tgt, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.cache_dfs_tgt, ptr %call7.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i, ptr %prev.i.i, align 4
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_target.exit.if.then_crit_edge, label %if.end

alloc_target.exit.if.then_crit_edge:              ; preds = %alloc_target.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %alloc_target.exit.if.then_crit_edge, %if.then6.i, %for.body.if.then_crit_edge
  %retval.0.i72 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then6.i ], [ inttoptr (i32 -12 to ptr), %for.body.if.then_crit_edge ], [ %call7.i.i, %alloc_target.exit.if.then_crit_edge ]
  %30 = ptrtoint ptr %tlist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tlist, align 8
  %cmp.not20.i = icmp eq ptr %31, %tlist
  br i1 %cmp.not20.i, label %cleanup.thread80, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

cleanup.thread80:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %retval.0.i72 to i32
  br label %cleanup32

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn.in21.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %31, %if.then.for.body.i_crit_edge ]
  %t.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -8
  %33 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %40 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21.i, align 4
  %prev.i.i65 = getelementptr inbounds %struct.list_head, ptr %.pn.in21.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i65 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i65, align 4
  %42 = ptrtoint ptr %t.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t.0.i, align 4
  call void @kfree(ptr noundef %43) #14
  call void @kfree(ptr noundef %t.0.i) #14
  %cmp.not.i = icmp eq ptr %.pn.i, %tlist
  br i1 %cmp.not.i, label %cleanup, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end:                                           ; preds = %alloc_target.exit
  %tobool.not = icmp eq ptr %tgthint.addr.085, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %call15 = call i32 @strcasecmp(ptr noundef %45, ptr noundef nonnull %tgthint.addr.085)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true
  %46 = ptrtoint ptr %tlist to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tlist, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %tlist, ptr noundef %47) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then17.cleanup.thread_crit_edge

if.then17.cleanup.thread_crit_edge:               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  br label %cleanup.thread.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  %call.i.i66 = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %49, ptr noundef %tlist) #14
  br i1 %call.i.i66, label %if.else.cleanup.thread.sink.split_crit_edge, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.else.cleanup.thread.sink.split_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.sink.split

cleanup.thread.sink.split:                        ; preds = %if.else.cleanup.thread.sink.split_crit_edge, %if.end.i.i
  %prev1.i.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i ], [ %prev.i, %if.else.cleanup.thread.sink.split_crit_edge ]
  %.sink = phi ptr [ %47, %if.end.i.i ], [ %tlist, %if.else.cleanup.thread.sink.split_crit_edge ]
  %tlist.sink90 = phi ptr [ %tlist, %if.end.i.i ], [ %49, %if.else.cleanup.thread.sink.split_crit_edge ]
  %tgthint.addr.1.ph = phi ptr [ null, %if.end.i.i ], [ %tgthint.addr.085, %if.else.cleanup.thread.sink.split_crit_edge ]
  %50 = ptrtoint ptr %prev1.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list.i, ptr %prev1.i.i.sink, align 4
  %51 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.sink, ptr %list.i, align 8
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %tlist.sink90, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %tlist.sink90 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list.i, ptr %tlist.sink90, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.else.cleanup.thread_crit_edge, %if.then17.cleanup.thread_crit_edge
  %tgthint.addr.1 = phi ptr [ null, %if.then17.cleanup.thread_crit_edge ], [ %tgthint.addr.085, %if.else.cleanup.thread_crit_edge ], [ %tgthint.addr.1.ph, %cleanup.thread.sink.split ]
  %54 = ptrtoint ptr %numtgts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %numtgts, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %numtgts, align 4
  %inc21 = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc21, %numrefs
  br i1 %exitcond.not, label %cleanup.thread.for.end_crit_edge, label %cleanup.thread.for.body_crit_edge

cleanup.thread.for.body_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.thread.for.end_crit_edge:                 ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %retval.0.i72 to i32
  br label %cleanup32

for.end:                                          ; preds = %cleanup.thread.for.end_crit_edge, %entry.for.end_crit_edge
  %tlist22 = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 9
  %57 = ptrtoint ptr %tlist22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %tlist22, align 4
  %cmp25.not = icmp eq ptr %58, %tlist22
  %add.ptr = getelementptr i8, ptr %58, i32 -8
  %spec.select = select i1 %cmp25.not, ptr null, ptr %add.ptr
  %tgthint31 = getelementptr inbounds %struct.cache_entry, ptr %ce, i32 0, i32 10
  %59 = ptrtoint ptr %tgthint31 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %spec.select, ptr %tgthint31, align 8
  br label %cleanup32

cleanup32:                                        ; preds = %for.end, %cleanup, %cleanup.thread80
  %retval.2 = phi i32 [ %56, %cleanup ], [ 0, %for.end ], [ %32, %cleanup.thread80 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @target_share_equal(ptr noundef %server, ptr noundef %s1, ptr nocapture noundef readonly %s2) unnamed_addr #0 align 64 {
entry:
  %unc = alloca [83 x i8], align 1
  %host = alloca ptr, align 4
  %hostlen = alloca i32, align 4
  %ip = alloca ptr, align 4
  %sa = alloca %struct.sockaddr, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 83, ptr nonnull %unc) #14
  %0 = call ptr @memset(ptr %unc, i32 0, i32 83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #14
  %1 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hostlen) #14
  %2 = ptrtoint ptr %hostlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hostlen, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #14
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %ip, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #14
  %4 = call ptr @memset(ptr %sa, i32 255, i32 16)
  %call = tail call i32 @strcasecmp(ptr noundef %s1, ptr noundef %s2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @extract_unc_hostname(ptr noundef %s1, ptr noundef nonnull %host, ptr noundef nonnull %hostlen) #14
  %5 = ptrtoint ptr %hostlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hostlen, align 4
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %unc, i32 noundef 83, ptr noundef nonnull @.str.91, i32 noundef %6, ptr noundef %8) #14
  %call3 = call i32 @dns_resolve_server_name_to_ip(ptr noundef nonnull %unc, ptr noundef nonnull %ip, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.body5, label %if.end22

do.body5:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body5.cleanup_crit_edge, label %do.body8

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_share_equal.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_share_equal, %land.lhs.true)) #14
          to label %cleanup [label %land.lhs.true], !srcloc !267

land.lhs.true:                                    ; preds = %do.body8
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @target_share_equal._rs, ptr noundef nonnull @.str.92) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %if.then15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %hostlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hostlen, align 4
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_share_equal.descriptor, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.92, i32 noundef %11, ptr noundef %13) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip, align 4
  %call23 = call i32 @strlen(ptr noundef %15) #17
  %call24 = call i32 @cifs_convert_address(ptr noundef nonnull %sa, ptr noundef %15, i32 noundef %call23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body28, label %if.else42

do.body28:                                        ; preds = %if.end22
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @target_share_equal._rs.94, ptr noundef nonnull @.str.92) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body28.if.end46_crit_edge, label %do.end34

do.body28.if.end46_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.92, ptr noundef %17) #18
  br label %if.end46

if.else42:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #14
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10
  %call43 = call zeroext i1 @cifs_match_ipaddr(ptr noundef %dstaddr, ptr noundef nonnull %sa) #14
  call void @mutex_unlock(ptr noundef %srv_mutex) #14
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %do.end34, %do.body28.if.end46_crit_edge
  %match.0.off0 = phi i1 [ %call43, %if.else42 ], [ true, %do.end34 ], [ true, %do.body28.if.end46_crit_edge ]
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 4
  call void @kfree(ptr noundef %19) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then15, %land.lhs.true.cleanup_crit_edge, %do.body8, %do.body5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %match.0.off0, %if.end46 ], [ false, %entry.cleanup_crit_edge ], [ true, %do.body5.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %if.then15 ], [ true, %do.body8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hostlen) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #14
  call void @llvm.lifetime.end.p0(i64 83, ptr nonnull %unc) #14
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dns_resolve_server_name_to_ip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_convert_address(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cifs_match_ipaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_smb_ses(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__lookup_cache_entry(ptr noundef %path, i32 noundef %hash, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %c1.i = alloca i16, align 2
  %c2.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @cache_htable, i32 0, i32 %hash
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %ce.031 = load ptr, ptr %arrayidx, align 4
  %tobool2.not32 = icmp eq ptr %ce.031, null
  br i1 %tobool2.not32, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp149.i = icmp sgt i32 %len, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ce.033 = phi ptr [ %ce.0, %for.inc.for.body_crit_edge ], [ %ce.031, %for.body.preheader ]
  %path3 = getelementptr inbounds %struct.cache_entry, ptr %ce.033, i32 0, i32 1
  %1 = ptrtoint ptr %path3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %path3, align 8
  %call = call i32 @strlen(ptr noundef %2) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c1.i) #14
  %3 = ptrtoint ptr %c1.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %c1.i, align 2, !annotation !268
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c2.i) #14
  %4 = ptrtoint ptr %c2.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %c2.i, align 2, !annotation !268
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %len)
  %cmp.not.i = icmp eq i32 %call, %len
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.cond.preheader.i:                             ; preds = %for.body
  br i1 %cmp149.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.then_crit_edge

for.cond.preheader.i.if.then_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.050.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %5 = load ptr, ptr @cache_cp, align 4
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %char2uni.i, align 4
  %arrayidx.i = getelementptr i8, ptr %2, i32 %i.050.i
  %sub.i = sub i32 %len, %i.050.i
  %call.i = call i32 %7(ptr noundef %arrayidx.i, i32 noundef %sub.i, ptr noundef nonnull %c1.i) #14
  %8 = load ptr, ptr @cache_cp, align 4
  %char2uni2.i = getelementptr inbounds %struct.nls_table, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %char2uni2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %char2uni2.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %path, i32 %i.050.i
  %call5.i = call i32 %10(ptr noundef %arrayidx3.i, i32 noundef %sub.i, ptr noundef nonnull %c2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp7.i = icmp slt i32 %call5.i, 0
  %spec.select.i = select i1 %cmp6.i, i1 %cmp7.i, i1 false
  br i1 %spec.select.i, label %if.then9.i, label %if.end17.i, !prof !269

if.then9.i:                                       ; preds = %for.body.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp13.not.i = icmp eq i8 %12, %14
  br i1 %cmp13.not.i, label %if.then9.i.for.inc.i_crit_edge, label %if.then9.i.for.inc_crit_edge

if.then9.i.for.inc_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then9.i.for.inc.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end17.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call5.i)
  %cmp18.not.i = icmp eq i32 %call.i, %call5.i
  br i1 %cmp18.not.i, label %if.end21.i, label %if.end17.i.for.inc_crit_edge

if.end17.i.for.inc_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end21.i:                                       ; preds = %if.end17.i
  %15 = ptrtoint ptr %c1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %c1.i, align 2
  %call22.i = call zeroext i16 @cifs_toupper(i16 noundef zeroext %16) #14
  %17 = ptrtoint ptr %c2.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %c2.i, align 2
  %call24.i = call zeroext i16 @cifs_toupper(i16 noundef zeroext %18) #14
  call void @__sanitizer_cov_trace_cmp2(i16 %call22.i, i16 %call24.i)
  %cmp26.not.i = icmp eq i16 %call22.i, %call24.i
  br i1 %cmp26.not.i, label %if.end21.i.for.inc.i_crit_edge, label %if.end21.i.for.inc_crit_edge

if.end21.i.for.inc_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end21.i.for.inc.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end21.i.for.inc.i_crit_edge, %if.then9.i.for.inc.i_crit_edge
  %l1.0.i = phi i32 [ %call.i, %if.end21.i.for.inc.i_crit_edge ], [ 1, %if.then9.i.for.inc.i_crit_edge ]
  %add.i = add i32 %l1.0.i, %i.050.i
  %cmp1.i = icmp slt i32 %add.i, %len
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then_crit_edge

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %for.cond.preheader.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c2.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c1.i) #14
  call fastcc void @dump_ce(ptr noundef nonnull %ce.033)
  br label %cleanup

for.inc:                                          ; preds = %if.end21.i.for.inc_crit_edge, %if.end17.i.for.inc_crit_edge, %if.then9.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c2.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c1.i) #14
  %19 = ptrtoint ptr %ce.033 to i32
  call void @__asan_load4_noabort(i32 %19)
  %ce.0 = load ptr, ptr %ce.033, align 4
  %tobool2.not = icmp eq ptr %ce.0, null
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ce.033, %if.then ], [ inttoptr (i32 -17 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -17 to ptr), %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !142, !143, !144, !146, !147, !149, !150, !151, !152, !154, !155, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !210, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !223, !225, !226, !228, !229, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !245, !247, !248, !250, !251}
!llvm.named.register.sp = !{!252}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/dfs_cache.c", i32 200, i32 4}
!2 = !{ptr @dfs_cache_canonical_path._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.dfs_cache_canonical_path, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dfs_cache_canonical_path._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dfs_cache_canonical_path._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @dfs_cache_canonical_path._rs.3, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/dfs_cache.c", i32 208, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dfs_cache_canonical_path._entry.4, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @dfs_cache_canonical_path._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @dfscache_proc_ops, !14, !"dfscache_proc_ops", i1 false, i1 false}
!14 = !{!"../fs/cifs/dfs_cache.c", i32 329, i32 23}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/cifs/dfs_cache.c", i32 400, i32 32}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/cifs/dfs_cache.c", i32 404, i32 33}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/cifs/dfs_cache.c", i32 416, i32 22}
!21 = !{ptr @dfs_cache_init._rs, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../fs/cifs/dfs_cache.c", i32 420, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dfs_cache_init.descriptor, !22, !"descriptor", i1 false, i1 false}
!27 = !{ptr @dfs_cache_destroy._rs, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../fs/cifs/dfs_cache.c", i32 728, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dfs_cache_destroy.descriptor, !28, !"descriptor", i1 false, i1 false}
!32 = !{ptr @dfs_cache_noreq_find._rs, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../fs/cifs/dfs_cache.c", i32 1005, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dfs_cache_noreq_find.descriptor, !33, !"descriptor", i1 false, i1 false}
!37 = !{ptr @dfs_cache_update_tgthint._rs, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../fs/cifs/dfs_cache.c", i32 1058, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dfs_cache_update_tgthint.descriptor, !38, !"descriptor", i1 false, i1 false}
!42 = !{ptr @dfs_cache_update_tgthint._rs.19, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../fs/cifs/dfs_cache.c", i32 1080, i32 4}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dfs_cache_update_tgthint.descriptor.20, !43, !"descriptor", i1 false, i1 false}
!46 = !{ptr @dfs_cache_noreq_update_tgthint._rs, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../fs/cifs/dfs_cache.c", i32 1116, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dfs_cache_noreq_update_tgthint.descriptor, !47, !"descriptor", i1 false, i1 false}
!50 = !{ptr @dfs_cache_noreq_update_tgthint._rs.23, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/cifs/dfs_cache.c", i32 1135, i32 4}
!52 = !{ptr @dfs_cache_noreq_update_tgthint.descriptor.24, !51, !"descriptor", i1 false, i1 false}
!53 = !{ptr @dfs_cache_get_tgt_referral._rs, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../fs/cifs/dfs_cache.c", i32 1165, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dfs_cache_get_tgt_referral.descriptor, !54, !"descriptor", i1 false, i1 false}
!57 = !{ptr @dfs_cache_get_tgt_referral._rs.26, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../fs/cifs/dfs_cache.c", i32 1175, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dfs_cache_get_tgt_referral.descriptor.27, !58, !"descriptor", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../fs/cifs/dfs_cache.c", i32 1194, i32 6}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../fs/cifs/dfs_cache.c", i32 1198, i32 6}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/cifs/dfs_cache.c", i32 1291, i32 28}
!67 = !{ptr @dfs_cache_remount_fs._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/cifs/dfs_cache.c", i32 1459, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @dfs_cache_remount_fs.descriptor, !68, !"descriptor", i1 false, i1 false}
!72 = !{ptr @dfs_cache_remount_fs._rs.33, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../fs/cifs/dfs_cache.c", i32 1464, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dfs_cache_remount_fs.descriptor.34, !73, !"descriptor", i1 false, i1 false}
!76 = !{ptr @dfs_cache_remount_fs._rs.36, !77, !"_rs", i1 false, i1 false}
!77 = !{!"../fs/cifs/dfs_cache.c", i32 1472, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dfs_cache_remount_fs.descriptor.37, !77, !"descriptor", i1 false, i1 false}
!80 = !{ptr @cache_slab, !81, !"cache_slab", i1 false, i1 false}
!81 = !{!"../fs/cifs/dfs_cache.c", i32 63, i32 27}
!82 = !{ptr @dfscache_wq, !83, !"dfscache_wq", i1 false, i1 false}
!83 = !{!"../fs/cifs/dfs_cache.c", i32 64, i32 33}
!84 = !{ptr @cache_cp, !85, !"cache_cp", i1 false, i1 false}
!85 = !{!"../fs/cifs/dfs_cache.c", i32 69, i32 26}
!86 = !{ptr @cache_count, !87, !"cache_count", i1 false, i1 false}
!87 = !{!"../fs/cifs/dfs_cache.c", i32 74, i32 17}
!88 = !{ptr @cache_htable, !89, !"cache_htable", i1 false, i1 false}
!89 = !{!"../fs/cifs/dfs_cache.c", i32 76, i32 26}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/cifs/dfs_cache.c", i32 273, i32 14}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/cifs/dfs_cache.c", i32 284, i32 8}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/cifs/dfs_cache.c", i32 285, i32 49}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/cifs/dfs_cache.c", i32 285, i32 58}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/cifs/dfs_cache.c", i32 287, i32 42}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/cifs/dfs_cache.c", i32 287, i32 50}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/cifs/dfs_cache.c", i32 291, i32 19}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/cifs/dfs_cache.c", i32 293, i32 28}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/cifs/dfs_cache.c", i32 293, i32 47}
!108 = !{ptr @dfscache_proc_write._rs, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../fs/cifs/dfs_cache.c", i32 315, i32 2}
!110 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @dfscache_proc_write.descriptor, !109, !"descriptor", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/cifs/dfs_cache.c", i32 84, i32 8}
!115 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @refresh_task, !114, !"refresh_task", i1 false, i1 false}
!117 = !{ptr @mount_group_list, !118, !"mount_group_list", i1 false, i1 false}
!118 = !{!"../fs/cifs/dfs_cache.c", i32 79, i32 8}
!119 = !{ptr @__refresh_tcon._rs, !120, !"_rs", i1 false, i1 false}
!120 = !{!"../fs/cifs/dfs_cache.c", i32 1376, i32 3}
!121 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__refresh_tcon.descriptor, !120, !"descriptor", i1 false, i1 false}
!124 = !{ptr @__refresh_tcon._rs.54, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../fs/cifs/dfs_cache.c", i32 1386, i32 4}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @__refresh_tcon.descriptor.55, !125, !"descriptor", i1 false, i1 false}
!128 = !{ptr @__refresh_tcon._rs.57, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../fs/cifs/dfs_cache.c", i32 1395, i32 8}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @__refresh_tcon.descriptor.58, !129, !"descriptor", i1 false, i1 false}
!132 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!133 = !{ptr @__refresh_tcon._rs.60, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../fs/cifs/dfs_cache.c", i32 1397, i32 2}
!135 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @__refresh_tcon.descriptor.61, !134, !"descriptor", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/cifs/dfs_cache.c", i32 92, i32 25}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!141 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!143 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!146 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @get_dfs_referral._rs, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../fs/cifs/dfs_cache.c", i32 763, i32 2}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @get_dfs_referral.descriptor, !148, !"descriptor", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!154 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!157 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!158 = !{ptr @dump_refs._rs, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../fs/cifs/dfs_cache.c", i32 366, i32 2}
!160 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @dump_refs.descriptor, !159, !"descriptor", i1 false, i1 false}
!163 = !{ptr @dump_refs._rs.71, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../fs/cifs/dfs_cache.c", i32 370, i32 3}
!165 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @dump_refs.descriptor.72, !164, !"descriptor", i1 false, i1 false}
!167 = !{ptr @add_cache_entry_locked._rs, !168, !"_rs", i1 false, i1 false}
!168 = !{!"../fs/cifs/dfs_cache.c", i32 591, i32 3}
!169 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @add_cache_entry_locked.descriptor, !168, !"descriptor", i1 false, i1 false}
!172 = !{ptr @remove_oldest_entry_locked._rs, !173, !"_rs", i1 false, i1 false}
!173 = !{!"../fs/cifs/dfs_cache.c", i32 572, i32 3}
!174 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @remove_oldest_entry_locked.descriptor, !173, !"descriptor", i1 false, i1 false}
!177 = !{ptr @remove_oldest_entry_locked._rs.78, !178, !"_rs", i1 false, i1 false}
!178 = !{!"../fs/cifs/dfs_cache.c", i32 576, i32 2}
!179 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @remove_oldest_entry_locked.descriptor.79, !178, !"descriptor", i1 false, i1 false}
!181 = !{ptr @cache_entry_hash._rs, !182, !"_rs", i1 false, i1 false}
!182 = !{!"../fs/cifs/dfs_cache.c", i32 438, i32 4}
!183 = !{ptr @__func__.cache_entry_hash, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @cache_entry_hash._entry, !182, !"_entry", i1 false, i1 false}
!186 = !{ptr @cache_entry_hash._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @dump_ce._rs, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../fs/cifs/dfs_cache.c", i32 351, i32 2}
!189 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @dump_ce.descriptor, !188, !"descriptor", i1 false, i1 false}
!192 = !{ptr @dump_tgts._rs, !193, !"_rs", i1 false, i1 false}
!193 = !{!"../fs/cifs/dfs_cache.c", i32 342, i32 2}
!194 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @dump_tgts.descriptor, !193, !"descriptor", i1 false, i1 false}
!197 = !{ptr @dump_tgts._rs.86, !198, !"_rs", i1 false, i1 false}
!198 = !{!"../fs/cifs/dfs_cache.c", i32 344, i32 3}
!199 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @dump_tgts.descriptor.87, !198, !"descriptor", i1 false, i1 false}
!201 = !{ptr @mark_for_reconnect_if_needed._rs, !202, !"_rs", i1 false, i1 false}
!202 = !{!"../fs/cifs/dfs_cache.c", i32 1357, i32 2}
!203 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mark_for_reconnect_if_needed.descriptor, !202, !"descriptor", i1 false, i1 false}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/cifs/dfs_cache.c", i32 1317, i32 30}
!208 = !{ptr @target_share_equal._rs, !209, !"_rs", i1 false, i1 false}
!209 = !{!"../fs/cifs/dfs_cache.c", i32 1321, i32 3}
!210 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @target_share_equal.descriptor, !209, !"descriptor", i1 false, i1 false}
!213 = !{ptr @target_share_equal._rs.94, !214, !"_rs", i1 false, i1 false}
!214 = !{!"../fs/cifs/dfs_cache.c", i32 1327, i32 3}
!215 = !{ptr @.str.95, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @target_share_equal._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @target_share_equal._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @refresh_cache._rs, !219, !"_rs", i1 false, i1 false}
!219 = !{!"../fs/cifs/dfs_cache.c", i32 1588, i32 9}
!220 = !{ptr @.str.96, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @refresh_cache.descriptor, !219, !"descriptor", i1 false, i1 false}
!222 = distinct !{null, !219, !"__warned", i1 false, i1 false}
!223 = !{ptr @refresh_cache._rs.97, !224, !"_rs", i1 false, i1 false}
!224 = !{!"../fs/cifs/dfs_cache.c", i32 1590, i32 3}
!225 = !{ptr @refresh_cache.descriptor.98, !224, !"descriptor", i1 false, i1 false}
!226 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/cifs/dfs_cache.c", i32 67, i32 8}
!228 = !{ptr @cache_ttl_lock, !227, !"cache_ttl_lock", i1 false, i1 false}
!229 = !{ptr @cache_ttl, !230, !"cache_ttl", i1 false, i1 false}
!230 = !{!"../fs/cifs/dfs_cache.c", i32 66, i32 12}
!231 = !{ptr @cache_refresh_path._rs, !232, !"_rs", i1 false, i1 false}
!232 = !{!"../fs/cifs/dfs_cache.c", i32 801, i32 2}
!233 = !{ptr @.str.100, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @cache_refresh_path.descriptor, !232, !"descriptor", i1 false, i1 false}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/cifs/dfs_cache.c", i32 77, i32 8}
!238 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @htable_rw_lock, !237, !"htable_rw_lock", i1 false, i1 false}
!240 = !{ptr @setup_referral._rs, !241, !"_rs", i1 false, i1 false}
!241 = !{!"../fs/cifs/dfs_cache.c", i32 849, i32 2}
!242 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.105, !241, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @setup_referral.descriptor, !241, !"descriptor", i1 false, i1 false}
!245 = !{ptr @__get_mount_group_locked.__key, !246, !"__key", i1 false, i1 false}
!246 = !{!"../fs/cifs/dfs_cache.c", i32 151, i32 2}
!247 = !{ptr @.str.106, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../fs/cifs/dfs_cache.c", i32 80, i32 8}
!250 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @mount_group_list_lock, !249, !"mount_group_list_lock", i1 false, i1 false}
!252 = !{!"sp"}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{!"branch_weights", i32 2000, i32 1}
!263 = !{i64 5117870}
!264 = !{i64 5118067}
!265 = !{i64 2152603300}
!266 = !{i64 2159166517, i64 2159166797, i64 2159167131, i64 2159167465}
!267 = !{i64 2148810574, i64 2148810579, i64 2148810592, i64 2148810636, i64 2148810670, i64 2148810691}
!268 = !{!"auto-init"}
!269 = !{!"branch_weights", i32 1, i32 2000}
!270 = !{i64 2148206789, i64 2148206821, i64 2148206850, i64 2148206884, i64 2148206915, i64 2148206938}
!271 = !{i64 2148294790}
!272 = !{i64 2148209254, i64 2148209286, i64 2148209315, i64 2148209349, i64 2148209380, i64 2148209403}
!273 = !{i64 2149989156}
!274 = !{i8 0, i8 2}
!275 = !{i64 2158633371}
!276 = !{i64 2158633582}
!277 = !{i64 2150047258}
!278 = !{i64 2150048294}
!279 = !{i64 2158580368}
!280 = !{i64 2158580593}
!281 = !{i64 2158649763}
!282 = !{i64 2158649982}
!283 = !{i64 2148205259, i64 2148205285, i64 2148205314, i64 2148205348, i64 2148205379, i64 2148205402}
!284 = !{i64 2148207724, i64 2148207750, i64 2148207779, i64 2148207813, i64 2148207844, i64 2148207867}
!285 = !{!286}
!286 = distinct !{!286, !287, !"get_expire_time: %agg.result"}
!287 = distinct !{!287, !"get_expire_time"}
