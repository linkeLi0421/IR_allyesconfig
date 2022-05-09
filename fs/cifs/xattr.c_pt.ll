; ModuleID = '/llk/IR_all_yes/fs/cifs/xattr.c_pt.bc'
source_filename = "../fs/cifs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.119 }
%union.anon.119 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.129, %struct.list_head, %struct.list_head, %union.anon.130 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.127 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.129 = type { %struct.list_head }
%union.anon.130 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.111 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.150, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
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
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.146 }
%union.anon.146 = type { ptr, [124 x i8] }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FILE_BASIC_INFO = type { i64, i64, i64, i64, i32, i32 }

@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_listxattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cifs_listxattr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_listxattr\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/xattr.c\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cifs_listxattr._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_listxattr.descriptor.6 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_user_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.11, i32 0, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@cifs_os2_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.33, i32 0, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@cifs_cifs_acl_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.34, ptr null, i32 1, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@smb3_acl_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.35, ptr null, i32 1, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@cifs_cifs_ntsd_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.36, ptr null, i32 4, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@smb3_ntsd_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.37, ptr null, i32 4, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@cifs_cifs_ntsd_full_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.38, ptr null, i32 5, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@smb3_ntsd_full_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.39, ptr null, i32 5, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@cifs_posix_acl_access_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.40, ptr null, i32 2, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@cifs_posix_acl_default_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.41, ptr null, i32 3, ptr null, ptr @cifs_xattr_get, ptr @cifs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@cifs_xattr_handlers = dso_local global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @cifs_user_xattr_handler, ptr @cifs_os2_xattr_handler, ptr @cifs_cifs_acl_xattr_handler, ptr @smb3_acl_xattr_handler, ptr @cifs_cifs_ntsd_xattr_handler, ptr @smb3_ntsd_xattr_handler, ptr @cifs_cifs_ntsd_full_xattr_handler, ptr @smb3_ntsd_full_xattr_handler, ptr @cifs_posix_acl_access_xattr_handler, ptr @cifs_posix_acl_default_xattr_handler, ptr null], [52 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@cifs_xattr_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_get.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.4, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_xattr_get\00", [17 x i8] zeroinitializer }, align 32
@cifs_xattr_get._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_get.descriptor.14 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.15, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: %s: %s:querying user xattr %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs.dosattrib\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smb3.dosattrib\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cifs.creationtime\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smb3.creationtime\00", [46 x i8] zeroinitializer }, align 32
@cifs_xattr_get._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: %s: error %zd getting sec desc\0A\00", [51 x i8] zeroinitializer }, align 32
@cifs_xattr_get._entry_ptr = internal global ptr @cifs_xattr_get._entry, section ".printk_index", align 4
@cifs_xattr_get._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_get.descriptor.23 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.7, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_xattr_set._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_set.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.4, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_xattr_set\00", [17 x i8] zeroinitializer }, align 32
@CIFSMaxBufSize = external dso_local local_unnamed_addr global i32, align 4
@cifs_xattr_set._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_set.descriptor.26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: size of EA value too large\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_xattr_set._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_set.descriptor.29 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.30, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: %s:setting user xattr %s\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_xattr_set._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_set.descriptor.32 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.7, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"os2.\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"system.cifs_acl\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"system.smb3_acl\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"system.cifs_ntsd\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"system.smb3_ntsd\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"system.cifs_ntsd_full\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"system.smb3_ntsd_full\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 425, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 445, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"cifs_user_xattr_handler\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 450, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"cifs_os2_xattr_handler\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 458, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"cifs_cifs_acl_xattr_handler\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 465, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"smb3_acl_xattr_handler\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 478, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [29 x i8] c"cifs_cifs_ntsd_xattr_handler\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 485, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [24 x i8] c"smb3_ntsd_xattr_handler\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 498, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [34 x i8] c"cifs_cifs_ntsd_full_xattr_handler\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 505, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [29 x i8] c"smb3_ntsd_full_xattr_handler\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 518, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [36 x i8] c"cifs_posix_acl_access_xattr_handler\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 526, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [37 x i8] c"cifs_posix_acl_default_xattr_handler\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 533, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"cifs_xattr_handlers\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 540, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 609, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 108, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 451, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 300, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 312, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 313, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 314, i32 21 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 317, i32 28 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 318, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 353, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 399, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 111, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 126, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 133, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 231, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 459, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 466, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 479, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 486, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 499, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 506, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 519, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 527, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [19 x i8] c"../fs/cifs/xattr.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 534, i32 10 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @cifs_xattr_get._entry, ptr @cifs_xattr_get._entry_ptr, ptr @cifs_listxattr._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_listxattr._rs.5, ptr @.str.7, ptr @cifs_user_xattr_handler, ptr @cifs_os2_xattr_handler, ptr @cifs_cifs_acl_xattr_handler, ptr @smb3_acl_xattr_handler, ptr @cifs_cifs_ntsd_xattr_handler, ptr @smb3_ntsd_xattr_handler, ptr @cifs_cifs_ntsd_full_xattr_handler, ptr @smb3_ntsd_full_xattr_handler, ptr @cifs_posix_acl_access_xattr_handler, ptr @cifs_posix_acl_default_xattr_handler, ptr @cifs_xattr_handlers, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cifs_xattr_get._rs, ptr @.str.12, ptr @cifs_xattr_get._rs.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @cifs_xattr_get._rs.20, ptr @.str.21, ptr @cifs_xattr_get._rs.22, ptr @cifs_xattr_set._rs, ptr @.str.24, ptr @cifs_xattr_set._rs.25, ptr @.str.27, ptr @cifs_xattr_set._rs.28, ptr @.str.30, ptr @cifs_xattr_set._rs.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_listxattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_listxattr._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_user_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_os2_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_cifs_acl_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_acl_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_cifs_ntsd_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_ntsd_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_cifs_ntsd_full_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_ntsd_full_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_posix_acl_access_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_posix_acl_default_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_handlers to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_get._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_get._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_get._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_set._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_set._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_set._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_xattr_set._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_listxattr(ptr noundef %direntry, ptr noundef %data, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
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
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp slt i32 %5, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !120

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #9
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call6, i32 0, i32 5
  %7 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tl_tcon.i, align 4
  %call12 = tail call i32 @_get_xid() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and14 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end10.do.end40_crit_edge, label %do.body17

if.end10.do.end40_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.body17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_listxattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_listxattr, %land.lhs.true)) #9
          to label %do.end40 [label %land.lhs.true], !srcloc !121

land.lhs.true:                                    ; preds = %do.body17
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_listxattr._rs, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.do.end40_crit_edge, label %if.then28

land.lhs.true.do.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  %fsuid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call32 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_listxattr.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %call12, i32 noundef %call32) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then28, %land.lhs.true.do.end40_crit_edge, %do.body17, %if.end10.do.end40_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call12, ptr noundef nonnull @.str.2)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %17 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3264) #9
  %call43 = tail call ptr @build_path_from_dentry(ptr noundef %direntry, ptr noundef %call.i) #9
  %cmp.i123 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then45, label %if.end47

if.then45:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call43 to i32
  br label %list_ea_exit

if.end47:                                         ; preds = %do.end40
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 7
  %19 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %query_all_EAs = getelementptr inbounds %struct.smb_version_operations, ptr %24, i32 0, i32 91
  %25 = ptrtoint ptr %query_all_EAs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %query_all_EAs, align 4
  %tobool48.not = icmp eq ptr %26, null
  br i1 %tobool48.not, label %if.end47.list_ea_exit_crit_edge, label %if.then49

if.end47.list_ea_exit_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_ea_exit

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 %26(i32 noundef %call12, ptr noundef %8, ptr noundef %call43, ptr noundef null, ptr noundef %data, i32 noundef %buf_size, ptr noundef %3) #9
  br label %list_ea_exit

list_ea_exit:                                     ; preds = %if.then49, %if.end47.list_ea_exit_crit_edge, %if.then45
  %rc.0 = phi i32 [ %18, %if.then45 ], [ %call54, %if.then49 ], [ -95, %if.end47.list_ea_exit_crit_edge ]
  %tobool.not.i124 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i124, label %list_ea_exit.free_dentry_path.exit_crit_edge, label %if.then.i

list_ea_exit.free_dentry_path.exit_crit_edge:     ; preds = %list_ea_exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %list_ea_exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %27 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %call.i) #9
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %list_ea_exit.free_dentry_path.exit_crit_edge
  tail call void @_free_xid(i32 noundef %call12) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %28 = load i32, ptr @cifsFYI, align 4
  %and59 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %free_dentry_path.exit.do.end86_crit_edge, label %do.body62

free_dentry_path.exit.do.end86_crit_edge:         ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

do.body62:                                        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_listxattr.descriptor.6, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_listxattr, %land.lhs.true74)) #9
          to label %do.end86 [label %land.lhs.true74], !srcloc !121

land.lhs.true74:                                  ; preds = %do.body62
  %call75 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_listxattr._rs.5, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true74.do.end86_crit_edge, label %if.then77

land.lhs.true74.do.end86_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

if.then77:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_listxattr.descriptor.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %call12, i32 noundef %rc.0) #9
  br label %do.end86

do.end86:                                         ; preds = %if.then77, %land.lhs.true74.do.end86_crit_edge, %do.body62, %free_dentry_path.exit.do.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool87.not = icmp eq i32 %rc.0, 0
  br i1 %tobool87.not, label %if.else89, label %if.then88

if.then88:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call12, ptr noundef nonnull @.str.2, i32 noundef %rc.0)
  br label %do.end92

if.else89:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call12, ptr noundef nonnull @.str.2)
  br label %do.end92

do.end92:                                         ; preds = %if.else89, %if.then88
  tail call void @cifs_put_tlink(ptr noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then8 ], [ %rc.0, %do.end92 ], [ -5, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_tlink(ptr noundef) local_unnamed_addr #2

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
define internal fastcc void @trace_smb3_enter(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !122

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !122

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 609, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
declare dso_local ptr @build_path_from_dentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !122

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !122

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 558, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
define internal fastcc void @trace_smb3_exit_done(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !122

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !122

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 610, ptr noundef nonnull @.str.9) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
declare dso_local void @cifs_put_tlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

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
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_err(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_done(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_xattr_get(ptr nocapture noundef readonly %handler, ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  %acllen = alloca i32, align 4
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
  %call1 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup194

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call1, i32 0, i32 5
  %5 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tl_tcon.i, align 4
  %call5 = tail call i32 @_get_xid() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end27_crit_edge, label %do.body8

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_xattr_get.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_xattr_get, %land.lhs.true)) #9
          to label %do.end27 [label %land.lhs.true], !srcloc !121

land.lhs.true:                                    ; preds = %do.body8
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_xattr_get._rs, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end27_crit_edge, label %if.then15

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  %14 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call19 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_xattr_get.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, i32 noundef %call5, i32 noundef %call19) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then15, %land.lhs.true.do.end27_crit_edge, %do.body8, %if.end.do.end27_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call5, ptr noundef nonnull @.str.12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %15 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 3264) #9
  %call30 = tail call ptr @build_path_from_dentry(ptr noundef %dentry, ptr noundef %call.i) #9
  %cmp.i272 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i272, label %if.then32, label %if.end34

if.then32:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call30 to i32
  br label %out

if.end34:                                         ; preds = %do.end27
  %flags = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end34.out_crit_edge [
    i32 0, label %do.body36
    i32 1, label %if.end34.sw.bb92_crit_edge
    i32 4, label %if.end34.sw.bb92_crit_edge298
    i32 5, label %if.end34.sw.bb92_crit_edge299
    i32 2, label %sw.bb138
    i32 3, label %sw.bb145
  ]

if.end34.sw.bb92_crit_edge299:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb92

if.end34.sw.bb92_crit_edge298:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb92

if.end34.sw.bb92_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb92

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body36:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %20 = load i32, ptr @cifsFYI, align 4
  %and37 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.do.end64_crit_edge, label %do.body40

do.body36.do.end64_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

do.body40:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_xattr_get.descriptor.14, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_xattr_get, %land.lhs.true52)) #9
          to label %do.end64 [label %land.lhs.true52], !srcloc !121

land.lhs.true52:                                  ; preds = %do.body40
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_xattr_get._rs.13, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.end64_crit_edge, label %if.then55

land.lhs.true52.do.end64_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

if.then55:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_xattr_get.descriptor.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %name) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then55, %land.lhs.true52.do.end64_crit_edge, %do.body40, %do.body36.do.end64_crit_edge
  %call65 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(15) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp = icmp eq i32 %call65, 0
  br i1 %cmp, label %do.end64.if.then68_crit_edge, label %lor.lhs.false

do.end64.if.then68_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

lor.lhs.false:                                    ; preds = %do.end64
  %call66 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(15) @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %lor.lhs.false.if.then68_crit_edge, label %if.else70

lor.lhs.false.if.then68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false.if.then68_crit_edge, %do.end64.if.then68_crit_edge
  %call.i273 = tail call i32 @cifs_revalidate_dentry_attr(ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool.not.i = icmp eq i32 %call.i273, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then68.sw.epilog_crit_edge

if.then68.sw.epilog_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then68
  %cmp.i274 = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1.i = icmp eq i32 %size, 0
  %or.cond.i = or i1 %cmp.i274, %cmp1.i
  br i1 %or.cond.i, label %if.end.i.out_crit_edge, label %if.else.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp3.i = icmp ult i32 %size, 4
  br i1 %cmp3.i, label %if.else.i.out_crit_edge, label %if.end6.i

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %cifsAttrs.i = getelementptr i8, ptr %inode, i32 -120
  %21 = ptrtoint ptr %cifsAttrs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cifsAttrs.i, align 8
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %value, align 4
  br label %out

if.else70:                                        ; preds = %lor.lhs.false
  %call71 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(18) @.str.18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.else70.if.then76_crit_edge, label %lor.lhs.false73

if.else70.if.then76_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

lor.lhs.false73:                                  ; preds = %if.else70
  %call74 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(18) @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %lor.lhs.false73.if.then76_crit_edge, label %if.end79

lor.lhs.false73.if.then76_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false73.if.then76_crit_edge, %if.else70.if.then76_crit_edge
  %call.i276 = tail call i32 @cifs_revalidate_dentry_attr(ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool.not.i277 = icmp eq i32 %call.i276, 0
  br i1 %tobool.not.i277, label %if.end.i281, label %if.then76.sw.epilog_crit_edge

if.then76.sw.epilog_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i281:                                      ; preds = %if.then76
  %cmp.i278 = icmp eq ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1.i279 = icmp eq i32 %size, 0
  %or.cond.i280 = or i1 %cmp.i278, %cmp1.i279
  br i1 %or.cond.i280, label %if.end.i281.out_crit_edge, label %if.else.i283

if.end.i281.out_crit_edge:                        ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else.i283:                                     ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp3.i282 = icmp ult i32 %size, 8
  br i1 %cmp3.i282, label %if.else.i283.out_crit_edge, label %if.end6.i284

if.else.i283.out_crit_edge:                       ; preds = %if.else.i283
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6.i284:                                     ; preds = %if.else.i283
  call void @__sanitizer_cov_trace_pc() #11
  %createtime.i = getelementptr i8, ptr %inode, i32 -32
  %24 = ptrtoint ptr %createtime.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %createtime.i, align 8
  %26 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %value, align 8
  br label %out

if.end79:                                         ; preds = %lor.lhs.false73
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mnt_cifs_flags, align 4
  %and80 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.out_crit_edge

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end83:                                         ; preds = %if.end79
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %6, i32 0, i32 7
  %29 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %query_all_EAs = getelementptr inbounds %struct.smb_version_operations, ptr %34, i32 0, i32 91
  %35 = ptrtoint ptr %query_all_EAs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %query_all_EAs, align 4
  %tobool84.not = icmp eq ptr %36, null
  br i1 %tobool84.not, label %if.end83.out_crit_edge, label %if.then85

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = tail call i32 %36(i32 noundef %call5, ptr noundef %6, ptr noundef %call30, ptr noundef %name, ptr noundef %value, i32 noundef %size, ptr noundef %3) #9
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end34.sw.bb92_crit_edge, %if.end34.sw.bb92_crit_edge298, %if.end34.sw.bb92_crit_edge299
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acllen) #9
  %37 = ptrtoint ptr %acllen to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %acllen, align 4, !annotation !131
  %ses93 = getelementptr inbounds %struct.cifs_tcon, ptr %6, i32 0, i32 7
  %38 = ptrtoint ptr %ses93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ses93, align 8
  %server94 = getelementptr inbounds %struct.cifs_ses, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %server94 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %server94, align 8
  %ops95 = getelementptr inbounds %struct.TCP_Server_Info, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %ops95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops95, align 4
  %get_acl = getelementptr inbounds %struct.smb_version_operations, ptr %43, i32 0, i32 93
  %44 = ptrtoint ptr %get_acl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_acl, align 4
  %cmp96 = icmp eq ptr %45, null
  br i1 %cmp96, label %cleanup, label %if.end98

if.end98:                                         ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp100 = icmp eq i32 %18, 5
  %. = select i1 %cmp100, i32 8, i32 0
  %call108 = call ptr %45(ptr noundef %3, ptr noundef %inode, ptr noundef %call30, ptr noundef nonnull %acllen, i32 noundef %.) #9
  %cmp.i286 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %if.then110, label %if.else127

if.then110:                                       ; preds = %if.end98
  %46 = ptrtoint ptr %call108 to i32
  %call114 = call i32 @___ratelimit(ptr noundef nonnull @cifs_xattr_get._rs.20, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then110.cleanup.thread_crit_edge, label %do.end119

if.then110.cleanup.thread_crit_edge:              ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

do.end119:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, i32 noundef %46) #13
  br label %cleanup.thread

if.else127:                                       ; preds = %if.end98
  %tobool128.not = icmp eq ptr %value, null
  br i1 %tobool128.not, label %if.else127.if.end134_crit_edge, label %if.then129

if.else127.if.end134_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then129:                                       ; preds = %if.else127
  %47 = ptrtoint ptr %acllen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %acllen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %size)
  %cmp130 = icmp ugt i32 %48, %size
  br i1 %cmp130, label %if.then131, label %if.else132

if.then131:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %acllen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -34, ptr %acllen, align 4
  br label %if.end134

if.else132:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %50 = call ptr @memcpy(ptr %value, ptr %call108, i32 %48)
  br label %if.end134

if.end134:                                        ; preds = %if.else132, %if.then131, %if.else127.if.end134_crit_edge
  %51 = ptrtoint ptr %acllen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %acllen, align 4
  call void @kfree(ptr noundef %call108) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end134, %do.end119, %if.then110.cleanup.thread_crit_edge
  %rc.1.ph = phi i32 [ %52, %if.end134 ], [ %46, %if.then110.cleanup.thread_crit_edge ], [ %46, %do.end119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acllen) #9
  br label %sw.epilog

cleanup:                                          ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acllen) #9
  br label %out

sw.bb138:                                         ; preds = %if.end34
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %53 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_flags, align 4
  %and139 = and i32 %54, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %sw.bb138.out_crit_edge, label %if.then141

sw.bb138.out_crit_edge:                           ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then141:                                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #11
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %local_nls, align 4
  %call142 = tail call i32 @cifs_remap(ptr noundef %3) #9
  %call143 = tail call i32 @CIFSSMBGetPosixACL(i32 noundef %call5, ptr noundef %6, ptr noundef %call30, ptr noundef %value, i32 noundef %size, i32 noundef 32768, ptr noundef %56, i32 noundef %call142) #9
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end34
  %s_flags146 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %57 = ptrtoint ptr %s_flags146 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_flags146, align 4
  %and147 = and i32 %58, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %sw.bb145.out_crit_edge, label %if.then149

sw.bb145.out_crit_edge:                           ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then149:                                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #11
  %local_nls150 = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %59 = ptrtoint ptr %local_nls150 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %local_nls150, align 4
  %call151 = tail call i32 @cifs_remap(ptr noundef %3) #9
  %call152 = tail call i32 @CIFSSMBGetPosixACL(i32 noundef %call5, ptr noundef %6, ptr noundef %call30, ptr noundef %value, i32 noundef %size, i32 noundef 16384, ptr noundef %60, i32 noundef %call151) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then149, %if.then141, %cleanup.thread, %if.then85, %if.then76.sw.epilog_crit_edge, %if.then68.sw.epilog_crit_edge
  %rc.2 = phi i32 [ %call152, %if.then149 ], [ %call143, %if.then141 ], [ %call90, %if.then85 ], [ %call.i273, %if.then68.sw.epilog_crit_edge ], [ %call.i276, %if.then76.sw.epilog_crit_edge ], [ %rc.1.ph, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %rc.2)
  %cmp154 = icmp eq i32 %rc.2, -22
  %spec.select = select i1 %cmp154, i32 -95, i32 %rc.2
  br label %out

out:                                              ; preds = %sw.epilog, %sw.bb145.out_crit_edge, %sw.bb138.out_crit_edge, %cleanup, %if.end83.out_crit_edge, %if.end79.out_crit_edge, %if.end6.i284, %if.else.i283.out_crit_edge, %if.end.i281.out_crit_edge, %if.end6.i, %if.else.i.out_crit_edge, %if.end.i.out_crit_edge, %if.end34.out_crit_edge, %if.then32
  %rc.3 = phi i32 [ %16, %if.then32 ], [ -95, %cleanup ], [ -95, %if.end79.out_crit_edge ], [ -34, %if.else.i283.out_crit_edge ], [ 8, %if.end.i281.out_crit_edge ], [ 8, %if.end6.i284 ], [ -34, %if.else.i.out_crit_edge ], [ 4, %if.end.i.out_crit_edge ], [ 4, %if.end6.i ], [ -95, %if.end83.out_crit_edge ], [ -95, %sw.bb138.out_crit_edge ], [ -95, %sw.bb145.out_crit_edge ], [ -95, %if.end34.out_crit_edge ], [ %spec.select, %sw.epilog ]
  %tobool.not.i287 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i287, label %out.free_dentry_path.exit_crit_edge, label %if.then.i

out.free_dentry_path.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %61 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %61, ptr noundef nonnull %call.i) #9
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %out.free_dentry_path.exit_crit_edge
  call void @_free_xid(i32 noundef %call5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %62 = load i32, ptr @cifsFYI, align 4
  %and160 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %free_dentry_path.exit.do.end187_crit_edge, label %do.body163

free_dentry_path.exit.do.end187_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end187

do.body163:                                       ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_xattr_get.descriptor.23, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_xattr_get, %land.lhs.true175)) #9
          to label %do.end187 [label %land.lhs.true175], !srcloc !121

land.lhs.true175:                                 ; preds = %do.body163
  %call176 = call i32 @___ratelimit(ptr noundef nonnull @cifs_xattr_get._rs.22, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %land.lhs.true175.do.end187_crit_edge, label %if.then178

land.lhs.true175.do.end187_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end187

if.then178:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_xattr_get.descriptor.23, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, i32 noundef %call5, i32 noundef %rc.3) #9
  br label %do.end187

do.end187:                                        ; preds = %if.then178, %land.lhs.true175.do.end187_crit_edge, %do.body163, %free_dentry_path.exit.do.end187_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool188.not = icmp eq i32 %rc.3, 0
  br i1 %tobool188.not, label %if.else190, label %if.then189

if.then189:                                       ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_smb3_exit_err(i32 noundef %call5, ptr noundef nonnull @.str.12, i32 noundef %rc.3)
  br label %do.end193

if.else190:                                       ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_smb3_exit_done(i32 noundef %call5, ptr noundef nonnull @.str.12)
  br label %do.end193

do.end193:                                        ; preds = %if.else190, %if.then189
  call void @cifs_put_tlink(ptr noundef %call1) #9
  br label %cleanup194

cleanup194:                                       ; preds = %do.end193, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %rc.3, %do.end193 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_xattr_set(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
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
  %call1 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #9
  %cmp.i321 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup227

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call1, i32 0, i32 5
  %5 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tl_tcon.i, align 4
  %call5 = tail call i32 @_get_xid() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end27_crit_edge, label %do.body8

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_xattr_set.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_xattr_set, %land.lhs.true)) #9
          to label %do.end27 [label %land.lhs.true], !srcloc !121

land.lhs.true:                                    ; preds = %do.body8
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_xattr_set._rs, ptr noundef nonnull @.str.24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end27_crit_edge, label %if.then15

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !110) #9
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
  %14 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call19 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_xattr_set.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, i32 noundef %call5, i32 noundef %call19) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then15, %land.lhs.true.do.end27_crit_edge, %do.body8, %if.end.do.end27_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call5, ptr noundef nonnull @.str.24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %15 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 3264) #9
  %call30 = tail call ptr @build_path_from_dentry(ptr noundef %dentry, ptr noundef %call.i) #9
  %cmp.i322 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i322, label %if.then32, label %if.end34

if.then32:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call30 to i32
  br label %out

if.end34:                                         ; preds = %do.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %17 = load i32, ptr @CIFSMaxBufSize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %size)
  %cmp = icmp ult i32 %17, %size
  br i1 %cmp, label %do.body37, label %if.end66

do.body37:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %18 = load i32, ptr @cifsFYI, align 4
  %and38 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.out_crit_edge, label %do.body41

do.body37.out_crit_edge:                          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_xattr_set.descriptor.26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_xattr_set, %land.lhs.true53)) #9
          to label %out [label %land.lhs.true53], !srcloc !121

land.lhs.true53:                                  ; preds = %do.body41
  %call54 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_xattr_set._rs.25, ptr noundef nonnull @.str.24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.out_crit_edge, label %if.then56

land.lhs.true53.out_crit_edge:                    ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_xattr_set.descriptor.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3) #9
  br label %out

if.end66:                                         ; preds = %if.end34
  %flags67 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %19 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags67, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %20, label %if.end66.out_crit_edge [
    i32 0, label %do.body69
    i32 1, label %if.end66.sw.bb135_crit_edge
    i32 4, label %if.end66.sw.bb135_crit_edge337
    i32 5, label %if.end66.sw.bb135_crit_edge338
    i32 2, label %sw.bb166
    i32 3, label %sw.bb177
  ]

if.end66.sw.bb135_crit_edge338:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb135

if.end66.sw.bb135_crit_edge337:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb135

if.end66.sw.bb135_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb135

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body69:                                        ; preds = %if.end66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %22 = load i32, ptr @cifsFYI, align 4
  %and70 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.do.end97_crit_edge, label %do.body73

do.body69.do.end97_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end97

do.body73:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_xattr_set.descriptor.29, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_xattr_set, %land.lhs.true85)) #9
          to label %do.end97 [label %land.lhs.true85], !srcloc !121

land.lhs.true85:                                  ; preds = %do.body73
  %call86 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_xattr_set._rs.28, ptr noundef nonnull @.str.24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %land.lhs.true85.do.end97_crit_edge, label %if.then88

land.lhs.true85.do.end97_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end97

if.then88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_xattr_set.descriptor.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, ptr noundef %name) #9
  br label %do.end97

do.end97:                                         ; preds = %if.then88, %land.lhs.true85.do.end97_crit_edge, %do.body73, %do.body69.do.end97_crit_edge
  %call98 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(15) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %do.end97.if.then102_crit_edge, label %lor.lhs.false

do.end97.if.then102_crit_edge:                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102

lor.lhs.false:                                    ; preds = %do.end97
  %call100 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(15) @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %lor.lhs.false.if.then102_crit_edge, label %if.else108

lor.lhs.false.if.then102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false.if.then102_crit_edge, %do.end97.if.then102_crit_edge
  %call103 = tail call fastcc i32 @cifs_attrib_set(i32 noundef %call5, ptr noundef %6, ptr noundef %inode, ptr noundef %call30, ptr noundef %value, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.then102.out_crit_edge

if.then102.out_crit_edge:                         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then105:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  %time = getelementptr i8, ptr %inode, i32 -56
  %23 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %time, align 8
  br label %out

if.else108:                                       ; preds = %lor.lhs.false
  %call109 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(18) @.str.18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.else108.if.then114_crit_edge, label %lor.lhs.false111

if.else108.if.then114_crit_edge:                  ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then114

lor.lhs.false111:                                 ; preds = %if.else108
  %call112 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(18) @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp eq i32 %call112, 0
  br i1 %cmp113, label %lor.lhs.false111.if.then114_crit_edge, label %if.end122

lor.lhs.false111.if.then114_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then114

if.then114:                                       ; preds = %lor.lhs.false111.if.then114_crit_edge, %if.else108.if.then114_crit_edge
  %call115 = tail call fastcc i32 @cifs_creation_time_set(i32 noundef %call5, ptr noundef %6, ptr noundef %inode, ptr noundef %call30, ptr noundef %value, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then117, label %if.then114.out_crit_edge

if.then114.out_crit_edge:                         ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then117:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  %time119 = getelementptr i8, ptr %inode, i32 -56
  %24 = ptrtoint ptr %time119 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %time119, align 8
  br label %out

if.end122:                                        ; preds = %lor.lhs.false111
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mnt_cifs_flags, align 4
  %and123 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end122.out_crit_edge

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end126:                                        ; preds = %if.end122
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %6, i32 0, i32 7
  %27 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %set_EA = getelementptr inbounds %struct.smb_version_operations, ptr %32, i32 0, i32 92
  %33 = ptrtoint ptr %set_EA to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_EA, align 4
  %tobool127.not = icmp eq ptr %34, null
  br i1 %tobool127.not, label %if.end126.out_crit_edge, label %if.then128

if.end126.out_crit_edge:                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %size to i16
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %local_nls, align 4
  %call133 = tail call i32 %34(i32 noundef %call5, ptr noundef %6, ptr noundef %call30, ptr noundef %name, ptr noundef %value, i16 noundef zeroext %conv, ptr noundef %36, ptr noundef %3) #9
  br label %out

sw.bb135:                                         ; preds = %if.end66.sw.bb135_crit_edge, %if.end66.sw.bb135_crit_edge337, %if.end66.sw.bb135_crit_edge338
  %tobool136.not = icmp eq ptr %value, null
  br i1 %tobool136.not, label %sw.bb135.out_crit_edge, label %if.end8.i

sw.bb135.out_crit_edge:                           ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8.i:                                        ; preds = %sw.bb135
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #14
  %tobool140.not = icmp eq ptr %call9.i, null
  br i1 %tobool140.not, label %if.end8.i.out_crit_edge, label %if.else142

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else142:                                       ; preds = %if.end8.i
  %37 = call ptr @memcpy(ptr %call9.i, ptr %value, i32 %size)
  %ses143 = getelementptr inbounds %struct.cifs_tcon, ptr %6, i32 0, i32 7
  %38 = ptrtoint ptr %ses143 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ses143, align 8
  %server144 = getelementptr inbounds %struct.cifs_ses, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %server144 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %server144, align 8
  %ops145 = getelementptr inbounds %struct.TCP_Server_Info, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %ops145 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops145, align 4
  %set_acl = getelementptr inbounds %struct.smb_version_operations, ptr %43, i32 0, i32 95
  %44 = ptrtoint ptr %set_acl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_acl, align 4
  %tobool146.not = icmp eq ptr %45, null
  br i1 %tobool146.not, label %if.else142.if.end164_crit_edge, label %if.end158

if.else142.if.end164_crit_edge:                   ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.end158:                                        ; preds = %if.else142
  %46 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %switch.selectcmp = icmp eq i32 %47, 4
  %switch.select = select i1 %switch.selectcmp, i32 7, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %switch.selectcmp310 = icmp eq i32 %47, 5
  %switch.select311 = select i1 %switch.selectcmp310, i32 15, i32 %switch.select
  %call156 = tail call i32 %45(ptr noundef nonnull %call9.i, i32 noundef %size, ptr noundef %inode, ptr noundef %call30, i32 noundef %switch.select311) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp159 = icmp eq i32 %call156, 0
  br i1 %cmp159, label %if.then161, label %if.end158.if.end164_crit_edge

if.end158.if.end164_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %time163 = getelementptr i8, ptr %inode, i32 -56
  %48 = ptrtoint ptr %time163 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %time163, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %if.end158.if.end164_crit_edge, %if.else142.if.end164_crit_edge
  %rc.0335 = phi i32 [ 0, %if.then161 ], [ %call156, %if.end158.if.end164_crit_edge ], [ -95, %if.else142.if.end164_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %out

sw.bb166:                                         ; preds = %if.end66
  %tobool167.not = icmp eq ptr %value, null
  br i1 %tobool167.not, label %sw.bb166.out_crit_edge, label %if.end169

sw.bb166.out_crit_edge:                           ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end169:                                        ; preds = %sw.bb166
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %49 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_flags, align 4
  %and170 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end169.out_crit_edge, label %if.then172

if.end169.out_crit_edge:                          ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then172:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  %local_nls173 = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %local_nls173 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %local_nls173, align 4
  %call174 = tail call i32 @cifs_remap(ptr noundef %3) #9
  %call175 = tail call i32 @CIFSSMBSetPosixACL(i32 noundef %call5, ptr noundef %6, ptr noundef %call30, ptr noundef nonnull %value, i32 noundef %size, i32 noundef 32768, ptr noundef %52, i32 noundef %call174) #9
  br label %out

sw.bb177:                                         ; preds = %if.end66
  %tobool178.not = icmp eq ptr %value, null
  br i1 %tobool178.not, label %sw.bb177.out_crit_edge, label %if.end180

sw.bb177.out_crit_edge:                           ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end180:                                        ; preds = %sw.bb177
  %s_flags181 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %53 = ptrtoint ptr %s_flags181 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_flags181, align 4
  %and182 = and i32 %54, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end180.out_crit_edge, label %if.then184

if.end180.out_crit_edge:                          ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then184:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  %local_nls185 = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %local_nls185 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %local_nls185, align 4
  %call186 = tail call i32 @cifs_remap(ptr noundef %3) #9
  %call187 = tail call i32 @CIFSSMBSetPosixACL(i32 noundef %call5, ptr noundef %6, ptr noundef %call30, ptr noundef nonnull %value, i32 noundef %size, i32 noundef 16384, ptr noundef %56, i32 noundef %call186) #9
  br label %out

out:                                              ; preds = %if.then184, %if.end180.out_crit_edge, %sw.bb177.out_crit_edge, %if.then172, %if.end169.out_crit_edge, %sw.bb166.out_crit_edge, %if.end164, %if.end8.i.out_crit_edge, %sw.bb135.out_crit_edge, %if.then128, %if.end126.out_crit_edge, %if.end122.out_crit_edge, %if.then117, %if.then114.out_crit_edge, %if.then105, %if.then102.out_crit_edge, %if.end66.out_crit_edge, %if.then56, %land.lhs.true53.out_crit_edge, %do.body41, %do.body37.out_crit_edge, %if.then32
  %rc.3 = phi i32 [ %16, %if.then32 ], [ -95, %if.end66.out_crit_edge ], [ %call187, %if.then184 ], [ -95, %if.end180.out_crit_edge ], [ -95, %sw.bb177.out_crit_edge ], [ %call175, %if.then172 ], [ -95, %if.end169.out_crit_edge ], [ -95, %sw.bb166.out_crit_edge ], [ 0, %if.then105 ], [ %call103, %if.then102.out_crit_edge ], [ 0, %if.then117 ], [ %call115, %if.then114.out_crit_edge ], [ -95, %if.end122.out_crit_edge ], [ %call133, %if.then128 ], [ -95, %if.end126.out_crit_edge ], [ -95, %do.body37.out_crit_edge ], [ -95, %land.lhs.true53.out_crit_edge ], [ -95, %if.then56 ], [ -95, %do.body41 ], [ -95, %sw.bb135.out_crit_edge ], [ %rc.0335, %if.end164 ], [ -12, %if.end8.i.out_crit_edge ]
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %out.free_dentry_path.exit_crit_edge, label %if.then.i325

out.free_dentry_path.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_dentry_path.exit

if.then.i325:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %57 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %call.i) #9
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i325, %out.free_dentry_path.exit_crit_edge
  tail call void @_free_xid(i32 noundef %call5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %58 = load i32, ptr @cifsFYI, align 4
  %and193 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %free_dentry_path.exit.do.end220_crit_edge, label %do.body196

free_dentry_path.exit.do.end220_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end220

do.body196:                                       ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_xattr_set.descriptor.32, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_xattr_set, %land.lhs.true208)) #9
          to label %do.end220 [label %land.lhs.true208], !srcloc !121

land.lhs.true208:                                 ; preds = %do.body196
  %call209 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_xattr_set._rs.31, ptr noundef nonnull @.str.24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %land.lhs.true208.do.end220_crit_edge, label %if.then211

land.lhs.true208.do.end220_crit_edge:             ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end220

if.then211:                                       ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_xattr_set.descriptor.32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, i32 noundef %call5, i32 noundef %rc.3) #9
  br label %do.end220

do.end220:                                        ; preds = %if.then211, %land.lhs.true208.do.end220_crit_edge, %do.body196, %free_dentry_path.exit.do.end220_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool221.not = icmp eq i32 %rc.3, 0
  br i1 %tobool221.not, label %if.else223, label %if.then222

if.then222:                                       ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call5, ptr noundef nonnull @.str.24, i32 noundef %rc.3)
  br label %do.end226

if.else223:                                       ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call5, ptr noundef nonnull @.str.24)
  br label %do.end226

do.end226:                                        ; preds = %if.else223, %if.then222
  tail call void @cifs_put_tlink(ptr noundef %call1) #9
  br label %cleanup227

cleanup227:                                       ; preds = %do.end226, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %rc.3, %do.end226 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBGetPosixACL(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_remap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_revalidate_dentry_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_attrib_set(i32 noundef %xid, ptr nocapture noundef readonly %pTcon, ptr noundef %inode, ptr noundef %full_path, ptr noundef readonly %value, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %info_buf = alloca %struct.FILE_BASIC_INFO, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info_buf) #9
  %cmp = icmp ne ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp1.not = icmp eq i32 %size, 4
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %info_buf, i32 0, i32 4
  %1 = call ptr @memset(ptr %info_buf, i32 0, i32 40)
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 8
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %pTcon, i32 0, i32 7
  %6 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %set_file_info = getelementptr inbounds %struct.smb_version_operations, ptr %11, i32 0, i32 41
  %12 = ptrtoint ptr %set_file_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_file_info, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call = call i32 %13(ptr noundef %inode, ptr noundef %full_path, ptr noundef nonnull %info_buf, i32 noundef %xid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %cifsAttrs = getelementptr i8, ptr %inode, i32 -120
  %14 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %cifsAttrs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ %call, %if.end7.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_creation_time_set(i32 noundef %xid, ptr nocapture noundef readonly %pTcon, ptr noundef %inode, ptr noundef %full_path, ptr noundef readonly %value, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %info_buf = alloca %struct.FILE_BASIC_INFO, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info_buf) #9
  %cmp = icmp ne ptr %value, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp1.not = icmp eq i32 %size, 8
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %info_buf, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %5 = ptrtoint ptr %info_buf to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %info_buf, align 8
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %pTcon, i32 0, i32 7
  %6 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %set_file_info = getelementptr inbounds %struct.smb_version_operations, ptr %11, i32 0, i32 41
  %12 = ptrtoint ptr %set_file_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_file_info, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call = call i32 %13(ptr noundef %inode, ptr noundef %full_path, ptr noundef nonnull %info_buf, i32 noundef %xid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %createtime = getelementptr i8, ptr %inode, i32 -32
  %14 = ptrtoint ptr %createtime to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %3, ptr %createtime, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ %call, %if.end7.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info_buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetPosixACL(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/xattr.c", i32 425, i32 8}
!2 = !{ptr @cifs_listxattr._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cifs_listxattr.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!9 = !{ptr @cifs_listxattr._rs.5, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../fs/cifs/xattr.c", i32 445, i32 2}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cifs_listxattr.descriptor.6, !10, !"descriptor", i1 false, i1 false}
!13 = !{ptr @cifs_xattr_handlers, !14, !"cifs_xattr_handlers", i1 false, i1 false}
!14 = !{!"../fs/cifs/xattr.c", i32 540, i32 29}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/cifs/xattr.c", i32 451, i32 12}
!31 = !{ptr @cifs_user_xattr_handler, !32, !"cifs_user_xattr_handler", i1 false, i1 false}
!32 = !{!"../fs/cifs/xattr.c", i32 450, i32 35}
!33 = !{ptr @cifs_xattr_get._rs, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../fs/cifs/xattr.c", i32 300, i32 8}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cifs_xattr_get.descriptor, !34, !"descriptor", i1 false, i1 false}
!37 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!38 = !{ptr @cifs_xattr_get._rs.13, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../fs/cifs/xattr.c", i32 312, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cifs_xattr_get.descriptor.14, !39, !"descriptor", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/cifs/xattr.c", i32 313, i32 21}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/cifs/xattr.c", i32 314, i32 21}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/cifs/xattr.c", i32 317, i32 28}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/cifs/xattr.c", i32 318, i32 21}
!50 = !{ptr @cifs_xattr_get._rs.20, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/cifs/xattr.c", i32 353, i32 4}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cifs_xattr_get._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @cifs_xattr_get._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @cifs_xattr_get._rs.22, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../fs/cifs/xattr.c", i32 399, i32 2}
!57 = !{ptr @cifs_xattr_get.descriptor.23, !56, !"descriptor", i1 false, i1 false}
!58 = !{ptr @cifs_xattr_set._rs, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../fs/cifs/xattr.c", i32 111, i32 8}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cifs_xattr_set.descriptor, !59, !"descriptor", i1 false, i1 false}
!62 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!63 = !{ptr @cifs_xattr_set._rs.25, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../fs/cifs/xattr.c", i32 126, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cifs_xattr_set.descriptor.26, !64, !"descriptor", i1 false, i1 false}
!67 = !{ptr @cifs_xattr_set._rs.28, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/cifs/xattr.c", i32 133, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @cifs_xattr_set.descriptor.29, !68, !"descriptor", i1 false, i1 false}
!71 = !{ptr @cifs_xattr_set._rs.31, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../fs/cifs/xattr.c", i32 231, i32 2}
!73 = !{ptr @cifs_xattr_set.descriptor.32, !72, !"descriptor", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/cifs/xattr.c", i32 459, i32 12}
!76 = !{ptr @cifs_os2_xattr_handler, !77, !"cifs_os2_xattr_handler", i1 false, i1 false}
!77 = !{!"../fs/cifs/xattr.c", i32 458, i32 35}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/cifs/xattr.c", i32 466, i32 10}
!80 = !{ptr @cifs_cifs_acl_xattr_handler, !81, !"cifs_cifs_acl_xattr_handler", i1 false, i1 false}
!81 = !{!"../fs/cifs/xattr.c", i32 465, i32 35}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/cifs/xattr.c", i32 479, i32 10}
!84 = !{ptr @smb3_acl_xattr_handler, !85, !"smb3_acl_xattr_handler", i1 false, i1 false}
!85 = !{!"../fs/cifs/xattr.c", i32 478, i32 35}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/cifs/xattr.c", i32 486, i32 10}
!88 = !{ptr @cifs_cifs_ntsd_xattr_handler, !89, !"cifs_cifs_ntsd_xattr_handler", i1 false, i1 false}
!89 = !{!"../fs/cifs/xattr.c", i32 485, i32 35}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/cifs/xattr.c", i32 499, i32 10}
!92 = !{ptr @smb3_ntsd_xattr_handler, !93, !"smb3_ntsd_xattr_handler", i1 false, i1 false}
!93 = !{!"../fs/cifs/xattr.c", i32 498, i32 35}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/cifs/xattr.c", i32 506, i32 10}
!96 = !{ptr @cifs_cifs_ntsd_full_xattr_handler, !97, !"cifs_cifs_ntsd_full_xattr_handler", i1 false, i1 false}
!97 = !{!"../fs/cifs/xattr.c", i32 505, i32 35}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/cifs/xattr.c", i32 519, i32 10}
!100 = !{ptr @smb3_ntsd_full_xattr_handler, !101, !"smb3_ntsd_full_xattr_handler", i1 false, i1 false}
!101 = !{!"../fs/cifs/xattr.c", i32 518, i32 35}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/cifs/xattr.c", i32 527, i32 10}
!104 = !{ptr @cifs_posix_acl_access_xattr_handler, !105, !"cifs_posix_acl_access_xattr_handler", i1 false, i1 false}
!105 = !{!"../fs/cifs/xattr.c", i32 526, i32 35}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/cifs/xattr.c", i32 534, i32 10}
!108 = !{ptr @cifs_posix_acl_default_xattr_handler, !109, !"cifs_posix_acl_default_xattr_handler", i1 false, i1 false}
!109 = !{!"../fs/cifs/xattr.c", i32 533, i32 35}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2148489687, i64 2148489692, i64 2148489705, i64 2148489749, i64 2148489783, i64 2148489804}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2158602771}
!124 = !{i64 2158602982}
!125 = !{i64 2149486094}
!126 = !{i64 2149487130}
!127 = !{i64 2158549768}
!128 = !{i64 2158549993}
!129 = !{i64 2158619163}
!130 = !{i64 2158619382}
!131 = !{!"auto-init"}
