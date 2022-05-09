; ModuleID = '/llk/IR_all_yes/fs/cifs/smb2file.c_pt.bc'
source_filename = "../fs/cifs/smb2file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.108 }
%union.anon.108 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.network_resiliency_req = type { i32, i32 }
%struct.cifs_open_parms = type { ptr, ptr, i32, i32, i32, ptr, ptr, i16, i8 }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.134, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.134 = type { %struct.anon.136 }
%struct.anon.136 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.110, %struct.list_head, %struct.list_head, %union.anon.111 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.110 = type { %struct.list_head }
%union.anon.111 = type { %struct.hlist_node }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.112 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.112 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.130 }
%union.anon.130 = type { ptr, [124 x i8] }
%struct.cifs_fid_locks = type { %struct.list_head, ptr, %struct.list_head }
%struct.cifsLockInfo = type { %struct.list_head, %struct.list_head, %struct.wait_queue_head, i64, i64, i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.98, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.98 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.smb2_lock_element = type { i64, i64, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }

@CIFSMaxBufSize = external dso_local local_unnamed_addr global i32, align 4
@smb2_open_file._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smb2_open_file = private unnamed_addr constant [15 x i8] c"smb2_open_file\00", align 1
@smb2_open_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smb2_open_file, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CIFS: VFS: resiliency not supported by server, disabling\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/cifs/smb2file.c\00", [45 x i8] zeroinitializer }, align 32
@smb2_open_file._entry_ptr = internal global ptr @smb2_open_file._entry, section ".printk_index", align 4
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@smb2_open_file._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_open_file.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @__func__.smb2_open_file, ptr @.str.2, ptr @.str.5, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: error %d setting resiliency\0A\00", [57 x i8] zeroinitializer }, align 32
@smb2_push_mandatory_locks._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_push_mandatory_locks.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smb2_push_mandatory_locks\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@smb2_push_mandatory_locks._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_push_mandatory_locks.descriptor.9 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@smb2_push_mandatory_locks._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_push_mandatory_locks.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smb2_push_mandatory_locks._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb2_push_mandatory_locks.descriptor.14 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 68, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 72, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 257, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 265, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 274, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.61 = private constant [22 x i8] c"../fs/cifs/smb2file.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 285, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 609, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 108, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @smb2_open_file._entry, ptr @smb2_open_file._entry_ptr, ptr @smb2_open_file._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smb2_open_file._rs.3, ptr @.str.4, ptr @.str.5, ptr @smb2_push_mandatory_locks._rs, ptr @.str.6, ptr @.str.7, ptr @smb2_push_mandatory_locks._rs.8, ptr @.str.10, ptr @smb2_push_mandatory_locks._rs.11, ptr @smb2_push_mandatory_locks._rs.13, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_open_file._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_open_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_open_file._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_push_mandatory_locks._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_push_mandatory_locks._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_push_mandatory_locks._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_push_mandatory_locks._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_open_file(i32 noundef %xid, ptr noundef %oparms, ptr nocapture noundef writeonly %oplock, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %smb2_oplock = alloca i8, align 1
  %nr_ioctl_req = alloca %struct.network_resiliency_req, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %smb2_oplock) #8
  %0 = ptrtoint ptr %smb2_oplock to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %smb2_oplock, align 1, !annotation !53
  %fid1 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %1 = ptrtoint ptr %fid1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fid1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nr_ioctl_req) #8
  %3 = ptrtoint ptr %nr_ioctl_req to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nr_ioctl_req, align 4, !annotation !53
  %4 = getelementptr inbounds %struct.network_resiliency_req, ptr %nr_ioctl_req, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !53
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %cifs_sb = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %8 = ptrtoint ptr %cifs_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cifs_sb, align 4
  %call = tail call ptr @cifs_convert_path_to_utf16(ptr noundef %7, ptr noundef %9) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8293, i32 noundef 3520, i32 noundef 2) #11
  %cmp3 = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %10 = ptrtoint ptr %desired_access to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desired_access, align 4
  %or = or i32 %11, 128
  store i32 %or, ptr %desired_access, align 4
  %12 = ptrtoint ptr %smb2_oplock to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %smb2_oplock, align 1
  %call6 = call i32 @SMB2_open(i32 noundef %xid, ptr noundef %oparms, ptr noundef nonnull %call, ptr noundef nonnull %smb2_oplock, ptr noundef nonnull %call1.i.i.i, ptr noundef null, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end5
  %13 = ptrtoint ptr %oparms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oparms, align 4
  %use_resilient = getelementptr inbounds %struct.cifs_tcon, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %use_resilient to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %use_resilient, align 2
  %16 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %bf.cast.not = icmp eq i8 %16, 0
  br i1 %bf.cast.not, label %if.end8.if.end56_crit_edge, label %if.then9

if.end8.if.end56_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then9:                                         ; preds = %if.end8
  %handle_timeout = getelementptr inbounds %struct.cifs_tcon, ptr %14, i32 0, i32 34
  %17 = ptrtoint ptr %handle_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %handle_timeout, align 8
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %nr_ioctl_req to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nr_ioctl_req, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %4, align 4
  %persistent_fid = getelementptr inbounds %struct.cifs_fid, ptr %2, i32 0, i32 1
  %22 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %persistent_fid, align 8
  %volatile_fid = getelementptr inbounds %struct.cifs_fid, ptr %2, i32 0, i32 2
  %24 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %volatile_fid, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @CIFSMaxBufSize to i32))
  %26 = load i32, ptr @CIFSMaxBufSize, align 4
  %call12 = call i32 @SMB2_ioctl(i32 noundef %xid, ptr noundef %14, i64 noundef %23, i64 noundef %25, i32 noundef 1311188, i1 noundef zeroext true, ptr noundef nonnull %nr_ioctl_req, i32 noundef 8, i32 noundef %26, ptr noundef null, ptr noundef null) #8
  %27 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %do.body33 [
    i32 -95, label %do.body15
    i32 0, label %if.then9.if.end56_crit_edge
  ]

if.then9.if.end56_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body15:                                        ; preds = %if.then9
  %call16 = call i32 @___ratelimit(ptr noundef nonnull @smb2_open_file._rs, ptr noundef nonnull @__func__.smb2_open_file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body15.do.end25_crit_edge, label %do.end

do.body15.do.end25_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end:                                           ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %do.end25

do.end25:                                         ; preds = %do.end, %do.body15.do.end25_crit_edge
  %28 = ptrtoint ptr %oparms to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oparms, align 4
  %use_resilient27 = getelementptr inbounds %struct.cifs_tcon, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %use_resilient27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load28 = load i8, ptr %use_resilient27, align 2
  %bf.clear29 = and i8 %bf.load28, -33
  store i8 %bf.clear29, ptr %use_resilient27, align 2
  br label %if.end56

do.body33:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %31 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.body33.if.end56_crit_edge, label %do.body36

do.body33.if.end56_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_open_file.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_open_file, %land.lhs.true)) #8
          to label %if.end56 [label %land.lhs.true], !srcloc !54

land.lhs.true:                                    ; preds = %do.body36
  %call42 = call i32 @___ratelimit(ptr noundef nonnull @smb2_open_file._rs.3, ptr noundef nonnull @__func__.smb2_open_file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true.if.end56_crit_edge, label %if.then44

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_open_file.descriptor, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call12) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then44, %land.lhs.true.if.end56_crit_edge, %do.body36, %do.body33.if.end56_crit_edge, %do.end25, %if.then9.if.end56_crit_edge, %if.end8.if.end56_crit_edge
  %tobool57.not = icmp eq ptr %buf, null
  br i1 %tobool57.not, label %if.end56.if.end71_crit_edge, label %if.then58

if.end56.if.end71_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then58:                                        ; preds = %if.end56
  %IndexNumber = getelementptr inbounds %struct.smb2_file_all_info, ptr %call1.i.i.i, i32 0, i32 12
  %32 = ptrtoint ptr %IndexNumber to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %IndexNumber, align 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp59 = icmp eq i64 %33, 0
  br i1 %cmp59, label %if.then60, label %if.then58.if.end70_crit_edge

if.then58.if.end70_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then60:                                        ; preds = %if.then58
  %34 = ptrtoint ptr %oparms to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %oparms, align 4
  %persistent_fid62 = getelementptr inbounds %struct.cifs_fid, ptr %2, i32 0, i32 1
  %36 = ptrtoint ptr %persistent_fid62 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %persistent_fid62, align 8
  %volatile_fid63 = getelementptr inbounds %struct.cifs_fid, ptr %2, i32 0, i32 2
  %38 = ptrtoint ptr %volatile_fid63 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %volatile_fid63, align 8
  %call65 = call i32 @SMB2_get_srv_num(i32 noundef %xid, ptr noundef %35, i64 noundef %37, i64 noundef %39, ptr noundef %IndexNumber) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then60.if.end70_crit_edge, label %if.then67

if.then60.if.end70_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then67:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %IndexNumber to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %IndexNumber, align 64
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.then60.if.end70_crit_edge, %if.then58.if.end70_crit_edge
  call void @move_smb2_info_to_cifs(ptr noundef nonnull %buf, ptr noundef nonnull %call1.i.i.i) #8
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end56.if.end71_crit_edge
  %41 = ptrtoint ptr %smb2_oplock to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %smb2_oplock, align 1
  %conv = zext i8 %42 to i32
  %43 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv, ptr %oplock, align 4
  br label %out

out:                                              ; preds = %if.end71, %if.end5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %smb2_data.0 = phi ptr [ %call1.i.i.i, %if.end5.out_crit_edge ], [ %call1.i.i.i, %if.end71 ], [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ]
  %rc.3 = phi i32 [ %call6, %if.end5.out_crit_edge ], [ 0, %if.end71 ], [ -12, %entry.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  call void @kfree(ptr noundef %smb2_data.0) #8
  call void @kfree(ptr noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nr_ioctl_req) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %smb2_oplock) #8
  ret i32 %rc.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_convert_path_to_utf16(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_open(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_ioctl(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_get_srv_num(i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @move_smb2_info_to_cifs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_unlock_range(ptr nocapture noundef readonly %cfile, ptr nocapture noundef readonly %flock, i32 noundef %xid) local_unnamed_addr #0 align 64 {
entry:
  %tmp_llist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 8
  %0 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl_tcon.i, align 4
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 7
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -280
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %flock, i32 0, i32 13
  %8 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fl_end, align 8
  %add = add i64 %9, 1
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %flock, i32 0, i32 12
  %10 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fl_start, align 8
  %sub = sub i64 %add, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_llist) #8
  %12 = getelementptr inbounds %struct.list_head, ptr %tmp_llist, i32 0, i32 1
  %13 = ptrtoint ptr %tmp_llist to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tmp_llist, ptr %tmp_llist, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tmp_llist, ptr %12, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %server, align 8
  %maxBuf = getelementptr inbounds %struct.TCP_Server_Info, ptr %18, i32 0, i32 39
  %19 = ptrtoint ptr %maxBuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxBuf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %20)
  %cmp = icmp ult i32 %20, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %20)
  %cmp4 = icmp ult i32 %20, 4096
  %phi.bo = udiv i32 %20, 24
  %cond = select i1 %cmp4, i32 %phi.bo, i32 170
  %21 = mul nuw i32 %cond, 24
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %lock_sem = getelementptr i8, ptr %7, i32 -268
  call void @cifs_down_write(ptr noundef %lock_sem) #8
  %llist = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 2
  %22 = ptrtoint ptr %llist to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %llist, align 8
  %locks = getelementptr inbounds %struct.cifs_fid_locks, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %locks, align 4
  %cmp17.not154 = icmp eq ptr %25, %locks
  br i1 %cmp17.not154, label %if.end7.if.end77_crit_edge, label %for.body.lr.ph

if.end7.if.end77_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

for.body.lr.ph:                                   ; preds = %if.end7
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %flock, i32 0, i32 6
  %persistent_fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 1
  %volatile_fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rc.0162 = phi i32 [ 0, %for.body.lr.ph ], [ %rc.2, %for.inc.for.body_crit_edge ]
  %num.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %num.1, %for.inc.for.body_crit_edge ]
  %li.0157 = phi ptr [ %25, %for.body.lr.ph ], [ %tmp.0163, %for.inc.for.body_crit_edge ]
  %cur.0155 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %cur.1, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %li.0157 to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.0163 = load ptr, ptr %li.0157, align 8
  %27 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %fl_start, align 8
  %offset = getelementptr inbounds %struct.cifsLockInfo, ptr %li.0157, i32 0, i32 3
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp19 = icmp ugt i64 %28, %30
  br i1 %cmp19, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %add21 = add i64 %sub, %28
  %length23 = getelementptr inbounds %struct.cifsLockInfo, ptr %li.0157, i32 0, i32 4
  %31 = ptrtoint ptr %length23 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %length23, align 8
  %add24 = add i64 %32, %30
  call void @__sanitizer_cov_trace_cmp8(i64 %add21, i64 %add24)
  %cmp25 = icmp ult i64 %add21, %add24
  br i1 %cmp25, label %lor.lhs.false.for.inc_crit_edge, label %if.end27

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end27:                                         ; preds = %lor.lhs.false
  %33 = call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 69
  %37 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tgid, align 4
  %pid = getelementptr inbounds %struct.cifsLockInfo, ptr %li.0157, i32 0, i32 5
  %39 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp29.not = icmp eq i32 %38, %40
  br i1 %cmp29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  %41 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fl_flags, align 8
  %and = and i32 %42, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.then30.for.inc_crit_edge, label %if.then30.if.end34_crit_edge

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end34:                                         ; preds = %if.then30.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool35.not = icmp eq i8 %44, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %li.0157) #8
  br i1 %call.i.i, label %if.end.i.i142, label %if.then36.list_del.exit_crit_edge

if.then36.list_del.exit_crit_edge:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i142:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %li.0157, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %li.0157 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %li.0157, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i142, %if.then36.list_del.exit_crit_edge
  %51 = ptrtoint ptr %li.0157 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %li.0157, align 4
  %prev.i143 = getelementptr inbounds %struct.list_head, ptr %li.0157, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i143 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i143, align 4
  call void @cifs_del_lock_waiters(ptr noundef %li.0157) #8
  call void @kfree(ptr noundef %li.0157) #8
  br label %for.inc

if.end38:                                         ; preds = %if.end34
  %53 = call i64 @llvm.bswap.i64(i64 %32)
  %Length = getelementptr inbounds %struct.smb2_lock_element, ptr %cur.0155, i32 0, i32 1
  %54 = ptrtoint ptr %Length to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %Length, align 1
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %offset, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56)
  %58 = ptrtoint ptr %cur.0155 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %57, ptr %cur.0155, align 1
  %Flags = getelementptr inbounds %struct.smb2_lock_element, ptr %cur.0155, i32 0, i32 2
  %59 = ptrtoint ptr %Flags to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 67108864, ptr %Flags, align 1
  %call.i.i144 = call zeroext i1 @__list_del_entry_valid(ptr noundef %li.0157) #8
  br i1 %call.i.i144, label %if.end.i.i147, label %if.end38.__list_del_entry.exit.i_crit_edge

if.end38.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i147:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i145 = getelementptr inbounds %struct.list_head, ptr %li.0157, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i145 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i145, align 4
  %62 = ptrtoint ptr %li.0157 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %li.0157, align 4
  %prev1.i.i.i146 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i146, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i147, %if.end38.__list_del_entry.exit.i_crit_edge
  %66 = ptrtoint ptr %tmp_llist to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tmp_llist, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %li.0157, ptr noundef nonnull %tmp_llist, ptr noundef %67) #8
  br i1 %call.i.i.i, label %if.end.i.i.i148, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i148:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %li.0157, ptr %prev1.i.i2.i, align 4
  %69 = ptrtoint ptr %li.0157 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %li.0157, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %li.0157, i32 0, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %tmp_llist, ptr %prev3.i.i.i, align 4
  %71 = ptrtoint ptr %tmp_llist to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %li.0157, ptr %tmp_llist, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i148, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %inc = add i32 %num.0160, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %cond)
  %cmp42 = icmp eq i32 %inc, %cond
  br i1 %cmp42, label %if.then43, label %if.else54

if.then43:                                        ; preds = %list_move.exit
  %72 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %persistent_fid, align 8
  %74 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %volatile_fid, align 8
  %76 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task, align 8
  %tgid47 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 69
  %78 = ptrtoint ptr %tgid47 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tgid47, align 4
  %call48 = call i32 @smb2_lockv(i32 noundef %xid, ptr noundef %3, i64 noundef %73, i64 noundef %75, i32 noundef %79, i32 noundef %cond, ptr noundef nonnull %call8.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %llist to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %llist, align 8
  %locks52 = getelementptr inbounds %struct.cifs_fid_locks, ptr %81, i32 0, i32 2
  call void @cifs_move_llist(ptr noundef nonnull %tmp_llist, ptr noundef %locks52) #8
  br label %for.inc

if.else:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  call void @cifs_free_llist(ptr noundef nonnull %tmp_llist) #8
  br label %for.inc

if.else54:                                        ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr %struct.smb2_lock_element, ptr %cur.0155, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.else54, %if.else, %if.then50, %list_del.exit, %if.then30.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cur.1 = phi ptr [ %cur.0155, %for.body.for.inc_crit_edge ], [ %cur.0155, %lor.lhs.false.for.inc_crit_edge ], [ %cur.0155, %list_del.exit ], [ %incdec.ptr, %if.else54 ], [ %cur.0155, %if.then30.for.inc_crit_edge ], [ %call8.i.i, %if.else ], [ %call8.i.i, %if.then50 ]
  %num.1 = phi i32 [ %num.0160, %for.body.for.inc_crit_edge ], [ %num.0160, %lor.lhs.false.for.inc_crit_edge ], [ %num.0160, %list_del.exit ], [ %inc, %if.else54 ], [ %num.0160, %if.then30.for.inc_crit_edge ], [ 0, %if.else ], [ 0, %if.then50 ]
  %rc.2 = phi i32 [ %rc.0162, %for.body.for.inc_crit_edge ], [ %rc.0162, %lor.lhs.false.for.inc_crit_edge ], [ %rc.0162, %list_del.exit ], [ %rc.0162, %if.else54 ], [ %rc.0162, %if.then30.for.inc_crit_edge ], [ %rc.0162, %if.else ], [ %call48, %if.then50 ]
  %82 = ptrtoint ptr %llist to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %llist, align 8
  %locks16 = getelementptr inbounds %struct.cifs_fid_locks, ptr %83, i32 0, i32 2
  %cmp17.not = icmp eq ptr %tmp.0163, %locks16
  br i1 %cmp17.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %tobool61.not = icmp eq i32 %num.1, 0
  br i1 %tobool61.not, label %for.end.if.end77_crit_edge, label %if.then62

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then62:                                        ; preds = %for.end
  %persistent_fid64 = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 1
  %84 = ptrtoint ptr %persistent_fid64 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %persistent_fid64, align 8
  %volatile_fid66 = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 2
  %86 = ptrtoint ptr %volatile_fid66 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %volatile_fid66, align 8
  %88 = call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i149 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i149 to ptr
  %task68 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task68 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task68, align 8
  %tgid69 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 69
  %92 = ptrtoint ptr %tgid69 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tgid69, align 4
  %call70 = call i32 @smb2_lockv(i32 noundef %xid, ptr noundef %3, i64 noundef %85, i64 noundef %87, i32 noundef %93, i32 noundef %num.1, ptr noundef nonnull %call8.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.else75, label %if.then72

if.then72:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %llist to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %llist, align 8
  %locks74 = getelementptr inbounds %struct.cifs_fid_locks, ptr %95, i32 0, i32 2
  call void @cifs_move_llist(ptr noundef nonnull %tmp_llist, ptr noundef %locks74) #8
  br label %if.end77

if.else75:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  call void @cifs_free_llist(ptr noundef nonnull %tmp_llist) #8
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then72, %for.end.if.end77_crit_edge, %if.end7.if.end77_crit_edge
  %rc.3 = phi i32 [ %call70, %if.then72 ], [ %rc.2, %if.else75 ], [ %rc.2, %for.end.if.end77_crit_edge ], [ 0, %if.end7.if.end77_crit_edge ]
  call void @up_write(ptr noundef %lock_sem) #8
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.3, %if.end77 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_llist) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_del_lock_waiters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb2_lockv(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_move_llist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_free_llist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_push_mandatory_locks(ptr nocapture noundef readonly %cfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 7
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %call2 = tail call i32 @_get_xid() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end22_crit_edge, label %do.body4

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_push_mandatory_locks.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_push_mandatory_locks, %land.lhs.true)) #8
          to label %do.end22 [label %land.lhs.true], !srcloc !54

land.lhs.true:                                    ; preds = %do.body4
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_push_mandatory_locks._rs, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end22_crit_edge, label %if.then11

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 99
  %9 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %11)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call15 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_push_mandatory_locks.descriptor, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %call2, i32 noundef %call15) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then11, %land.lhs.true.do.end22_crit_edge, %do.body4, %entry.do.end22_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call2)
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 8
  %12 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server, align 8
  %maxBuf = getelementptr inbounds %struct.TCP_Server_Info, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %maxBuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %maxBuf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %cmp = icmp ult i32 %21, 24
  br i1 %cmp, label %do.body26, label %do.end66

do.body26:                                        ; preds = %do.end22
  tail call void @_free_xid(i32 noundef %call2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %22 = load i32, ptr @cifsFYI, align 4
  %and29 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body26.if.else59_crit_edge, label %do.body32

do.body26.if.else59_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else59

do.body32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_push_mandatory_locks.descriptor.9, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_push_mandatory_locks, %land.lhs.true44)) #8
          to label %if.else59 [label %land.lhs.true44], !srcloc !54

land.lhs.true44:                                  ; preds = %do.body32
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_push_mandatory_locks._rs.8, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true44.if.else59_crit_edge, label %if.then47

land.lhs.true44.if.else59_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else59

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_push_mandatory_locks.descriptor.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %call2, i32 noundef 0) #8
  br label %if.else59

if.else59:                                        ; preds = %if.then47, %land.lhs.true44.if.else59_crit_edge, %do.body32, %do.body26.if.else59_crit_edge
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call2)
  br label %cleanup

do.end66:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp68 = icmp ult i32 %21, 4096
  %phi.bo = udiv i32 %21, 24
  %cond = select i1 %cmp68, i32 %phi.bo, i32 170
  %23 = mul nuw i32 %cond, 24
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #11
  %tobool70.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool70.not, label %do.body72, label %if.end109

do.body72:                                        ; preds = %do.end66
  tail call void @_free_xid(i32 noundef %call2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %24 = load i32, ptr @cifsFYI, align 4
  %and75 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body72.if.else105_crit_edge, label %do.body78

do.body72.if.else105_crit_edge:                   ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105

do.body78:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_push_mandatory_locks.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_push_mandatory_locks, %land.lhs.true90)) #8
          to label %if.else105 [label %land.lhs.true90], !srcloc !54

land.lhs.true90:                                  ; preds = %do.body78
  %call91 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_push_mandatory_locks._rs.11, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true90.if.else105_crit_edge, label %if.then93

land.lhs.true90.if.else105_crit_edge:             ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105

if.then93:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_push_mandatory_locks.descriptor.12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %call2, i32 noundef 0) #8
  br label %if.else105

if.else105:                                       ; preds = %if.then93, %land.lhs.true90.if.else105_crit_edge, %do.body78, %do.body72.if.else105_crit_edge
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call2)
  br label %cleanup

if.end109:                                        ; preds = %do.end66
  %llist = getelementptr i8, ptr %3, i32 -276
  %25 = ptrtoint ptr %llist to i32
  call void @__asan_load4_noabort(i32 %25)
  %fdlocks.0234 = load ptr, ptr %llist, align 4
  %cmp113.not235 = icmp eq ptr %fdlocks.0234, %llist
  br i1 %cmp113.not235, label %if.end109.for.end_crit_edge, label %if.end109.for.body_crit_edge

if.end109.for.body_crit_edge:                     ; preds = %if.end109
  br label %for.body

if.end109.for.end_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end109.for.body_crit_edge
  %fdlocks.0237 = phi ptr [ %fdlocks.0, %for.cond.for.body_crit_edge ], [ %fdlocks.0234, %if.end109.for.body_crit_edge ]
  %rc.0236 = phi i32 [ %68, %for.cond.for.body_crit_edge ], [ 0, %if.end109.for.body_crit_edge ]
  %cfile1.i = getelementptr inbounds %struct.cifs_fid_locks, ptr %fdlocks.0237, i32 0, i32 1
  %26 = ptrtoint ptr %cfile1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfile1.i, align 4
  %tlink.i = getelementptr inbounds %struct.cifsFileInfo, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %tlink.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tlink.i, align 4
  %tl_tcon.i.i = getelementptr inbounds %struct.tcon_link, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %tl_tcon.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tl_tcon.i.i, align 4
  %locks.i = getelementptr inbounds %struct.cifs_fid_locks, ptr %fdlocks.0237, i32 0, i32 2
  %32 = ptrtoint ptr %locks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %li.055.i = load ptr, ptr %locks.i, align 4
  %cmp.not56.i = icmp eq ptr %li.055.i, %locks.i
  br i1 %cmp.not56.i, label %for.body.smb2_push_mand_fdlocks.exit.thread_crit_edge, label %for.body.lr.ph.i

for.body.smb2_push_mand_fdlocks.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %smb2_push_mand_fdlocks.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.body
  %persistent_fid.i = getelementptr inbounds %struct.cifsFileInfo, ptr %27, i32 0, i32 5, i32 1
  %volatile_fid.i = getelementptr inbounds %struct.cifsFileInfo, ptr %27, i32 0, i32 5, i32 2
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %li.060.i.ph = phi ptr [ %li.0.i221, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %li.055.i, %for.body.lr.ph.i ]
  %rc.059.i.ph = phi i32 [ %spec.select.i, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %li.060.i = phi ptr [ %li.0.i, %for.inc.i.for.body.i_crit_edge ], [ %li.060.i.ph, %for.body.i.outer ]
  %cur.058.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %call8.i.i, %for.body.i.outer ]
  %num.057.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.outer ]
  %length.i = getelementptr inbounds %struct.cifsLockInfo, ptr %li.060.i, i32 0, i32 4
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %length.i, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34) #8
  %Length.i = getelementptr inbounds %struct.smb2_lock_element, ptr %cur.058.i, i32 0, i32 1
  %36 = ptrtoint ptr %Length.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %Length.i, align 1
  %offset.i = getelementptr inbounds %struct.cifsLockInfo, ptr %li.060.i, i32 0, i32 3
  %37 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %offset.i, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #8
  %40 = ptrtoint ptr %cur.058.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %cur.058.i, align 1
  %type.i = getelementptr inbounds %struct.cifsLockInfo, ptr %li.060.i, i32 0, i32 6
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %type.i, align 4
  %43 = or i16 %42, 16
  %or.i = zext i16 %43 to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %Flags.i = getelementptr inbounds %struct.smb2_lock_element, ptr %cur.058.i, i32 0, i32 2
  %45 = ptrtoint ptr %Flags.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %Flags.i, align 1
  %inc.i = add i32 %num.057.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %cond)
  %cmp3.i = icmp eq i32 %inc.i, %cond
  br i1 %cmp3.i, label %for.inc.i.thread, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.smb2_lock_element, ptr %cur.058.i, i32 1
  %46 = ptrtoint ptr %li.060.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %li.0.i = load ptr, ptr %li.060.i, align 4
  %cmp.not.i = icmp eq ptr %li.0.i, %locks.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %for.body.i
  %47 = ptrtoint ptr %persistent_fid.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %persistent_fid.i, align 8
  %49 = ptrtoint ptr %volatile_fid.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %volatile_fid.i, align 8
  %51 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 69
  %55 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tgid.i, align 4
  %call7.i = tail call i32 @smb2_lockv(i32 noundef %call2, ptr noundef %31, i64 noundef %48, i64 noundef %50, i32 noundef %56, i32 noundef %cond, ptr noundef nonnull %call8.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %rc.059.i.ph, i32 %call7.i
  %57 = ptrtoint ptr %li.060.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %li.0.i221 = load ptr, ptr %li.060.i, align 4
  %cmp.not.i222 = icmp eq ptr %li.0.i221, %locks.i
  br i1 %cmp.not.i222, label %for.inc.i.thread.smb2_push_mand_fdlocks.exit_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.outer

for.inc.i.thread.smb2_push_mand_fdlocks.exit_crit_edge: ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %smb2_push_mand_fdlocks.exit

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool15.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool15.not.i, label %for.end.i.smb2_push_mand_fdlocks.exit_crit_edge, label %if.then16.i

for.end.i.smb2_push_mand_fdlocks.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smb2_push_mand_fdlocks.exit

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %persistent_fid.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %persistent_fid.i, align 8
  %60 = ptrtoint ptr %volatile_fid.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %volatile_fid.i, align 8
  %62 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i54.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i54.i to ptr
  %task22.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task22.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task22.i, align 8
  %tgid23.i = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 69
  %66 = ptrtoint ptr %tgid23.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tgid23.i, align 4
  %call24.i = tail call i32 @smb2_lockv(i32 noundef %call2, ptr noundef %31, i64 noundef %59, i64 noundef %61, i32 noundef %67, i32 noundef %inc.i, ptr noundef nonnull %call8.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  %spec.select53.i = select i1 %tobool25.not.i, i32 %rc.059.i.ph, i32 %call24.i
  br label %smb2_push_mand_fdlocks.exit

smb2_push_mand_fdlocks.exit:                      ; preds = %if.then16.i, %for.end.i.smb2_push_mand_fdlocks.exit_crit_edge, %for.inc.i.thread.smb2_push_mand_fdlocks.exit_crit_edge
  %rc.3.i = phi i32 [ %rc.059.i.ph, %for.end.i.smb2_push_mand_fdlocks.exit_crit_edge ], [ %spec.select53.i, %if.then16.i ], [ %spec.select.i, %for.inc.i.thread.smb2_push_mand_fdlocks.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3.i)
  %tobool117.not = icmp eq i32 %rc.3.i, 0
  br i1 %tobool117.not, label %smb2_push_mand_fdlocks.exit.smb2_push_mand_fdlocks.exit.thread_crit_edge, label %smb2_push_mand_fdlocks.exit.for.cond_crit_edge

smb2_push_mand_fdlocks.exit.for.cond_crit_edge:   ; preds = %smb2_push_mand_fdlocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

smb2_push_mand_fdlocks.exit.smb2_push_mand_fdlocks.exit.thread_crit_edge: ; preds = %smb2_push_mand_fdlocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %smb2_push_mand_fdlocks.exit.thread

smb2_push_mand_fdlocks.exit.thread:               ; preds = %smb2_push_mand_fdlocks.exit.smb2_push_mand_fdlocks.exit.thread_crit_edge, %for.body.smb2_push_mand_fdlocks.exit.thread_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %smb2_push_mand_fdlocks.exit.thread, %smb2_push_mand_fdlocks.exit.for.cond_crit_edge
  %68 = phi i32 [ %rc.0236, %smb2_push_mand_fdlocks.exit.thread ], [ %rc.3.i, %smb2_push_mand_fdlocks.exit.for.cond_crit_edge ]
  %69 = ptrtoint ptr %fdlocks.0237 to i32
  call void @__asan_load4_noabort(i32 %69)
  %fdlocks.0 = load ptr, ptr %fdlocks.0237, align 4
  %cmp113.not = icmp eq ptr %fdlocks.0, %llist
  br i1 %cmp113.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end109.for.end_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %if.end109.for.end_crit_edge ], [ %68, %for.cond.for.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  tail call void @_free_xid(i32 noundef %call2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %70 = load i32, ptr @cifsFYI, align 4
  %and128 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %for.end.do.end155_crit_edge, label %do.body131

for.end.do.end155_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end155

do.body131:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb2_push_mandatory_locks.descriptor.14, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb2_push_mandatory_locks, %land.lhs.true143)) #8
          to label %do.end155 [label %land.lhs.true143], !srcloc !54

land.lhs.true143:                                 ; preds = %do.body131
  %call144 = tail call i32 @___ratelimit(ptr noundef nonnull @smb2_push_mandatory_locks._rs.13, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true143.do.end155_crit_edge, label %if.then146

land.lhs.true143.do.end155_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end155

if.then146:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb2_push_mandatory_locks.descriptor.14, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %call2, i32 noundef %rc.0.lcssa) #8
  br label %do.end155

do.end155:                                        ; preds = %if.then146, %land.lhs.true143.do.end155_crit_edge, %do.body131, %for.end.do.end155_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.lcssa)
  %tobool156.not = icmp eq i32 %rc.0.lcssa, 0
  br i1 %tobool156.not, label %if.else158, label %if.then157

if.then157:                                       ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call2, i32 noundef %rc.0.lcssa)
  br label %cleanup

if.else158:                                       ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.else158, %if.then157, %if.else105, %if.else59
  %retval.0 = phi i32 [ -22, %if.else59 ], [ -12, %if.else105 ], [ 0, %if.else158 ], [ %rc.0.lcssa, %if.then157 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !56

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.6) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %13 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !56

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 609, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  %31 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, i32 noundef %rc) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !56

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.6, i32 noundef %rc) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %13 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !56

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 558, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  %31 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
define internal fastcc void @trace_smb3_exit_done(i32 noundef %xid) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !54

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !56

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.6) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  %13 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !56

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 610, ptr noundef nonnull @.str.16) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  %31 = tail call i32 @llvm.read_register.i32(metadata !43) #8
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

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @__traceiter_smb3_exit_err(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_done(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/smb2file.c", i32 68, i32 4}
!2 = !{ptr @smb2_open_file._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.smb2_open_file, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smb2_open_file._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @smb2_open_file._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @smb2_open_file._rs.3, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/smb2file.c", i32 72, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @smb2_open_file.descriptor, !9, !"descriptor", i1 false, i1 false}
!13 = !{ptr @smb2_push_mandatory_locks._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/smb2file.c", i32 257, i32 8}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @smb2_push_mandatory_locks.descriptor, !14, !"descriptor", i1 false, i1 false}
!18 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!19 = !{ptr @smb2_push_mandatory_locks._rs.8, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../fs/cifs/smb2file.c", i32 265, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @smb2_push_mandatory_locks.descriptor.9, !20, !"descriptor", i1 false, i1 false}
!23 = !{ptr @smb2_push_mandatory_locks._rs.11, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../fs/cifs/smb2file.c", i32 274, i32 3}
!25 = !{ptr @smb2_push_mandatory_locks.descriptor.12, !24, !"descriptor", i1 false, i1 false}
!26 = !{ptr @smb2_push_mandatory_locks._rs.13, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../fs/cifs/smb2file.c", i32 285, i32 2}
!28 = !{ptr @smb2_push_mandatory_locks.descriptor.14, !27, !"descriptor", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
!54 = !{i64 2148482378, i64 2148482383, i64 2148482396, i64 2148482440, i64 2148482474, i64 2148482495}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2158645624}
!58 = !{i64 2158645835}
!59 = !{i64 2149478785}
!60 = !{i64 2149479821}
!61 = !{i64 2158596682}
!62 = !{i64 2158596907}
!63 = !{i64 2158666077}
!64 = !{i64 2158666296}
