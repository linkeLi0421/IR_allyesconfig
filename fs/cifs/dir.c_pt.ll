; ModuleID = '/llk/IR_all_yes/fs/cifs/dir.c_pt.bc'
source_filename = "../fs/cifs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.__kernel_sockaddr_storage = type { %union.anon.146 }
%union.anon.146 = type { ptr, [124 x i8] }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.150, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.143, %struct.list_head, %struct.list_head, %union.anon.144 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { %struct.spinlock, i32 }
%union.anon.143 = type { %struct.list_head }
%union.anon.144 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_pending_open = type { %struct.list_head, ptr, [16 x i8], i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.135, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.136, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.137, ptr, %struct.address_space, %struct.list_head, %union.anon.140, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.135 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.136 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.137 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.140 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cifs_open_parms = type { ptr, ptr, i32, i32, i32, ptr, ptr, i16, i8 }
%struct.cifs_unix_set_info_args = type { i64, i64, i64, i64, %struct.kuid_t, %struct.kgid_t, i32 }
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.4 = type { i32, i32 }

@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@build_path_from_dentry_optional_prefix._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@build_path_from_dentry_optional_prefix.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"build_path_from_dentry_optional_prefix\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/cifs/dir.c\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: using cifs_sb prepath <%s>\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_atomic_open._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_atomic_open.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cifs_atomic_open\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cifs_atomic_open._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_atomic_open.descriptor.8 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.9, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"CIFS: %s: parent inode = 0x%p name is: %pd and dentry = 0x%p\0A\00", [34 x i8] zeroinitializer }, align 32
@cifs_file_direct_nobrl_ops = external dso_local constant %struct.file_operations, align 4
@cifs_file_direct_ops = external dso_local constant %struct.file_operations, align 4
@cifs_atomic_open._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_atomic_open.descriptor.11 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.12, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_create._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_create.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.6, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cifs_create\00", [20 x i8] zeroinitializer }, align 32
@cifs_create._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_create.descriptor.15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.16, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"CIFS: %s: cifs_create parent inode = 0x%p name is: %pd and dentry = 0x%p\0A\00", [54 x i8] zeroinitializer }, align 32
@cifs_create._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_create.descriptor.18 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.12, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_mknod._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_mknod.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.6, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cifs_mknod\00", [21 x i8] zeroinitializer }, align 32
@cifs_mknod._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_mknod.descriptor.21 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.12, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_lookup._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.6, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cifs_lookup\00", [20 x i8] zeroinitializer }, align 32
@cifs_lookup._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.24 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.9, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_lookup._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.12, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_lookup._rs.27 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.28 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.12, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_lookup._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.30 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.12, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_lookup._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.32 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.33, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: non-NULL inode in lookup\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_lookup._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.35 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.36, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: NULL inode in lookup\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_lookup._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.38 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.39, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: Full path: %s inode = 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cifs_lookup._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.41 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.42, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: Unexpected lookup error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_lookup._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_lookup.descriptor.44 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.12, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_dentry_ops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @cifs_d_revalidate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cifs_dfs_d_automount, ptr null, ptr null, [76 x i8] undef }, align 128
@cifs_ci_dentry_ops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @cifs_d_revalidate, ptr null, ptr @cifs_ci_hash, ptr @cifs_ci_compare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cifs_dfs_d_automount, ptr null, ptr null, [76 x i8] undef }, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@check_name._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_name.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_name\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIFS: %s: Invalid file name\0A\00", [35 x i8] zeroinitializer }, align 32
@cifs_do_create._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_do_create.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_do_create\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CIFS: %s: Create flag not set in create function\0A\00", [46 x i8] zeroinitializer }, align 32
@cifs_do_create._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_do_create.descriptor.53 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.54, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: %s: cifs_create returned 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@cifs_do_create._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_do_create.descriptor.59 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.60, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CIFS: %s: Create worked, get_inode_info failed rc = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@cifs_d_revalidate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_d_revalidate.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cifs_d_revalidate\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CIFS: %s: cifs_revalidate_dentry failed with rc=%d\00", [45 x i8] zeroinitializer }, align 32
@lookupCacheEnabled = external dso_local local_unnamed_addr global i8, align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967283, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.64 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967201, i64 4294967230, i64 4294967274, i64 4294967291, i64 4294967294]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 4294967180, i64 4294967294]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 111, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 454, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 456, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 520, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 528, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 543, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 567, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 595, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 609, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 628, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 630, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 638, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 646, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 657, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 663, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 665, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 667, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 692, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 700, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 609, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 108, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 157, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 279, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 315, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 382, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private constant [17 x i8] c"../fs/cifs/dir.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 720, i32 4 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @build_path_from_dentry_optional_prefix._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_atomic_open._rs, ptr @.str.5, ptr @.str.6, ptr @cifs_atomic_open._rs.7, ptr @.str.9, ptr @cifs_atomic_open._rs.10, ptr @.str.12, ptr @cifs_create._rs, ptr @.str.13, ptr @cifs_create._rs.14, ptr @.str.16, ptr @cifs_create._rs.17, ptr @cifs_mknod._rs, ptr @.str.19, ptr @cifs_mknod._rs.20, ptr @cifs_lookup._rs, ptr @.str.22, ptr @cifs_lookup._rs.23, ptr @cifs_lookup._rs.25, ptr @cifs_lookup._rs.27, ptr @cifs_lookup._rs.29, ptr @cifs_lookup._rs.31, ptr @.str.33, ptr @cifs_lookup._rs.34, ptr @.str.36, ptr @cifs_lookup._rs.37, ptr @.str.39, ptr @cifs_lookup._rs.40, ptr @.str.42, ptr @cifs_lookup._rs.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @check_name._rs, ptr @.str.48, ptr @.str.49, ptr @cifs_do_create._rs, ptr @.str.50, ptr @.str.51, ptr @cifs_do_create._rs.52, ptr @.str.54, ptr @cifs_do_create._rs.58, ptr @.str.60, ptr @cifs_d_revalidate._rs, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_path_from_dentry_optional_prefix._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_atomic_open._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_atomic_open._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_atomic_open._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_create._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_create._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_create._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mknod._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mknod._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lookup._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_name._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_do_create._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_do_create._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_do_create._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_d_revalidate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_build_path_to_root(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %cifs_sb, ptr nocapture noundef readonly %tcon, i32 noundef %add_treename) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %prepath = getelementptr inbounds %struct.smb3_fs_context, ptr %ctx, i32 0, i32 48
  %0 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prepath, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %cond.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %1) #12
  %add = add i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp eq i32 %add, 0
  br i1 %cmp, label %cond.end.if.then_crit_edge, label %if.end

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1) #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add_treename)
  %tobool3.not = icmp eq i32 %add_treename, 0
  br i1 %tobool3.not, label %if.end.if.end8.i_crit_edge, label %if.then4

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %call5 = tail call i32 @strnlen(ptr noundef %treeName, i32 noundef 1285) #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4, %if.end.if.end8.i_crit_edge
  %dfsplen.0 = phi i32 [ %call5, %if.then4 ], [ 0, %if.end.if.end8.i_crit_edge ]
  %add7 = add i32 %dfsplen.0, %add
  %add8 = add i32 %add7, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add8, i32 noundef 3264) #14
  %cmp10 = icmp eq ptr %call9.i, null
  br i1 %cmp10, label %if.end8.i.cleanup_crit_edge, label %if.end12

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dfsplen.0)
  %tobool13.not = icmp eq i32 %dfsplen.0, 0
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %treeName15 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %3 = call ptr @memcpy(ptr %call9.i, ptr %treeName15, i32 %dfsplen.0)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %4 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 92, i8 47
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %dfsplen.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %..i, ptr %arrayidx, align 1
  %add.ptr19 = getelementptr i8, ptr %arrayidx, i32 1
  %7 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prepath, align 8
  %9 = call ptr @memcpy(ptr %add.ptr19, ptr %8, i32 %add)
  %10 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i42 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  %..i44 = select i1 %tobool.not.i43, i8 92, i8 47
  %..i46 = select i1 %tobool.not.i43, i32 47, i32 92
  %call5.i = tail call ptr @strchr(ptr noundef nonnull %call9.i, i32 noundef %..i46) #9
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %if.end17.cleanup_crit_edge, label %if.end17.while.body.i_crit_edge

if.end17.while.body.i_crit_edge:                  ; preds = %if.end17
  br label %while.body.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end17.while.body.i_crit_edge
  %call7.i47 = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %if.end17.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %call7.i47 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %..i44, ptr %call7.i47, align 1
  %call.i = tail call ptr @strchr(ptr noundef nonnull %call7.i47, i32 noundef %..i46) #9
  %tobool.not.i48 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i48, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call7.i.i, %if.then ], [ null, %if.end8.i.cleanup_crit_edge ], [ %call9.i, %if.end17.cleanup_crit_edge ], [ %call9.i, %while.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @build_path_from_dentry(ptr noundef %direntry, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %3) #9
  %Flags = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 12
  %4 = ptrtoint ptr %Flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %Flags, align 8
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool = icmp ne i16 %6, 0
  %call3 = tail call ptr @build_path_from_dentry_optional_prefix(ptr noundef %direntry, ptr noundef %page, i1 noundef zeroext %tobool)
  ret ptr %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @build_path_from_dentry_optional_prefix(ptr noundef %direntry, ptr noundef %page, i1 noundef zeroext %prefix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %3) #9
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 92, i8 47
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !137

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %prefix, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 8
  %call9 = tail call i32 @strnlen(ptr noundef %treeName, i32 noundef 1285) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %dfsplen.0 = phi i32 [ %call9, %if.then8 ], [ 0, %if.end.if.end10_crit_edge ]
  %and = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end16_crit_edge, label %if.then12

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %if.end10
  %prepath = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prepath, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.then12.if.end16_crit_edge, label %cond.true

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @strlen(ptr noundef nonnull %7) #12
  %add = add i32 %call15, 1
  br label %if.end16

if.end16:                                         ; preds = %cond.true, %if.then12.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %pplen.0 = phi i32 [ 0, %if.end10.if.end16_crit_edge ], [ %add, %cond.true ], [ 0, %if.then12.if.end16_crit_edge ]
  %call17 = tail call ptr @dentry_path_raw(ptr noundef %direntry, ptr noundef nonnull %page, i32 noundef 4096) #9
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %arrayidx = getelementptr i8, ptr %call17, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool21.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool21.not, ptr %arrayidx, ptr %call17
  %add.ptr = getelementptr i8, ptr %page, i32 %pplen.0
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i32 %dfsplen.0
  %cmp = icmp ult ptr %spec.select, %add.ptr24
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pplen.0)
  %tobool28.not = icmp eq i32 %pplen.0, 0
  br i1 %tobool28.not, label %if.end27.if.end58_crit_edge, label %do.body30

if.end27.if.end58_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.body30:                                        ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and31 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.do.end54_crit_edge, label %do.body34

do.body30.do.end54_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

do.body34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_path_from_dentry_optional_prefix.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_path_from_dentry_optional_prefix, %land.lhs.true)) #9
          to label %do.end54 [label %land.lhs.true], !srcloc !138

land.lhs.true:                                    ; preds = %do.body34
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @build_path_from_dentry_optional_prefix._rs, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true.do.end54_crit_edge, label %if.then46

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %prepath47 = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %prepath47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prepath47, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_path_from_dentry_optional_prefix.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %12) #9
  br label %do.end54

do.end54:                                         ; preds = %if.then46, %land.lhs.true.do.end54_crit_edge, %do.body34, %do.body30.do.end54_crit_edge
  %idx.neg = sub i32 0, %pplen.0
  %add.ptr55 = getelementptr i8, ptr %spec.select, i32 %idx.neg
  %add.ptr56 = getelementptr i8, ptr %add.ptr55, i32 1
  %prepath57 = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %prepath57 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prepath57, align 4
  %sub = add i32 %pplen.0, -1
  %15 = call ptr @memcpy(ptr %add.ptr56, ptr %14, i32 %sub)
  %16 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 47, ptr %add.ptr55, align 1
  br label %if.end58

if.end58:                                         ; preds = %do.end54, %if.end27.if.end58_crit_edge
  %s.1 = phi ptr [ %add.ptr55, %do.end54 ], [ %spec.select, %if.end27.if.end58_crit_edge ]
  br i1 %tobool.not.i, label %if.end58.for.cond_crit_edge, label %if.end58.if.end69_crit_edge

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end58.for.cond_crit_edge:                      ; preds = %if.end58
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end58.for.cond_crit_edge
  %p.0 = phi ptr [ %incdec.ptr68, %for.inc ], [ %s.1, %if.end58.for.cond_crit_edge ]
  %17 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %p.0, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.cond.if.end69_crit_edge
    i8 47, label %if.then66
  ]

for.cond.if.end69_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then66:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %..i, ptr %p.0, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then66, %for.cond.for.inc_crit_edge
  %incdec.ptr68 = getelementptr i8, ptr %p.0, i32 1
  br label %for.cond

if.end69:                                         ; preds = %for.cond.if.end69_crit_edge, %if.end58.if.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dfsplen.0)
  %tobool70.not = icmp eq i32 %dfsplen.0, 0
  br i1 %tobool70.not, label %if.end69.cleanup_crit_edge, label %if.then71

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71:                                        ; preds = %if.end69
  %idx.neg72 = sub i32 0, %dfsplen.0
  %add.ptr73 = getelementptr i8, ptr %s.1, i32 %idx.neg72
  %treeName74 = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 8
  %21 = call ptr @memcpy(ptr %add.ptr73, ptr %treeName74, i32 %dfsplen.0)
  %22 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and77 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp ne i32 %and77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dfsplen.0)
  %cmp81140 = icmp sgt i32 %dfsplen.0, 0
  %or.cond = select i1 %tobool78.not, i1 %cmp81140, i1 false
  br i1 %or.cond, label %if.then71.for.body83_crit_edge, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then71.for.body83_crit_edge:                   ; preds = %if.then71
  br label %for.body83

for.body83:                                       ; preds = %for.inc91.for.body83_crit_edge, %if.then71.for.body83_crit_edge
  %i.0141 = phi i32 [ %inc, %for.inc91.for.body83_crit_edge ], [ 0, %if.then71.for.body83_crit_edge ]
  %arrayidx84 = getelementptr i8, ptr %add.ptr73, i32 %i.0141
  %24 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx84, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %25)
  %cmp86 = icmp eq i8 %25, 92
  br i1 %cmp86, label %if.then88, label %for.body83.for.inc91_crit_edge

for.body83.for.inc91_crit_edge:                   ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc91

if.then88:                                        ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 47, ptr %arrayidx84, align 1
  br label %for.inc91

for.inc91:                                        ; preds = %if.then88, %for.body83.for.inc91_crit_edge
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %dfsplen.0
  br i1 %exitcond.not, label %for.inc91.cleanup_crit_edge, label %for.inc91.for.body83_crit_edge

for.inc91.for.body83_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body83

for.inc91.cleanup_crit_edge:                      ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc91.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call17, %if.end16.cleanup_crit_edge ], [ %add.ptr73, %if.then71.cleanup_crit_edge ], [ %s.1, %if.end69.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.end20.cleanup_crit_edge ], [ %add.ptr73, %for.inc91.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_atomic_open(ptr noundef %inode, ptr noundef %direntry, ptr noundef %file, i32 noundef %oflags, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %fid = alloca %struct.cifs_fid, align 8
  %open = alloca %struct.cifs_pending_open, align 4
  %oplock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #9
  %0 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %open) #9
  %1 = call ptr @memset(ptr %open, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #9
  %2 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %oplock, align 4, !annotation !139
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp slt i32 %8, 0
  br i1 %tobool.not.i, label %entry.cleanup182_crit_edge, label %if.end, !prof !137

entry.cleanup182_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup182

if.end:                                           ; preds = %entry
  %and = and i32 %oflags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end15

if.then4:                                         ; preds = %if.end
  %9 = ptrtoint ptr %direntry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %direntry, align 8
  %and.i = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  br i1 %tobool6.not, label %if.then4.cleanup182_crit_edge, label %if.end8

if.then4.cleanup182_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup182

if.end8:                                          ; preds = %if.then4
  %call9 = tail call ptr @cifs_lookup(ptr noundef %inode, ptr noundef %direntry, i32 undef)
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call9 to i32
  br label %cleanup182

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @finish_no_open(ptr noundef %file, ptr noundef %call9) #9
  br label %cleanup182

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @_get_xid() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %12 = load i32, ptr @cifsFYI, align 4
  %and18 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end15.do.end44_crit_edge, label %do.body21

if.end15.do.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

do.body21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_atomic_open.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_atomic_open, %land.lhs.true)) #9
          to label %do.end44 [label %land.lhs.true], !srcloc !138

land.lhs.true:                                    ; preds = %do.body21
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_atomic_open._rs, ptr noundef nonnull @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end44_crit_edge, label %if.then32

land.lhs.true.do.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i251 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i251 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %19)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call36 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_atomic_open.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %call16, i32 noundef %call36) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then32, %land.lhs.true.do.end44_crit_edge, %do.body21, %if.end15.do.end44_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call16, ptr noundef nonnull @.str.5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %20 = load i32, ptr @cifsFYI, align 4
  %and48 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.end44.do.end75_crit_edge, label %do.body51

do.end44.do.end75_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

do.body51:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_atomic_open.descriptor.8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_atomic_open, %land.lhs.true63)) #9
          to label %do.end75 [label %land.lhs.true63], !srcloc !138

land.lhs.true63:                                  ; preds = %do.body51
  %call64 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_atomic_open._rs.7, ptr noundef nonnull @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.do.end75_crit_edge, label %if.then66

land.lhs.true63.do.end75_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

if.then66:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_atomic_open.descriptor.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %inode, ptr noundef %direntry, ptr noundef %direntry) #9
  br label %do.end75

do.end75:                                         ; preds = %if.then66, %land.lhs.true63.do.end75_crit_edge, %do.body51, %do.end44.do.end75_crit_edge
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i252 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i252 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i252, align 16
  %call78 = tail call ptr @cifs_sb_tlink(ptr noundef %24) #9
  %cmp.i253 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then80, label %if.end82

if.then80:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %call78 to i32
  br label %do.body145

if.end82:                                         ; preds = %do.end75
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call78, i32 0, i32 5
  %26 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tl_tcon.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 9
  %28 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %MaxPathNameComponentLength.i = getelementptr inbounds %struct.cifs_tcon, ptr %27, i32 0, i32 20, i32 1
  %32 = ptrtoint ptr %MaxPathNameComponentLength.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %MaxPathNameComponentLength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i254 = icmp eq i32 %33, 0
  br i1 %tobool.not.i254, label %if.end82.if.end.i_crit_edge, label %land.rhs.i

if.end82.if.end.i_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end82
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 4
  %34 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %d_name.i, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp.i255 = icmp ugt i32 %35, %36
  br i1 %cmp.i255, label %land.rhs.i.out_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !137

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %if.end82.if.end.i_crit_edge
  %mnt_cifs_flags.i256 = getelementptr inbounds %struct.cifs_sb_info, ptr %31, i32 0, i32 6
  %37 = ptrtoint ptr %mnt_cifs_flags.i256 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mnt_cifs_flags.i256, align 4
  %and.i257 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257)
  %tobool5.not.i = icmp eq i32 %and.i257, 0
  br i1 %tobool5.not.i, label %for.cond.preheader.i, label %if.end.i.if.end87_crit_edge

if.end.i.if.end87_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

for.cond.preheader.i:                             ; preds = %if.end.i
  %d_name7.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 4
  %39 = ptrtoint ptr %d_name7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %d_name7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp946.not.i = icmp eq i32 %40, 0
  br i1 %cmp946.not.i, label %for.cond.preheader.i.if.end87_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end87_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %name.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not.i, label %for.cond.i.if.end87_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.end87_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %42, i32 %i.047.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %44)
  %cmp11.i = icmp eq i8 %44, 92
  br i1 %cmp11.i, label %do.body14.i, label %for.cond.i

do.body14.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %45 = load i32, ptr @cifsFYI, align 4
  %and15.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.out_crit_edge, label %do.body18.i

do.body14.i.out_crit_edge:                        ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body18.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_name.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_atomic_open, %land.lhs.true.i)) #9
          to label %out [label %land.lhs.true.i], !srcloc !138

land.lhs.true.i:                                  ; preds = %do.body18.i
  %call27.i = tail call i32 @___ratelimit(ptr noundef nonnull @check_name._rs, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.out_crit_edge, label %if.then29.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_name.descriptor, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3) #9
  br label %out

if.end87:                                         ; preds = %for.cond.i.if.end87_crit_edge, %for.cond.preheader.i.if.end87_crit_edge, %if.end.i.if.end87_crit_edge
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %27, i32 0, i32 7
  %46 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ses, align 8
  %server88 = getelementptr inbounds %struct.cifs_ses, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %server88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %server88, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %new_lease_key = getelementptr inbounds %struct.smb_version_operations, ptr %51, i32 0, i32 76
  %52 = ptrtoint ptr %new_lease_key to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %new_lease_key, align 4
  %tobool89.not = icmp eq ptr %53, null
  br i1 %tobool89.not, label %if.end87.if.end93_crit_edge, label %if.then90

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  call void %53(ptr noundef nonnull %fid) #9
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end87.if.end93_crit_edge
  call void @cifs_add_pending_open(ptr noundef nonnull %fid, ptr noundef %call78, ptr noundef nonnull %open) #9
  %call94 = call fastcc i32 @cifs_do_create(ptr noundef %inode, ptr noundef %direntry, i32 noundef %call16, ptr noundef %call78, i32 noundef %oflags, i16 noundef zeroext %mode, ptr noundef nonnull %oplock, ptr noundef nonnull %fid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then96

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  call void @cifs_del_pending_open(ptr noundef nonnull %open) #9
  br label %out

if.end97:                                         ; preds = %if.end93
  %and98 = and i32 %oflags, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and98)
  %cmp = icmp eq i32 %and98, 192
  br i1 %cmp, label %if.then99, label %if.end97.if.end100_crit_edge

if.end97.if.end100_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %54 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %f_mode, align 8
  %or = or i32 %55, 1048576
  store i32 %or, ptr %f_mode, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.end97.if.end100_crit_edge
  %call101 = call i32 @finish_open(ptr noundef %file, ptr noundef %direntry, ptr noundef nonnull @generic_file_open) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end110, label %if.then103

if.then103:                                       ; preds = %if.end100
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops, align 4
  %close = getelementptr inbounds %struct.smb_version_operations, ptr %57, i32 0, i32 56
  %58 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %close, align 4
  %tobool105.not = icmp eq ptr %59, null
  br i1 %tobool105.not, label %if.then103.if.end109_crit_edge, label %if.then106

if.then103.if.end109_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then106:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  call void %59(i32 noundef %call16, ptr noundef %27, ptr noundef nonnull %fid) #9
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.then103.if.end109_crit_edge
  call void @cifs_del_pending_open(ptr noundef nonnull %open) #9
  br label %out

if.end110:                                        ; preds = %if.end100
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %60 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %f_flags, align 4
  %and111 = and i32 %61, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end128_crit_edge, label %land.lhs.true113

if.end110.if.end128_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

land.lhs.true113:                                 ; preds = %if.end110
  %62 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i259 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info.i259 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i259, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mnt_cifs_flags, align 4
  %and116 = and i32 %67, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %land.lhs.true113.if.end128_crit_edge, label %if.then118

land.lhs.true113.if.end128_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then118:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  %and122 = and i32 %67, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %f_op126 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %cifs_file_direct_ops.cifs_file_direct_nobrl_ops = select i1 %tobool123.not, ptr @cifs_file_direct_ops, ptr @cifs_file_direct_nobrl_ops
  %68 = ptrtoint ptr %f_op126 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %cifs_file_direct_ops.cifs_file_direct_nobrl_ops, ptr %f_op126, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then118, %land.lhs.true113.if.end128_crit_edge, %if.end110.if.end128_crit_edge
  %69 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %oplock, align 4
  %call129 = call ptr @cifs_new_fileinfo(ptr noundef nonnull %fid, ptr noundef %file, ptr noundef %call78, i32 noundef %70) #9
  %cmp130 = icmp eq ptr %call129, null
  br i1 %cmp130, label %if.then131, label %if.end139

if.then131:                                       ; preds = %if.end128
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops, align 4
  %close133 = getelementptr inbounds %struct.smb_version_operations, ptr %72, i32 0, i32 56
  %73 = ptrtoint ptr %close133 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %close133, align 4
  %tobool134.not = icmp eq ptr %74, null
  br i1 %tobool134.not, label %if.then131.if.end138_crit_edge, label %if.then135

if.then131.if.end138_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then135:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  call void %74(i32 noundef %call16, ptr noundef %27, ptr noundef nonnull %fid) #9
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.then131.if.end138_crit_edge
  call void @cifs_del_pending_open(ptr noundef nonnull %open) #9
  br label %out

if.end139:                                        ; preds = %if.end128
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %75 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %f_inode.i, align 8
  %fscache.i = getelementptr i8, ptr %76, i32 -8
  %77 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fscache.i, align 8
  %tobool.not.i261 = icmp eq ptr %78, null
  br i1 %tobool.not.i261, label %if.end139.out_crit_edge, label %if.then.i

if.end139.out_crit_edge:                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %f_mode142 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %79 = ptrtoint ptr %f_mode142 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %f_mode142, align 8
  %and143 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144 = icmp ne i32 %and143, 0
  call void @__fscache_use_cookie(ptr noundef nonnull %78, i1 noundef zeroext %tobool144) #9
  br label %out

out:                                              ; preds = %if.then.i, %if.end139.out_crit_edge, %if.end138, %if.end109, %if.then96, %if.then29.i, %land.lhs.true.i.out_crit_edge, %do.body18.i, %do.body14.i.out_crit_edge, %land.rhs.i.out_crit_edge
  %rc.0 = phi i32 [ %call94, %if.then96 ], [ %call101, %if.end109 ], [ -12, %if.end138 ], [ -22, %do.body18.i ], [ 0, %if.end139.out_crit_edge ], [ 0, %if.then.i ], [ -22, %if.then29.i ], [ -22, %land.lhs.true.i.out_crit_edge ], [ -22, %do.body14.i.out_crit_edge ], [ -36, %land.rhs.i.out_crit_edge ]
  call void @cifs_put_tlink(ptr noundef %call78) #9
  br label %do.body145

do.body145:                                       ; preds = %out, %if.then80
  %rc.1 = phi i32 [ %25, %if.then80 ], [ %rc.0, %out ]
  call void @_free_xid(i32 noundef %call16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %81 = load i32, ptr @cifsFYI, align 4
  %and148 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body145.do.end175_crit_edge, label %do.body151

do.body145.do.end175_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

do.body151:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_atomic_open.descriptor.11, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_atomic_open, %land.lhs.true163)) #9
          to label %do.end175 [label %land.lhs.true163], !srcloc !138

land.lhs.true163:                                 ; preds = %do.body151
  %call164 = call i32 @___ratelimit(ptr noundef nonnull @cifs_atomic_open._rs.10, ptr noundef nonnull @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %land.lhs.true163.do.end175_crit_edge, label %if.then166

land.lhs.true163.do.end175_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end175

if.then166:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_atomic_open.descriptor.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %call16, i32 noundef %rc.1) #9
  br label %do.end175

do.end175:                                        ; preds = %if.then166, %land.lhs.true163.do.end175_crit_edge, %do.body151, %do.body145.do.end175_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool176.not = icmp eq i32 %rc.1, 0
  br i1 %tobool176.not, label %if.else178, label %if.then177

if.then177:                                       ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_smb3_exit_err(i32 noundef %call16, ptr noundef nonnull @.str.5, i32 noundef %rc.1)
  br label %cleanup182

if.else178:                                       ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_smb3_exit_done(i32 noundef %call16, ptr noundef nonnull @.str.5)
  br label %cleanup182

cleanup182:                                       ; preds = %if.else178, %if.then177, %if.end13, %if.then11, %if.then4.cleanup182_crit_edge, %entry.cleanup182_crit_edge
  %retval.1 = phi i32 [ -5, %entry.cleanup182_crit_edge ], [ %11, %if.then11 ], [ %call14, %if.end13 ], [ -2, %if.then4.cleanup182_crit_edge ], [ 0, %if.else178 ], [ %rc.1, %if.then177 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %open) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_lookup(ptr noundef %parent_dir_inode, ptr noundef %direntry, i32 %flags) local_unnamed_addr #0 align 64 {
entry:
  %newInode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newInode) #9
  %0 = ptrtoint ptr %newInode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %newInode, align 4
  %call = tail call i32 @_get_xid() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end20_crit_edge, label %do.body2

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true)) #9
          to label %do.end20 [label %land.lhs.true], !srcloc !138

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end20_crit_edge, label %if.then9

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  %fsuid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call13 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22, i32 noundef %call, i32 noundef %call13) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then9, %land.lhs.true.do.end20_crit_edge, %do.body2, %entry.do.end20_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call, ptr noundef nonnull @.str.22)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and24 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end20.do.end51_crit_edge, label %do.body27

do.end20.do.end51_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

do.body27:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.24, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true39)) #9
          to label %do.end51 [label %land.lhs.true39], !srcloc !138

land.lhs.true39:                                  ; preds = %do.body27
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.23, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end51_crit_edge, label %if.then42

land.lhs.true39.do.end51_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.24, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %parent_dir_inode, ptr noundef %direntry, ptr noundef %direntry) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then42, %land.lhs.true39.do.end51_crit_edge, %do.body27, %do.end20.do.end51_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent_dir_inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %call53 = tail call ptr @cifs_sb_tlink(ptr noundef %13) #9
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body56, label %if.end94

do.body56:                                        ; preds = %do.end51
  tail call void @_free_xid(i32 noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and59 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body56.if.else89_crit_edge, label %do.body62

do.body56.if.else89_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else89

do.body62:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true74)) #9
          to label %if.else89 [label %land.lhs.true74], !srcloc !138

land.lhs.true74:                                  ; preds = %do.body62
  %call75 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.25, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true74.if.else89_crit_edge, label %if.then77

land.lhs.true74.if.else89_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else89

if.then77:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.26, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22, i32 noundef %call, i32 noundef 0) #9
  br label %if.else89

if.else89:                                        ; preds = %if.then77, %land.lhs.true74.if.else89_crit_edge, %do.body62, %do.body56.if.else89_crit_edge
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call, ptr noundef nonnull @.str.22)
  br label %cleanup

if.end94:                                         ; preds = %do.end51
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call53, i32 0, i32 5
  %15 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tl_tcon.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 9
  %17 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i, align 16
  %MaxPathNameComponentLength.i = getelementptr inbounds %struct.cifs_tcon, ptr %16, i32 0, i32 20, i32 1
  %21 = ptrtoint ptr %MaxPathNameComponentLength.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %MaxPathNameComponentLength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end94.if.end.i_crit_edge, label %land.rhs.i

if.end94.if.end.i_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end94
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 4
  %23 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %d_name.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %25)
  %cmp.i480 = icmp ugt i32 %24, %25
  br i1 %cmp.i480, label %land.rhs.i.if.then104_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !137

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i.if.then104_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %if.end94.if.end.i_crit_edge
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %20, i32 0, i32 6
  %26 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i481 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i481)
  %tobool5.not.i = icmp eq i32 %and.i481, 0
  br i1 %tobool5.not.i, label %for.cond.preheader.i, label %if.end.i.if.end143_crit_edge

if.end.i.if.end143_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

for.cond.preheader.i:                             ; preds = %if.end.i
  %d_name7.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 4
  %28 = ptrtoint ptr %d_name7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %d_name7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp946.not.i = icmp eq i32 %29, 0
  br i1 %cmp946.not.i, label %for.cond.preheader.i.if.end143_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end143_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %name.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.cond.i.if.end143_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.end143_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %31, i32 %i.047.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %33)
  %cmp11.i = icmp eq i8 %33, 92
  br i1 %cmp11.i, label %do.body14.i, label %for.cond.i

do.body14.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %34 = load i32, ptr @cifsFYI, align 4
  %and15.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.if.then104_crit_edge, label %do.body18.i

do.body14.i.if.then104_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104

do.body18.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_name.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true.i)) #9
          to label %if.then104 [label %land.lhs.true.i], !srcloc !138

land.lhs.true.i:                                  ; preds = %do.body18.i
  %call27.i = tail call i32 @___ratelimit(ptr noundef nonnull @check_name._rs, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.then104_crit_edge, label %if.then29.i

land.lhs.true.i.if.then104_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_name.descriptor, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3) #9
  br label %if.then104

if.then104:                                       ; preds = %if.then29.i, %land.lhs.true.i.if.then104_crit_edge, %do.body18.i, %do.body14.i.if.then104_crit_edge, %land.rhs.i.if.then104_crit_edge
  %retval.0.i482499 = phi i32 [ -22, %do.body18.i ], [ -22, %if.then29.i ], [ -22, %land.lhs.true.i.if.then104_crit_edge ], [ -22, %do.body14.i.if.then104_crit_edge ], [ -36, %land.rhs.i.if.then104_crit_edge ]
  tail call void @cifs_put_tlink(ptr noundef %call53) #9
  tail call void @_free_xid(i32 noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %35 = load i32, ptr @cifsFYI, align 4
  %and108 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.then104.if.then137_crit_edge, label %do.body111

if.then104.if.then137_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137

do.body111:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.28, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true123)) #9
          to label %if.then137 [label %land.lhs.true123], !srcloc !138

land.lhs.true123:                                 ; preds = %do.body111
  %call124 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.27, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %land.lhs.true123.if.then137_crit_edge, label %if.then126

land.lhs.true123.if.then137_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137

if.then126:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.28, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22, i32 noundef %call, i32 noundef %retval.0.i482499) #9
  br label %if.then137

if.then137:                                       ; preds = %if.then126, %land.lhs.true123.if.then137_crit_edge, %do.body111, %if.then104.if.then137_crit_edge
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i482499)
  %36 = inttoptr i32 %retval.0.i482499 to ptr
  br label %cleanup

if.end143:                                        ; preds = %for.cond.i.if.end143_crit_edge, %for.cond.preheader.i.if.end143_crit_edge, %if.end.i.if.end143_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %37 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %37, i32 noundef 3264) #9
  %38 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i484 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i484 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i484, align 16
  %call1.i = tail call ptr @cifs_sb_master_tcon(ptr noundef %41) #9
  %Flags.i = getelementptr inbounds %struct.cifs_tcon, ptr %call1.i, i32 0, i32 12
  %42 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %Flags.i, align 8
  %44 = and i16 %43, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.i = icmp ne i16 %44, 0
  %call3.i = tail call ptr @build_path_from_dentry_optional_prefix(ptr noundef %direntry, ptr noundef %call.i, i1 noundef zeroext %tobool.i) #9
  %cmp.i485 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i485, label %if.then147, label %if.end186

if.then147:                                       ; preds = %if.end143
  tail call void @cifs_put_tlink(ptr noundef %call53) #9
  tail call void @_free_xid(i32 noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %45 = load i32, ptr @cifsFYI, align 4
  %and151 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.then147.if.else181_crit_edge, label %do.body154

if.then147.if.else181_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else181

do.body154:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.30, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true166)) #9
          to label %if.else181 [label %land.lhs.true166], !srcloc !138

land.lhs.true166:                                 ; preds = %do.body154
  %call167 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.29, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %land.lhs.true166.if.else181_crit_edge, label %if.then169

land.lhs.true166.if.else181_crit_edge:            ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else181

if.then169:                                       ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.30, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22, i32 noundef %call, i32 noundef 0) #9
  br label %if.else181

if.else181:                                       ; preds = %if.then169, %land.lhs.true166.if.else181_crit_edge, %do.body154, %if.then147.if.else181_crit_edge
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call, ptr noundef nonnull @.str.22)
  %tobool.not.i486 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i486, label %if.else181.cleanup_crit_edge, label %if.then.i

if.else181.cleanup_crit_edge:                     ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %46 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end186:                                        ; preds = %if.end143
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 5
  %47 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_inode.i, align 8
  %cmp.i488.not = icmp eq ptr %48, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %49 = load i32, ptr @cifsFYI, align 4
  %and222 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %cmp.i488.not, label %do.body221, label %do.body190

do.body190:                                       ; preds = %if.end186
  br i1 %tobool223.not, label %do.body190.do.body252_crit_edge, label %do.body194

do.body190.do.body252_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body252

do.body194:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.32, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true206)) #9
          to label %do.body252 [label %land.lhs.true206], !srcloc !138

land.lhs.true206:                                 ; preds = %do.body194
  %call207 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.31, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %land.lhs.true206.do.body252_crit_edge, label %if.then209

land.lhs.true206.do.body252_crit_edge:            ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body252

if.then209:                                       ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #9
  br label %do.body252

do.body221:                                       ; preds = %if.end186
  br i1 %tobool223.not, label %do.body221.do.body252_crit_edge, label %do.body225

do.body221.do.body252_crit_edge:                  ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body252

do.body225:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.35, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true237)) #9
          to label %do.body252 [label %land.lhs.true237], !srcloc !138

land.lhs.true237:                                 ; preds = %do.body225
  %call238 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.34, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %land.lhs.true237.do.body252_crit_edge, label %if.then240

land.lhs.true237.do.body252_crit_edge:            ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body252

if.then240:                                       ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #9
  br label %do.body252

do.body252:                                       ; preds = %if.then240, %land.lhs.true237.do.body252_crit_edge, %do.body225, %do.body221.do.body252_crit_edge, %if.then209, %land.lhs.true206.do.body252_crit_edge, %do.body194, %do.body190.do.body252_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %50 = load i32, ptr @cifsFYI, align 4
  %and253 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %tobool254.not = icmp eq i32 %and253, 0
  br i1 %tobool254.not, label %do.body252.do.end281_crit_edge, label %do.body256

do.body252.do.end281_crit_edge:                   ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end281

do.body256:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.38, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true268)) #9
          to label %do.end281 [label %land.lhs.true268], !srcloc !138

land.lhs.true268:                                 ; preds = %do.body256
  %call269 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.37, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %land.lhs.true268.do.end281_crit_edge, label %if.then271

land.lhs.true268.do.end281_crit_edge:             ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end281

if.then271:                                       ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d_inode.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef %call3.i, ptr noundef %52) #9
  br label %do.end281

do.end281:                                        ; preds = %if.then271, %land.lhs.true268.do.end281_crit_edge, %do.body256, %do.body252.do.end281_crit_edge
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %16, i32 0, i32 23
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %16, i32 0, i32 22
  br label %again

again:                                            ; preds = %land.lhs.true298.again_crit_edge, %do.end281
  %retry_count.0 = phi i32 [ 0, %do.end281 ], [ %inc, %land.lhs.true298.again_crit_edge ]
  %53 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %posix_extensions, align 2, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool282.not = icmp eq i8 %54, 0
  br i1 %tobool282.not, label %if.else286, label %if.then283

if.then283:                                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %call285 = call i32 @smb311_posix_get_inode_info(ptr noundef nonnull %newInode, ptr noundef %call3.i, ptr noundef %56, i32 noundef %call) #9
  br label %if.end294

if.else286:                                       ; preds = %again
  %57 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load = load i16, ptr %unix_ext, align 8
  %58 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %bf.cast.not = icmp eq i16 %58, 0
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  br i1 %bf.cast.not, label %if.else290, label %if.then287

if.then287:                                       ; preds = %if.else286
  call void @__sanitizer_cov_trace_pc() #11
  %call289 = call i32 @cifs_get_inode_info_unix(ptr noundef nonnull %newInode, ptr noundef %call3.i, ptr noundef %60, i32 noundef %call) #9
  br label %if.end294

if.else290:                                       ; preds = %if.else286
  call void @__sanitizer_cov_trace_pc() #11
  %call292 = call i32 @cifs_get_inode_info(ptr noundef nonnull %newInode, ptr noundef %call3.i, ptr noundef null, ptr noundef %60, i32 noundef %call, ptr noundef null) #9
  br label %if.end294

if.end294:                                        ; preds = %if.else290, %if.then287, %if.then283
  %rc.0 = phi i32 [ %call285, %if.then283 ], [ %call289, %if.then287 ], [ %call292, %if.else290 ]
  %61 = zext i32 %rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %rc.0, label %if.end294.do.body308_crit_edge [
    i32 0, label %if.end294.do.body.i_crit_edge
    i32 -11, label %land.lhs.true298
    i32 -2, label %if.then303
    i32 -13, label %if.end294.if.end337_crit_edge
  ]

if.end294.if.end337_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end337

if.end294.do.body.i_crit_edge:                    ; preds = %if.end294
  br label %do.body.i

if.end294.do.body308_crit_edge:                   ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body308

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end294.do.body.i_crit_edge
  %direntry.addr.0.i = phi ptr [ %66, %do.body.i.do.body.i_crit_edge ], [ %direntry, %if.end294.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %63 = inttoptr i32 %62 to ptr
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %direntry.addr.0.i, i32 0, i32 11
  %64 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %d_fsdata.i.i, align 4
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %direntry.addr.0.i, i32 0, i32 3
  %65 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d_parent.i, align 8
  %d_parent1.i = getelementptr inbounds %struct.dentry, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %d_parent1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %d_parent1.i, align 8
  %cmp.not.i = icmp eq ptr %66, %68
  br i1 %cmp.not.i, label %do.body.i.if.end341_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.if.end341_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end341

land.lhs.true298:                                 ; preds = %if.end294
  %inc = add nuw nsw i32 %retry_count.0, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %land.lhs.true298.do.body308_crit_edge, label %land.lhs.true298.again_crit_edge

land.lhs.true298.again_crit_edge:                 ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #11
  br label %again

land.lhs.true298.do.body308_crit_edge:            ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body308

if.then303:                                       ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %70 = inttoptr i32 %69 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 11
  %71 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %d_fsdata.i, align 4
  %72 = ptrtoint ptr %newInode to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %newInode, align 4
  br label %if.end341

do.body308:                                       ; preds = %land.lhs.true298.do.body308_crit_edge, %if.end294.do.body308_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %73 = load i32, ptr @cifsFYI, align 4
  %and309 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %do.body308.if.end337_crit_edge, label %do.body312

do.body308.if.end337_crit_edge:                   ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end337

do.body312:                                       ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.41, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true324)) #9
          to label %if.end337 [label %land.lhs.true324], !srcloc !138

land.lhs.true324:                                 ; preds = %do.body312
  %call325 = call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.40, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %land.lhs.true324.if.end337_crit_edge, label %if.then327

land.lhs.true324.if.end337_crit_edge:             ; preds = %land.lhs.true324
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end337

if.then327:                                       ; preds = %land.lhs.true324
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef %rc.0) #9
  br label %if.end337

if.end337:                                        ; preds = %if.then327, %land.lhs.true324.if.end337_crit_edge, %do.body312, %do.body308.if.end337_crit_edge, %if.end294.if.end337_crit_edge
  %74 = inttoptr i32 %rc.0 to ptr
  %75 = ptrtoint ptr %newInode to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %newInode, align 4
  br label %if.end341

if.end341:                                        ; preds = %if.end337, %if.then303, %do.body.i.if.end341_crit_edge
  %rc.0520 = phi i32 [ %rc.0, %if.end337 ], [ -2, %if.then303 ], [ 0, %do.body.i.if.end341_crit_edge ]
  %tobool.not.i490 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i490, label %if.end341.free_dentry_path.exit493_crit_edge, label %if.then.i491

if.end341.free_dentry_path.exit493_crit_edge:     ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dentry_path.exit493

if.then.i491:                                     ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %76 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %76, ptr noundef nonnull %call.i) #9
  br label %free_dentry_path.exit493

free_dentry_path.exit493:                         ; preds = %if.then.i491, %if.end341.free_dentry_path.exit493_crit_edge
  call void @cifs_put_tlink(ptr noundef %call53) #9
  call void @_free_xid(i32 noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %77 = load i32, ptr @cifsFYI, align 4
  %and345 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and345)
  %tobool346.not = icmp eq i32 %and345, 0
  br i1 %tobool346.not, label %free_dentry_path.exit493.do.end372_crit_edge, label %do.body348

free_dentry_path.exit493.do.end372_crit_edge:     ; preds = %free_dentry_path.exit493
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end372

do.body348:                                       ; preds = %free_dentry_path.exit493
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_lookup.descriptor.44, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_lookup, %land.lhs.true360)) #9
          to label %do.end372 [label %land.lhs.true360], !srcloc !138

land.lhs.true360:                                 ; preds = %do.body348
  %call361 = call i32 @___ratelimit(ptr noundef nonnull @cifs_lookup._rs.43, ptr noundef nonnull @.str.22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %land.lhs.true360.do.end372_crit_edge, label %if.then363

land.lhs.true360.do.end372_crit_edge:             ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end372

if.then363:                                       ; preds = %land.lhs.true360
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_lookup.descriptor.44, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.22, i32 noundef %call, i32 noundef %rc.0520) #9
  br label %do.end372

do.end372:                                        ; preds = %if.then363, %land.lhs.true360.do.end372_crit_edge, %do.body348, %free_dentry_path.exit493.do.end372_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0520)
  %tobool373.not = icmp eq i32 %rc.0520, 0
  br i1 %tobool373.not, label %if.else375, label %if.then374

if.then374:                                       ; preds = %do.end372
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_smb3_exit_err(i32 noundef %call, ptr noundef nonnull @.str.22, i32 noundef %rc.0520)
  br label %do.end378

if.else375:                                       ; preds = %do.end372
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_smb3_exit_done(i32 noundef %call, ptr noundef nonnull @.str.22)
  br label %do.end378

do.end378:                                        ; preds = %if.else375, %if.then374
  %78 = ptrtoint ptr %newInode to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %newInode, align 4
  %call379 = call ptr @d_splice_alias(ptr noundef %79, ptr noundef %direntry) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end378, %if.then.i, %if.else181.cleanup_crit_edge, %if.then137, %if.else89
  %retval.0 = phi ptr [ %call53, %if.else89 ], [ %36, %if.then137 ], [ %call379, %do.end378 ], [ %call3.i, %if.else181.cleanup_crit_edge ], [ %call3.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newInode) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_no_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !141

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !142
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !143
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !141

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 609, ptr noundef nonnull @.str.46) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  %31 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_tlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_add_pending_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_do_create(ptr nocapture noundef readonly %inode, ptr noundef %direntry, i32 noundef %xid, ptr nocapture noundef readonly %tlink, i32 noundef %oflags, i16 noundef zeroext %mode, ptr noundef %oplock, ptr noundef %fid) unnamed_addr #0 align 64 {
entry:
  %newinode = alloca ptr, align 4
  %oparms = alloca %struct.cifs_open_parms, align 4
  %args = alloca %struct.cifs_unix_set_info_args, align 8
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
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %tlink, i32 0, i32 5
  %4 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tl_tcon.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %6 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3264) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newinode) #9
  %7 = ptrtoint ptr %newinode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %newinode, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ses, align 8
  %server3 = getelementptr inbounds %struct.cifs_ses, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %server3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %server3, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #9
  %12 = call ptr @memset(ptr %oparms, i32 255, i32 32)
  %13 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %oplock, align 4
  %14 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ses, align 8
  %server5 = getelementptr inbounds %struct.cifs_ses, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %server5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %server5, align 8
  %oplocks = getelementptr inbounds %struct.TCP_Server_Info, ptr %17, i32 0, i32 37
  %18 = ptrtoint ptr %oplocks to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %oplocks, align 8
  %19 = lshr i8 %bf.load, 6
  %20 = and i8 %19, 2
  %21 = zext i8 %20 to i32
  store i32 %21, ptr %oplock, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 9
  %22 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call ptr @cifs_sb_master_tcon(ptr noundef %25) #9
  %Flags.i = getelementptr inbounds %struct.cifs_tcon, ptr %call1.i, i32 0, i32 12
  %26 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %Flags.i, align 8
  %28 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.i = icmp ne i16 %28, 0
  %call3.i = tail call ptr @build_path_from_dentry_optional_prefix(ptr noundef %direntry, ptr noundef %call.i, i1 noundef zeroext %tobool.i) #9
  %cmp.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then8.free_dentry_path.exit_crit_edge, label %if.then.i

if.then8.free_dentry_path.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %29 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef nonnull %call.i) #9
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %if.then8.free_dentry_path.exit_crit_edge
  %30 = ptrtoint ptr %call3.i to i32
  br label %cleanup

if.end10:                                         ; preds = %entry
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %5, i32 0, i32 22
  %31 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load11 = load i16, ptr %unix_ext, align 8
  %32 = and i16 %bf.load11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %bf.cast13.not = icmp eq i16 %32, 0
  br i1 %bf.cast13.not, label %if.end10.if.end48_crit_edge, label %land.lhs.true

if.end10.if.end48_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end10
  %33 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ses, align 8
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %server.i, align 8
  %vals.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vals.i, align 8
  %cap_unix.i = getelementptr inbounds %struct.smb_version_values, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %cap_unix.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cap_unix.i, align 4
  %capabilities.i = getelementptr inbounds %struct.cifs_ses, ptr %34, i32 0, i32 15
  %41 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %42, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i441.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i441.not, label %land.lhs.true.if.end48_crit_edge, label %land.lhs.true16

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true16:                                  ; preds = %land.lhs.true
  %broken_posix_open = getelementptr inbounds %struct.cifs_tcon, ptr %5, i32 0, i32 25
  %43 = ptrtoint ptr %broken_posix_open to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %broken_posix_open, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not = icmp eq i8 %44, 0
  br i1 %tobool.not, label %land.lhs.true17, label %land.lhs.true16.if.end48_crit_edge

land.lhs.true16.if.end48_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true17:                                  ; preds = %land.lhs.true16
  %Capability = getelementptr inbounds %struct.cifs_tcon, ptr %5, i32 0, i32 21, i32 2
  %45 = ptrtoint ptr %Capability to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %Capability, align 4
  %47 = and i64 %46, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool18.not = icmp eq i64 %47, 0
  br i1 %tobool18.not, label %land.lhs.true17.if.end48_crit_edge, label %if.then19

land.lhs.true17.if.end48_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then19:                                        ; preds = %land.lhs.true17
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  %conv = zext i16 %mode to i32
  %call21 = call i32 @cifs_posix_open(ptr noundef %call3.i, ptr noundef nonnull %newinode, ptr noundef %49, i32 noundef %conv, i32 noundef %oflags, ptr noundef %oplock, ptr noundef %fid, i32 noundef %xid) #9
  %50 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call21, label %if.then19.out_crit_edge [
    i32 0, label %sw.bb
    i32 -2, label %if.then19.cifs_create_get_file_info_crit_edge
    i32 -5, label %if.then19.sw.bb45_crit_edge
    i32 -22, label %if.then19.sw.bb45_crit_edge463
    i32 -66, label %if.then19.if.end48_crit_edge
    i32 -95, label %if.then19.if.end48_crit_edge464
  ]

if.then19.if.end48_crit_edge464:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then19.if.end48_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then19.sw.bb45_crit_edge463:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45

if.then19.sw.bb45_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45

if.then19.cifs_create_get_file_info_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_get_file_info

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %if.then19
  %51 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %newinode, align 4
  %cmp = icmp eq ptr %52, null
  br i1 %cmp, label %sw.bb.cifs_create_get_file_info_crit_edge, label %if.end24

sw.bb.cifs_create_get_file_info_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_get_file_info

if.end24:                                         ; preds = %sw.bb
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %52, align 8
  %55 = and i16 %54, -4096
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %55, label %if.then39 [
    i16 16384, label %if.then29
    i16 -32768, label %if.end24.if.then321_crit_edge
  ]

if.end24.if.then321_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then321

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fid, align 8
  %conv31 = zext i16 %58 to i32
  %call32 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %5, i32 noundef %conv31) #9
  %59 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %newinode, align 4
  call void @iput(ptr noundef %60) #9
  br label %out

if.then39:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %fid, align 8
  %conv41 = zext i16 %62 to i32
  %call42 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %5, i32 noundef %conv41) #9
  br label %cifs_create_get_file_info

sw.bb45:                                          ; preds = %if.then19.sw.bb45_crit_edge, %if.then19.sw.bb45_crit_edge463
  %63 = ptrtoint ptr %broken_posix_open to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %broken_posix_open, align 4
  br label %if.end48

if.end48:                                         ; preds = %sw.bb45, %if.then19.if.end48_crit_edge, %if.then19.if.end48_crit_edge464, %land.lhs.true17.if.end48_crit_edge, %land.lhs.true16.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end10.if.end48_crit_edge
  %add = add i32 %oflags, 1
  %rev = call i32 @llvm.bitreverse.i32(i32 %add)
  %64 = and i32 %rev, -1073741824
  %and65 = and i32 %oflags, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and65)
  %cmp66 = icmp eq i32 %and65, 192
  br i1 %cmp66, label %if.end48.if.end101_crit_edge, label %if.else

if.end48.if.end101_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.else:                                          ; preds = %if.end48
  %and69 = and i32 %oflags, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %and69)
  %cmp70 = icmp eq i32 %and69, 576
  br i1 %cmp70, label %if.else.if.end101_crit_edge, label %if.else73

if.else.if.end101_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.else73:                                        ; preds = %if.else
  %and74 = and i32 %oflags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %cmp75.not = icmp eq i32 %and74, 0
  br i1 %cmp75.not, label %do.body79, label %if.else73.if.end101_crit_edge

if.else73.if.end101_crit_edge:                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.body79:                                        ; preds = %if.else73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %65 = load i32, ptr @cifsFYI, align 4
  %and80 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.if.end101_crit_edge, label %do.body83

do.body79.if.end101_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.body83:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_do_create.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_do_create, %land.lhs.true88)) #9
          to label %if.end101 [label %land.lhs.true88], !srcloc !138

land.lhs.true88:                                  ; preds = %do.body83
  %call89 = call i32 @___ratelimit(ptr noundef nonnull @cifs_do_create._rs, ptr noundef nonnull @.str.50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.lhs.true88.if.end101_crit_edge, label %if.then91

land.lhs.true88.if.end101_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then91:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_do_create.descriptor, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.3) #9
  br label %if.end101

if.end101:                                        ; preds = %if.then91, %land.lhs.true88.if.end101_crit_edge, %do.body83, %do.body79.if.end101_crit_edge, %if.else73.if.end101_crit_edge, %if.else.if.end101_crit_edge, %if.end48.if.end101_crit_edge
  %disposition.0 = phi i32 [ 5, %if.then91 ], [ 5, %land.lhs.true88.if.end101_crit_edge ], [ 5, %do.body79.if.end101_crit_edge ], [ 2, %if.end48.if.end101_crit_edge ], [ 5, %if.else.if.end101_crit_edge ], [ 3, %if.else73.if.end101_crit_edge ], [ 5, %do.body83 ]
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %11, i32 0, i32 5
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %open = getelementptr inbounds %struct.smb_version_operations, ptr %67, i32 0, i32 54
  %68 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %open, align 4
  %tobool102.not = icmp eq ptr %69, null
  br i1 %tobool102.not, label %if.end101.out_crit_edge, label %if.end104

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end104:                                        ; preds = %if.end101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 109) #13
  %cmp106 = icmp eq ptr %call7.i, null
  br i1 %cmp106, label %if.end104.out_crit_edge, label %if.end109

if.end104.out_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end109:                                        ; preds = %if.end104
  %71 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load111 = load i16, ptr %unix_ext, align 8
  %72 = and i16 %bf.load111, 128
  %73 = and i16 %mode, 146
  %74 = or i16 %72, %73
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %75 = icmp eq i16 %74, 0
  %create_options.0 = select i1 %75, i32 268435520, i32 64
  %76 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %5, ptr %oparms, align 4
  %cifs_sb124 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %77 = ptrtoint ptr %cifs_sb124 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %3, ptr %cifs_sb124, align 4
  %desired_access125 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %78 = ptrtoint ptr %desired_access125 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %64, ptr %desired_access125, align 4
  %tobool.not.i442 = icmp eq ptr %3, null
  br i1 %tobool.not.i442, label %if.end109.cifs_create_options.exit_crit_edge, label %land.lhs.true.i

if.end109.cifs_create_options.exit_crit_edge:     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_options.exit

land.lhs.true.i:                                  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %call.i443 = call zeroext i1 @backup_cred(ptr noundef nonnull %3) #9
  %or.i = or i32 %create_options.0, 16384
  %spec.select.i = select i1 %call.i443, i32 %or.i, i32 %create_options.0
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %land.lhs.true.i, %if.end109.cifs_create_options.exit_crit_edge
  %retval.0.i444 = phi i32 [ %create_options.0, %if.end109.cifs_create_options.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %create_options127 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %79 = ptrtoint ptr %create_options127 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i444, ptr %create_options127, align 4
  %disposition128 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %80 = ptrtoint ptr %disposition128 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %disposition.0, ptr %disposition128, align 4
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %81 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call3.i, ptr %path, align 4
  %fid129 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %82 = ptrtoint ptr %fid129 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %fid, ptr %fid129, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %83 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load130 = load i8, ptr %reconnect, align 2
  %bf.clear131 = and i8 %bf.load130, 127
  store i8 %bf.clear131, ptr %reconnect, align 2
  %mode132 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 7
  %84 = ptrtoint ptr %mode132 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %mode, ptr %mode132, align 4
  %85 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops, align 4
  %open134 = getelementptr inbounds %struct.smb_version_operations, ptr %86, i32 0, i32 54
  %87 = ptrtoint ptr %open134 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %open134, align 4
  %call135 = call i32 %88(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef %oplock, ptr noundef nonnull %call7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end168, label %do.body139

do.body139:                                       ; preds = %cifs_create_options.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %89 = load i32, ptr @cifsFYI, align 4
  %and140 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.out_crit_edge, label %do.body143

do.body139.out_crit_edge:                         ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body143:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_do_create.descriptor.53, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_do_create, %land.lhs.true155)) #9
          to label %out [label %land.lhs.true155], !srcloc !138

land.lhs.true155:                                 ; preds = %do.body143
  %call156 = call i32 @___ratelimit(ptr noundef nonnull @cifs_do_create._rs.52, ptr noundef nonnull @.str.50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %land.lhs.true155.out_crit_edge, label %if.then158

land.lhs.true155.out_crit_edge:                   ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then158:                                       ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_do_create.descriptor.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, i32 noundef %call135) #9
  br label %out

if.end168:                                        ; preds = %cifs_create_options.exit
  %90 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load170 = load i16, ptr %unix_ext, align 8
  %91 = and i16 %bf.load170, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %bf.cast173.not = icmp eq i16 %91, 0
  br i1 %bf.cast173.not, label %if.end168.cifs_create_get_file_info_crit_edge, label %land.lhs.true175

if.end168.cifs_create_get_file_info_crit_edge:    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_get_file_info

land.lhs.true175:                                 ; preds = %if.end168
  %92 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %oplock, align 4
  %and176 = and i32 %93, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %land.lhs.true175.cifs_create_get_file_info_crit_edge, label %if.then178

land.lhs.true175.cifs_create_get_file_info_crit_edge: ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_get_file_info

if.then178:                                       ; preds = %land.lhs.true175
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args) #9
  %mode179 = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 3
  %conv180 = zext i16 %mode to i64
  %94 = call ptr @memset(ptr %args, i32 255, i32 48)
  %95 = ptrtoint ptr %mode179 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv180, ptr %mode179, align 8
  %uid = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 4
  %gid = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 5
  %device = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 6
  %96 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %device, align 8
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %97 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mnt_cifs_flags, align 4
  %and181 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.else206, label %if.then183

if.then183:                                       ; preds = %if.then178
  %99 = call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i445 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i445 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 99
  %103 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %104, i32 0, i32 10
  %105 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fsuid, align 4
  %107 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %uid, align 8
  %108 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %inode, align 8
  %110 = and i16 %109, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool193.not = icmp eq i16 %110, 0
  br i1 %tobool193.not, label %if.else196, label %if.then194

if.then194:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #11
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %111 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i_gid, align 8
  br label %if.end211

if.else196:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task, align 8
  %cred204 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 99
  %115 = ptrtoint ptr %cred204 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cred204, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %116, i32 0, i32 11
  %117 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fsgid, align 4
  br label %if.end211

if.else206:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %uid, align 8
  br label %if.end211

if.end211:                                        ; preds = %if.else206, %if.else196, %if.then194
  %.sink = phi i32 [ %112, %if.then194 ], [ %118, %if.else196 ], [ -1, %if.else206 ]
  %120 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink, ptr %gid, align 4
  %121 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %fid, align 8
  %123 = call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i446 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i446 to ptr
  %task214 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task214 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task214, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 69
  %127 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tgid, align 4
  %call215 = call i32 @CIFSSMBUnixSetFileInfo(i32 noundef %xid, ptr noundef %5, ptr noundef nonnull %args, i16 noundef zeroext %122, i32 noundef %128) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args) #9
  br label %cifs_create_get_file_info

cifs_create_get_file_info:                        ; preds = %if.end211, %land.lhs.true175.cifs_create_get_file_info_crit_edge, %if.end168.cifs_create_get_file_info_crit_edge, %if.then39, %sw.bb.cifs_create_get_file_info_crit_edge, %if.then19.cifs_create_get_file_info_crit_edge
  %buf.0 = phi ptr [ %call7.i, %if.end211 ], [ %call7.i, %land.lhs.true175.cifs_create_get_file_info_crit_edge ], [ %call7.i, %if.end168.cifs_create_get_file_info_crit_edge ], [ null, %if.then19.cifs_create_get_file_info_crit_edge ], [ null, %sw.bb.cifs_create_get_file_info_crit_edge ], [ null, %if.then39 ]
  %129 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %129)
  %bf.load219 = load i16, ptr %unix_ext, align 8
  %130 = and i16 %bf.load219, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %bf.cast222.not = icmp eq i16 %130, 0
  %131 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_sb, align 4
  br i1 %bf.cast222.not, label %if.else226, label %if.then223

if.then223:                                       ; preds = %cifs_create_get_file_info
  call void @__sanitizer_cov_trace_pc() #11
  %call225 = call i32 @cifs_get_inode_info_unix(ptr noundef nonnull %newinode, ptr noundef %call3.i, ptr noundef %132, i32 noundef %xid) #9
  br label %cifs_create_set_dentry

if.else226:                                       ; preds = %cifs_create_get_file_info
  %call228 = call i32 @cifs_get_inode_info(ptr noundef nonnull %newinode, ptr noundef %call3.i, ptr noundef %buf.0, ptr noundef %132, i32 noundef %xid, ptr noundef %fid) #9
  %133 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %newinode, align 4
  %tobool229.not = icmp eq ptr %134, null
  br i1 %tobool229.not, label %if.else226.cifs_create_set_dentry_crit_edge, label %if.then230

if.else226.cifs_create_set_dentry_crit_edge:      ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_set_dentry

if.then230:                                       ; preds = %if.else226
  %ops231 = getelementptr inbounds %struct.TCP_Server_Info, ptr %11, i32 0, i32 5
  %135 = ptrtoint ptr %ops231 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops231, align 4
  %set_lease_key = getelementptr inbounds %struct.smb_version_operations, ptr %136, i32 0, i32 75
  %137 = ptrtoint ptr %set_lease_key to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %set_lease_key, align 4
  %tobool232.not = icmp eq ptr %138, null
  br i1 %tobool232.not, label %if.then230.if.end236_crit_edge, label %if.then233

if.then230.if.end236_crit_edge:                   ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.then233:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #11
  call void %138(ptr noundef nonnull %134, ptr noundef %fid) #9
  br label %if.end236

if.end236:                                        ; preds = %if.then233, %if.then230.if.end236_crit_edge
  %139 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %oplock, align 4
  %and237 = and i32 %140, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %if.end236.cifs_create_set_dentry_crit_edge, label %land.lhs.true239

if.end236.cifs_create_set_dentry_crit_edge:       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_set_dentry

land.lhs.true239:                                 ; preds = %if.end236
  %141 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %newinode, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %142, align 8
  %145 = and i16 %144, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %145)
  %cmp243 = icmp eq i16 %145, -32768
  br i1 %cmp243, label %if.then245, label %land.lhs.true239.cifs_create_set_dentry_crit_edge

land.lhs.true239.cifs_create_set_dentry_crit_edge: ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_set_dentry

if.then245:                                       ; preds = %land.lhs.true239
  %mnt_cifs_flags246 = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %146 = ptrtoint ptr %mnt_cifs_flags246 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mnt_cifs_flags246, align 4
  %and247 = and i32 %147, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.then245.if.end251_crit_edge, label %if.then249

if.then245.if.end251_crit_edge:                   ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end251

if.then249:                                       ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %142 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %mode, ptr %142, align 8
  br label %if.end251

if.end251:                                        ; preds = %if.then249, %if.then245.if.end251_crit_edge
  %149 = ptrtoint ptr %mnt_cifs_flags246 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mnt_cifs_flags246, align 4
  %and253 = and i32 %150, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %tobool254.not = icmp eq i32 %and253, 0
  br i1 %tobool254.not, label %if.end251.cifs_create_set_dentry_crit_edge, label %if.then255

if.end251.cifs_create_set_dentry_crit_edge:       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #11
  br label %cifs_create_set_dentry

if.then255:                                       ; preds = %if.end251
  %151 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %newinode, align 4
  %i_uid = getelementptr inbounds %struct.inode, ptr %152, i32 0, i32 2
  %153 = call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i447 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i447 to ptr
  %task261 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %task261 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %task261, align 8
  %cred262 = getelementptr inbounds %struct.task_struct, ptr %156, i32 0, i32 99
  %157 = ptrtoint ptr %cred262 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cred262, align 16
  %fsuid263 = getelementptr inbounds %struct.cred, ptr %158, i32 0, i32 10
  %159 = ptrtoint ptr %fsuid263 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %fsuid263, align 4
  %161 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %i_uid, align 4
  %162 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %inode, align 8
  %164 = and i16 %163, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool267.not = icmp eq i16 %164, 0
  %i_gid272 = getelementptr inbounds %struct.inode, ptr %152, i32 0, i32 3
  br i1 %tobool267.not, label %if.else271, label %if.then268

if.then268:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #11
  %i_gid270 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %165 = ptrtoint ptr %i_gid270 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %i_gid270, align 8
  %167 = ptrtoint ptr %i_gid272 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %i_gid272, align 8
  br label %cifs_create_set_dentry

if.else271:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %task261 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task261, align 8
  %cred279 = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 99
  %170 = ptrtoint ptr %cred279 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cred279, align 16
  %fsgid280 = getelementptr inbounds %struct.cred, ptr %171, i32 0, i32 11
  %172 = ptrtoint ptr %fsgid280 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %fsgid280, align 4
  %174 = ptrtoint ptr %i_gid272 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %i_gid272, align 8
  br label %cifs_create_set_dentry

cifs_create_set_dentry:                           ; preds = %if.else271, %if.then268, %if.end251.cifs_create_set_dentry_crit_edge, %land.lhs.true239.cifs_create_set_dentry_crit_edge, %if.end236.cifs_create_set_dentry_crit_edge, %if.else226.cifs_create_set_dentry_crit_edge, %if.then223
  %rc.0 = phi i32 [ %call225, %if.then223 ], [ %call228, %if.then268 ], [ %call228, %if.else271 ], [ %call228, %if.end251.cifs_create_set_dentry_crit_edge ], [ %call228, %land.lhs.true239.cifs_create_set_dentry_crit_edge ], [ %call228, %if.end236.cifs_create_set_dentry_crit_edge ], [ %call228, %if.else226.cifs_create_set_dentry_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp286.not = icmp eq i32 %rc.0, 0
  br i1 %cmp286.not, label %if.end319, label %do.body290

do.body290:                                       ; preds = %cifs_create_set_dentry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %175 = load i32, ptr @cifsFYI, align 4
  %and291 = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  br i1 %tobool292.not, label %do.body290.out_err_crit_edge, label %do.body294

do.body290.out_err_crit_edge:                     ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

do.body294:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_do_create.descriptor.59, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_do_create, %land.lhs.true306)) #9
          to label %out_err [label %land.lhs.true306], !srcloc !138

land.lhs.true306:                                 ; preds = %do.body294
  %call307 = call i32 @___ratelimit(ptr noundef nonnull @cifs_do_create._rs.58, ptr noundef nonnull @.str.50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %land.lhs.true306.out_err_crit_edge, label %if.then309

land.lhs.true306.out_err_crit_edge:               ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.then309:                                       ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_do_create.descriptor.59, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.3, i32 noundef %rc.0) #9
  br label %out_err

if.end319:                                        ; preds = %cifs_create_set_dentry
  %176 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pr = load ptr, ptr %newinode, align 4
  %tobool320.not = icmp eq ptr %.pr, null
  br i1 %tobool320.not, label %if.end319.if.end329_crit_edge, label %if.end319.if.then321_crit_edge

if.end319.if.then321_crit_edge:                   ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then321

if.end319.if.end329_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329

if.then321:                                       ; preds = %if.end319.if.then321_crit_edge, %if.end24.if.then321_crit_edge
  %buf.1457462 = phi ptr [ %buf.0, %if.end319.if.then321_crit_edge ], [ null, %if.end24.if.then321_crit_edge ]
  %177 = phi ptr [ %.pr, %if.end319.if.then321_crit_edge ], [ %52, %if.end24.if.then321_crit_edge ]
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %177, align 8
  %180 = and i16 %179, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %180)
  %cmp325 = icmp eq i16 %180, 16384
  br i1 %cmp325, label %if.then321.out_err_crit_edge, label %if.then321.if.end329_crit_edge

if.then321.if.end329_crit_edge:                   ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end329

if.then321.out_err_crit_edge:                     ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end329:                                        ; preds = %if.then321.if.end329_crit_edge, %if.end319.if.end329_crit_edge
  %buf.1458 = phi ptr [ %buf.1457462, %if.then321.if.end329_crit_edge ], [ %buf.0, %if.end319.if.end329_crit_edge ]
  call void @d_drop(ptr noundef %direntry) #9
  %181 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %newinode, align 4
  call void @d_add(ptr noundef %direntry, ptr noundef %182) #9
  br label %out

out:                                              ; preds = %if.then337, %if.end335.out_crit_edge, %if.end329, %if.then158, %land.lhs.true155.out_crit_edge, %do.body143, %do.body139.out_crit_edge, %if.end104.out_crit_edge, %if.end101.out_crit_edge, %if.then29, %if.then19.out_crit_edge
  %buf.2 = phi ptr [ %call7.i, %if.then158 ], [ %call7.i, %land.lhs.true155.out_crit_edge ], [ %call7.i, %do.body139.out_crit_edge ], [ %buf.1456, %if.then337 ], [ %buf.1456, %if.end335.out_crit_edge ], [ %buf.1458, %if.end329 ], [ null, %if.then19.out_crit_edge ], [ null, %if.then29 ], [ null, %if.end101.out_crit_edge ], [ null, %if.end104.out_crit_edge ], [ %call7.i, %do.body143 ]
  %rc.1 = phi i32 [ %call135, %if.then158 ], [ %call135, %land.lhs.true155.out_crit_edge ], [ %call135, %do.body139.out_crit_edge ], [ %rc.2, %if.then337 ], [ %rc.2, %if.end335.out_crit_edge ], [ 0, %if.end329 ], [ %call21, %if.then19.out_crit_edge ], [ -21, %if.then29 ], [ -38, %if.end101.out_crit_edge ], [ -12, %if.end104.out_crit_edge ], [ %call135, %do.body143 ]
  call void @kfree(ptr noundef %buf.2) #9
  %tobool.not.i448 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i448, label %out.cleanup_crit_edge, label %if.then.i449

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i449:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %183 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %183, ptr noundef nonnull %call.i) #9
  br label %cleanup

out_err:                                          ; preds = %if.then321.out_err_crit_edge, %if.then309, %land.lhs.true306.out_err_crit_edge, %do.body294, %do.body290.out_err_crit_edge
  %buf.1456 = phi ptr [ %buf.0, %if.then309 ], [ %buf.0, %land.lhs.true306.out_err_crit_edge ], [ %buf.0, %do.body290.out_err_crit_edge ], [ %buf.1457462, %if.then321.out_err_crit_edge ], [ %buf.0, %do.body294 ]
  %rc.2 = phi i32 [ %rc.0, %if.then309 ], [ %rc.0, %land.lhs.true306.out_err_crit_edge ], [ %rc.0, %do.body290.out_err_crit_edge ], [ -21, %if.then321.out_err_crit_edge ], [ %rc.0, %do.body294 ]
  %ops330 = getelementptr inbounds %struct.TCP_Server_Info, ptr %11, i32 0, i32 5
  %184 = ptrtoint ptr %ops330 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ops330, align 4
  %close = getelementptr inbounds %struct.smb_version_operations, ptr %185, i32 0, i32 56
  %186 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %close, align 4
  %tobool331.not = icmp eq ptr %187, null
  br i1 %tobool331.not, label %out_err.if.end335_crit_edge, label %if.then332

out_err.if.end335_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335

if.then332:                                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  call void %187(i32 noundef %xid, ptr noundef %5, ptr noundef %fid) #9
  br label %if.end335

if.end335:                                        ; preds = %if.then332, %out_err.if.end335_crit_edge
  %188 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %newinode, align 4
  %tobool336.not = icmp eq ptr %189, null
  br i1 %tobool336.not, label %if.end335.out_crit_edge, label %if.then337

if.end335.out_crit_edge:                          ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then337:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef nonnull %189) #9
  br label %out

cleanup:                                          ; preds = %if.then.i449, %out.cleanup_crit_edge, %free_dentry_path.exit
  %retval.0 = phi i32 [ %30, %free_dentry_path.exit ], [ %rc.1, %out.cleanup_crit_edge ], [ %rc.1, %if.then.i449 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newinode) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_del_pending_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_new_fileinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !141

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !146
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !141

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_smb3_exit_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 558, ptr noundef nonnull @.str.46) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  %31 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
define internal fastcc void @trace_smb3_exit_done(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !141

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !148
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !149
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !141

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_smb3_exit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 610, ptr noundef nonnull @.str.46) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  %31 = tail call i32 @llvm.read_register.i32(metadata !127) #9
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
define dso_local i32 @cifs_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %direntry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) local_unnamed_addr #0 align 64 {
entry:
  %fid = alloca %struct.cifs_fid, align 8
  %oplock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_get_xid() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body2

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_create.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_create, %land.lhs.true)) #9
          to label %do.end21 [label %land.lhs.true], !srcloc !138

land.lhs.true:                                    ; preds = %do.body2
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_create._rs, ptr noundef nonnull @.str.13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end21_crit_edge, label %if.then10

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %7)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call14 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_create.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef %call, i32 noundef %call14) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then10, %land.lhs.true.do.end21_crit_edge, %do.body2, %entry.do.end21_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call, ptr noundef nonnull @.str.13)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #9
  %8 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #9
  %9 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %oplock, align 4, !annotation !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and25 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.end21.do.end52_crit_edge, label %do.body28

do.end21.do.end52_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

do.body28:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_create.descriptor.15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_create, %land.lhs.true40)) #9
          to label %do.end52 [label %land.lhs.true40], !srcloc !138

land.lhs.true40:                                  ; preds = %do.body28
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_create._rs.14, ptr noundef nonnull @.str.13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end52_crit_edge, label %if.then43

land.lhs.true40.do.end52_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_create.descriptor.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef %inode, ptr noundef %direntry, ptr noundef %direntry) #9
  br label %do.end52

do.end52:                                         ; preds = %if.then43, %land.lhs.true40.do.end52_crit_edge, %do.body28, %do.end21.do.end52_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp slt i32 %16, 0
  br i1 %tobool.not.i, label %do.end52.cleanup_crit_edge, label %if.end62, !prof !137

do.end52.cleanup_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %do.end52
  %call65 = tail call ptr @cifs_sb_tlink(ptr noundef %14) #9
  %17 = ptrtoint ptr %call65 to i32
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end62.do.body86_crit_edge, label %if.end69

if.end62.do.body86_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body86

if.end69:                                         ; preds = %if.end62
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call65, i32 0, i32 5
  %18 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ses, align 8
  %server71 = getelementptr inbounds %struct.cifs_ses, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %server71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %server71, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %new_lease_key = getelementptr inbounds %struct.smb_version_operations, ptr %25, i32 0, i32 76
  %26 = ptrtoint ptr %new_lease_key to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %new_lease_key, align 4
  %tobool72.not = icmp eq ptr %27, null
  br i1 %tobool72.not, label %if.end69.if.end76_crit_edge, label %if.then73

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  call void %27(ptr noundef nonnull %fid) #9
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end69.if.end76_crit_edge
  %call77 = call fastcc i32 @cifs_do_create(ptr noundef %inode, ptr noundef %direntry, i32 noundef %call, ptr noundef %call65, i32 noundef 194, i16 noundef zeroext %mode, ptr noundef nonnull %oplock, ptr noundef nonnull %fid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true79, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

land.lhs.true79:                                  ; preds = %if.end76
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %close = getelementptr inbounds %struct.smb_version_operations, ptr %29, i32 0, i32 56
  %30 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %close, align 4
  %tobool81.not = icmp eq ptr %31, null
  br i1 %tobool81.not, label %land.lhs.true79.if.end85_crit_edge, label %if.then82

land.lhs.true79.if.end85_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #11
  call void %31(i32 noundef %call, ptr noundef %19, ptr noundef nonnull %fid) #9
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %land.lhs.true79.if.end85_crit_edge, %if.end76.if.end85_crit_edge
  call void @cifs_put_tlink(ptr noundef %call65) #9
  br label %do.body86

do.body86:                                        ; preds = %if.end85, %if.end62.do.body86_crit_edge
  %rc.0 = phi i32 [ %17, %if.end62.do.body86_crit_edge ], [ %call77, %if.end85 ]
  call void @_free_xid(i32 noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %32 = load i32, ptr @cifsFYI, align 4
  %and89 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body86.do.end116_crit_edge, label %do.body92

do.body86.do.end116_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

do.body92:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_create.descriptor.18, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_create, %land.lhs.true104)) #9
          to label %do.end116 [label %land.lhs.true104], !srcloc !138

land.lhs.true104:                                 ; preds = %do.body92
  %call105 = call i32 @___ratelimit(ptr noundef nonnull @cifs_create._rs.17, ptr noundef nonnull @.str.13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %land.lhs.true104.do.end116_crit_edge, label %if.then107

land.lhs.true104.do.end116_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

if.then107:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_create.descriptor.18, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef %call, i32 noundef %rc.0) #9
  br label %do.end116

do.end116:                                        ; preds = %if.then107, %land.lhs.true104.do.end116_crit_edge, %do.body92, %do.body86.do.end116_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool117.not = icmp eq i32 %rc.0, 0
  br i1 %tobool117.not, label %if.else119, label %if.then118

if.then118:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_smb3_exit_err(i32 noundef %call, ptr noundef nonnull @.str.13, i32 noundef %rc.0)
  br label %cleanup

if.else119:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_smb3_exit_done(i32 noundef %call, ptr noundef nonnull @.str.13)
  br label %cleanup

cleanup:                                          ; preds = %if.else119, %if.then118, %do.end52.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end52.cleanup_crit_edge ], [ 0, %if.else119 ], [ %rc.0, %if.then118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %direntry, i16 noundef zeroext %mode, i32 noundef %device_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %device_number, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp slt i32 %7, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5, !prof !137

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @cifs_sb_tlink(ptr noundef %5) #9
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %9 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #9
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call6, i32 0, i32 5
  %10 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tl_tcon.i, align 4
  %call13 = tail call i32 @_get_xid() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %12 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end10.do.end40_crit_edge, label %do.body17

if.end10.do.end40_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.body17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_mknod.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_mknod, %land.lhs.true)) #9
          to label %do.end40 [label %land.lhs.true], !srcloc !138

land.lhs.true:                                    ; preds = %do.body17
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_mknod._rs, ptr noundef nonnull @.str.19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.do.end40_crit_edge, label %if.then28

land.lhs.true.do.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %19)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call32 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_mknod.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, i32 noundef %call13, i32 noundef %call32) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then28, %land.lhs.true.do.end40_crit_edge, %do.body17, %if.end10.do.end40_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call13, ptr noundef nonnull @.str.19)
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 9
  %20 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call ptr @cifs_sb_master_tcon(ptr noundef %23) #9
  %Flags.i = getelementptr inbounds %struct.cifs_tcon, ptr %call1.i, i32 0, i32 12
  %24 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %Flags.i, align 8
  %26 = and i16 %25, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.i = icmp ne i16 %26, 0
  %call3.i = tail call ptr @build_path_from_dentry_optional_prefix(ptr noundef %direntry, ptr noundef %call.i, i1 noundef zeroext %tobool.i) #9
  %cmp.i114 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then44, label %if.end46

if.then44:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call3.i to i32
  br label %mknod_out

if.end46:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %11, i32 0, i32 7
  %28 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %make_node = getelementptr inbounds %struct.smb_version_operations, ptr %33, i32 0, i32 107
  %34 = ptrtoint ptr %make_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %make_node, align 4
  %call47 = tail call i32 %35(i32 noundef %call13, ptr noundef %inode, ptr noundef %direntry, ptr noundef %11, ptr noundef %call3.i, i16 noundef zeroext %mode, i32 noundef %device_number) #9
  br label %mknod_out

mknod_out:                                        ; preds = %if.end46, %if.then44
  %rc.0 = phi i32 [ %27, %if.then44 ], [ %call47, %if.end46 ]
  %tobool.not.i115 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i115, label %mknod_out.free_dentry_path.exit_crit_edge, label %if.then.i

mknod_out.free_dentry_path.exit_crit_edge:        ; preds = %mknod_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %mknod_out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %36 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef nonnull %call.i) #9
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %mknod_out.free_dentry_path.exit_crit_edge
  tail call void @_free_xid(i32 noundef %call13) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %37 = load i32, ptr @cifsFYI, align 4
  %and51 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %free_dentry_path.exit.do.end78_crit_edge, label %do.body54

free_dentry_path.exit.do.end78_crit_edge:         ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78

do.body54:                                        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_mknod.descriptor.21, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_mknod, %land.lhs.true66)) #9
          to label %do.end78 [label %land.lhs.true66], !srcloc !138

land.lhs.true66:                                  ; preds = %do.body54
  %call67 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_mknod._rs.20, ptr noundef nonnull @.str.19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true66.do.end78_crit_edge, label %if.then69

land.lhs.true66.do.end78_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78

if.then69:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_mknod.descriptor.21, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, i32 noundef %call13, i32 noundef %rc.0) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then69, %land.lhs.true66.do.end78_crit_edge, %do.body54, %free_dentry_path.exit.do.end78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool79.not = icmp eq i32 %rc.0, 0
  br i1 %tobool79.not, label %if.else81, label %if.then80

if.then80:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call13, ptr noundef nonnull @.str.19, i32 noundef %rc.0)
  br label %do.end84

if.else81:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call13, ptr noundef nonnull @.str.19)
  br label %do.end84

do.end84:                                         ; preds = %if.else81, %if.then80
  tail call void @cifs_put_tlink(ptr noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then8 ], [ %rc.0, %do.end84 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb311_posix_get_inode_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_get_inode_info_unix(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_get_inode_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_d_revalidate(ptr noundef %direntry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end48, label %if.then1

if.then1:                                         ; preds = %if.end
  %and3 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then1.if.end14_crit_edge, label %land.lhs.true

if.then1.if.end14_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then1
  %oplock = getelementptr i8, ptr %1, i32 -116
  %2 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oplock, align 4
  %and6 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

lor.lhs.false:                                    ; preds = %land.lhs.true
  %i_sb = getelementptr i8, ptr %1, i32 28
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mnt_cifs_flags, align 4
  %and10 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %time = getelementptr i8, ptr %1, i32 -56
  %10 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %time, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.lhs.false.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.then1.if.end14_crit_edge
  %call15 = tail call i32 @cifs_revalidate_dentry(ptr noundef %direntry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else37, label %do.body18

do.body18:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and19 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end36_crit_edge, label %do.body22

do.body18.do.end36_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.body22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_d_revalidate.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_d_revalidate, %land.lhs.true27)) #9
          to label %do.end36 [label %land.lhs.true27], !srcloc !138

land.lhs.true27:                                  ; preds = %do.body22
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_d_revalidate._rs, ptr noundef nonnull @.str.61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end36_crit_edge, label %if.then30

land.lhs.true27.do.end36_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_d_revalidate.descriptor, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3, i32 noundef %call15) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %land.lhs.true27.do.end36_crit_edge, %do.body22, %do.body18.do.end36_crit_edge
  %12 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call15, label %sw.default [
    i32 -2, label %do.end36.cleanup_crit_edge
    i32 -116, label %do.end36.cleanup_crit_edge82
  ]

do.end36.cleanup_crit_edge82:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else37:                                        ; preds = %if.end14
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_flags, align 4
  %and38 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else37.cleanup_crit_edge, label %land.lhs.true40

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true40:                                  ; preds = %if.else37
  %15 = ptrtoint ptr %direntry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %direntry, align 8
  %and41 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true40.cleanup_crit_edge

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #9
  %17 = ptrtoint ptr %direntry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %direntry, align 8
  %or = or i32 %18, 131072
  store i32 %or, ptr %direntry, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool49.not = icmp ne i32 %flags, 0
  %and52 = and i32 %flags, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %or.cond = and i1 %tobool49.not, %tobool53.not
  br i1 %or.cond, label %if.end55, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 11
  %19 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_fsdata.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %add = add i32 %21, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end55.cleanup_crit_edge, label %lor.lhs.false57

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false57:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @lookupCacheEnabled to i32))
  %23 = load i8, ptr @lookupCacheEnabled, align 1, !range !140
  %24 = zext i8 %23 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false57, %if.end55.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.then43, %land.lhs.true40.cleanup_crit_edge, %if.else37.cleanup_crit_edge, %sw.default, %do.end36.cleanup_crit_edge, %do.end36.cleanup_crit_edge82, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %sw.default ], [ -10, %entry.cleanup_crit_edge ], [ 0, %do.end36.cleanup_crit_edge ], [ 0, %do.end36.cleanup_crit_edge82 ], [ 1, %if.then43 ], [ 1, %land.lhs.true40.cleanup_crit_edge ], [ 1, %if.else37.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ %24, %lor.lhs.false57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_dfs_d_automount(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_ci_hash(ptr noundef %dentry, ptr nocapture noundef %q) #0 align 64 {
entry:
  %c = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_nls, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c) #9
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %c, align 2, !annotation !139
  %7 = ptrtoint ptr %dentry to i32
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.not = icmp eq i32 %9, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 3
  %name = getelementptr inbounds %struct.qstr, ptr %q, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i32 [ %9, %for.body.lr.ph ], [ %18, %if.end.for.body_crit_edge ]
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %hash.025 = phi i32 [ %7, %for.body.lr.ph ], [ %mul.i, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %char2uni, align 4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %arrayidx = getelementptr i8, ptr %14, i32 %i.026
  %sub = sub i32 %10, %i.026
  %call2 = call i32 %12(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull %c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end, !prof !137

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %15 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %c, align 2
  %call5 = call zeroext i16 @cifs_toupper(i16 noundef zeroext %16) #9
  %conv = zext i16 %call5 to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  %add.i = add i32 %shl.i, %hash.025
  %shr.i = lshr i32 %conv, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %add = add i32 %call2, %i.026
  %17 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %q, align 8
  %cmp = icmp ugt i32 %18, %add
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %hash.0.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %mul.i, %if.end.for.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash8 = getelementptr inbounds %struct.anon.4, ptr %q, i32 0, i32 1
  %19 = ptrtoint ptr %hash8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i.i.i, ptr %hash8, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call2, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_ci_compare(ptr nocapture noundef readonly %dentry, i32 noundef %len, ptr noundef %str, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %c1 = alloca i16, align 2
  %c2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_nls, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c1) #9
  %6 = ptrtoint ptr %c1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %c1, align 2, !annotation !139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c2) #9
  %7 = ptrtoint ptr %c2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %c2, align 2, !annotation !139
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %len)
  %cmp.not = icmp eq i32 %9, %len
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp257.not = icmp eq i32 %len, 0
  br i1 %cmp257.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 3
  %name5 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %char2uni, align 4
  %arrayidx = getelementptr i8, ptr %str, i32 %i.058
  %sub = sub i32 %len, %i.058
  %call3 = call i32 %11(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull %c1) #9
  %12 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %char2uni, align 4
  %14 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name5, align 8
  %arrayidx6 = getelementptr i8, ptr %15, i32 %i.058
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %name, align 8
  %sub8 = sub i32 %17, %i.058
  %call9 = call i32 %13(ptr noundef %arrayidx6, i32 noundef %sub8, ptr noundef nonnull %c2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp10 = icmp slt i32 %call3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp slt i32 %call9, 0
  %spec.select = select i1 %cmp10, i1 %cmp11, i1 false
  br i1 %spec.select, label %if.then13, label %if.end22, !prof !137

if.then13:                                        ; preds = %for.body
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name5, align 8
  %arrayidx16 = getelementptr i8, ptr %21, i32 %i.058
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %23)
  %cmp18.not = icmp eq i8 %19, %23
  br i1 %cmp18.not, label %if.then13.for.inc_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end22:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %call9)
  %cmp23.not = icmp eq i32 %call3, %call9
  br i1 %cmp23.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %c1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %c1, align 2
  %call27 = call zeroext i16 @cifs_toupper(i16 noundef zeroext %25) #9
  %26 = ptrtoint ptr %c2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %c2, align 2
  %call29 = call zeroext i16 @cifs_toupper(i16 noundef zeroext %27) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %call27, i16 %call29)
  %cmp31.not = icmp eq i16 %call27, %call29
  br i1 %cmp31.not, label %if.end26.for.inc_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %if.then13.for.inc_crit_edge
  %l1.0 = phi i32 [ %call3, %if.end26.for.inc_crit_edge ], [ 1, %if.then13.for.inc_crit_edge ]
  %add = add i32 %l1.0, %i.058
  %cmp2 = icmp ult i32 %add, %len
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %if.then13.cleanup_crit_edge ], [ 1, %if.end22.cleanup_crit_edge ], [ 1, %if.end26.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c1) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_enter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_posix_open(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBClose(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBUnixSetFileInfo(i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @backup_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_err(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_done(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_revalidate_dentry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cifs_toupper(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bitreverse.i32(i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !82, !84, !85, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !110, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !126}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/dir.c", i32 111, i32 3}
!2 = !{ptr @build_path_from_dentry_optional_prefix._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @build_path_from_dentry_optional_prefix.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @cifs_atomic_open._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/dir.c", i32 454, i32 8}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cifs_atomic_open.descriptor, !9, !"descriptor", i1 false, i1 false}
!13 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!14 = !{ptr @cifs_atomic_open._rs.7, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../fs/cifs/dir.c", i32 456, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cifs_atomic_open.descriptor.8, !15, !"descriptor", i1 false, i1 false}
!18 = !{ptr @cifs_atomic_open._rs.10, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../fs/cifs/dir.c", i32 520, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cifs_atomic_open.descriptor.11, !19, !"descriptor", i1 false, i1 false}
!22 = !{ptr @cifs_create._rs, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../fs/cifs/dir.c", i32 528, i32 21}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cifs_create.descriptor, !23, !"descriptor", i1 false, i1 false}
!26 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!27 = !{ptr @cifs_create._rs.14, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../fs/cifs/dir.c", i32 543, i32 2}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cifs_create.descriptor.15, !28, !"descriptor", i1 false, i1 false}
!31 = !{ptr @cifs_create._rs.17, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../fs/cifs/dir.c", i32 567, i32 2}
!33 = !{ptr @cifs_create.descriptor.18, !32, !"descriptor", i1 false, i1 false}
!34 = !{ptr @cifs_mknod._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../fs/cifs/dir.c", i32 595, i32 8}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cifs_mknod.descriptor, !35, !"descriptor", i1 false, i1 false}
!38 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!39 = !{ptr @cifs_mknod._rs.20, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../fs/cifs/dir.c", i32 609, i32 2}
!41 = !{ptr @cifs_mknod.descriptor.21, !40, !"descriptor", i1 false, i1 false}
!42 = !{ptr @cifs_lookup._rs, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../fs/cifs/dir.c", i32 628, i32 8}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cifs_lookup.descriptor, !43, !"descriptor", i1 false, i1 false}
!46 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!47 = !{ptr @cifs_lookup._rs.23, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../fs/cifs/dir.c", i32 630, i32 2}
!49 = !{ptr @cifs_lookup.descriptor.24, !48, !"descriptor", i1 false, i1 false}
!50 = !{ptr @cifs_lookup._rs.25, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/cifs/dir.c", i32 638, i32 3}
!52 = !{ptr @cifs_lookup.descriptor.26, !51, !"descriptor", i1 false, i1 false}
!53 = !{ptr @cifs_lookup._rs.27, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../fs/cifs/dir.c", i32 646, i32 3}
!55 = !{ptr @cifs_lookup.descriptor.28, !54, !"descriptor", i1 false, i1 false}
!56 = !{ptr @cifs_lookup._rs.29, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../fs/cifs/dir.c", i32 657, i32 3}
!58 = !{ptr @cifs_lookup.descriptor.30, !57, !"descriptor", i1 false, i1 false}
!59 = !{ptr @cifs_lookup._rs.31, !60, !"_rs", i1 false, i1 false}
!60 = !{!"../fs/cifs/dir.c", i32 663, i32 3}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cifs_lookup.descriptor.32, !60, !"descriptor", i1 false, i1 false}
!63 = !{ptr @cifs_lookup._rs.34, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../fs/cifs/dir.c", i32 665, i32 3}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cifs_lookup.descriptor.35, !64, !"descriptor", i1 false, i1 false}
!67 = !{ptr @cifs_lookup._rs.37, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/cifs/dir.c", i32 667, i32 2}
!69 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @cifs_lookup.descriptor.38, !68, !"descriptor", i1 false, i1 false}
!71 = !{ptr @cifs_lookup._rs.40, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../fs/cifs/dir.c", i32 692, i32 4}
!73 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cifs_lookup.descriptor.41, !72, !"descriptor", i1 false, i1 false}
!75 = !{ptr @cifs_lookup._rs.43, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../fs/cifs/dir.c", i32 700, i32 2}
!77 = !{ptr @cifs_lookup.descriptor.44, !76, !"descriptor", i1 false, i1 false}
!78 = !{ptr @cifs_dentry_ops, !79, !"cifs_dentry_ops", i1 false, i1 false}
!79 = !{!"../fs/cifs/dir.c", i32 786, i32 32}
!80 = !{ptr @cifs_ci_dentry_ops, !81, !"cifs_ci_dentry_ops", i1 false, i1 false}
!81 = !{!"../fs/cifs/dir.c", i32 859, i32 32}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!86 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @check_name._rs, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../fs/cifs/dir.c", i32 157, i32 5}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @check_name.descriptor, !91, !"descriptor", i1 false, i1 false}
!95 = !{ptr @cifs_do_create._rs, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../fs/cifs/dir.c", i32 279, i32 3}
!97 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cifs_do_create.descriptor, !96, !"descriptor", i1 false, i1 false}
!100 = !{ptr @cifs_do_create._rs.52, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../fs/cifs/dir.c", i32 315, i32 3}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cifs_do_create.descriptor.53, !101, !"descriptor", i1 false, i1 false}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../fs/cifs/dir.c", i32 333, i32 15}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../fs/cifs/dir.c", i32 337, i32 16}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../fs/cifs/dir.c", i32 370, i32 24}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../fs/cifs/dir.c", i32 374, i32 25}
!112 = !{ptr @cifs_do_create._rs.58, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../fs/cifs/dir.c", i32 382, i32 3}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @cifs_do_create.descriptor.59, !113, !"descriptor", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!118 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!121 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!122 = !{ptr @cifs_d_revalidate._rs, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../fs/cifs/dir.c", i32 720, i32 4}
!124 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @cifs_d_revalidate.descriptor, !123, !"descriptor", i1 false, i1 false}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = !{i64 2148496948, i64 2148496953, i64 2148496966, i64 2148497010, i64 2148497044, i64 2148497065}
!139 = !{!"auto-init"}
!140 = !{i8 0, i8 2}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2158589493}
!143 = !{i64 2158589704}
!144 = !{i64 2149493355}
!145 = !{i64 2149494391}
!146 = !{i64 2158536490}
!147 = !{i64 2158536715}
!148 = !{i64 2158605885}
!149 = !{i64 2158606104}
