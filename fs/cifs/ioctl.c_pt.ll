; ModuleID = '/llk/IR_all_yes/fs/cifs/ioctl.c_pt.bc'
source_filename = "../fs/cifs/ioctl.c"
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.118 }
%union.anon.118 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.smb3_full_key_debug_info = type <{ i32, i64, i16, i8, i8, i8, [0 x i8] }>
%struct.smb3_key_debug_info = type <{ i64, i16, [16 x i8], [16 x i8], [16 x i8] }>
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.151, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.151 = type { %struct.anon.153 }
%struct.anon.153 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.147 }
%union.anon.147 = type { ptr, [124 x i8] }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.smb_mnt_fs_info = type { i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.120, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.121, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.122, ptr, %struct.address_space, %struct.list_head, %union.anon.125, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.120 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.121 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.122 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.125 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }

@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cifs_ioctl.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cifs_ioctl\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/ioctl.c\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cifs_ioctl._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl.descriptor.6 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: cifs ioctl 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@cifs_ioctl._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl.descriptor.9 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIFS: %s: set compress flag rc %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cifs_ioctl._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIFS: %s: ioctl notify rc %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cifs_ioctl._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl.descriptor.15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIFS: %s: unsupported ioctl\0A\00", [35 x i8] zeroinitializer }, align 32
@cifs_ioctl._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl.descriptor.18 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_ioctl_copychunk\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CIFS: %s: ioctl copychunk range\0A\00", [63 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk.descriptor.26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.27, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: file target not open for write\0A\00", [54 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk.descriptor.29 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.30, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: mnt_want_write failed with rc %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013CIFS: VFS: src file seems to be from a different filesystem type\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_ioctl_copychunk._entry_ptr = internal global ptr @cifs_ioctl_copychunk._entry, section ".printk_index", align 4
@cifs_ioctl_query_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_ioctl_query_info.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_ioctl_query_info\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CIFS: %s: %s %s\0A\00", [47 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cifs_tcp_ses_lock = external dso_local global %struct.spinlock, align 4
@cifs_tcp_ses_list = external dso_local global %struct.list_head, align 4
@cifs_shutdown._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_shutdown = private unnamed_addr constant [14 x i8] c"cifs_shutdown\00", align 1
@cifs_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.cifs_shutdown, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CIFS: VFS: shut down requested (%d)\00", [58 x i8] zeroinitializer }, align 32
@cifs_shutdown._entry_ptr = internal global ptr @cifs_shutdown._entry, section ".printk_index", align 4
@cifs_shutdown._rs.39 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_shutdown.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.cifs_shutdown, ptr @.str.3, ptr @.str.40, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: shutdown with default flag not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 52996, i64 1074030082, i64 1074056963, i64 1074122505, i64 2147768445, i64 2147771905, i64 2148323078, i64 2151730949, i64 3222392586, i64 3222851335, i64 3225079560]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 326, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 328, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 386, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 486, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 495, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 499, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 609, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 108, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 78, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 81, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 88, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 100, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 44, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 230, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 214, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 174, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 172, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [19 x i8] c"../fs/cifs/ioctl.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 188, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @cifs_ioctl_copychunk._entry, ptr @cifs_ioctl_copychunk._entry_ptr, ptr @cifs_shutdown._entry, ptr @cifs_shutdown._entry_ptr, ptr @cifs_ioctl._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_ioctl._rs.5, ptr @.str.7, ptr @cifs_ioctl._rs.8, ptr @.str.10, ptr @cifs_ioctl._rs.11, ptr @.str.13, ptr @cifs_ioctl._rs.14, ptr @.str.16, ptr @cifs_ioctl._rs.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @cifs_ioctl_copychunk._rs, ptr @.str.23, ptr @.str.24, ptr @cifs_ioctl_copychunk._rs.25, ptr @.str.27, ptr @cifs_ioctl_copychunk._rs.28, ptr @.str.30, ptr @cifs_ioctl_copychunk._rs.31, ptr @.str.32, ptr @cifs_ioctl_query_info._rs, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @cifs_shutdown._rs, ptr @.str.38, ptr @cifs_shutdown._rs.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl_copychunk._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl_copychunk._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl_copychunk._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl_copychunk._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl_copychunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_ioctl_query_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_shutdown._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_shutdown._rs.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_ioctl(ptr noundef %filep, i32 noundef %command, i32 noundef %arg) #0 align 64 {
entry:
  %out.i = alloca %struct.smb3_full_key_debug_info, align 4
  %pkey_inf = alloca %struct.smb3_key_debug_info, align 8
  %ExtAttrBits = alloca i64, align 8
  %ExtAttrMask = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %pkey_inf) #8
  %2 = call ptr @memset(ptr %pkey_inf, i32 255, i32 58)
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ExtAttrBits) #8
  %5 = ptrtoint ptr %ExtAttrBits to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %ExtAttrBits, align 8
  %call1 = tail call i32 @_get_xid() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body3

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl, %land.lhs.true)) #8
          to label %do.end21 [label %land.lhs.true], !srcloc !93

land.lhs.true:                                    ; preds = %do.body3
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl._rs, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end21_crit_edge, label %if.then10

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i510 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i510 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call14 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %call1, i32 noundef %call14) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then10, %land.lhs.true.do.end21_crit_edge, %do.body3, %entry.do.end21_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and25 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.end21.do.end52_crit_edge, label %do.body28

do.end21.do.end52_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

do.body28:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl.descriptor.6, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl, %land.lhs.true40)) #8
          to label %do.end52 [label %land.lhs.true40], !srcloc !93

land.lhs.true40:                                  ; preds = %do.body28
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl._rs.5, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end52_crit_edge, label %if.then43

land.lhs.true40.do.end52_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl.descriptor.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef %command) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then43, %land.lhs.true40.do.end52_crit_edge, %do.body28, %do.end21.do.end52_crit_edge
  %15 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %do.body326 [
    i32 -2147195391, label %sw.bb
    i32 1074030082, label %sw.bb100
    i32 1074056963, label %sw.bb165
    i32 -1072115961, label %sw.bb167
    i32 52996, label %sw.bb169
    i32 -2143236347, label %sw.bb188
    i32 -2146644218, label %sw.bb196
    i32 -1069887736, label %sw.bb219
    i32 -1072574710, label %sw.bb253
    i32 1074122505, label %sw.bb264
    i32 -2147198851, label %sw.bb322
  ]

sw.bb:                                            ; preds = %do.end52
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %sw.bb.do.body355_crit_edge, label %if.end54

sw.bb.do.body355_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end54:                                         ; preds = %sw.bb
  %tlink55 = getelementptr inbounds %struct.cifsFileInfo, ptr %4, i32 0, i32 8
  %16 = ptrtoint ptr %tlink55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tlink55, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tl_tcon.i, align 4
  %Capability = getelementptr inbounds %struct.cifs_tcon, ptr %19, i32 0, i32 21, i32 2
  %20 = ptrtoint ptr %Capability to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %Capability, align 4
  %22 = and i64 %21, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool58.not = icmp eq i64 %22, 0
  br i1 %tobool58.not, label %if.end54.if.end77_crit_edge, label %if.then59

if.end54.if.end77_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then59:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ExtAttrMask) #8
  %23 = ptrtoint ptr %ExtAttrMask to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %ExtAttrMask, align 8
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %4, i32 0, i32 5
  %24 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %fid, align 8
  %conv = zext i16 %25 to i32
  %call60 = call i32 @CIFSGetExtAttr(i32 noundef %call1, ptr noundef %19, i32 noundef %conv, ptr noundef nonnull %ExtAttrBits, ptr noundef nonnull %ExtAttrMask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.then59.if.end72_crit_edge

if.then59.if.end72_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %26 = inttoptr i32 %arg to ptr
  %27 = ptrtoint ptr %ExtAttrBits to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ExtAttrBits, align 8
  %29 = trunc i64 %28 to i32
  %conv66 = and i32 %29, 253951
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 344) #8
  %30 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !94
  %and.i = and i32 %32, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %33 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %26, i32 %conv66, i32 -1226833921) #8, !srcloc !97
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #8, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  br label %if.end72

if.end72:                                         ; preds = %if.then63, %if.then59.if.end72_crit_edge
  %rc.0 = phi i32 [ %33, %if.then63 ], [ %call60, %if.then59.if.end72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %rc.0)
  %cmp73.not = icmp eq i32 %rc.0, 95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ExtAttrMask) #8
  br i1 %cmp73.not, label %if.end72.if.end77_crit_edge, label %if.end72.do.body355_crit_edge

if.end72.do.body355_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.end77:                                         ; preds = %if.end72.if.end77_crit_edge, %if.end54.if.end77_crit_edge
  %cifsAttrs = getelementptr i8, ptr %1, i32 -120
  %34 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cifsAttrs, align 8
  %and79 = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.do.body355_crit_edge, label %if.then81

if.end77.do.body355_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %ExtAttrBits to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 4, ptr %ExtAttrBits, align 8
  %37 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 354) #8
  %38 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i490 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i490 to ptr
  %cpu_domain.i.i491 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i491) #5, !srcloc !94
  %and.i492 = and i32 %40, -13
  %or.i493 = or i32 %and.i492, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i493) #8, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %41 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %37, i32 4, i32 -1226833921) #8, !srcloc !98
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #8, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  br label %do.body355

sw.bb100:                                         ; preds = %do.end52
  %cmp101 = icmp eq ptr %4, null
  br i1 %cmp101, label %sw.bb100.do.body355_crit_edge, label %if.end104

sw.bb100.do.body355_crit_edge:                    ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end104:                                        ; preds = %sw.bb100
  %tlink105 = getelementptr inbounds %struct.cifsFileInfo, ptr %4, i32 0, i32 8
  %42 = ptrtoint ptr %tlink105 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tlink105, align 4
  %tl_tcon.i511 = getelementptr inbounds %struct.tcon_link, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %tl_tcon.i511 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tl_tcon.i511, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 363) #8
  %46 = inttoptr i32 %arg to ptr
  %47 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i494 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i494 to ptr
  %cpu_domain.i.i495 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i495) #5, !srcloc !94
  %and.i496 = and i32 %49, -13
  %or.i497 = or i32 %and.i496, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i497) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %50 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_64t_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %46, i32 -1226833921) #8, !srcloc !99
  %asmresult = extractvalue { i32, i64 } %50, 0
  %asmresult115 = extractvalue { i32, i64 } %50, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %51 = shl i64 %asmresult115, 32
  %conv117 = ashr exact i64 %51, 32
  %52 = ptrtoint ptr %ExtAttrBits to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv117, ptr %ExtAttrBits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool119.not = icmp eq i32 %asmresult, 0
  br i1 %tobool119.not, label %if.end121, label %if.end104.do.body355_crit_edge

if.end104.do.body355_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end121:                                        ; preds = %if.end104
  %and122 = and i64 %asmresult115, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and122)
  %cmp123 = icmp eq i64 %and122, 0
  br i1 %cmp123, label %if.end121.do.body355_crit_edge, label %if.end126

if.end121.do.body355_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end126:                                        ; preds = %if.end121
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %45, i32 0, i32 7
  %53 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops, align 4
  %set_compression = getelementptr inbounds %struct.smb_version_operations, ptr %58, i32 0, i32 42
  %59 = ptrtoint ptr %set_compression to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_compression, align 4
  %tobool127.not = icmp eq ptr %60, null
  br i1 %tobool127.not, label %if.end126.do.body355_crit_edge, label %if.then128

if.end126.do.body355_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.then128:                                       ; preds = %if.end126
  %call133 = tail call i32 %60(i32 noundef %call1, ptr noundef %45, ptr noundef nonnull %4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %61 = load i32, ptr @cifsFYI, align 4
  %and136 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.then128.do.body355_crit_edge, label %do.body139

if.then128.do.body355_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

do.body139:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl.descriptor.9, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl, %land.lhs.true151)) #8
          to label %do.body355 [label %land.lhs.true151], !srcloc !93

land.lhs.true151:                                 ; preds = %do.body139
  %call152 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl._rs.8, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %land.lhs.true151.do.body355_crit_edge, label %if.then154

land.lhs.true151.do.body355_crit_edge:            ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.then154:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl.descriptor.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef %call133) #8
  br label %do.body355

sw.bb165:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %call166 = tail call fastcc i32 @cifs_ioctl_copychunk(i32 noundef %call1, ptr noundef %filep, i32 noundef %arg)
  br label %do.body355

sw.bb167:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %call168 = tail call fastcc i32 @cifs_ioctl_query_info(i32 noundef %call1, ptr noundef %filep, i32 noundef %arg)
  br label %do.body355

sw.bb169:                                         ; preds = %do.end52
  %cmp170 = icmp eq ptr %4, null
  br i1 %cmp170, label %sw.bb169.do.body355_crit_edge, label %if.end173

sw.bb169.do.body355_crit_edge:                    ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end173:                                        ; preds = %sw.bb169
  %tlink174 = getelementptr inbounds %struct.cifsFileInfo, ptr %4, i32 0, i32 8
  %62 = ptrtoint ptr %tlink174 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tlink174, align 4
  %tl_tcon.i512 = getelementptr inbounds %struct.tcon_link, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %tl_tcon.i512 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tl_tcon.i512, align 4
  %ses176 = getelementptr inbounds %struct.cifs_tcon, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %ses176 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ses176, align 8
  %server177 = getelementptr inbounds %struct.cifs_ses, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %server177 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %server177, align 8
  %ops178 = getelementptr inbounds %struct.TCP_Server_Info, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %ops178 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops178, align 4
  %set_integrity = getelementptr inbounds %struct.smb_version_operations, ptr %71, i32 0, i32 79
  %72 = ptrtoint ptr %set_integrity to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %set_integrity, align 4
  %tobool179.not = icmp eq ptr %73, null
  br i1 %tobool179.not, label %if.end173.do.body355_crit_edge, label %if.then180

if.end173.do.body355_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.then180:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  %call185 = tail call i32 %73(i32 noundef %call1, ptr noundef %65, ptr noundef nonnull %4) #8
  br label %do.body355

sw.bb188:                                         ; preds = %do.end52
  %cmp189 = icmp eq ptr %4, null
  br i1 %cmp189, label %sw.bb188.do.body355_crit_edge, label %if.end192

sw.bb188.do.body355_crit_edge:                    ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end192:                                        ; preds = %sw.bb188
  %tlink193 = getelementptr inbounds %struct.cifsFileInfo, ptr %4, i32 0, i32 8
  %74 = ptrtoint ptr %tlink193 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tlink193, align 4
  %tl_tcon.i513 = getelementptr inbounds %struct.tcon_link, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %tl_tcon.i513 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tl_tcon.i513, align 4
  %78 = inttoptr i32 %arg to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 64) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end192.do.body355_crit_edge, label %if.end.i

if.end192.do.body355_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end.i:                                         ; preds = %if.end192
  %80 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %call7.i.i.i, align 8
  %ses.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 7
  %81 = ptrtoint ptr %ses.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ses.i, align 8
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %server.i, align 8
  %vals.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vals.i, align 8
  %protocol_id.i = getelementptr inbounds %struct.smb_version_values, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %protocol_id.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %protocol_id.i, align 4
  %protocol_id1.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %protocol_id1.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %protocol_id1.i, align 4
  %fsDevInfo.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 19
  %DeviceCharacteristics.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 19, i32 1
  %90 = ptrtoint ptr %DeviceCharacteristics.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %DeviceCharacteristics.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  %device_characteristics.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 13
  %93 = ptrtoint ptr %device_characteristics.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %device_characteristics.i, align 8
  %94 = ptrtoint ptr %fsDevInfo.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fsDevInfo.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  %device_type.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 12
  %97 = ptrtoint ptr %device_type.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %device_type.i, align 4
  %fsAttrInfo.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 20
  %98 = ptrtoint ptr %fsAttrInfo.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fsAttrInfo.i, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #8
  %fs_attributes.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 10
  %101 = ptrtoint ptr %fs_attributes.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %fs_attributes.i, align 4
  %MaxPathNameComponentLength.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 20, i32 1
  %102 = ptrtoint ptr %MaxPathNameComponentLength.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %MaxPathNameComponentLength.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #8
  %max_path_component.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 11
  %105 = ptrtoint ptr %max_path_component.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %max_path_component.i, align 8
  %vol_serial_number.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 31
  %106 = ptrtoint ptr %vol_serial_number.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vol_serial_number.i, align 4
  %vol_serial_number4.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %vol_serial_number4.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %vol_serial_number4.i, align 8
  %vol_create_time.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 32
  %109 = ptrtoint ptr %vol_create_time.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %vol_create_time.i, align 8
  %111 = tail call i64 @llvm.bswap.i64(i64 %110) #8
  %conv.i = trunc i64 %111 to i32
  %vol_create_time5.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 4
  %112 = ptrtoint ptr %vol_create_time5.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv.i, ptr %vol_create_time5.i, align 4
  %share_flags.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 29
  %113 = ptrtoint ptr %share_flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %share_flags.i, align 4
  %share_flags6.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 6
  %115 = ptrtoint ptr %share_flags6.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %share_flags6.i, align 4
  %capabilities.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 28
  %116 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %capabilities.i, align 8
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  %share_caps.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 5
  %119 = ptrtoint ptr %share_caps.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %share_caps.i, align 8
  %ss_flags.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 35
  %120 = ptrtoint ptr %ss_flags.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ss_flags.i, align 4
  %sector_flags.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 7
  %122 = ptrtoint ptr %sector_flags.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %sector_flags.i, align 8
  %perf_sector_size.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 36
  %123 = ptrtoint ptr %perf_sector_size.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %perf_sector_size.i, align 8
  %optimal_sector_size.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 8
  %125 = ptrtoint ptr %optimal_sector_size.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %optimal_sector_size.i, align 4
  %max_bytes_chunk.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 38
  %126 = ptrtoint ptr %max_bytes_chunk.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %max_bytes_chunk.i, align 8
  %max_bytes_chunk7.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 9
  %128 = ptrtoint ptr %max_bytes_chunk7.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %max_bytes_chunk7.i, align 8
  %maximal_access.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 30
  %129 = ptrtoint ptr %maximal_access.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %maximal_access.i, align 8
  %maximal_access8.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 14
  %131 = ptrtoint ptr %maximal_access8.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %maximal_access8.i, align 4
  %Capability.i = getelementptr inbounds %struct.cifs_tcon, ptr %77, i32 0, i32 21, i32 2
  %132 = ptrtoint ptr %Capability.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 8)
  %133 = load i64, ptr %Capability.i, align 4
  %134 = tail call i64 @llvm.bswap.i64(i64 %133) #8
  %cifs_posix_caps.i = getelementptr inbounds %struct.smb_mnt_fs_info, ptr %call7.i.i.i, i32 0, i32 15
  %135 = ptrtoint ptr %cifs_posix_caps.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %cifs_posix_caps.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #8
  %call.i.i.i514 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i514, label %if.end.i.copy_to_user.exit.thread.i_crit_edge, label %if.end.i.i.i

if.end.i.copy_to_user.exit.thread.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %136 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %78, i32 64, i32 -1226833920) #12, !srcloc !100
  %asmresult.i.i.i = extractvalue { i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge

if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i.i, i32 noundef 64) #8
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %78, ptr noundef nonnull %call7.i.i.i, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.thread.i:                       ; preds = %copy_to_user.exit.i, %if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge, %if.end.i.copy_to_user.exit.thread.i_crit_edge
  %137 = phi i32 [ -14, %if.end.i.copy_to_user.exit.thread.i_crit_edge ], [ -14, %if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %do.body355

sw.bb196:                                         ; preds = %do.end52
  %cmp197 = icmp eq ptr %4, null
  br i1 %cmp197, label %sw.bb196.do.body355_crit_edge, label %if.end200

sw.bb196.do.body355_crit_edge:                    ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end200:                                        ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp201 = icmp eq i32 %arg, 0
  br i1 %cmp201, label %if.end200.do.body355_crit_edge, label %if.end204

if.end200.do.body355_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end204:                                        ; preds = %if.end200
  %tlink205 = getelementptr inbounds %struct.cifsFileInfo, ptr %4, i32 0, i32 8
  %138 = ptrtoint ptr %tlink205 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tlink205, align 4
  %tl_tcon.i516 = getelementptr inbounds %struct.tcon_link, ptr %139, i32 0, i32 5
  %140 = ptrtoint ptr %tl_tcon.i516 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %tl_tcon.i516, align 4
  %ses207 = getelementptr inbounds %struct.cifs_tcon, ptr %141, i32 0, i32 7
  %142 = ptrtoint ptr %ses207 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ses207, align 8
  %server208 = getelementptr inbounds %struct.cifs_ses, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %server208 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %server208, align 8
  %ops209 = getelementptr inbounds %struct.TCP_Server_Info, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %ops209 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops209, align 4
  %enum_snapshots = getelementptr inbounds %struct.smb_version_operations, ptr %147, i32 0, i32 80
  %148 = ptrtoint ptr %enum_snapshots to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %enum_snapshots, align 4
  %tobool210.not = icmp eq ptr %149, null
  br i1 %tobool210.not, label %if.end204.do.body355_crit_edge, label %if.then211

if.end204.do.body355_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.then211:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  %150 = inttoptr i32 %arg to ptr
  %call216 = tail call i32 %149(i32 noundef %call1, ptr noundef %141, ptr noundef nonnull %4, ptr noundef nonnull %150) #8
  br label %do.body355

sw.bb219:                                         ; preds = %do.end52
  %cmp220 = icmp eq ptr %4, null
  br i1 %cmp220, label %sw.bb219.do.body355_crit_edge, label %if.end223

sw.bb219.do.body355_crit_edge:                    ; preds = %sw.bb219
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end223:                                        ; preds = %sw.bb219
  %call224 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call224, label %if.end226, label %if.end223.do.body355_crit_edge

if.end223.do.body355_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end226:                                        ; preds = %if.end223
  %tlink227 = getelementptr inbounds %struct.cifsFileInfo, ptr %4, i32 0, i32 8
  %151 = ptrtoint ptr %tlink227 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tlink227, align 4
  %tl_tcon.i517 = getelementptr inbounds %struct.tcon_link, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %tl_tcon.i517 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tl_tcon.i517, align 4
  %call229 = tail call i32 @smb3_encryption_required(ptr noundef %154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end226.do.body355_crit_edge, label %if.end232

if.end226.do.body355_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end232:                                        ; preds = %if.end226
  %ses233 = getelementptr inbounds %struct.cifs_tcon, ptr %154, i32 0, i32 7
  %155 = ptrtoint ptr %ses233 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ses233, align 8
  %server234 = getelementptr inbounds %struct.cifs_ses, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %server234 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %server234, align 8
  %cipher_type = getelementptr inbounds %struct.TCP_Server_Info, ptr %158, i32 0, i32 77
  %159 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %cipher_type, align 8
  %161 = tail call i16 @llvm.bswap.i16(i16 %160)
  %cipher_type235 = getelementptr inbounds %struct.smb3_key_debug_info, ptr %pkey_inf, i32 0, i32 1
  %162 = ptrtoint ptr %cipher_type235 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %cipher_type235, align 8
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %156, i32 0, i32 12
  %163 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %Suid, align 8
  %165 = ptrtoint ptr %pkey_inf to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %pkey_inf, align 8
  %auth_key = getelementptr inbounds %struct.smb3_key_debug_info, ptr %pkey_inf, i32 0, i32 2
  %response = getelementptr inbounds %struct.cifs_ses, ptr %156, i32 0, i32 21, i32 1
  %166 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %response, align 4
  %168 = call ptr @memcpy(ptr %auth_key, ptr %167, i32 16)
  %smb3decryptionkey = getelementptr inbounds %struct.smb3_key_debug_info, ptr %pkey_inf, i32 0, i32 4
  %smb3decryptionkey242 = getelementptr inbounds %struct.cifs_ses, ptr %156, i32 0, i32 29
  %169 = call ptr @memcpy(ptr %smb3decryptionkey, ptr %smb3decryptionkey242, i32 16)
  %smb3encryptionkey = getelementptr inbounds %struct.smb3_key_debug_info, ptr %pkey_inf, i32 0, i32 3
  %smb3encryptionkey246 = getelementptr inbounds %struct.cifs_ses, ptr %156, i32 0, i32 28
  %170 = call ptr @memcpy(ptr %smb3encryptionkey, ptr %smb3encryptionkey246, i32 16)
  %171 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end232.do.body355_crit_edge, label %if.end.i.i

if.end232.do.body355_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end.i.i:                                       ; preds = %if.end232
  %172 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %171, i32 58, i32 -1226833920) #12, !srcloc !100
  %asmresult.i.i = extractvalue { i32, i32 } %172, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.body355_crit_edge

if.end.i.i.do.body355_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pkey_inf, i32 noundef 58) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %171, ptr noundef nonnull %pkey_inf, i32 noundef 58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool249.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool249.not, i32 0, i32 -14
  br label %do.body355

sw.bb253:                                         ; preds = %do.end52
  %cmp254 = icmp eq ptr %4, null
  br i1 %cmp254, label %sw.bb253.do.body355_crit_edge, label %if.end257

sw.bb253.do.body355_crit_edge:                    ; preds = %sw.bb253
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end257:                                        ; preds = %sw.bb253
  %call258 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call258, label %if.end260, label %if.end257.do.body355_crit_edge

if.end257.do.body355_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end260:                                        ; preds = %if.end257
  %tlink261 = getelementptr inbounds %struct.cifsFileInfo, ptr %4, i32 0, i32 8
  %173 = ptrtoint ptr %tlink261 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %tlink261, align 4
  %tl_tcon.i518 = getelementptr inbounds %struct.tcon_link, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %tl_tcon.i518 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tl_tcon.i518, align 4
  %177 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %out.i) #8
  %178 = getelementptr inbounds %struct.smb3_full_key_debug_info, ptr %out.i, i32 0, i32 1
  %179 = getelementptr inbounds %struct.smb3_full_key_debug_info, ptr %out.i, i32 0, i32 2
  %180 = getelementptr inbounds %struct.smb3_full_key_debug_info, ptr %out.i, i32 0, i32 3
  %181 = getelementptr inbounds %struct.smb3_full_key_debug_info, ptr %out.i, i32 0, i32 4
  %182 = getelementptr inbounds %struct.smb3_full_key_debug_info, ptr %out.i, i32 0, i32 5
  %183 = call ptr @memset(ptr %out.i, i32 255, i32 17)
  %call.i = tail call i32 @smb3_encryption_required(ptr noundef %176) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i519 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i519, label %if.end260.cifs_dump_full_key.exit_crit_edge, label %if.then.i.i521

if.end260.cifs_dump_full_key.exit_crit_edge:      ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %cifs_dump_full_key.exit

if.then.i.i521:                                   ; preds = %if.end260
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 156) #8
  %call.i.i.i520 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i520, label %if.then.i.i521.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i521.if.then11.i.i.i_crit_edge:         ; preds = %if.then.i.i521
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i521
  %184 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %177, i32 17, i32 -1226833920) #12
  %asmresult.i.i.i522 = extractvalue { i32, i32 } %184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i522)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i522, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i524, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !101

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i524:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i523 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %out.i, i32 noundef 17) #8
  %185 = call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i.i.i = and i32 %185, -16384
  %186 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 4
  %187 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !94
  %and.i.i.i.i.i = and i32 %187, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %out.i, ptr noundef %177, i32 noundef 17) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %187) #8, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end4.i, label %if.end.i.i.i524.if.then11.i.i.i_crit_edge, !prof !101

if.end.i.i.i524.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i.i524
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i524.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i521.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i524.if.then11.i.i.i_crit_edge ], [ 17, %if.then.i.i521.if.then11.i.i.i_crit_edge ], [ 17, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 17, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %out.i, i32 %sub.i.i.i
  %188 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %cifs_dump_full_key.exit

if.end4.i:                                        ; preds = %if.end.i.i.i524
  %189 = ptrtoint ptr %178 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 8)
  %190 = load i64, ptr %178, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %190)
  %tobool5.not.i = icmp eq i64 %190, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %ses7.i = getelementptr inbounds %struct.cifs_tcon, ptr %176, i32 0, i32 7
  %191 = ptrtoint ptr %ses7.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ses7.i, align 8
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end4.i
  call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_tcp_ses_list to i32))
  %server_it.0210.i = load ptr, ptr @cifs_tcp_ses_list, align 4
  %cmp.not211.i = icmp eq ptr %server_it.0210.i, @cifs_tcp_ses_list
  br i1 %cmp.not211.i, label %if.else.i.search_end.thread.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.else.i.search_end.thread.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %search_end.thread.i

for.cond.loopexit.i:                              ; preds = %for.cond11.i
  %193 = ptrtoint ptr %server_it.0212.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %server_it.0.i = load ptr, ptr %server_it.0212.i, align 4
  %cmp.not.i = icmp eq ptr %server_it.0.i, @cifs_tcp_ses_list
  br i1 %cmp.not.i, label %for.cond.loopexit.i.search_end.thread.i_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.loopexit.i.search_end.thread.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %search_end.thread.i

search_end.thread.i:                              ; preds = %for.cond.loopexit.i.search_end.thread.i_crit_edge, %if.else.i.search_end.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #8
  br label %cifs_dump_full_key.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %server_it.0212.i = phi ptr [ %server_it.0.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %server_it.0210.i, %if.else.i.for.body.i_crit_edge ]
  %smb_ses_list.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %server_it.0212.i, i32 0, i32 1
  br label %for.cond11.i

for.cond11.i:                                     ; preds = %for.body16.i.for.cond11.i_crit_edge, %for.body.i
  %ses_it.0.in.i = phi ptr [ %smb_ses_list.i, %for.body.i ], [ %ses_it.0.i, %for.body16.i.for.cond11.i_crit_edge ]
  %194 = ptrtoint ptr %ses_it.0.in.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %ses_it.0.i = load ptr, ptr %ses_it.0.in.i, align 8
  %cmp14.not.i = icmp eq ptr %ses_it.0.i, %smb_ses_list.i
  br i1 %cmp14.not.i, label %for.cond.loopexit.i, label %for.body16.i

for.body16.i:                                     ; preds = %for.cond11.i
  %Suid.i = getelementptr inbounds %struct.cifs_ses, ptr %ses_it.0.i, i32 0, i32 12
  %195 = ptrtoint ptr %Suid.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %Suid.i, align 8
  %197 = ptrtoint ptr %178 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 8)
  %198 = load i64, ptr %178, align 4
  %cmp18.i = icmp eq i64 %196, %198
  br i1 %cmp18.i, label %search_end.i, label %for.body16.i.for.cond11.i_crit_edge

for.body16.i.for.cond11.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond11.i

search_end.i:                                     ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %ses_count.i = getelementptr inbounds %struct.cifs_ses, ptr %ses_it.0.i, i32 0, i32 6
  %199 = ptrtoint ptr %ses_count.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ses_count.i, align 4
  %inc.i = add i32 %200, 1
  store i32 %inc.i, ptr %ses_count.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %search_end.i, %if.then6.i
  %ses.1.i = phi ptr [ %ses_it.0.i, %search_end.i ], [ %192, %if.then6.i ]
  %server.i525 = getelementptr inbounds %struct.cifs_ses, ptr %ses.1.i, i32 0, i32 5
  %201 = ptrtoint ptr %server.i525 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %server.i525, align 8
  %cipher_type.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %202, i32 0, i32 77
  %203 = ptrtoint ptr %cipher_type.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %cipher_type.i, align 8
  %conv.i526 = zext i16 %204 to i32
  %205 = add nsw i32 %conv.i526, -256
  %206 = call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %206)
  %207 = icmp ult i32 %206, 4
  br i1 %207, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.end37.i
  br i1 %tobool5.not.i, label %sw.default.i.cifs_dump_full_key.exit_crit_edge, label %sw.default.i.if.then91.i_crit_edge

sw.default.i.if.then91.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91.i

sw.default.i.cifs_dump_full_key.exit_crit_edge:   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cifs_dump_full_key.exit

switch.lookup:                                    ; preds = %if.end37.i
  %switch.shiftamt = shl i32 %206, 3
  %switch.downshift = lshr i32 538972176, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %208 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 16, ptr %180, align 2
  %209 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %switch.masked, ptr %182, align 4
  %210 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %switch.masked, ptr %181, align 1
  %211 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %out.i, align 4
  %reass.add.i = shl nuw nsw i32 %switch.downshift, 1
  %narrow127.i = add nuw i32 %reass.add.i, 33
  %add49.i = and i32 %narrow127.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %add49.i)
  %cmp50.i = icmp ult i32 %212, %add49.i
  br i1 %cmp50.i, label %if.then52.i, label %if.end53.i

if.then52.i:                                      ; preds = %switch.lookup
  br i1 %tobool5.not.i, label %if.then52.i.cifs_dump_full_key.exit_crit_edge, label %if.then52.i.if.then91.i_crit_edge

if.then52.i.if.then91.i_crit_edge:                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91.i

if.then52.i.cifs_dump_full_key.exit_crit_edge:    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cifs_dump_full_key.exit

if.end53.i:                                       ; preds = %switch.lookup
  %Suid54.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.1.i, i32 0, i32 12
  %213 = ptrtoint ptr %Suid54.i to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %Suid54.i, align 8
  %215 = ptrtoint ptr %178 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 8)
  store i64 %214, ptr %178, align 4
  %216 = call i16 @llvm.bswap.i16(i16 %204) #8
  %217 = ptrtoint ptr %179 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %179, align 4
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #8
  %call.i.i130.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i130.i, label %if.end53.i.if.then61.i_crit_edge, label %copy_to_user.exit.i528

if.end53.i.if.then61.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i

copy_to_user.exit.i528:                           ; preds = %if.end53.i
  %call.i.i.i134.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %out.i, i32 noundef 17) #8
  %call.i12.i.i.i527 = call i32 @arm_copy_to_user(ptr noundef %177, ptr noundef nonnull %out.i, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i527)
  %tobool60.not.i = icmp eq i32 %call.i12.i.i.i527, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %copy_to_user.exit.i528.if.then61.i_crit_edge

copy_to_user.exit.i528.if.then61.i_crit_edge:     ; preds = %copy_to_user.exit.i528
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i

if.then61.i:                                      ; preds = %copy_to_user.exit.i528.if.then61.i_crit_edge, %if.end53.i.if.then61.i_crit_edge
  br i1 %tobool5.not.i, label %if.then61.i.cifs_dump_full_key.exit_crit_edge, label %if.then61.i.if.then91.i_crit_edge

if.then61.i.if.then91.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91.i

if.then61.i.cifs_dump_full_key.exit_crit_edge:    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cifs_dump_full_key.exit

if.end62.i:                                       ; preds = %copy_to_user.exit.i528
  %data.i = getelementptr inbounds %struct.smb3_full_key_debug_info, ptr %177, i32 0, i32 6
  %response.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.1.i, i32 0, i32 21, i32 1
  %218 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %response.i, align 4
  %220 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %180, align 2
  %conv64.i = zext i8 %221 to i32
  call void @__check_object_size(ptr noundef %219, i32 noundef %conv64.i, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #8
  %call.i.i140.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i140.i, label %if.end62.i.copy_to_user.exit149.i_crit_edge, label %if.end.i.i144.i

if.end62.i.copy_to_user.exit149.i_crit_edge:      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit149.i

if.end.i.i144.i:                                  ; preds = %if.end62.i
  %222 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data.i, i32 %conv64.i, i32 -1226833920) #12, !srcloc !100
  %asmresult.i.i142.i = extractvalue { i32, i32 } %222, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i142.i)
  %cmp.i6.i143.i = icmp eq i32 %asmresult.i.i142.i, 0
  br i1 %cmp.i6.i143.i, label %if.then2.i.i147.i, label %if.end.i.i144.i.copy_to_user.exit149.i_crit_edge

if.end.i.i144.i.copy_to_user.exit149.i_crit_edge: ; preds = %if.end.i.i144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit149.i

if.then2.i.i147.i:                                ; preds = %if.end.i.i144.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i145.i = call zeroext i1 @__kasan_check_read(ptr noundef %219, i32 noundef %conv64.i) #8
  %call.i12.i.i146.i = call i32 @arm_copy_to_user(ptr noundef %data.i, ptr noundef %219, i32 noundef %conv64.i) #8
  br label %copy_to_user.exit149.i

copy_to_user.exit149.i:                           ; preds = %if.then2.i.i147.i, %if.end.i.i144.i.copy_to_user.exit149.i_crit_edge, %if.end62.i.copy_to_user.exit149.i_crit_edge
  %n.addr.0.i148.i = phi i32 [ %conv64.i, %if.end62.i.copy_to_user.exit149.i_crit_edge ], [ %call.i12.i.i146.i, %if.then2.i.i147.i ], [ %conv64.i, %if.end.i.i144.i.copy_to_user.exit149.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i148.i)
  %tobool66.not.i = icmp eq i32 %n.addr.0.i148.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.then67.i

if.then67.i:                                      ; preds = %copy_to_user.exit149.i
  br i1 %tobool5.not.i, label %if.then67.i.cifs_dump_full_key.exit_crit_edge, label %if.then67.i.if.then91.i_crit_edge

if.then67.i.if.then91.i_crit_edge:                ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91.i

if.then67.i.cifs_dump_full_key.exit_crit_edge:    ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cifs_dump_full_key.exit

if.end68.i:                                       ; preds = %copy_to_user.exit149.i
  %223 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %180, align 2
  %conv70.i = zext i8 %224 to i32
  %add.ptr71.i = getelementptr i8, ptr %data.i, i32 %conv70.i
  %smb3encryptionkey.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.1.i, i32 0, i32 28
  %225 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %181, align 1
  %conv74.i = zext i8 %226 to i32
  call void @__check_object_size(ptr noundef %smb3encryptionkey.i, i32 noundef %conv74.i, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #8
  %call.i.i158.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i158.i, label %if.end68.i.copy_to_user.exit167.i_crit_edge, label %if.end.i.i162.i

if.end68.i.copy_to_user.exit167.i_crit_edge:      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit167.i

if.end.i.i162.i:                                  ; preds = %if.end68.i
  %227 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr71.i, i32 %conv74.i, i32 -1226833920) #12, !srcloc !100
  %asmresult.i.i160.i = extractvalue { i32, i32 } %227, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i160.i)
  %cmp.i6.i161.i = icmp eq i32 %asmresult.i.i160.i, 0
  br i1 %cmp.i6.i161.i, label %if.then2.i.i165.i, label %if.end.i.i162.i.copy_to_user.exit167.i_crit_edge

if.end.i.i162.i.copy_to_user.exit167.i_crit_edge: ; preds = %if.end.i.i162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit167.i

if.then2.i.i165.i:                                ; preds = %if.end.i.i162.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i163.i = call zeroext i1 @__kasan_check_read(ptr noundef %smb3encryptionkey.i, i32 noundef %conv74.i) #8
  %call.i12.i.i164.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr71.i, ptr noundef %smb3encryptionkey.i, i32 noundef %conv74.i) #8
  br label %copy_to_user.exit167.i

copy_to_user.exit167.i:                           ; preds = %if.then2.i.i165.i, %if.end.i.i162.i.copy_to_user.exit167.i_crit_edge, %if.end68.i.copy_to_user.exit167.i_crit_edge
  %n.addr.0.i166.i = phi i32 [ %conv74.i, %if.end68.i.copy_to_user.exit167.i_crit_edge ], [ %call.i12.i.i164.i, %if.then2.i.i165.i ], [ %conv74.i, %if.end.i.i162.i.copy_to_user.exit167.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i166.i)
  %tobool76.not.i = icmp eq i32 %n.addr.0.i166.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.then77.i

if.then77.i:                                      ; preds = %copy_to_user.exit167.i
  br i1 %tobool5.not.i, label %if.then77.i.cifs_dump_full_key.exit_crit_edge, label %if.then77.i.if.then91.i_crit_edge

if.then77.i.if.then91.i_crit_edge:                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91.i

if.then77.i.cifs_dump_full_key.exit_crit_edge:    ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cifs_dump_full_key.exit

if.end78.i:                                       ; preds = %copy_to_user.exit167.i
  %228 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %181, align 1
  %conv80.i = zext i8 %229 to i32
  %add.ptr81.i = getelementptr i8, ptr %add.ptr71.i, i32 %conv80.i
  %smb3decryptionkey.i = getelementptr inbounds %struct.cifs_ses, ptr %ses.1.i, i32 0, i32 29
  %230 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %182, align 4
  %conv84.i = zext i8 %231 to i32
  call void @__check_object_size(ptr noundef %smb3decryptionkey.i, i32 noundef %conv84.i, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #8
  %call.i.i176.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i176.i, label %if.end78.i.copy_to_user.exit185.i_crit_edge, label %if.end.i.i180.i

if.end78.i.copy_to_user.exit185.i_crit_edge:      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit185.i

if.end.i.i180.i:                                  ; preds = %if.end78.i
  %232 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr81.i, i32 %conv84.i, i32 -1226833920) #12, !srcloc !100
  %asmresult.i.i178.i = extractvalue { i32, i32 } %232, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i178.i)
  %cmp.i6.i179.i = icmp eq i32 %asmresult.i.i178.i, 0
  br i1 %cmp.i6.i179.i, label %if.then2.i.i183.i, label %if.end.i.i180.i.copy_to_user.exit185.i_crit_edge

if.end.i.i180.i.copy_to_user.exit185.i_crit_edge: ; preds = %if.end.i.i180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit185.i

if.then2.i.i183.i:                                ; preds = %if.end.i.i180.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i181.i = call zeroext i1 @__kasan_check_read(ptr noundef %smb3decryptionkey.i, i32 noundef %conv84.i) #8
  %call.i12.i.i182.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr81.i, ptr noundef %smb3decryptionkey.i, i32 noundef %conv84.i) #8
  br label %copy_to_user.exit185.i

copy_to_user.exit185.i:                           ; preds = %if.then2.i.i183.i, %if.end.i.i180.i.copy_to_user.exit185.i_crit_edge, %if.end78.i.copy_to_user.exit185.i_crit_edge
  %n.addr.0.i184.i = phi i32 [ %conv84.i, %if.end78.i.copy_to_user.exit185.i_crit_edge ], [ %call.i12.i.i182.i, %if.then2.i.i183.i ], [ %conv84.i, %if.end.i.i180.i.copy_to_user.exit185.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i184.i)
  %tobool86.not.i = icmp eq i32 %n.addr.0.i184.i, 0
  %.207.i = select i1 %tobool86.not.i, i32 0, i32 -22
  br i1 %tobool5.not.i, label %copy_to_user.exit185.i.cifs_dump_full_key.exit_crit_edge, label %copy_to_user.exit185.i.if.then91.i_crit_edge

copy_to_user.exit185.i.if.then91.i_crit_edge:     ; preds = %copy_to_user.exit185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91.i

copy_to_user.exit185.i.cifs_dump_full_key.exit_crit_edge: ; preds = %copy_to_user.exit185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cifs_dump_full_key.exit

if.then91.i:                                      ; preds = %copy_to_user.exit185.i.if.then91.i_crit_edge, %if.then77.i.if.then91.i_crit_edge, %if.then67.i.if.then91.i_crit_edge, %if.then61.i.if.then91.i_crit_edge, %if.then52.i.if.then91.i_crit_edge, %sw.default.i.if.then91.i_crit_edge
  %rc.2205.i = phi i32 [ -95, %sw.default.i.if.then91.i_crit_edge ], [ -105, %if.then52.i.if.then91.i_crit_edge ], [ -22, %if.then61.i.if.then91.i_crit_edge ], [ -22, %if.then67.i.if.then91.i_crit_edge ], [ -22, %if.then77.i.if.then91.i_crit_edge ], [ %.207.i, %copy_to_user.exit185.i.if.then91.i_crit_edge ]
  call void @cifs_put_smb_ses(ptr noundef %ses.1.i) #8
  br label %cifs_dump_full_key.exit

cifs_dump_full_key.exit:                          ; preds = %if.then91.i, %copy_to_user.exit185.i.cifs_dump_full_key.exit_crit_edge, %if.then77.i.cifs_dump_full_key.exit_crit_edge, %if.then67.i.cifs_dump_full_key.exit_crit_edge, %if.then61.i.cifs_dump_full_key.exit_crit_edge, %if.then52.i.cifs_dump_full_key.exit_crit_edge, %sw.default.i.cifs_dump_full_key.exit_crit_edge, %search_end.thread.i, %if.then11.i.i.i, %if.end260.cifs_dump_full_key.exit_crit_edge
  %rc.2204.i = phi i32 [ %rc.2205.i, %if.then91.i ], [ -95, %sw.default.i.cifs_dump_full_key.exit_crit_edge ], [ -105, %if.then52.i.cifs_dump_full_key.exit_crit_edge ], [ -22, %if.then61.i.cifs_dump_full_key.exit_crit_edge ], [ -22, %if.then67.i.cifs_dump_full_key.exit_crit_edge ], [ -22, %if.then77.i.cifs_dump_full_key.exit_crit_edge ], [ -2, %search_end.thread.i ], [ -95, %if.end260.cifs_dump_full_key.exit_crit_edge ], [ -22, %if.then11.i.i.i ], [ %.207.i, %copy_to_user.exit185.i.cifs_dump_full_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %out.i) #8
  br label %do.body355

sw.bb264:                                         ; preds = %do.end52
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %1, align 8
  %235 = and i16 %234, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %235)
  %cmp267 = icmp eq i16 %235, 16384
  br i1 %cmp267, label %if.end270, label %sw.bb264.do.body355_crit_edge

sw.bb264.do.body355_crit_edge:                    ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.end270:                                        ; preds = %sw.bb264
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %236 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %237, i32 0, i32 33
  %238 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %s_fs_info.i, align 16
  %call272 = tail call ptr @cifs_sb_tlink(ptr noundef %239) #8
  %cmp.i529 = icmp ugt ptr %call272, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i529, label %if.then274, label %if.end276

if.then274:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %call272 to i32
  br label %do.body355

if.end276:                                        ; preds = %if.end270
  %tl_tcon.i530 = getelementptr inbounds %struct.tcon_link, ptr %call272, i32 0, i32 5
  %241 = ptrtoint ptr %tl_tcon.i530 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %tl_tcon.i530, align 4
  %tobool278.not = icmp eq ptr %242, null
  br i1 %tobool278.not, label %if.end276.if.end321_crit_edge, label %land.lhs.true279

if.end276.if.end321_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end321

land.lhs.true279:                                 ; preds = %if.end276
  %ses280 = getelementptr inbounds %struct.cifs_tcon, ptr %242, i32 0, i32 7
  %243 = ptrtoint ptr %ses280 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ses280, align 8
  %server281 = getelementptr inbounds %struct.cifs_ses, ptr %244, i32 0, i32 5
  %245 = ptrtoint ptr %server281 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %server281, align 8
  %ops282 = getelementptr inbounds %struct.TCP_Server_Info, ptr %246, i32 0, i32 5
  %247 = ptrtoint ptr %ops282 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ops282, align 4
  %notify = getelementptr inbounds %struct.smb_version_operations, ptr %248, i32 0, i32 81
  %249 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %notify, align 4
  %tobool283.not = icmp eq ptr %250, null
  br i1 %tobool283.not, label %land.lhs.true279.if.end321_crit_edge, label %if.then284

land.lhs.true279.if.end321_crit_edge:             ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end321

if.then284:                                       ; preds = %land.lhs.true279
  %251 = inttoptr i32 %arg to ptr
  %call289 = tail call i32 %250(i32 noundef %call1, ptr noundef %filep, ptr noundef %251) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %252 = load i32, ptr @cifsFYI, align 4
  %and292 = and i32 %252, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %if.then284.if.end321_crit_edge, label %do.body295

if.then284.if.end321_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end321

do.body295:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl, %land.lhs.true307)) #8
          to label %if.end321 [label %land.lhs.true307], !srcloc !93

land.lhs.true307:                                 ; preds = %do.body295
  %call308 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl._rs.11, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %land.lhs.true307.if.end321_crit_edge, label %if.then310

land.lhs.true307.if.end321_crit_edge:             ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end321

if.then310:                                       ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl.descriptor.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef %call289) #8
  br label %if.end321

if.end321:                                        ; preds = %if.then310, %land.lhs.true307.if.end321_crit_edge, %do.body295, %if.then284.if.end321_crit_edge, %land.lhs.true279.if.end321_crit_edge, %if.end276.if.end321_crit_edge
  %rc.1 = phi i32 [ %call289, %if.then310 ], [ %call289, %land.lhs.true307.if.end321_crit_edge ], [ %call289, %if.then284.if.end321_crit_edge ], [ -95, %land.lhs.true279.if.end321_crit_edge ], [ -95, %if.end276.if.end321_crit_edge ], [ %call289, %do.body295 ]
  tail call void @cifs_put_tlink(ptr noundef %call272) #8
  br label %do.body355

sw.bb322:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb323 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %253 = ptrtoint ptr %i_sb323 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %i_sb323, align 4
  %call324 = tail call fastcc i32 @cifs_shutdown(ptr noundef %254, i32 noundef %arg)
  br label %do.body355

do.body326:                                       ; preds = %do.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %255 = load i32, ptr @cifsFYI, align 4
  %and327 = and i32 %255, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %do.body326.do.body355_crit_edge, label %do.body330

do.body326.do.body355_crit_edge:                  ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

do.body330:                                       ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl.descriptor.15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl, %land.lhs.true342)) #8
          to label %do.body355 [label %land.lhs.true342], !srcloc !93

land.lhs.true342:                                 ; preds = %do.body330
  %call343 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl._rs.14, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %land.lhs.true342.do.body355_crit_edge, label %if.then345

land.lhs.true342.do.body355_crit_edge:            ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body355

if.then345:                                       ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl.descriptor.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3) #8
  br label %do.body355

do.body355:                                       ; preds = %if.then345, %land.lhs.true342.do.body355_crit_edge, %do.body330, %do.body326.do.body355_crit_edge, %sw.bb322, %if.end321, %if.then274, %sw.bb264.do.body355_crit_edge, %cifs_dump_full_key.exit, %if.end257.do.body355_crit_edge, %sw.bb253.do.body355_crit_edge, %copy_to_user.exit, %if.end.i.i.do.body355_crit_edge, %if.end232.do.body355_crit_edge, %if.end226.do.body355_crit_edge, %if.end223.do.body355_crit_edge, %sw.bb219.do.body355_crit_edge, %if.then211, %if.end204.do.body355_crit_edge, %if.end200.do.body355_crit_edge, %sw.bb196.do.body355_crit_edge, %copy_to_user.exit.thread.i, %if.end192.do.body355_crit_edge, %sw.bb188.do.body355_crit_edge, %if.then180, %if.end173.do.body355_crit_edge, %sw.bb169.do.body355_crit_edge, %sw.bb167, %sw.bb165, %if.then154, %land.lhs.true151.do.body355_crit_edge, %do.body139, %if.then128.do.body355_crit_edge, %if.end126.do.body355_crit_edge, %if.end121.do.body355_crit_edge, %if.end104.do.body355_crit_edge, %sw.bb100.do.body355_crit_edge, %if.then81, %if.end77.do.body355_crit_edge, %if.end72.do.body355_crit_edge, %sw.bb.do.body355_crit_edge
  %rc.2 = phi i32 [ -25, %if.then345 ], [ -25, %land.lhs.true342.do.body355_crit_edge ], [ -25, %do.body326.do.body355_crit_edge ], [ %call324, %sw.bb322 ], [ %240, %if.then274 ], [ %rc.1, %if.end321 ], [ -25, %sw.bb253.do.body355_crit_edge ], [ %rc.2204.i, %cifs_dump_full_key.exit ], [ -25, %sw.bb219.do.body355_crit_edge ], [ -25, %sw.bb196.do.body355_crit_edge ], [ %call216, %if.then211 ], [ -25, %sw.bb188.do.body355_crit_edge ], [ -25, %sw.bb169.do.body355_crit_edge ], [ %call185, %if.then180 ], [ %call168, %sw.bb167 ], [ %call166, %sw.bb165 ], [ -25, %sw.bb100.do.body355_crit_edge ], [ -25, %if.end121.do.body355_crit_edge ], [ %call133, %if.then154 ], [ %call133, %land.lhs.true151.do.body355_crit_edge ], [ %call133, %if.then128.do.body355_crit_edge ], [ -25, %if.end126.do.body355_crit_edge ], [ -25, %sw.bb.do.body355_crit_edge ], [ %rc.0, %if.end72.do.body355_crit_edge ], [ %41, %if.then81 ], [ 0, %if.end77.do.body355_crit_edge ], [ -14, %if.end104.do.body355_crit_edge ], [ -95, %if.end173.do.body355_crit_edge ], [ -22, %if.end200.do.body355_crit_edge ], [ -95, %if.end204.do.body355_crit_edge ], [ -13, %if.end223.do.body355_crit_edge ], [ -95, %if.end226.do.body355_crit_edge ], [ -13, %if.end257.do.body355_crit_edge ], [ -95, %sw.bb264.do.body355_crit_edge ], [ %call133, %do.body139 ], [ %137, %copy_to_user.exit.thread.i ], [ -12, %if.end192.do.body355_crit_edge ], [ -25, %do.body330 ], [ -14, %if.end232.do.body355_crit_edge ], [ -14, %if.end.i.i.do.body355_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @_free_xid(i32 noundef %call1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %256 = load i32, ptr @cifsFYI, align 4
  %and358 = and i32 %256, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  br i1 %tobool359.not, label %do.body355.do.end385_crit_edge, label %do.body361

do.body355.do.end385_crit_edge:                   ; preds = %do.body355
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end385

do.body361:                                       ; preds = %do.body355
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl.descriptor.18, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl, %land.lhs.true373)) #8
          to label %do.end385 [label %land.lhs.true373], !srcloc !93

land.lhs.true373:                                 ; preds = %do.body361
  %call374 = call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl._rs.17, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %land.lhs.true373.do.end385_crit_edge, label %if.then376

land.lhs.true373.do.end385_crit_edge:             ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end385

if.then376:                                       ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl.descriptor.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %call1, i32 noundef %rc.2) #8
  br label %do.end385

do.end385:                                        ; preds = %if.then376, %land.lhs.true373.do.end385_crit_edge, %do.body361, %do.body355.do.end385_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %tobool386.not = icmp eq i32 %rc.2, 0
  br i1 %tobool386.not, label %if.else388, label %if.then387

if.then387:                                       ; preds = %do.end385
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_smb3_exit_err(i32 noundef %call1, i32 noundef %rc.2)
  br label %do.end391

if.else388:                                       ; preds = %do.end385
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_smb3_exit_done(i32 noundef %call1)
  br label %do.end391

do.end391:                                        ; preds = %if.else388, %if.then387
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ExtAttrBits) #8
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %pkey_inf) #8
  ret i32 %rc.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !101

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 609, ptr noundef nonnull @.str.21) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSGetExtAttr(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_ioctl_copychunk(i32 noundef %xid, ptr noundef %dst_file, i32 noundef %srcfd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl_copychunk.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl_copychunk, %land.lhs.true)) #8
          to label %do.end13 [label %land.lhs.true], !srcloc !93

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl_copychunk._rs, ptr noundef nonnull @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl_copychunk.descriptor, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %f_mode = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 8
  %1 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_mode, align 8
  %and14 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body18, label %if.end47

do.body18:                                        ; preds = %do.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and19 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.body22

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl_copychunk.descriptor.26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl_copychunk, %land.lhs.true34)) #8
          to label %cleanup [label %land.lhs.true34], !srcloc !93

land.lhs.true34:                                  ; preds = %do.body22
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl_copychunk._rs.25, ptr noundef nonnull @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.cleanup_crit_edge, label %if.then37

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl_copychunk.descriptor.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end47:                                         ; preds = %do.end13
  %call48 = tail call i32 @mnt_want_write_file(ptr noundef %dst_file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end81, label %do.body52

do.body52:                                        ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and53 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.cleanup_crit_edge, label %do.body56

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body56:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl_copychunk.descriptor.29, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl_copychunk, %land.lhs.true68)) #8
          to label %cleanup [label %land.lhs.true68], !srcloc !93

land.lhs.true68:                                  ; preds = %do.body56
  %call69 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl_copychunk._rs.28, ptr noundef nonnull @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.cleanup_crit_edge, label %if.then71

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then71:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl_copychunk.descriptor.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, i32 noundef %call48) #8
  br label %cleanup

if.end81:                                         ; preds = %if.end47
  %call.i = tail call i32 @__fdget(i32 noundef %srcfd) #8, !noalias !106
  %and.i.i = and i32 %call.i, -4
  %5 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool83.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool83.not, label %if.end81.out_drop_write_crit_edge, label %if.end85

if.end81.out_drop_write_crit_edge:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_drop_write

if.end85:                                         ; preds = %if.end81
  %f_op = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op, align 4
  %unlocked_ioctl = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %unlocked_ioctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlocked_ioctl, align 4
  %cmp.not = icmp eq ptr %9, @cifs_ioctl
  br i1 %cmp.not, label %if.end103, label %if.then87

if.then87:                                        ; preds = %if.end85
  %call90 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl_copychunk._rs.31, ptr noundef nonnull @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then87.out_fput_crit_edge, label %do.end95

if.then87.out_fput_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fput

do.end95:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  br label %out_fput

if.end103:                                        ; preds = %if.end85
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %14)
  %cmp107 = icmp eq i16 %14, 16384
  br i1 %cmp107, label %if.end103.out_fput_crit_edge, label %if.end110

if.end103.out_fput_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fput

if.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %i_size = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  %conv112 = trunc i64 %16 to i32
  %call113 = tail call i32 @cifs_file_copychunk_range(i32 noundef %xid, ptr noundef nonnull %5, i64 noundef 0, ptr noundef %dst_file, i64 noundef 0, i32 noundef %conv112, i32 noundef 0) #8
  %17 = tail call i32 @llvm.smin.i32(i32 %call113, i32 0)
  br label %out_fput

out_fput:                                         ; preds = %if.end110, %if.end103.out_fput_crit_edge, %do.end95, %if.then87.out_fput_crit_edge
  %rc.0 = phi i32 [ -9, %do.end95 ], [ -9, %if.then87.out_fput_crit_edge ], [ -22, %if.end103.out_fput_crit_edge ], [ %17, %if.end110 ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %out_fput.out_drop_write_crit_edge, label %if.then.i

out_fput.out_drop_write_crit_edge:                ; preds = %out_fput
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_drop_write

if.then.i:                                        ; preds = %out_fput
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %5) #8
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.then.i, %out_fput.out_drop_write_crit_edge, %if.end81.out_drop_write_crit_edge
  %rc.1 = phi i32 [ -9, %if.end81.out_drop_write_crit_edge ], [ %rc.0, %out_fput.out_drop_write_crit_edge ], [ %rc.0, %if.then.i ]
  tail call void @mnt_drop_write_file(ptr noundef %dst_file) #8
  br label %cleanup

cleanup:                                          ; preds = %out_drop_write, %if.then71, %land.lhs.true68.cleanup_crit_edge, %do.body56, %do.body52.cleanup_crit_edge, %if.then37, %land.lhs.true34.cleanup_crit_edge, %do.body22, %do.body18.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out_drop_write ], [ -22, %do.body18.cleanup_crit_edge ], [ -22, %land.lhs.true34.cleanup_crit_edge ], [ -22, %if.then37 ], [ %call48, %do.body52.cleanup_crit_edge ], [ %call48, %land.lhs.true68.cleanup_crit_edge ], [ %call48, %if.then71 ], [ -22, %do.body22 ], [ %call48, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_ioctl_query_info(i32 noundef %xid, ptr nocapture noundef readonly %filep, i32 noundef %p) unnamed_addr #0 align 64 {
entry:
  %root_path = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @cifs_sb_master_tcon(ptr noundef %5) #8
  %dentry3 = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dentry3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %8 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3264) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %root_path) #8
  %9 = ptrtoint ptr %root_path to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %root_path, align 2, !annotation !109
  %call5 = tail call ptr @build_path_from_dentry(ptr noundef %7, ptr noundef %call.i) #8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body8

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.free_dentry_path.exit_crit_edge, label %if.then.i

if.then.free_dentry_path.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %10 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %call.i) #8
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %if.then.free_dentry_path.exit_crit_edge
  %11 = ptrtoint ptr %call5 to i32
  br label %cleanup

do.body8:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %12 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body8.do.end23_crit_edge, label %do.body10

do.body8.do.end23_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.body10:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_ioctl_query_info.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_ioctl_query_info, %land.lhs.true)) #8
          to label %do.end23 [label %land.lhs.true], !srcloc !93

land.lhs.true:                                    ; preds = %do.body10
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_ioctl_query_info._rs, ptr noundef nonnull @.str.33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end23_crit_edge, label %if.then17

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_ioctl_query_info.descriptor, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, ptr noundef %call5) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %land.lhs.true.do.end23_crit_edge, %do.body10, %do.body8.do.end23_crit_edge
  %13 = ptrtoint ptr %call5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool24.not = icmp eq i8 %14, 0
  br i1 %tobool24.not, label %if.then25, label %if.else26

if.then25:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %root_path to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %root_path, align 2
  br label %if.end31

if.else26:                                        ; preds = %do.end23
  %add.ptr = getelementptr i8, ptr %call5, i32 1
  %call27 = tail call ptr @cifs_convert_path_to_utf16(ptr noundef %add.ptr, ptr noundef %5) #8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.else26.if.then42_crit_edge, label %if.else26.if.end31_crit_edge

if.else26.if.end31_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.else26.if.then42_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.end31:                                         ; preds = %if.else26.if.end31_crit_edge, %if.then25
  %utf16_path.0 = phi ptr [ %call27, %if.else26.if.end31_crit_edge ], [ %root_path, %if.then25 ]
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 7
  %16 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %ioctl_query_info = getelementptr inbounds %struct.smb_version_operations, ptr %21, i32 0, i32 106
  %22 = ptrtoint ptr %ioctl_query_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioctl_query_info, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %if.end31.ici_exit_crit_edge, label %if.then33

if.end31.ici_exit_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %ici_exit

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data, align 4
  %tobool38.not = icmp eq ptr %25, null
  %cond = zext i1 %tobool38.not to i32
  %call39 = call i32 %23(i32 noundef %xid, ptr noundef %call2, ptr noundef %5, ptr noundef nonnull %utf16_path.0, i32 noundef %cond, i32 noundef %p) #8
  br label %ici_exit

ici_exit:                                         ; preds = %if.then33, %if.end31.ici_exit_crit_edge
  %rc.0 = phi i32 [ %call39, %if.then33 ], [ -95, %if.end31.ici_exit_crit_edge ]
  %cmp.not = icmp eq ptr %utf16_path.0, %root_path
  br i1 %cmp.not, label %ici_exit.if.end43_crit_edge, label %ici_exit.if.then42_crit_edge

ici_exit.if.then42_crit_edge:                     ; preds = %ici_exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

ici_exit.if.end43_crit_edge:                      ; preds = %ici_exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %ici_exit.if.then42_crit_edge, %if.else26.if.then42_crit_edge
  %rc.075 = phi i32 [ %rc.0, %ici_exit.if.then42_crit_edge ], [ -12, %if.else26.if.then42_crit_edge ]
  %utf16_path.174 = phi ptr [ %utf16_path.0, %ici_exit.if.then42_crit_edge ], [ null, %if.else26.if.then42_crit_edge ]
  call void @kfree(ptr noundef %utf16_path.174) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %ici_exit.if.end43_crit_edge
  %rc.076 = phi i32 [ %rc.075, %if.then42 ], [ %rc.0, %ici_exit.if.end43_crit_edge ]
  %tobool.not.i67 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i67, label %if.end43.cleanup_crit_edge, label %if.then.i68

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i68:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %26 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %26, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i68, %if.end43.cleanup_crit_edge, %free_dentry_path.exit
  %retval.0 = phi i32 [ %11, %free_dentry_path.exit ], [ %rc.076, %if.end43.cleanup_crit_edge ], [ %rc.076, %if.then.i68 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %root_path) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb3_encryption_required(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_tlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_shutdown(ptr nocapture noundef readonly %sb, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 163) #8
  %2 = inttoptr i32 %arg to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !94
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #8, !srcloc !110
  %asmresult = extractvalue { i32, i32 } %6, 0
  %asmresult3 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #8, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3)
  %cmp = icmp ugt i32 %asmresult3, 2
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp slt i32 %8, 0
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %do.body12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body12:                                        ; preds = %if.end8
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_shutdown._rs, ptr noundef nonnull @__func__.cifs_shutdown) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.do.end23_crit_edge, label %do.end

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end:                                           ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %asmresult3) #13
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body12.do.end23_crit_edge
  %9 = zext i32 %asmresult3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %asmresult3, label %do.end23.cleanup_crit_edge [
    i32 0, label %do.body25
    i32 1, label %do.end23.sw.bb45_crit_edge
    i32 2, label %do.end23.sw.bb45_crit_edge51
  ]

do.end23.sw.bb45_crit_edge51:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45

do.end23.sw.bb45_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body25:                                        ; preds = %do.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.body25.cleanup_crit_edge, label %do.body28

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_shutdown.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_shutdown, %land.lhs.true)) #8
          to label %cleanup [label %land.lhs.true], !srcloc !93

land.lhs.true:                                    ; preds = %do.body28
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_shutdown._rs.39, ptr noundef nonnull @__func__.cifs_shutdown) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true.cleanup_crit_edge, label %if.then36

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_shutdown.descriptor, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3) #8
  br label %cleanup

sw.bb45:                                          ; preds = %do.end23.sw.bb45_crit_edge, %do.end23.sw.bb45_crit_edge51
  %11 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mnt_cifs_flags.i, align 4
  %or = or i32 %12, -2147483648
  store i32 %or, ptr %mnt_cifs_flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb45, %if.then36, %land.lhs.true.cleanup_crit_edge, %do.body28, %do.body25.cleanup_crit_edge, %do.end23.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb45 ], [ -1, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -22, %do.body25.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then36 ], [ -22, %do.end23.cleanup_crit_edge ], [ -22, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, i32 noundef %rc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.2, i32 noundef %rc) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !101

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_smb3_exit_err.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_smb3_exit_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 558, ptr noundef nonnull @.str.21) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_done(i32 noundef %xid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !101

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_smb3_exit_done.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_smb3_exit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 610, ptr noundef nonnull @.str.21) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_enter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_file_copychunk_range(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_path_from_dentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_convert_path_to_utf16(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_smb_ses(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_err(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_done(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !65, !67, !69, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/ioctl.c", i32 326, i32 8}
!2 = !{ptr @cifs_ioctl._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cifs_ioctl.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!9 = !{ptr @cifs_ioctl._rs.5, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../fs/cifs/ioctl.c", i32 328, i32 2}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cifs_ioctl.descriptor.6, !10, !"descriptor", i1 false, i1 false}
!13 = !{ptr @cifs_ioctl._rs.8, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/ioctl.c", i32 386, i32 5}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cifs_ioctl.descriptor.9, !14, !"descriptor", i1 false, i1 false}
!17 = !{ptr @cifs_ioctl._rs.11, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../fs/cifs/ioctl.c", i32 486, i32 5}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cifs_ioctl.descriptor.12, !18, !"descriptor", i1 false, i1 false}
!21 = !{ptr @cifs_ioctl._rs.14, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../fs/cifs/ioctl.c", i32 495, i32 4}
!23 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cifs_ioctl.descriptor.15, !22, !"descriptor", i1 false, i1 false}
!25 = !{ptr @cifs_ioctl._rs.17, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../fs/cifs/ioctl.c", i32 499, i32 2}
!27 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cifs_ioctl.descriptor.18, !26, !"descriptor", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cifs_ioctl_copychunk._rs, !38, !"_rs", i1 false, i1 false}
!38 = !{!"../fs/cifs/ioctl.c", i32 78, i32 2}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cifs_ioctl_copychunk.descriptor, !38, !"descriptor", i1 false, i1 false}
!42 = !{ptr @cifs_ioctl_copychunk._rs.25, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../fs/cifs/ioctl.c", i32 81, i32 3}
!44 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cifs_ioctl_copychunk.descriptor.26, !43, !"descriptor", i1 false, i1 false}
!46 = !{ptr @cifs_ioctl_copychunk._rs.28, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../fs/cifs/ioctl.c", i32 88, i32 3}
!48 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cifs_ioctl_copychunk.descriptor.29, !47, !"descriptor", i1 false, i1 false}
!50 = !{ptr @cifs_ioctl_copychunk._rs.31, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/cifs/ioctl.c", i32 100, i32 3}
!52 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cifs_ioctl_copychunk._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @cifs_ioctl_copychunk._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @cifs_ioctl_query_info._rs, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../fs/cifs/ioctl.c", i32 44, i32 2}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cifs_ioctl_query_info.descriptor, !56, !"descriptor", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!67 = !{ptr @cifs_shutdown._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/cifs/ioctl.c", i32 172, i32 2}
!69 = !{ptr @__func__.cifs_shutdown, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cifs_shutdown._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @cifs_shutdown._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @cifs_shutdown._rs.39, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../fs/cifs/ioctl.c", i32 188, i32 3}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cifs_shutdown.descriptor, !74, !"descriptor", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2148487843, i64 2148487848, i64 2148487861, i64 2148487905, i64 2148487939, i64 2148487960}
!94 = !{i64 4671279}
!95 = !{i64 4671476}
!96 = !{i64 2152156709}
!97 = !{i64 2159338003, i64 2159338283, i64 2159338617, i64 2159338951}
!98 = !{i64 2159346910, i64 2159347190, i64 2159347524, i64 2159347858}
!99 = !{i64 2159357934, i64 2159358214, i64 2159358548, i64 2159358882}
!100 = !{i64 2152176405, i64 2152176430}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2158644187}
!103 = !{i64 2158644398}
!104 = !{i64 2149484250}
!105 = !{i64 2149485286}
!106 = !{!107}
!107 = distinct !{!107, !108, !"fdget: %agg.result"}
!108 = distinct !{!108, !"fdget"}
!109 = !{!"auto-init"}
!110 = !{i64 2159249195, i64 2159249475, i64 2159249809, i64 2159250143}
!111 = !{i64 2158595245}
!112 = !{i64 2158595470}
!113 = !{i64 2158664640}
!114 = !{i64 2158664859}
