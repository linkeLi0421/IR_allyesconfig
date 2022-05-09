; ModuleID = '/llk/IR_all_yes/fs/cifs/link.c_pt.bc'
source_filename = "../fs/cifs/link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.108 }
%union.anon.108 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cifs_fattr = type { i32, i32, i64, i64, i64, i64, %struct.kuid_t, %struct.kgid_t, i16, i32, i32, i32, %struct.timespec64, %struct.timespec64, %struct.timespec64, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.132, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.132 = type { %struct.anon.134 }
%struct.anon.134 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.128 }
%union.anon.128 = type { ptr, [124 x i8] }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_open_parms = type { ptr, ptr, i32, i32, i32, ptr, ptr, i16, i8 }
%struct.cifs_io_parms = type { i16, i64, i64, i32, i64, i32, ptr, ptr }
%struct.FILE_ALL_INFO = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i64, i32, i32, i32, [1 x i8] }>
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.98 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kvec = type { ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.124, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.125, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.126, ptr, %struct.address_space, %struct.list_head, %union.anon.127, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.124 = type { i32 }
%union.anon.125 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.126 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.127 = type { ptr }
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
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.110, %struct.list_head, %struct.list_head, %union.anon.111 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.110 = type { %struct.list_head }
%union.anon.111 = type { %struct.hlist_node }
%struct.delayed_call = type { ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@smb3_create_mf_symlink._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@smb3_create_mf_symlink.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smb3_create_mf_symlink\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/cifs/link.c\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIFS: %s: %s: path: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@cifs_hardlink._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_hardlink.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cifs_hardlink\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cifs_hardlink._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_hardlink.descriptor.8 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.9, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_get_link._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_link.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.6, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cifs_get_link\00", [18 x i8] zeroinitializer }, align 32
@cifs_get_link._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_link.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.9, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_get_link._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_link.descriptor.14 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.9, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_get_link._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_link.descriptor.16 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.17, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: Full path: %s inode = 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_get_link._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_link.descriptor.19 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.9, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_symlink._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_symlink.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.6, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cifs_symlink\00", [19 x i8] zeroinitializer }, align 32
@cifs_symlink._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_symlink.descriptor.22 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CIFS: %s: Full path: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@cifs_symlink._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_symlink.descriptor.25 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.26, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CIFS: %s: symname is %s\0A\00", [39 x i8] zeroinitializer }, align 32
@cifs_symlink._rs.27 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_symlink.descriptor.28 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.29, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CIFS: %s: Create symlink ok, getinodeinfo fail rc = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cifs_symlink._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_symlink.descriptor.31 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.9, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XSym\0A%04u\0A\00", [21 x i8] zeroinitializer }, align 32
@parse_mf_symlink._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_mf_symlink.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parse_mf_symlink\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: %s: MD5 hash failure: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%16phN\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@symlink_hash._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.symlink_hash = private unnamed_addr constant [13 x i8] c"symlink_hash\00", align 1
@symlink_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.symlink_hash, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: %s: Could not init md5 shash\0A\00", [53 x i8] zeroinitializer }, align 32
@symlink_hash._entry_ptr = internal global ptr @symlink_hash._entry, section ".printk_index", align 4
@symlink_hash._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@symlink_hash._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.symlink_hash, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: %s: Could not update with link_str\0A\00", [47 x i8] zeroinitializer }, align 32
@symlink_hash._entry_ptr.41 = internal global ptr @symlink_hash._entry.39, section ".printk_index", align 4
@symlink_hash._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@symlink_hash._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.symlink_hash, ptr @.str.3, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s: Could not generate md5 hash\0A\00", [50 x i8] zeroinitializer }, align 32
@symlink_hash._entry_ptr.45 = internal global ptr @symlink_hash._entry.43, section ".printk_index", align 4
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@format_mf_symlink._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@format_mf_symlink.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.34, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"format_mf_symlink\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"XSym\0A%04u\0A%16phN\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967291]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 446, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 517, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 589, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 611, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 615, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 624, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 630, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 653, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 683, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 698, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 699, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 723, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 732, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 84, i32 19 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 90, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 95, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 44, i32 23 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 50, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 55, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 60, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 609, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 108, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 129, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [18 x i8] c"../fs/cifs/link.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 134, i32 5 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @symlink_hash._entry, ptr @symlink_hash._entry.39, ptr @symlink_hash._entry.43, ptr @symlink_hash._entry_ptr, ptr @symlink_hash._entry_ptr.41, ptr @symlink_hash._entry_ptr.45, ptr @smb3_create_mf_symlink._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_hardlink._rs, ptr @.str.5, ptr @.str.6, ptr @cifs_hardlink._rs.7, ptr @.str.9, ptr @cifs_get_link._rs, ptr @.str.10, ptr @cifs_get_link._rs.11, ptr @cifs_get_link._rs.13, ptr @cifs_get_link._rs.15, ptr @.str.17, ptr @cifs_get_link._rs.18, ptr @cifs_symlink._rs, ptr @.str.20, ptr @cifs_symlink._rs.21, ptr @.str.23, ptr @cifs_symlink._rs.24, ptr @.str.26, ptr @cifs_symlink._rs.27, ptr @.str.29, ptr @cifs_symlink._rs.30, ptr @.str.32, ptr @parse_mf_symlink._rs, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @symlink_hash._rs, ptr @.str.37, ptr @symlink_hash._rs.38, ptr @.str.40, ptr @symlink_hash._rs.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @format_mf_symlink._rs, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_create_mf_symlink._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_hardlink._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_hardlink._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_link._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_link._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_link._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_link._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_link._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_symlink._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_symlink._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_symlink._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_symlink._rs.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_symlink._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_mf_symlink._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symlink_hash._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symlink_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symlink_hash._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symlink_hash._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symlink_hash._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symlink_hash._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_mf_symlink._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @couldbe_mf_symlink(ptr nocapture noundef readonly %fattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %0 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cf_mode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %3 = ptrtoint ptr %cf_eof to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cf_eof, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1067, i64 %4)
  %cmp2.not = icmp eq i64 %4, 1067
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp2.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @check_mf_symlink(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr nocapture noundef %fattr, ptr noundef %path) local_unnamed_addr #1 align 64 {
entry:
  %link_len = alloca i32, align 4
  %bytes_read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_len) #11
  %0 = ptrtoint ptr %link_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %link_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read) #11
  %1 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bytes_read, align 4
  %cf_mode.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %2 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cf_mode.i, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp.i = icmp eq i16 %4, -32768
  br i1 %cmp.i, label %couldbe_mf_symlink.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

couldbe_mf_symlink.exit:                          ; preds = %entry
  %cf_eof.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %5 = ptrtoint ptr %cf_eof.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %cf_eof.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1067, i64 %6)
  %cmp2.not.i = icmp eq i64 %6, 1067
  br i1 %cmp2.not.i, label %if.end, label %couldbe_mf_symlink.exit.cleanup_crit_edge

couldbe_mf_symlink.exit.cleanup_crit_edge:        ; preds = %couldbe_mf_symlink.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %couldbe_mf_symlink.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 1067) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %8 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %query_mf_symlink = getelementptr inbounds %struct.smb_version_operations, ptr %13, i32 0, i32 82
  %14 = ptrtoint ptr %query_mf_symlink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %query_mf_symlink, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %if.end3.out_crit_edge, label %if.end11

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end3
  %call10 = call i32 %15(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %path, ptr noundef nonnull %call7.i, ptr noundef nonnull %bytes_read) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.end14.out_crit_edge, label %if.end16

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end16:                                         ; preds = %if.end14
  %call17 = call fastcc i32 @parse_mf_symlink(ptr noundef nonnull %call7.i, i32 noundef %17, ptr noundef nonnull %link_len, ptr noundef null)
  %18 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17, label %out.fold.split [
    i32 -22, label %if.end16.out_crit_edge
    i32 0, label %if.end23
  ]

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %link_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_len, align 4
  %conv = zext i32 %20 to i64
  %21 = ptrtoint ptr %cf_eof.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %cf_eof.i, align 8
  %22 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cf_mode.i, align 8
  %24 = and i16 %23, 3584
  %25 = or i16 %24, -24065
  store i16 %25, ptr %cf_mode.i, align 8
  %cf_dtype = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %26 = ptrtoint ptr %cf_dtype to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 10, ptr %cf_dtype, align 4
  br label %out

out.fold.split:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %out.fold.split, %if.end23, %if.end16.out_crit_edge, %if.end14.out_crit_edge, %if.end11.out_crit_edge, %if.end3.out_crit_edge
  %rc.1 = phi i32 [ %call10, %if.end11.out_crit_edge ], [ 0, %if.end14.out_crit_edge ], [ 0, %if.end23 ], [ 0, %if.end16.out_crit_edge ], [ %call17, %out.fold.split ], [ -38, %if.end3.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %couldbe_mf_symlink.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ 0, %couldbe_mf_symlink.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_len) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_mf_symlink(ptr noundef %buf, i32 noundef %buf_len, ptr nocapture noundef writeonly %_link_len, ptr noundef writeonly %_link_str) unnamed_addr #1 align 64 {
entry:
  %link_len = alloca i32, align 4
  %md5_hash = alloca [16 x i8], align 1
  %md5_str2 = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_len) #11
  %0 = ptrtoint ptr %link_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_len, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %md5_hash) #11
  %1 = call ptr @memset(ptr %md5_hash, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %md5_str2) #11
  %2 = call ptr @memset(ptr %md5_str2, i32 255, i32 34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1067, i32 %buf_len)
  %cmp.not = icmp eq i32 %buf_len, 1067
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %buf, i32 10
  %arrayidx1 = getelementptr i8, ptr %buf, i32 43
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef nonnull %link_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %link_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link_len, align 4
  %call5 = call fastcc i32 @symlink_hash(i32 noundef %4, ptr noundef %arrayidx1, ptr noundef nonnull %md5_hash)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end24, label %do.body7

do.body7:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body7.cleanup_crit_edge, label %do.body10

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_mf_symlink.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_mf_symlink, %land.lhs.true)) #11
          to label %cleanup [label %land.lhs.true], !srcloc !114

land.lhs.true:                                    ; preds = %do.body10
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @parse_mf_symlink._rs, ptr noundef nonnull @.str.33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %if.then17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_mf_symlink.descriptor, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, i32 noundef %call5) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end4
  %call27 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %md5_str2, i32 noundef 34, ptr noundef nonnull @.str.35, ptr noundef nonnull %md5_hash) #11
  %call29 = call i32 @strncmp(ptr noundef %arrayidx, ptr noundef nonnull %md5_str2, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end32, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %tobool33.not = icmp eq ptr %_link_str, null
  br i1 %tobool33.not, label %if.end32.if.end39_crit_edge, label %if.then34

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %if.end32
  %6 = ptrtoint ptr %link_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_len, align 4
  %call35 = call ptr @kstrndup(ptr noundef %arrayidx1, i32 noundef %7, i32 noundef 3264) #11
  %8 = ptrtoint ptr %_link_str to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call35, ptr %_link_str, align 4
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then34.cleanup_crit_edge, label %if.then34.if.end39_crit_edge

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %if.end32.if.end39_crit_edge
  %9 = ptrtoint ptr %link_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_len, align 4
  %11 = ptrtoint ptr %_link_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %_link_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then34.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then17, %land.lhs.true.cleanup_crit_edge, %do.body10, %do.body7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %do.body7.cleanup_crit_edge ], [ %call5, %land.lhs.true.cleanup_crit_edge ], [ %call5, %if.then17 ], [ -22, %if.end24.cleanup_crit_edge ], [ -12, %if.then34.cleanup_crit_edge ], [ %call5, %do.body10 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %md5_str2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %md5_hash) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_len) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_query_mf_symlink(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %path, ptr noundef %pbuf, ptr noundef %pbytes_read) local_unnamed_addr #1 align 64 {
entry:
  %pbuf.addr = alloca ptr, align 4
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  %io_parms = alloca %struct.cifs_io_parms, align 8
  %buf_type = alloca i32, align 4
  %file_info = alloca %struct.FILE_ALL_INFO, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbuf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pbuf, ptr %pbuf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #11
  %1 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %oplock, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #11
  %2 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #11
  %3 = getelementptr inbounds i8, ptr %oparms, i32 28
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %io_parms) #11
  %5 = call ptr @memset(ptr %io_parms, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_type) #11
  %6 = ptrtoint ptr %buf_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buf_type, align 4
  call void @llvm.lifetime.start.p0(i64 109, ptr nonnull %file_info) #11
  %7 = call ptr @memset(ptr %file_info, i32 255, i32 109)
  %8 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tcon, ptr %oparms, align 4
  %cifs_sb2 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %9 = ptrtoint ptr %cifs_sb2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cifs_sb, ptr %cifs_sb2, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %10 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2147483648, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %cifs_sb) #11
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i = phi i32 [ 64, %if.else.i ], [ 16448, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %11 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %12 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %disposition, align 4
  %path3 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %13 = ptrtoint ptr %path3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %path, ptr %path3, align 4
  %fid4 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %14 = ptrtoint ptr %fid4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fid, ptr %fid4, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %15 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call5 = call i32 @CIFS_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef nonnull %file_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %cifs_create_options.exit.cleanup_crit_edge

cifs_create_options.exit.cleanup_crit_edge:       ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cifs_create_options.exit
  %EndOfFile = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %file_info, i32 0, i32 7
  %16 = ptrtoint ptr %EndOfFile to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %EndOfFile, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 3099602443537743872, i64 %17)
  %cmp.not = icmp eq i64 %17, 3099602443537743872
  br i1 %cmp.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fid, align 8
  %20 = ptrtoint ptr %io_parms to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %io_parms, align 8
  %21 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 69
  %25 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tgid, align 4
  %pid = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 3
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pid, align 8
  %tcon10 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 6
  %28 = ptrtoint ptr %tcon10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tcon, ptr %tcon10, align 4
  %offset = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 4
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %offset, align 8
  %length = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 5
  %30 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1067, ptr %length, align 8
  %call11 = call i32 @CIFSSMBRead(i32 noundef %xid, ptr noundef nonnull %io_parms, ptr noundef %pbytes_read, ptr noundef nonnull %pbuf.addr, ptr noundef nonnull %buf_type) #11
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge
  %rc.0 = phi i32 [ %call11, %if.end7 ], [ -2, %if.end.out_crit_edge ]
  %31 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fid, align 8
  %conv = zext i16 %32 to i32
  %call13 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %tcon, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %cifs_create_options.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call5, %cifs_create_options.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 109, ptr nonnull %file_info) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_type) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %io_parms) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFS_open(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBRead(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBClose(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_create_mf_symlink(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %path, ptr noundef %pbuf, ptr noundef %pbytes_written) local_unnamed_addr #1 align 64 {
entry:
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  %io_parms = alloca %struct.cifs_io_parms, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #11
  %0 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oplock, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #11
  %1 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #11
  %2 = getelementptr inbounds i8, ptr %oparms, i32 28
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %io_parms) #11
  %4 = call ptr @memset(ptr %io_parms, i32 0, i32 56)
  %5 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tcon, ptr %oparms, align 4
  %cifs_sb2 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %6 = ptrtoint ptr %cifs_sb2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cifs_sb, ptr %cifs_sb2, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %7 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1073741824, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %cifs_sb) #11
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i = phi i32 [ 64, %if.else.i ], [ 16448, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %8 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %9 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %disposition, align 4
  %path3 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %10 = ptrtoint ptr %path3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %path, ptr %path3, align 4
  %fid4 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %11 = ptrtoint ptr %fid4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fid, ptr %fid4, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %12 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call5 = call i32 @CIFS_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %cifs_create_options.exit.cleanup_crit_edge

cifs_create_options.exit.cleanup_crit_edge:       ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fid, align 8
  %15 = ptrtoint ptr %io_parms to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %io_parms, align 8
  %16 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 69
  %20 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tgid, align 4
  %pid = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 3
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pid, align 8
  %tcon8 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 6
  %23 = ptrtoint ptr %tcon8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tcon, ptr %tcon8, align 4
  %offset = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 4
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %offset, align 8
  %length = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 5
  %25 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1067, ptr %length, align 8
  %call9 = call i32 @CIFSSMBWrite(i32 noundef %xid, ptr noundef nonnull %io_parms, ptr noundef %pbytes_written, ptr noundef %pbuf) #11
  %26 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fid, align 8
  %conv = zext i16 %27 to i32
  %call11 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %tcon, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cifs_create_options.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ %call5, %cifs_create_options.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %io_parms) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBWrite(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb3_query_mf_symlink(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %path, ptr noundef %pbuf, ptr noundef %pbytes_read) local_unnamed_addr #1 align 64 {
entry:
  %pbuf.addr = alloca ptr, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  %io_parms = alloca %struct.cifs_io_parms, align 8
  %buf_type = alloca i32, align 4
  %oplock = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbuf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pbuf, ptr %pbuf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #11
  %1 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #11
  %2 = getelementptr inbounds i8, ptr %oparms, i32 20
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %io_parms) #11
  %4 = call ptr @memset(ptr %io_parms, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_type) #11
  %5 = ptrtoint ptr %buf_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %buf_type, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oplock) #11
  %6 = ptrtoint ptr %oplock to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %oplock, align 1
  %7 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tcon, ptr %oparms, align 4
  %cifs_sb2 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %8 = ptrtoint ptr %cifs_sb2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cifs_sb, ptr %cifs_sb2, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %9 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483648, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %cifs_sb) #11
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i = phi i32 [ 64, %if.else.i ], [ 16448, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %10 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %11 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %disposition, align 4
  %fid3 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %12 = ptrtoint ptr %fid3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fid, ptr %fid3, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %13 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call4 = call ptr @cifs_convert_path_to_utf16(ptr noundef %path, ptr noundef %cifs_sb) #11
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %cifs_create_options.exit.cleanup_crit_edge, label %if.end

cifs_create_options.exit.cleanup_crit_edge:       ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cifs_create_options.exit
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8293, i32 noundef 3520, i32 noundef 2) #15
  %cmp6 = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp6, label %if.end.cleanup.sink.split_crit_edge, label %if.end8

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @SMB2_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %call4, ptr noundef nonnull %oplock, ptr noundef nonnull %call1.i.i.i, ptr noundef null, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.qmf_out_open_fail_crit_edge

if.end8.qmf_out_open_fail_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %qmf_out_open_fail

if.end11:                                         ; preds = %if.end8
  %EndOfFile = getelementptr inbounds %struct.smb2_file_all_info, ptr %call1.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %EndOfFile to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %EndOfFile, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 3099602443537743872, i64 %15)
  %cmp12.not = icmp eq i64 %15, 3099602443537743872
  br i1 %cmp12.not, label %if.end14, label %if.end11.qmf_out_crit_edge

if.end11.qmf_out_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %qmf_out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fid, align 8
  %18 = ptrtoint ptr %io_parms to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %io_parms, align 8
  %19 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 69
  %23 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tgid, align 4
  %pid = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 3
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pid, align 8
  %tcon17 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 6
  %26 = ptrtoint ptr %tcon17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tcon, ptr %tcon17, align 4
  %offset = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 4
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %offset, align 8
  %length = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 5
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1067, ptr %length, align 8
  %persistent_fid = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 1
  %29 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %persistent_fid, align 8
  %persistent_fid18 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 1
  %31 = ptrtoint ptr %persistent_fid18 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %persistent_fid18, align 8
  %volatile_fid = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 2
  %32 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %volatile_fid, align 8
  %volatile_fid19 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 2
  %34 = ptrtoint ptr %volatile_fid19 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %volatile_fid19, align 8
  %call20 = call i32 @SMB2_read(i32 noundef %xid, ptr noundef nonnull %io_parms, ptr noundef %pbytes_read, ptr noundef nonnull %pbuf.addr, ptr noundef nonnull %buf_type) #11
  br label %qmf_out

qmf_out:                                          ; preds = %if.end14, %if.end11.qmf_out_crit_edge
  %rc.0 = phi i32 [ %call20, %if.end14 ], [ -2, %if.end11.qmf_out_crit_edge ]
  %persistent_fid21 = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 1
  %35 = ptrtoint ptr %persistent_fid21 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %persistent_fid21, align 8
  %volatile_fid22 = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 2
  %37 = ptrtoint ptr %volatile_fid22 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %volatile_fid22, align 8
  %call23 = call i32 @SMB2_close(i32 noundef %xid, ptr noundef %tcon, i64 noundef %36, i64 noundef %38) #11
  br label %qmf_out_open_fail

qmf_out_open_fail:                                ; preds = %qmf_out, %if.end8.qmf_out_open_fail_crit_edge
  %rc.1 = phi i32 [ %call9, %if.end8.qmf_out_open_fail_crit_edge ], [ %rc.0, %qmf_out ]
  call void @kfree(ptr noundef nonnull %call4) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %qmf_out_open_fail, %if.end.cleanup.sink.split_crit_edge
  %call1.i.i.i.sink = phi ptr [ %call1.i.i.i, %qmf_out_open_fail ], [ %call4, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %rc.1, %qmf_out_open_fail ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cifs_create_options.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %cifs_create_options.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oplock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_type) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %io_parms) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_convert_path_to_utf16(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_open(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_read(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_close(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb3_create_mf_symlink(i32 noundef %xid, ptr noundef %tcon, ptr noundef %cifs_sb, ptr noundef %path, ptr noundef %pbuf, ptr noundef %pbytes_written) local_unnamed_addr #1 align 64 {
entry:
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  %io_parms = alloca %struct.cifs_io_parms, align 8
  %oplock = alloca i8, align 1
  %iov = alloca [2 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #11
  %0 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #11
  %1 = getelementptr inbounds i8, ptr %oparms, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %io_parms) #11
  %3 = call ptr @memset(ptr %io_parms, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oplock) #11
  %4 = ptrtoint ptr %oplock to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %oplock, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #11
  %5 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %iov, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %8 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb3_create_mf_symlink.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb3_create_mf_symlink, %land.lhs.true)) #11
          to label %do.end13 [label %land.lhs.true], !srcloc !114

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @smb3_create_mf_symlink._rs, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb3_create_mf_symlink.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %path) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %call14 = tail call ptr @cifs_convert_path_to_utf16(ptr noundef %path, ptr noundef %cifs_sb) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end13.cleanup_crit_edge, label %if.end17

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %do.end13
  %9 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tcon, ptr %oparms, align 4
  %cifs_sb19 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %10 = ptrtoint ptr %cifs_sb19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cifs_sb, ptr %cifs_sb19, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %11 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1073741824, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not.i, label %if.end17.if.else.i_crit_edge, label %land.lhs.true.i

if.end17.if.else.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end17
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %cifs_sb) #11
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end17.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i60 = phi i32 [ 64, %if.else.i ], [ 16448, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %12 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i60, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %13 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %disposition, align 4
  %fid21 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %14 = ptrtoint ptr %fid21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fid, ptr %fid21, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %15 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call22 = call i32 @SMB2_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %call14, ptr noundef nonnull %oplock, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %cifs_create_options.exit.cleanup.sink.split_crit_edge

cifs_create_options.exit.cleanup.sink.split_crit_edge: ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end25:                                         ; preds = %cifs_create_options.exit
  %16 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fid, align 8
  %18 = ptrtoint ptr %io_parms to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %io_parms, align 8
  %19 = call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 69
  %23 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tgid, align 4
  %pid = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 3
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pid, align 8
  %tcon28 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 6
  %26 = ptrtoint ptr %tcon28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tcon, ptr %tcon28, align 4
  %offset = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 4
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %offset, align 8
  %length = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 5
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1067, ptr %length, align 8
  %persistent_fid = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 1
  %29 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %persistent_fid, align 8
  %persistent_fid29 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 1
  %31 = ptrtoint ptr %persistent_fid29 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %persistent_fid29, align 8
  %volatile_fid = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 2
  %32 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %volatile_fid, align 8
  %volatile_fid30 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 2
  %34 = ptrtoint ptr %volatile_fid30 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %volatile_fid30, align 8
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pbuf, ptr %5, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1067, ptr %6, align 4
  %call32 = call i32 @SMB2_write(i32 noundef %xid, ptr noundef nonnull %io_parms, ptr noundef %pbytes_written, ptr noundef nonnull %iov, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp eq i32 %call32, 0
  br i1 %cmp, label %land.lhs.true33, label %if.end25.if.end36_crit_edge

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true33:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %pbytes_written to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pbytes_written, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1067, i32 %38)
  %cmp34.not = icmp eq i32 %38, 1067
  %spec.select = select i1 %cmp34.not, i32 0, i32 -5
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true33, %if.end25.if.end36_crit_edge
  %rc.0 = phi i32 [ %call32, %if.end25.if.end36_crit_edge ], [ %spec.select, %land.lhs.true33 ]
  %39 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %persistent_fid, align 8
  %41 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %volatile_fid, align 8
  %call39 = call i32 @SMB2_close(i32 noundef %xid, ptr noundef %tcon, i64 noundef %40, i64 noundef %42) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end36, %cifs_create_options.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %rc.0, %if.end36 ], [ %call22, %cifs_create_options.exit.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call14) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oplock) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %io_parms) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @SMB2_write(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_hardlink(ptr noundef %old_file, ptr nocapture noundef readonly %inode, ptr noundef %direntry) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
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
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !115

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tl_tcon.i, align 4
  %call9 = tail call i32 @_get_xid() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end7.do.end36_crit_edge, label %do.body13

if.end7.do.end36_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

do.body13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_hardlink.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_hardlink, %land.lhs.true)) #11
          to label %do.end36 [label %land.lhs.true], !srcloc !114

land.lhs.true:                                    ; preds = %do.body13
  %call22 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_hardlink._rs, ptr noundef nonnull @.str.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end36_crit_edge, label %if.then24

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  %call28 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_hardlink.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %call9, i32 noundef %call28) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then24, %land.lhs.true.do.end36_crit_edge, %do.body13, %if.end7.do.end36_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call9, ptr noundef nonnull @.str.5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %17 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3264) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %18 = load ptr, ptr @names_cachep, align 4
  %call.i165 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 3264) #11
  %call40 = tail call ptr @build_path_from_dentry(ptr noundef %old_file, ptr noundef %call.i) #11
  %cmp.i166 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then42, label %if.end44

if.then42:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call40 to i32
  br label %cifs_hl_exit

if.end44:                                         ; preds = %do.end36
  %call45 = tail call ptr @build_path_from_dentry(ptr noundef %direntry, ptr noundef %call.i165) #11
  %cmp.i167 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call45 to i32
  br label %cifs_hl_exit

if.end49:                                         ; preds = %if.end44
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 22
  %21 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %unix_ext, align 8
  %22 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %bf.cast.not = icmp eq i16 %22, 0
  br i1 %bf.cast.not, label %if.else53, label %if.then50

if.then50:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %local_nls, align 4
  %call51 = tail call i32 @cifs_remap(ptr noundef %3) #11
  %call52 = tail call i32 @CIFSUnixCreateHardLink(i32 noundef %call9, ptr noundef %8, ptr noundef %call40, ptr noundef %call45, ptr noundef %24, i32 noundef %call51) #11
  br label %if.end64

if.else53:                                        ; preds = %if.end49
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 7
  %25 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ses, align 8
  %server54 = getelementptr inbounds %struct.cifs_ses, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %server54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %server54, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %create_hardlink = getelementptr inbounds %struct.smb_version_operations, ptr %30, i32 0, i32 52
  %31 = ptrtoint ptr %create_hardlink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %create_hardlink, align 4
  %tobool55.not = icmp eq ptr %32, null
  br i1 %tobool55.not, label %if.else53.cifs_hl_exit_crit_edge, label %if.end57

if.else53.cifs_hl_exit_crit_edge:                 ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_hl_exit

if.end57:                                         ; preds = %if.else53
  %call60 = tail call i32 %32(i32 noundef %call9, ptr noundef %8, ptr noundef %call40, ptr noundef %call45, ptr noundef %3) #11
  %33 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call60, label %if.end57.if.end64_crit_edge [
    i32 -5, label %if.end57.if.then62_crit_edge
    i32 -22, label %if.end57.if.then62_crit_edge179
  ]

if.end57.if.then62_crit_edge179:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.end57.if.then62_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then62:                                        ; preds = %if.end57.if.then62_crit_edge, %if.end57.if.then62_crit_edge179
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end57.if.end64_crit_edge, %if.then50
  %rc.0 = phi i32 [ %call52, %if.then50 ], [ -95, %if.then62 ], [ %call60, %if.end57.if.end64_crit_edge ]
  tail call void @d_drop(ptr noundef %direntry) #11
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_file, i32 0, i32 5
  %34 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i, align 8
  %cmp.i168.not = icmp eq ptr %35, null
  br i1 %cmp.i168.not, label %if.end64.cifs_hl_exit_crit_edge, label %if.then66

if.end64.cifs_hl_exit_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_hl_exit

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp69 = icmp eq i32 %rc.0, 0
  br i1 %cmp69, label %if.then70, label %if.then66.if.end75_crit_edge

if.then66.if.end75_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then70:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  %i_lock = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #11
  %36 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i, align 8
  tail call void @inc_nlink(ptr noundef %37) #11
  %38 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i, align 8
  %i_lock74 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock74) #11
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %if.then66.if.end75_crit_edge
  %time = getelementptr i8, ptr %35, i32 -56
  %40 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %time, align 8
  br label %cifs_hl_exit

cifs_hl_exit:                                     ; preds = %if.end75, %if.end64.cifs_hl_exit_crit_edge, %if.else53.cifs_hl_exit_crit_edge, %if.then47, %if.then42
  %rc.1 = phi i32 [ %19, %if.then42 ], [ %20, %if.then47 ], [ %rc.0, %if.end75 ], [ %rc.0, %if.end64.cifs_hl_exit_crit_edge ], [ -38, %if.else53.cifs_hl_exit_crit_edge ]
  %tobool.not.i173 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i173, label %cifs_hl_exit.free_dentry_path.exit_crit_edge, label %if.then.i

cifs_hl_exit.free_dentry_path.exit_crit_edge:     ; preds = %cifs_hl_exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %cifs_hl_exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %41 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %41, ptr noundef nonnull %call.i) #11
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %cifs_hl_exit.free_dentry_path.exit_crit_edge
  %tobool.not.i174 = icmp eq ptr %call.i165, null
  br i1 %tobool.not.i174, label %free_dentry_path.exit.free_dentry_path.exit176_crit_edge, label %if.then.i175

free_dentry_path.exit.free_dentry_path.exit176_crit_edge: ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dentry_path.exit176

if.then.i175:                                     ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %42 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %42, ptr noundef nonnull %call.i165) #11
  br label %free_dentry_path.exit176

free_dentry_path.exit176:                         ; preds = %if.then.i175, %free_dentry_path.exit.free_dentry_path.exit176_crit_edge
  tail call void @_free_xid(i32 noundef %call9) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %43 = load i32, ptr @cifsFYI, align 4
  %and80 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %free_dentry_path.exit176.do.end107_crit_edge, label %do.body83

free_dentry_path.exit176.do.end107_crit_edge:     ; preds = %free_dentry_path.exit176
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end107

do.body83:                                        ; preds = %free_dentry_path.exit176
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_hardlink.descriptor.8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_hardlink, %land.lhs.true95)) #11
          to label %do.end107 [label %land.lhs.true95], !srcloc !114

land.lhs.true95:                                  ; preds = %do.body83
  %call96 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_hardlink._rs.7, ptr noundef nonnull @.str.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true95.do.end107_crit_edge, label %if.then98

land.lhs.true95.do.end107_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end107

if.then98:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_hardlink.descriptor.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %call9, i32 noundef %rc.1) #11
  br label %do.end107

do.end107:                                        ; preds = %if.then98, %land.lhs.true95.do.end107_crit_edge, %do.body83, %free_dentry_path.exit176.do.end107_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool108.not = icmp eq i32 %rc.1, 0
  br i1 %tobool108.not, label %if.else110, label %if.then109

if.then109:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call9, ptr noundef nonnull @.str.5, i32 noundef %rc.1)
  br label %do.end113

if.else110:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call9, ptr noundef nonnull @.str.5)
  br label %do.end113

do.end113:                                        ; preds = %if.else110, %if.then109
  tail call void @cifs_put_tlink(ptr noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then5 ], [ %rc.1, %do.end113 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_tlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !116

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !116

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 609, ptr noundef nonnull @.str.47) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
declare dso_local ptr @build_path_from_dentry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSUnixCreateHardLink(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_remap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !116

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !116

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_smb3_exit_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 558, ptr noundef nonnull @.str.47) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !116

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !116

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_smb3_exit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 610, ptr noundef nonnull @.str.47) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %31 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
declare dso_local void @cifs_put_tlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_get_link(ptr noundef %direntry, ptr noundef %inode, ptr nocapture noundef writeonly %done) local_unnamed_addr #1 align 64 {
entry:
  %link_len.i = alloca i32, align 4
  %bytes_read.i = alloca i32, align 4
  %target_path = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %target_path) #11
  %0 = ptrtoint ptr %target_path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %target_path, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %direntry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @_get_xid() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.do.end25_crit_edge, label %do.body6

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_link.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_link, %land.lhs.true)) #11
          to label %do.end25 [label %land.lhs.true], !srcloc !114

land.lhs.true:                                    ; preds = %do.body6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_link._rs, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end25_crit_edge, label %if.then13

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !103) #11
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
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call17 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_link.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %call2, i32 noundef %call17) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then13, %land.lhs.true.do.end25_crit_edge, %do.body6, %if.end.do.end25_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call2, ptr noundef nonnull @.str.10)
  %call27 = tail call ptr @cifs_sb_tlink(ptr noundef %4) #11
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body30, label %if.end68

do.body30:                                        ; preds = %do.end25
  tail call void @_free_xid(i32 noundef %call2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and33 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body30.if.then62_crit_edge, label %do.body36

do.body30.if.then62_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

do.body36:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_link.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_link, %land.lhs.true48)) #11
          to label %if.then62 [label %land.lhs.true48], !srcloc !114

land.lhs.true48:                                  ; preds = %do.body36
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_link._rs.11, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.if.then62_crit_edge, label %if.then51

land.lhs.true48.if.then62_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_link.descriptor.12, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %call2, i32 noundef -12) #11
  br label %if.then62

if.then62:                                        ; preds = %if.then51, %land.lhs.true48.if.then62_crit_edge, %do.body36, %do.body30.if.then62_crit_edge
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call2, ptr noundef nonnull @.str.10, i32 noundef -12)
  br label %cleanup

if.end68:                                         ; preds = %do.end25
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call27, i32 0, i32 5
  %14 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ses, align 8
  %server70 = getelementptr inbounds %struct.cifs_ses, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %server70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server70, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %20 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef 3264) #11
  %call72 = tail call ptr @build_path_from_dentry(ptr noundef nonnull %direntry, ptr noundef %call.i) #11
  %cmp.i268 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %do.body75, label %do.body115

do.body75:                                        ; preds = %if.end68
  tail call void @_free_xid(i32 noundef %call2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %21 = load i32, ptr @cifsFYI, align 4
  %and78 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body75.if.then107_crit_edge, label %do.body81

do.body75.if.then107_crit_edge:                   ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then107

do.body81:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_link.descriptor.14, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_link, %land.lhs.true93)) #11
          to label %if.then107 [label %land.lhs.true93], !srcloc !114

land.lhs.true93:                                  ; preds = %do.body81
  %call94 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_link._rs.13, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %land.lhs.true93.if.then107_crit_edge, label %if.then96

land.lhs.true93.if.then107_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then107

if.then96:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_link.descriptor.14, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %call2, i32 noundef -12) #11
  br label %if.then107

if.then107:                                       ; preds = %if.then96, %land.lhs.true93.if.then107_crit_edge, %do.body81, %do.body75.if.then107_crit_edge
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call2, ptr noundef nonnull @.str.10, i32 noundef -12)
  tail call void @cifs_put_tlink(ptr noundef %call27) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then107.cleanup_crit_edge, label %if.then.i

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %22 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %call.i) #11
  br label %cleanup

do.body115:                                       ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %23 = load i32, ptr @cifsFYI, align 4
  %and116 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body115.do.end143_crit_edge, label %do.body119

do.body115.do.end143_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end143

do.body119:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_link.descriptor.16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_link, %land.lhs.true131)) #11
          to label %do.end143 [label %land.lhs.true131], !srcloc !114

land.lhs.true131:                                 ; preds = %do.body119
  %call132 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_link._rs.15, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %land.lhs.true131.do.end143_crit_edge, label %if.then134

land.lhs.true131.do.end143_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end143

if.then134:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_link.descriptor.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef %call72, ptr noundef %inode) #11
  br label %do.end143

do.end143:                                        ; preds = %if.then134, %land.lhs.true131.do.end143_crit_edge, %do.body119, %do.body115.do.end143_crit_edge
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %4, i32 0, i32 6
  %24 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mnt_cifs_flags, align 4
  %and144 = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.end143.land.lhs.true149_crit_edge, label %if.then146

do.end143.land.lhs.true149_crit_edge:             ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true149

if.then146:                                       ; preds = %do.end143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_len.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read.i) #11
  %26 = ptrtoint ptr %bytes_read.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bytes_read.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 1067) #14
  %tobool.not.i269 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i269, label %if.end148.thread283, label %if.end.i

if.end148.thread283:                              ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_len.i) #11
  br label %land.lhs.true149

if.end.i:                                         ; preds = %if.then146
  %28 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ses, align 8
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %server.i, align 8
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %query_mf_symlink.i = getelementptr inbounds %struct.smb_version_operations, ptr %33, i32 0, i32 82
  %34 = ptrtoint ptr %query_mf_symlink.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %query_mf_symlink.i, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %if.end.i.if.end148.thread286_crit_edge, label %if.end8.i

if.end.i.if.end148.thread286_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.thread286

if.end8.i:                                        ; preds = %if.end.i
  %call7.i = call i32 %35(i32 noundef %call2, ptr noundef %15, ptr noundef %4, ptr noundef %call72, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %bytes_read.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool9.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end8.i.if.end148.thread286_crit_edge

if.end8.i.if.end148.thread286_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.thread286

if.end11.i:                                       ; preds = %if.end8.i
  %36 = ptrtoint ptr %bytes_read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytes_read.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i270 = icmp eq i32 %37, 0
  br i1 %cmp.i270, label %if.end11.i.if.end148.thread286_crit_edge, label %if.end148

if.end11.i.if.end148.thread286_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148.thread286

if.end148.thread286:                              ; preds = %if.end11.i.if.end148.thread286_crit_edge, %if.end8.i.if.end148.thread286_crit_edge, %if.end.i.if.end148.thread286_crit_edge
  %rc.1.i.ph = phi i32 [ -38, %if.end.i.if.end148.thread286_crit_edge ], [ -22, %if.end11.i.if.end148.thread286_crit_edge ], [ %call7.i, %if.end8.i.if.end148.thread286_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_len.i) #11
  br label %land.lhs.true149

if.end148:                                        ; preds = %if.end11.i
  %call14.i = call fastcc i32 @parse_mf_symlink(ptr noundef nonnull %call7.i.i, i32 noundef %37, ptr noundef nonnull %link_len.i, ptr noundef nonnull %target_path) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_len.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.not = icmp eq i32 %call14.i, 0
  br i1 %cmp.not, label %if.end148.if.end161_crit_edge, label %if.end148.land.lhs.true149_crit_edge

if.end148.land.lhs.true149_crit_edge:             ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true149

if.end148.if.end161_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

land.lhs.true149:                                 ; preds = %if.end148.land.lhs.true149_crit_edge, %if.end148.thread286, %if.end148.thread283, %do.end143.land.lhs.true149_crit_edge
  %rc.0282 = phi i32 [ %call14.i, %if.end148.land.lhs.true149_crit_edge ], [ -12, %if.end148.thread283 ], [ %rc.1.i.ph, %if.end148.thread286 ], [ -13, %do.end143.land.lhs.true149_crit_edge ]
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %19, i32 0, i32 5
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %query_symlink = getelementptr inbounds %struct.smb_version_operations, ptr %39, i32 0, i32 53
  %40 = ptrtoint ptr %query_symlink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %query_symlink, align 4
  %tobool150.not = icmp eq ptr %41, null
  br i1 %tobool150.not, label %land.lhs.true149.if.end161_crit_edge, label %if.then151

land.lhs.true149.if.end161_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

if.then151:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #13
  %cifsAttrs = getelementptr i8, ptr %inode, i32 -120
  %42 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cifsAttrs, align 8
  %and153 = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp ne i32 %and153, 0
  %call160 = call i32 %41(i32 noundef %call2, ptr noundef %15, ptr noundef %4, ptr noundef %call72, ptr noundef nonnull %target_path, i1 noundef zeroext %tobool154.not) #11
  br label %if.end161

if.end161:                                        ; preds = %if.then151, %land.lhs.true149.if.end161_crit_edge, %if.end148.if.end161_crit_edge
  %rc.1 = phi i32 [ %call160, %if.then151 ], [ %rc.0282, %land.lhs.true149.if.end161_crit_edge ], [ 0, %if.end148.if.end161_crit_edge ]
  %tobool.not.i272 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i272, label %if.end161.free_dentry_path.exit275_crit_edge, label %if.then.i273

if.end161.free_dentry_path.exit275_crit_edge:     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dentry_path.exit275

if.then.i273:                                     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %44 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %call.i) #11
  br label %free_dentry_path.exit275

free_dentry_path.exit275:                         ; preds = %if.then.i273, %if.end161.free_dentry_path.exit275_crit_edge
  call void @_free_xid(i32 noundef %call2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %45 = load i32, ptr @cifsFYI, align 4
  %and165 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %free_dentry_path.exit275.do.end192_crit_edge, label %do.body168

free_dentry_path.exit275.do.end192_crit_edge:     ; preds = %free_dentry_path.exit275
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end192

do.body168:                                       ; preds = %free_dentry_path.exit275
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_link.descriptor.19, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_link, %land.lhs.true180)) #11
          to label %do.end192 [label %land.lhs.true180], !srcloc !114

land.lhs.true180:                                 ; preds = %do.body168
  %call181 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_link._rs.18, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %land.lhs.true180.do.end192_crit_edge, label %if.then183

land.lhs.true180.do.end192_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end192

if.then183:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_link.descriptor.19, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %call2, i32 noundef %rc.1) #11
  br label %do.end192

do.end192:                                        ; preds = %if.then183, %land.lhs.true180.do.end192_crit_edge, %do.body168, %free_dentry_path.exit275.do.end192_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool193.not = icmp eq i32 %rc.1, 0
  br i1 %tobool193.not, label %if.else195, label %if.then194

if.then194:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_smb3_exit_err(i32 noundef %call2, ptr noundef nonnull @.str.10, i32 noundef %rc.1)
  call void @cifs_put_tlink(ptr noundef %call27) #11
  %46 = ptrtoint ptr %target_path to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %target_path, align 4
  call void @kfree(ptr noundef %47) #11
  %48 = inttoptr i32 %rc.1 to ptr
  br label %cleanup

if.else195:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_smb3_exit_done(i32 noundef %call2, ptr noundef nonnull @.str.10)
  call void @cifs_put_tlink(ptr noundef %call27) #11
  %49 = ptrtoint ptr %target_path to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %target_path, align 4
  %51 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %52 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else195, %if.then194, %if.then.i, %if.then107.cleanup_crit_edge, %if.then62, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call27, %if.then62 ], [ %48, %if.then194 ], [ %50, %if.else195 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ %call72, %if.then107.cleanup_crit_edge ], [ %call72, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target_path) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %inode, ptr noundef %direntry, ptr noundef %symname) local_unnamed_addr #1 align 64 {
entry:
  %bytes_written.i = alloca i32, align 4
  %newinode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newinode) #11
  %4 = ptrtoint ptr %newinode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %newinode, align 4
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp slt i32 %6, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !115

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %7 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3264) #11
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @_get_xid() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %8 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end6.do.end34_crit_edge, label %do.body11

if.end6.do.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.body11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_symlink.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_symlink, %land.lhs.true)) #11
          to label %do.end34 [label %land.lhs.true], !srcloc !114

land.lhs.true:                                    ; preds = %do.body11
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_symlink._rs, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end34_crit_edge, label %if.then22

land.lhs.true.do.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call26 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_symlink.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, i32 noundef %call7, i32 noundef %call26) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then22, %land.lhs.true.do.end34_crit_edge, %do.body11, %if.end6.do.end34_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call7, ptr noundef nonnull @.str.20)
  %call36 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #11
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call36 to i32
  br label %free_dentry_path.exit

if.end40:                                         ; preds = %do.end34
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call36, i32 0, i32 5
  %17 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tl_tcon.i, align 4
  %call42 = tail call ptr @build_path_from_dentry(ptr noundef %direntry, ptr noundef nonnull %call.i) #11
  %cmp.i270 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %if.then44, label %do.body48

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call42 to i32
  br label %free_dentry_path.exit

do.body48:                                        ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %20 = load i32, ptr @cifsFYI, align 4
  %and49 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.do.body78_crit_edge, label %do.body52

do.body48.do.body78_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body78

do.body52:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_symlink.descriptor.22, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_symlink, %land.lhs.true64)) #11
          to label %do.body78 [label %land.lhs.true64], !srcloc !114

land.lhs.true64:                                  ; preds = %do.body52
  %call65 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_symlink._rs.21, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.do.body78_crit_edge, label %if.then67

land.lhs.true64.do.body78_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body78

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_symlink.descriptor.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, ptr noundef %call42) #11
  br label %do.body78

do.body78:                                        ; preds = %if.then67, %land.lhs.true64.do.body78_crit_edge, %do.body52, %do.body48.do.body78_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %21 = load i32, ptr @cifsFYI, align 4
  %and79 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.do.end106_crit_edge, label %do.body82

do.body78.do.end106_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end106

do.body82:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_symlink.descriptor.25, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_symlink, %land.lhs.true94)) #11
          to label %do.end106 [label %land.lhs.true94], !srcloc !114

land.lhs.true94:                                  ; preds = %do.body82
  %call95 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_symlink._rs.24, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true94.do.end106_crit_edge, label %if.then97

land.lhs.true94.do.end106_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end106

if.then97:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_symlink.descriptor.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, ptr noundef %symname) #11
  br label %do.end106

do.end106:                                        ; preds = %if.then97, %land.lhs.true94.do.end106_crit_edge, %do.body82, %do.body78.do.end106_crit_edge
  %22 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and107 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.else111, label %if.then109

if.then109:                                       ; preds = %do.end106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_written.i) #11
  %24 = ptrtoint ptr %bytes_written.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bytes_written.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 1067) #14
  %tobool.not.i271 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i271, label %if.then109.create_mf_symlink.exit_crit_edge, label %if.end.i

if.then109.create_mf_symlink.exit_crit_edge:      ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_mf_symlink.exit

if.end.i:                                         ; preds = %if.then109
  %call1.i = tail call fastcc i32 @format_mf_symlink(ptr noundef nonnull %call7.i.i, ptr noundef %symname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end4.i:                                        ; preds = %if.end.i
  %ses.i = getelementptr inbounds %struct.cifs_tcon, ptr %18, i32 0, i32 7
  %26 = ptrtoint ptr %ses.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ses.i, align 8
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %server.i, align 8
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %create_mf_symlink.i = getelementptr inbounds %struct.smb_version_operations, ptr %31, i32 0, i32 83
  %32 = ptrtoint ptr %create_mf_symlink.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %create_mf_symlink.i, align 4
  %tobool5.not.i = icmp eq ptr %33, null
  br i1 %tobool5.not.i, label %if.end4.i.out.i_crit_edge, label %if.end12.i

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end12.i:                                       ; preds = %if.end4.i
  %call11.i = call i32 %33(i32 noundef %call7, ptr noundef %18, ptr noundef %3, ptr noundef %call42, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %bytes_written.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end12.i.out.i_crit_edge

if.end12.i.out.i_crit_edge:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end15.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %bytes_written.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytes_written.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1067, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 1067
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 -5
  br label %out.i

out.i:                                            ; preds = %if.end15.i, %if.end12.i.out.i_crit_edge, %if.end4.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %rc.1.i = phi i32 [ %call1.i, %if.end.i.out.i_crit_edge ], [ %call11.i, %if.end12.i.out.i_crit_edge ], [ %spec.select.i, %if.end15.i ], [ -95, %if.end4.i.out.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %create_mf_symlink.exit

create_mf_symlink.exit:                           ; preds = %out.i, %if.then109.create_mf_symlink.exit_crit_edge
  %retval.0.i272 = phi i32 [ %rc.1.i, %out.i ], [ -12, %if.then109.create_mf_symlink.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_written.i) #11
  br label %if.end116

if.else111:                                       ; preds = %do.end106
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %18, i32 0, i32 22
  %36 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %unix_ext, align 8
  %37 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %bf.cast.not = icmp eq i16 %37, 0
  br i1 %bf.cast.not, label %if.else111.free_dentry_path.exit_crit_edge, label %if.then112

if.else111.free_dentry_path.exit_crit_edge:       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dentry_path.exit

if.then112:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #13
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %local_nls, align 4
  %call113 = tail call i32 @cifs_remap(ptr noundef %3) #11
  %call114 = tail call i32 @CIFSUnixCreateSymLink(i32 noundef %call7, ptr noundef %18, ptr noundef %call42, ptr noundef %symname, ptr noundef %39, i32 noundef %call113) #11
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %create_mf_symlink.exit
  %rc.0 = phi i32 [ %retval.0.i272, %create_mf_symlink.exit ], [ %call114, %if.then112 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp = icmp eq i32 %rc.0, 0
  br i1 %cmp, label %if.then117, label %if.end116.free_dentry_path.exit_crit_edge

if.end116.free_dentry_path.exit_crit_edge:        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dentry_path.exit

if.then117:                                       ; preds = %if.end116
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %18, i32 0, i32 23
  %40 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %posix_extensions, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool118.not = icmp eq i8 %41, 0
  br i1 %tobool118.not, label %if.else122, label %if.then119

if.then119:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  %call121 = call i32 @smb311_posix_get_inode_info(ptr noundef nonnull %newinode, ptr noundef %call42, ptr noundef %43, i32 noundef %call7) #11
  br label %if.end135

if.else122:                                       ; preds = %if.then117
  %unix_ext123 = getelementptr inbounds %struct.cifs_tcon, ptr %18, i32 0, i32 22
  %44 = ptrtoint ptr %unix_ext123 to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load124 = load i16, ptr %unix_ext123, align 8
  %45 = and i16 %bf.load124, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %bf.cast127.not = icmp eq i16 %45, 0
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  br i1 %bf.cast127.not, label %if.else131, label %if.then128

if.then128:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #13
  %call130 = call i32 @cifs_get_inode_info_unix(ptr noundef nonnull %newinode, ptr noundef %call42, ptr noundef %47, i32 noundef %call7) #11
  br label %if.end135

if.else131:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #13
  %call133 = call i32 @cifs_get_inode_info(ptr noundef nonnull %newinode, ptr noundef %call42, ptr noundef null, ptr noundef %47, i32 noundef %call7, ptr noundef null) #11
  br label %if.end135

if.end135:                                        ; preds = %if.else131, %if.then128, %if.then119
  %rc.1 = phi i32 [ %call121, %if.then119 ], [ %call130, %if.then128 ], [ %call133, %if.else131 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp136.not = icmp eq i32 %rc.1, 0
  br i1 %cmp136.not, label %if.else168, label %do.body139

do.body139:                                       ; preds = %if.end135
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %48 = load i32, ptr @cifsFYI, align 4
  %and140 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.free_dentry_path.exit_crit_edge, label %do.body143

do.body139.free_dentry_path.exit_crit_edge:       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dentry_path.exit

do.body143:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_symlink.descriptor.28, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_symlink, %land.lhs.true155)) #11
          to label %free_dentry_path.exit [label %land.lhs.true155], !srcloc !114

land.lhs.true155:                                 ; preds = %do.body143
  %call156 = call i32 @___ratelimit(ptr noundef nonnull @cifs_symlink._rs.27, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %land.lhs.true155.free_dentry_path.exit_crit_edge, label %if.then158

land.lhs.true155.free_dentry_path.exit_crit_edge: ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dentry_path.exit

if.then158:                                       ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_symlink.descriptor.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, i32 noundef %rc.1) #11
  br label %free_dentry_path.exit

if.else168:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %newinode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %newinode, align 4
  call void @d_instantiate(ptr noundef %direntry, ptr noundef %50) #11
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.else168, %if.then158, %land.lhs.true155.free_dentry_path.exit_crit_edge, %do.body143, %do.body139.free_dentry_path.exit_crit_edge, %if.end116.free_dentry_path.exit_crit_edge, %if.else111.free_dentry_path.exit_crit_edge, %if.then44, %if.then38
  %rc.2 = phi i32 [ %16, %if.then38 ], [ %19, %if.then44 ], [ %rc.1, %if.then158 ], [ %rc.1, %land.lhs.true155.free_dentry_path.exit_crit_edge ], [ %rc.1, %do.body139.free_dentry_path.exit_crit_edge ], [ 0, %if.else168 ], [ %rc.0, %if.end116.free_dentry_path.exit_crit_edge ], [ %rc.1, %do.body143 ], [ -95, %if.else111.free_dentry_path.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %51 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %51, ptr noundef nonnull %call.i) #11
  call void @cifs_put_tlink(ptr noundef %call36) #11
  call void @_free_xid(i32 noundef %call7) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %52 = load i32, ptr @cifsFYI, align 4
  %and174 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %free_dentry_path.exit.do.end201_crit_edge, label %do.body177

free_dentry_path.exit.do.end201_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end201

do.body177:                                       ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_symlink.descriptor.31, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_symlink, %land.lhs.true189)) #11
          to label %do.end201 [label %land.lhs.true189], !srcloc !114

land.lhs.true189:                                 ; preds = %do.body177
  %call190 = call i32 @___ratelimit(ptr noundef nonnull @cifs_symlink._rs.30, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %land.lhs.true189.do.end201_crit_edge, label %if.then192

land.lhs.true189.do.end201_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end201

if.then192:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_symlink.descriptor.31, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, i32 noundef %call7, i32 noundef %rc.2) #11
  br label %do.end201

do.end201:                                        ; preds = %if.then192, %land.lhs.true189.do.end201_crit_edge, %do.body177, %free_dentry_path.exit.do.end201_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %tobool202.not = icmp eq i32 %rc.2, 0
  br i1 %tobool202.not, label %if.else204, label %if.then203

if.then203:                                       ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_smb3_exit_err(i32 noundef %call7, ptr noundef nonnull @.str.20, i32 noundef %rc.2)
  br label %cleanup

if.else204:                                       ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_smb3_exit_done(i32 noundef %call7, ptr noundef nonnull @.str.20)
  br label %cleanup

cleanup:                                          ; preds = %if.else204, %if.then203, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.else204 ], [ %rc.2, %if.then203 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newinode) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSUnixCreateSymLink(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb311_posix_get_inode_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_get_inode_info_unix(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_get_inode_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @symlink_hash(i32 noundef %link_len, ptr noundef %link_str, ptr noundef %md5_hash) unnamed_addr #1 align 64 {
entry:
  %md5 = alloca ptr, align 4
  %sdescmd5 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %md5) #11
  %0 = ptrtoint ptr %md5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %md5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdescmd5) #11
  %1 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sdescmd5, align 4
  %call = call i32 @cifs_alloc_hash(ptr noundef nonnull @.str.36, ptr noundef nonnull %md5, ptr noundef nonnull %sdescmd5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.symlink_hash_err_crit_edge

entry.symlink_hash_err_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %symlink_hash_err

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdescmd5, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end.do.body4_crit_edge

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

crypto_shash_init.exit:                           ; preds = %if.end
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -256
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %11(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool2.not = icmp eq i32 %call3.i, 0
  br i1 %tobool2.not, label %if.end15, label %crypto_shash_init.exit.do.body4_crit_edge

crypto_shash_init.exit.do.body4_crit_edge:        ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

do.body4:                                         ; preds = %crypto_shash_init.exit.do.body4_crit_edge, %if.end.do.body4_crit_edge
  %retval.0.i62 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.body4_crit_edge ], [ -126, %if.end.do.body4_crit_edge ]
  %call5 = call i32 @___ratelimit(ptr noundef nonnull @symlink_hash._rs, ptr noundef nonnull @__func__.symlink_hash) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body4.symlink_hash_err_crit_edge, label %do.body4.symlink_hash_err.sink.split_crit_edge

do.body4.symlink_hash_err.sink.split_crit_edge:   ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %symlink_hash_err.sink.split

do.body4.symlink_hash_err_crit_edge:              ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %symlink_hash_err

if.end15:                                         ; preds = %crypto_shash_init.exit
  %12 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdescmd5, align 4
  %call17 = call i32 @crypto_shash_update(ptr noundef %13, ptr noundef %link_str, i32 noundef %link_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end35, label %do.body21

do.body21:                                        ; preds = %if.end15
  %call22 = call i32 @___ratelimit(ptr noundef nonnull @symlink_hash._rs.38, ptr noundef nonnull @__func__.symlink_hash) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body21.symlink_hash_err_crit_edge, label %do.body21.symlink_hash_err.sink.split_crit_edge

do.body21.symlink_hash_err.sink.split_crit_edge:  ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %symlink_hash_err.sink.split

do.body21.symlink_hash_err_crit_edge:             ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %symlink_hash_err

if.end35:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %sdescmd5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdescmd5, align 4
  %call37 = call i32 @crypto_shash_final(ptr noundef %15, ptr noundef %md5_hash) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end35.symlink_hash_err_crit_edge, label %do.body41

if.end35.symlink_hash_err_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %symlink_hash_err

do.body41:                                        ; preds = %if.end35
  %call42 = call i32 @___ratelimit(ptr noundef nonnull @symlink_hash._rs.42, ptr noundef nonnull @__func__.symlink_hash) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.symlink_hash_err_crit_edge, label %do.body41.symlink_hash_err.sink.split_crit_edge

do.body41.symlink_hash_err.sink.split_crit_edge:  ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %symlink_hash_err.sink.split

do.body41.symlink_hash_err_crit_edge:             ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %symlink_hash_err

symlink_hash_err.sink.split:                      ; preds = %do.body41.symlink_hash_err.sink.split_crit_edge, %do.body21.symlink_hash_err.sink.split_crit_edge, %do.body4.symlink_hash_err.sink.split_crit_edge
  %.str.44.sink = phi ptr [ @.str.37, %do.body4.symlink_hash_err.sink.split_crit_edge ], [ @.str.40, %do.body21.symlink_hash_err.sink.split_crit_edge ], [ @.str.44, %do.body41.symlink_hash_err.sink.split_crit_edge ]
  %rc.0.ph = phi i32 [ %retval.0.i62, %do.body4.symlink_hash_err.sink.split_crit_edge ], [ %call17, %do.body21.symlink_hash_err.sink.split_crit_edge ], [ %call37, %do.body41.symlink_hash_err.sink.split_crit_edge ]
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.44.sink, ptr noundef nonnull @__func__.symlink_hash) #16
  br label %symlink_hash_err

symlink_hash_err:                                 ; preds = %symlink_hash_err.sink.split, %do.body41.symlink_hash_err_crit_edge, %if.end35.symlink_hash_err_crit_edge, %do.body21.symlink_hash_err_crit_edge, %do.body4.symlink_hash_err_crit_edge, %entry.symlink_hash_err_crit_edge
  %rc.0 = phi i32 [ %call, %entry.symlink_hash_err_crit_edge ], [ %retval.0.i62, %do.body4.symlink_hash_err_crit_edge ], [ %call17, %do.body21.symlink_hash_err_crit_edge ], [ %call37, %do.body41.symlink_hash_err_crit_edge ], [ 0, %if.end35.symlink_hash_err_crit_edge ], [ %rc.0.ph, %symlink_hash_err.sink.split ]
  call void @cifs_free_hash(ptr noundef nonnull %md5, ptr noundef nonnull %sdescmd5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdescmd5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %md5) #11
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_alloc_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_free_hash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @backup_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

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

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_err(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_done(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @format_mf_symlink(ptr noundef %buf, ptr noundef %link_str) unnamed_addr #1 align 64 {
entry:
  %md5_hash = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %md5_hash) #11
  %0 = call ptr @memset(ptr %md5_hash, i32 255, i32 16)
  %call = tail call i32 @strlen(ptr noundef %link_str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call)
  %cmp1 = icmp ugt i32 %call, 1024
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call4 = call fastcc i32 @symlink_hash(i32 noundef %call, ptr noundef %link_str, ptr noundef nonnull %md5_hash)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end23, label %do.body6

do.body6:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body6.cleanup_crit_edge, label %do.body9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @format_mf_symlink.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@format_mf_symlink, %land.lhs.true)) #11
          to label %cleanup [label %land.lhs.true], !srcloc !114

land.lhs.true:                                    ; preds = %do.body9
  %call14 = call i32 @___ratelimit(ptr noundef nonnull @format_mf_symlink._rs, ptr noundef nonnull @.str.49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.then16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @format_mf_symlink.descriptor, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49, i32 noundef %call4) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end3
  %call25 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 1067, ptr noundef nonnull @.str.50, i32 noundef %call, ptr noundef nonnull %md5_hash) #11
  %add.ptr = getelementptr i8, ptr %buf, i32 43
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %link_str, i32 %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call)
  %cmp26 = icmp ult i32 %call, 1024
  br i1 %cmp26, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %add = add nuw nsw i32 %call, 43
  %arrayidx = getelementptr i8, ptr %buf, i32 %add
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %call)
  %cmp292.not = icmp eq i32 %call, 1023
  br i1 %cmp292.not, label %if.end28.cleanup_crit_edge, label %while.body.preheader

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw nsw i32 %call, 44
  %uglygep = getelementptr i8, ptr %buf, i32 %inc
  %4 = sub i32 1023, %call
  %5 = call ptr @memset(ptr %uglygep, i32 32, i32 %4)
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then16, %land.lhs.true.cleanup_crit_edge, %do.body9, %do.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -36, %entry.cleanup_crit_edge ], [ %call4, %do.body6.cleanup_crit_edge ], [ %call4, %land.lhs.true.cleanup_crit_edge ], [ %call4, %if.then16 ], [ %call4, %do.body9 ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %while.body.preheader ], [ 0, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %md5_hash) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/link.c", i32 446, i32 2}
!2 = !{ptr @smb3_create_mf_symlink._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @smb3_create_mf_symlink.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @cifs_hardlink._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/link.c", i32 517, i32 8}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cifs_hardlink.descriptor, !9, !"descriptor", i1 false, i1 false}
!13 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!14 = !{ptr @cifs_hardlink._rs.7, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../fs/cifs/link.c", i32 589, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cifs_hardlink.descriptor.8, !15, !"descriptor", i1 false, i1 false}
!18 = !{ptr @cifs_get_link._rs, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../fs/cifs/link.c", i32 611, i32 8}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cifs_get_link.descriptor, !19, !"descriptor", i1 false, i1 false}
!22 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!23 = !{ptr @cifs_get_link._rs.11, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../fs/cifs/link.c", i32 615, i32 3}
!25 = !{ptr @cifs_get_link.descriptor.12, !24, !"descriptor", i1 false, i1 false}
!26 = !{ptr @cifs_get_link._rs.13, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../fs/cifs/link.c", i32 624, i32 3}
!28 = !{ptr @cifs_get_link.descriptor.14, !27, !"descriptor", i1 false, i1 false}
!29 = !{ptr @cifs_get_link._rs.15, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../fs/cifs/link.c", i32 630, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cifs_get_link.descriptor.16, !30, !"descriptor", i1 false, i1 false}
!33 = !{ptr @cifs_get_link._rs.18, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../fs/cifs/link.c", i32 653, i32 2}
!35 = !{ptr @cifs_get_link.descriptor.19, !34, !"descriptor", i1 false, i1 false}
!36 = !{ptr @cifs_symlink._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../fs/cifs/link.c", i32 683, i32 8}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cifs_symlink.descriptor, !37, !"descriptor", i1 false, i1 false}
!40 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!41 = !{ptr @cifs_symlink._rs.21, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../fs/cifs/link.c", i32 698, i32 2}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cifs_symlink.descriptor.22, !42, !"descriptor", i1 false, i1 false}
!45 = !{ptr @cifs_symlink._rs.24, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../fs/cifs/link.c", i32 699, i32 2}
!47 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cifs_symlink.descriptor.25, !46, !"descriptor", i1 false, i1 false}
!49 = !{ptr @cifs_symlink._rs.27, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../fs/cifs/link.c", i32 723, i32 4}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cifs_symlink.descriptor.28, !50, !"descriptor", i1 false, i1 false}
!53 = !{ptr @cifs_symlink._rs.30, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../fs/cifs/link.c", i32 732, i32 2}
!55 = !{ptr @cifs_symlink.descriptor.31, !54, !"descriptor", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/cifs/link.c", i32 84, i32 19}
!58 = !{ptr @parse_mf_symlink._rs, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../fs/cifs/link.c", i32 90, i32 3}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @parse_mf_symlink.descriptor, !59, !"descriptor", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/cifs/link.c", i32 95, i32 5}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/cifs/link.c", i32 44, i32 23}
!67 = !{ptr @symlink_hash._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/cifs/link.c", i32 50, i32 3}
!69 = !{ptr @__func__.symlink_hash, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @symlink_hash._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @symlink_hash._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @symlink_hash._rs.38, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../fs/cifs/link.c", i32 55, i32 3}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @symlink_hash._entry.39, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @symlink_hash._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @symlink_hash._rs.42, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../fs/cifs/link.c", i32 60, i32 3}
!80 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @symlink_hash._entry.43, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @symlink_hash._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!85 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!87 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = !{ptr @format_mf_symlink._rs, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../fs/cifs/link.c", i32 129, i32 3}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @format_mf_symlink.descriptor, !98, !"descriptor", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/cifs/link.c", i32 134, i32 5}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 2148492473, i64 2148492478, i64 2148492491, i64 2148492535, i64 2148492569, i64 2148492590}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2158585018}
!118 = !{i64 2158585229}
!119 = !{i64 2149488880}
!120 = !{i64 2149489916}
!121 = !{i64 2158532015}
!122 = !{i64 2158532240}
!123 = !{i64 2158601410}
!124 = !{i64 2158601629}
!125 = !{i8 0, i8 2}
