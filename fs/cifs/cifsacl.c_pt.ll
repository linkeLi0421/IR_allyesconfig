; ModuleID = '/llk/IR_all_yes/fs/cifs/cifsacl.c_pt.bc'
source_filename = "../fs/cifs/cifsacl.c"
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
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.80 }
%union.anon.80 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cifs_sid = type { i8, i8, [6 x i8], [15 x i32] }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.__kernel_sockaddr_storage = type { %union.anon.146 }
%union.anon.146 = type { ptr, [124 x i8] }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.150, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.key = type { %struct.refcount_struct, i32, %union.anon.12, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.13, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.14, %union.anon.19, ptr }
%union.anon.12 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.13 = type { i64 }
%union.anon.14 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.15, ptr, ptr, ptr }
%union.anon.15 = type { i32 }
%union.anon.19 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.cifs_fattr = type { i32, i32, i64, i64, i64, i64, %struct.kuid_t, %struct.kgid_t, i16, i32, i32, i32, %struct.timespec64, %struct.timespec64, %struct.timespec64, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.52 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.52 = type { %struct.callback_head }
%struct.cifs_ace = type { i8, i8, i16, i32, %struct.cifs_sid }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.70, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.45 }
%struct.llist_node = type { ptr }
%union.anon.45 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.70 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cifs_open_parms = type { ptr, ptr, i32, i32, i32, ptr, ptr, i16, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.142, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.143, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.144, ptr, %struct.address_space, %struct.list_head, %union.anon.145, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.142 = type { i32 }
%union.anon.143 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.144 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.145 = type { ptr }
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
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cifs_ntsd = type { i16, i16, i32, i32, i32, i32 }
%struct.cifs_acl = type { i16, i16, i32 }
%struct.owner_sid = type { i8, i8, [6 x i8], [3 x i32] }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }

@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@sid_to_id._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@sid_to_id.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sid_to_id\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/cifs/cifsacl.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: %s: %u subauthorities is too many!\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@root_cred = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cifs_idmap_key_type = internal global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.65, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @cifs_idmap_key_instantiate, ptr null, ptr null, ptr null, ptr null, ptr @cifs_idmap_key_destroy, ptr @user_describe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@sid_to_id._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sid_to_id.descriptor.7 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: %s: Can't map SID %s to a %cid\0A\00", [54 x i8] zeroinitializer }, align 32
@sid_to_id._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sid_to_id.descriptor.10 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"CIFS: %s: %s: Downcall contained malformed key (datalen=%hu)\0A\00", [34 x i8] zeroinitializer }, align 32
@init_cifs_idmap._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_cifs_idmap.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_cifs_idmap\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: Registering the %s key type\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c".cifs_idmap\00", [20 x i8] zeroinitializer }, align 32
@init_cifs_idmap._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_cifs_idmap.descriptor.16 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.17, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIFS: %s: cifs idmap keyring: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@exit_cifs_idmap._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@exit_cifs_idmap.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exit_cifs_idmap\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: Unregistered %s key type\0A\00", [60 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_fid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_fid.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_cifs_acl_by_fid\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_fid._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_fid.descriptor.23 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.24, i8 1, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_fid._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_fid.descriptor.26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.27, i8 1, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIFS: %s: %s: rc = %d ACL len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@set_cifs_acl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_cifs_acl.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.21, i8 1, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_cifs_acl\00", [19 x i8] zeroinitializer }, align 32
@set_cifs_acl._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_cifs_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: Unable to open file to set ACL\0A\00", [51 x i8] zeroinitializer }, align 32
@set_cifs_acl._entry_ptr = internal global ptr @set_cifs_acl._entry, section ".printk_index", align 4
@set_cifs_acl._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_cifs_acl.descriptor.32 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.33, i8 1, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CIFS: SetCIFSACL rc = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@set_cifs_acl._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@set_cifs_acl.descriptor.35 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.24, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_acl_to_fattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_acl_to_fattr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 1, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cifs_acl_to_fattr\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: converting ACL to mode for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@cifs_acl_to_fattr._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_acl_to_fattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 1547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s: error %d getting sec desc\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_acl_to_fattr._entry_ptr = internal global ptr @cifs_acl_to_fattr._entry, section ".printk_index", align 4
@cifs_acl_to_fattr._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_acl_to_fattr._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.3, i32 1556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: parse sec desc failed rc = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_acl_to_fattr._entry_ptr.43 = internal global ptr @cifs_acl_to_fattr._entry.41, section ".printk_index", align 4
@id_mode_to_cifs_acl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@id_mode_to_cifs_acl.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 1, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"id_mode_to_cifs_acl\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: set ACL from mode for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@id_mode_to_cifs_acl._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@id_mode_to_cifs_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.44, ptr @.str.3, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@id_mode_to_cifs_acl._entry_ptr = internal global ptr @id_mode_to_cifs_acl._entry, section ".printk_index", align 4
@id_mode_to_cifs_acl._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@id_mode_to_cifs_acl.descriptor.48 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.49, i8 1, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIFS: build_sec_desc rc: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@id_mode_to_cifs_acl._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@id_mode_to_cifs_acl.descriptor.51 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.52, i8 1, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: set_cifs_acl rc: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@is_well_known_sid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_well_known_sid.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"is_well_known_sid\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CIFS: %s: auth %d did not match\0A\00", [63 x i8] zeroinitializer }, align 32
@is_well_known_sid._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_well_known_sid.descriptor.56 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.57, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CIFS: %s: Unix UID %d returned from SID\0A\00", [55 x i8] zeroinitializer }, align 32
@sid_unix_groups = internal constant { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> } { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\16", <{ i32, [14 x i32] }> <{ i32 33554432, [14 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@sid_unix_users = internal constant { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> } { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\16", <{ i32, [14 x i32] }> <{ i32 16777216, [14 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@sid_unix_NFS_groups = internal constant { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> } { i8 1, i8 2, [6 x i8] c"\00\00\00\00\00\05", <{ i32, i32, [13 x i32] }> <{ i32 1476395008, i32 33554432, [13 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%cs:S-%hhu\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-%llu\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"-0x%llx\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-%u\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cifs.idmap\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@sid_authusers = internal constant { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, [14 x i32] }> } { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\05", <{ i32, [14 x i32] }> <{ i32 184549376, [14 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@sid_unix_NFS_mode = internal constant { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> } { i8 1, i8 2, [6 x i8] c"\00\00\00\00\00\05", <{ i32, i32, [13 x i32] }> <{ i32 1476395008, i32 50331648, [13 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@sid_unix_NFS_users = internal constant { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> }, [60 x i8] } { { i8, i8, [6 x i8], <{ i32, i32, [13 x i32] }> } { i8 1, i8 2, [6 x i8] c"\00\00\00\00\00\05", <{ i32, i32, [13 x i32] }> <{ i32 1476395008, i32 16777216, [13 x i32] zeroinitializer }> }, [60 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_cifs_acl_by_path._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_path.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.3, ptr @.str.21, i8 1, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_cifs_acl_by_path\00", [43 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_path._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_path.descriptor.75 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.3, ptr @.str.24, i8 1, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@get_cifs_acl_by_path._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_cifs_acl_by_path.descriptor.77 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.3, ptr @.str.27, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@parse_sec_desc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sec_desc.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parse_sec_desc\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"CIFS: revision %d type 0x%x ooffset 0x%x goffset 0x%x sacloffset 0x%x dacloffset 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@parse_sec_desc._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sec_desc.descriptor.81 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.82, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: %s: Error %d parsing Owner SID\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_sec_desc._rs.83 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sec_desc.descriptor.84 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.85, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: %s: Error %d mapping Owner SID to uid\0A\00", [47 x i8] zeroinitializer }, align 32
@parse_sec_desc._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sec_desc.descriptor.87 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.88, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: %s: Error %d mapping Owner SID to gid\0A\00", [47 x i8] zeroinitializer }, align 32
@parse_sec_desc._rs.89 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sec_desc.descriptor.90 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.91, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: %s: Error %d mapping Group SID to gid\0A\00", [47 x i8] zeroinitializer }, align 32
@parse_sec_desc._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sec_desc.descriptor.93 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.94, i8 1, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CIFS: %s: no ACL\0A\00", [46 x i8] zeroinitializer }, align 32
@parse_sid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.parse_sid = private unnamed_addr constant [10 x i8] c"parse_sid\00", align 1
@parse_sid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @__func__.parse_sid, ptr @.str.3, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: ACL too small to parse SID %p\0A\00", [52 x i8] zeroinitializer }, align 32
@parse_sid._entry_ptr = internal global ptr @parse_sid._entry, section ".printk_index", align 4
@parse_sid._rs.96 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sid.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.parse_sid, ptr @.str.3, ptr @.str.97, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: SID revision %d num_auth %d\0A\00", [57 x i8] zeroinitializer }, align 32
@parse_sid._rs.98 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sid.descriptor.99 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.parse_sid, ptr @.str.3, ptr @.str.100, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIFS: %s: SID sub_auth[%d]: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@parse_sid._rs.101 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_sid.descriptor.102 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.parse_sid, ptr @.str.3, ptr @.str.103, i8 1, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CIFS: %s: RID 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@parse_dacl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.parse_dacl = private unnamed_addr constant [11 x i8] c"parse_dacl\00", align 1
@parse_dacl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.parse_dacl, ptr @.str.3, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: ACL too small to parse DACL\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_dacl._entry_ptr = internal global ptr @parse_dacl._entry, section ".printk_index", align 4
@parse_dacl._rs.105 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_dacl.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.parse_dacl, ptr @.str.3, ptr @.str.106, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: DACL revision %d size %d num aces %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sid_everyone = internal constant { %struct.cifs_sid, [60 x i8] } { %struct.cifs_sid { i8 1, i8 1, [6 x i8] c"\00\00\00\00\00\01", [15 x i32] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@dump_ace._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dump_ace = private unnamed_addr constant [9 x i8] c"dump_ace\00", align 1
@dump_ace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @__func__.dump_ace, ptr @.str.3, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013CIFS: VFS: ACE too small %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dump_ace._entry_ptr = internal global ptr @dump_ace._entry, section ".printk_index", align 4
@dump_ace._rs.108 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_ace._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @__func__.dump_ace, ptr @.str.3, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CIFS: VFS: ACL too small to parse ACE\0A\00", [55 x i8] zeroinitializer }, align 32
@dump_ace._entry_ptr.111 = internal global ptr @dump_ace._entry.109, section ".printk_index", align 4
@dump_ace._rs.112 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_ace.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.dump_ace, ptr @.str.3, ptr @.str.113, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"CIFS: %s: ACE revision %d num_auth %d type %d flags %d size %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dump_ace._rs.114 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_ace.descriptor.115 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.dump_ace, ptr @.str.3, ptr @.str.116, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIFS: %s: ACE sub_auth[%d]: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@access_flags_to_mode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.access_flags_to_mode = private unnamed_addr constant [21 x i8] c"access_flags_to_mode\00", align 1
@access_flags_to_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @__func__.access_flags_to_mode, ptr @.str.3, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: unknown access control type %d\0A\00", [51 x i8] zeroinitializer }, align 32
@access_flags_to_mode._entry_ptr = internal global ptr @access_flags_to_mode._entry, section ".printk_index", align 4
@access_flags_to_mode._rs.118 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@access_flags_to_mode.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.access_flags_to_mode, ptr @.str.3, ptr @.str.119, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CIFS: all perms\0A\00", [47 x i8] zeroinitializer }, align 32
@access_flags_to_mode._rs.120 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@access_flags_to_mode.descriptor.121 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.access_flags_to_mode, ptr @.str.3, ptr @.str.122, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: access flags 0x%x mode now %04o\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@build_sec_desc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.build_sec_desc = private unnamed_addr constant [15 x i8] c"build_sec_desc\00", align 1
@build_sec_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @__func__.build_sec_desc, ptr @.str.3, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: Server returned illegal ACL size\0A\00", [49 x i8] zeroinitializer }, align 32
@build_sec_desc._entry_ptr = internal global ptr @build_sec_desc._entry, section ".printk_index", align 4
@build_sec_desc._rs.124 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@build_sec_desc.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.build_sec_desc, ptr @.str.3, ptr @.str.125, i8 1, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: %s: Mapping error %d for owner id %d\0A\00", [48 x i8] zeroinitializer }, align 32
@build_sec_desc._rs.126 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@build_sec_desc.descriptor.127 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.build_sec_desc, ptr @.str.3, ptr @.str.128, i8 1, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: %s: Mapping error %d for group id %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mode_to_access_flags._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mode_to_access_flags.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.129, ptr @.str.3, ptr @.str.130, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mode_to_access_flags\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CIFS: mode: %04o, access flags now 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%ci:%u\00", [25 x i8] zeroinitializer }, align 32
@id_to_sid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@id_to_sid.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.132, ptr @.str.3, ptr @.str.133, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"id_to_sid\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: %s: Can't map %cid %u to a SID\0A\00", [54 x i8] zeroinitializer }, align 32
@id_to_sid._rs.134 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@id_to_sid.descriptor.135 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.132, ptr @.str.3, ptr @.str.11, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@id_to_sid._rs.136 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@id_to_sid.descriptor.137 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.132, ptr @.str.3, ptr @.str.138, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"CIFS: %s: %s: Downcall contained malformed key (datalen=%hu, ksid_size=%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 349, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"root_cred\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 60, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"cifs_idmap_key_type\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 96, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 397, i32 53 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 399, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 411, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 459, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 472, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 493, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 509, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1394, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1397, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1401, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1484, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1502, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1507, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1511, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1529, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1547, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1556, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1588, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1600, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1653, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1661, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 234, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 253, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [16 x i8] c"sid_unix_groups\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 36, i32 30 }
@___asan_gen_.322 = private unnamed_addr constant [15 x i8] c"sid_unix_users\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 32, i32 30 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"sid_unix_NFS_groups\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 51, i32 30 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 119, i32 24 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 136, i32 25 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 138, i32 25 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 144, i32 25 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 97, i32 17 }
@___asan_gen_.344 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 286, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [14 x i8] c"sid_authusers\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 28, i32 30 }
@___asan_gen_.349 = private unnamed_addr constant [18 x i8] c"sid_unix_NFS_mode\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 56, i32 30 }
@___asan_gen_.352 = private unnamed_addr constant [19 x i8] c"sid_unix_NFS_users\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 46, i32 30 }
@___asan_gen_.359 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 609, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 108, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1423, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1441, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1443, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1207, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1214, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1219, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1226, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1232, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1241, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1161, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1168, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1172, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1178, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 777, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 781, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant [13 x i8] c"sid_everyone\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 25, i32 30 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 728, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 733, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 740, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 744, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 592, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 600, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 630, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1266, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1323, i32 6 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1352, i32 6 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 659, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 284, i32 36 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 294, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 299, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.560 = private constant [21 x i8] c"../fs/cifs/cifsacl.c\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 316, i32 3 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @access_flags_to_mode._entry, ptr @access_flags_to_mode._entry_ptr, ptr @build_sec_desc._entry, ptr @build_sec_desc._entry_ptr, ptr @cifs_acl_to_fattr._entry, ptr @cifs_acl_to_fattr._entry.41, ptr @cifs_acl_to_fattr._entry_ptr, ptr @cifs_acl_to_fattr._entry_ptr.43, ptr @dump_ace._entry, ptr @dump_ace._entry.109, ptr @dump_ace._entry_ptr, ptr @dump_ace._entry_ptr.111, ptr @id_mode_to_cifs_acl._entry, ptr @id_mode_to_cifs_acl._entry_ptr, ptr @parse_dacl._entry, ptr @parse_dacl._entry_ptr, ptr @parse_sid._entry, ptr @parse_sid._entry_ptr, ptr @set_cifs_acl._entry, ptr @set_cifs_acl._entry_ptr, ptr @sid_to_id._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @root_cred, ptr @cifs_idmap_key_type, ptr @.str.5, ptr @sid_to_id._rs.6, ptr @.str.8, ptr @sid_to_id._rs.9, ptr @.str.11, ptr @init_cifs_idmap._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @init_cifs_idmap._rs.15, ptr @.str.17, ptr @exit_cifs_idmap._rs, ptr @.str.18, ptr @.str.19, ptr @get_cifs_acl_by_fid._rs, ptr @.str.20, ptr @.str.21, ptr @get_cifs_acl_by_fid._rs.22, ptr @.str.24, ptr @get_cifs_acl_by_fid._rs.25, ptr @.str.27, ptr @set_cifs_acl._rs, ptr @.str.28, ptr @set_cifs_acl._rs.29, ptr @.str.30, ptr @set_cifs_acl._rs.31, ptr @.str.33, ptr @set_cifs_acl._rs.34, ptr @cifs_acl_to_fattr._rs, ptr @.str.36, ptr @.str.37, ptr @cifs_acl_to_fattr._rs.38, ptr @.str.39, ptr @cifs_acl_to_fattr._rs.40, ptr @.str.42, ptr @id_mode_to_cifs_acl._rs, ptr @.str.44, ptr @.str.45, ptr @id_mode_to_cifs_acl._rs.46, ptr @id_mode_to_cifs_acl._rs.47, ptr @.str.49, ptr @id_mode_to_cifs_acl._rs.50, ptr @.str.52, ptr @is_well_known_sid._rs, ptr @.str.53, ptr @.str.54, ptr @is_well_known_sid._rs.55, ptr @.str.57, ptr @sid_unix_groups, ptr @sid_unix_users, ptr @sid_unix_NFS_groups, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @sid_authusers, ptr @sid_unix_NFS_mode, ptr @sid_unix_NFS_users, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @get_cifs_acl_by_path._rs, ptr @.str.73, ptr @get_cifs_acl_by_path._rs.74, ptr @get_cifs_acl_by_path._rs.76, ptr @parse_sec_desc._rs, ptr @.str.78, ptr @.str.79, ptr @parse_sec_desc._rs.80, ptr @.str.82, ptr @parse_sec_desc._rs.83, ptr @.str.85, ptr @parse_sec_desc._rs.86, ptr @.str.88, ptr @parse_sec_desc._rs.89, ptr @.str.91, ptr @parse_sec_desc._rs.92, ptr @.str.94, ptr @parse_sid._rs, ptr @.str.95, ptr @parse_sid._rs.96, ptr @.str.97, ptr @parse_sid._rs.98, ptr @.str.100, ptr @parse_sid._rs.101, ptr @.str.103, ptr @parse_dacl._rs, ptr @.str.104, ptr @parse_dacl._rs.105, ptr @.str.106, ptr @sid_everyone, ptr @dump_ace._rs, ptr @.str.107, ptr @dump_ace._rs.108, ptr @.str.110, ptr @dump_ace._rs.112, ptr @.str.113, ptr @dump_ace._rs.114, ptr @.str.116, ptr @access_flags_to_mode._rs, ptr @.str.117, ptr @access_flags_to_mode._rs.118, ptr @.str.119, ptr @access_flags_to_mode._rs.120, ptr @.str.122, ptr @build_sec_desc._rs, ptr @.str.123, ptr @build_sec_desc._rs.124, ptr @.str.125, ptr @build_sec_desc._rs.126, ptr @.str.128, ptr @mode_to_access_flags._rs, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @id_to_sid._rs, ptr @.str.132, ptr @.str.133, ptr @id_to_sid._rs.134, ptr @id_to_sid._rs.136, ptr @.str.138], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_to_id._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_cred to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_idmap_key_type to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_to_id._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_to_id._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs_idmap._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs_idmap._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_cifs_idmap._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cifs_acl_by_fid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cifs_acl_by_fid._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cifs_acl_by_fid._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cifs_acl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cifs_acl._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cifs_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cifs_acl._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_cifs_acl._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_acl_to_fattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_acl_to_fattr._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_acl_to_fattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_acl_to_fattr._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_acl_to_fattr._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_mode_to_cifs_acl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_mode_to_cifs_acl._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_mode_to_cifs_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_mode_to_cifs_acl._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_mode_to_cifs_acl._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_well_known_sid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_well_known_sid._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_groups to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_users to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_NFS_groups to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_authusers to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_NFS_mode to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_unix_NFS_users to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cifs_acl_by_path._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cifs_acl_by_path._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cifs_acl_by_path._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._rs.83 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._rs.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sec_desc._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sid._rs.96 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sid._rs.98 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sid._rs.101 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dacl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dacl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dacl._rs.105 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_everyone to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ace._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ace._rs.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ace._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ace._rs.112 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ace._rs.114 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @access_flags_to_mode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @access_flags_to_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @access_flags_to_mode._rs.118 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @access_flags_to_mode._rs.120 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_sec_desc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_sec_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_sec_desc._rs.124 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_sec_desc._rs.126 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_to_access_flags._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_to_sid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_to_sid._rs.134 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_to_sid._rs.136 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sid_to_id(ptr noundef %cifs_sb, ptr noundef %psid, ptr nocapture noundef writeonly %fattr, i32 noundef %sidtype) local_unnamed_addr #0 align 64 {
entry:
  %unix_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %fuid.sroa.0.0.copyload = load i32, ptr %linux_uid, align 4
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 24
  %3 = ptrtoint ptr %linux_gid to i32
  call void @__asan_load4_noabort(i32 %3)
  %fgid.sroa.0.0.copyload = load i32, ptr %linux_gid, align 8
  %num_subauth = getelementptr inbounds %struct.cifs_sid, ptr %psid, i32 0, i32 1
  %4 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_subauth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %5)
  %cmp = icmp ugt i8 %5, 15
  br i1 %cmp, label %do.body4, label %if.end25, !prof !292

do.body4:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body4.cleanup182_crit_edge, label %do.body7

do.body4.cleanup182_crit_edge:                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup182

do.body7:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sid_to_id.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sid_to_id, %land.lhs.true)) #17
          to label %cleanup182 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body7
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @sid_to_id._rs, ptr noundef nonnull @.str.2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.cleanup182_crit_edge, label %if.then17

land.lhs.true.cleanup182_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup182

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_subauth, align 1
  %conv19 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sid_to_id.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %conv19) #17
  br label %cleanup182

if.end25:                                         ; preds = %entry
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %9 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mnt_cifs_flags, align 4
  %and26 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end25.if.then31_crit_edge

if.end25.if.then31_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end25
  %call28 = tail call ptr @cifs_sb_master_tcon(ptr noundef %cifs_sb) #17
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %call28, i32 0, i32 23
  %11 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %posix_extensions, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool29.not = icmp eq i8 %12, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.end8.i.i_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then31

lor.lhs.false.if.end8.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.end25.if.then31_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unix_id) #17
  %13 = ptrtoint ptr %unix_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %unix_id, align 4, !annotation !295
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sidtype)
  %cmp32.not = icmp eq i32 %sidtype, 1
  %14 = xor i1 %cmp32.not, true
  %call38 = call fastcc zeroext i1 @is_well_known_sid(ptr noundef %psid, ptr noundef nonnull %unix_id, i1 noundef zeroext %14)
  br i1 %call38, label %if.end43, label %if.then31.cleanup67.thread_crit_edge

if.then31.cleanup67.thread_crit_edge:             ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup67.thread

if.end43:                                         ; preds = %if.then31
  %15 = ptrtoint ptr %unix_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %unix_id, align 4
  br i1 %cmp32.not, label %if.else53, label %if.then45

if.then45:                                        ; preds = %if.end43
  %call47 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %cmp.i.not = icmp eq i32 %call47, -1
  br i1 %cmp.i.not, label %if.then45.cleanup67.thread_crit_edge, label %if.then45.cleanup67_crit_edge

if.then45.cleanup67_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup67

if.then45.cleanup67.thread_crit_edge:             ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup67.thread

if.else53:                                        ; preds = %if.end43
  %call56 = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call56)
  %cmp.i226.not = icmp eq i32 %call56, -1
  br i1 %cmp.i226.not, label %if.else53.cleanup67.thread_crit_edge, label %if.else53.cleanup67_crit_edge

if.else53.cleanup67_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup67

if.else53.cleanup67.thread_crit_edge:             ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup67.thread

cleanup67.thread:                                 ; preds = %if.else53.cleanup67.thread_crit_edge, %if.then45.cleanup67.thread_crit_edge, %if.then31.cleanup67.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unix_id) #17
  br label %if.end8.i.i

cleanup67:                                        ; preds = %if.else53.cleanup67_crit_edge, %if.then45.cleanup67_crit_edge
  %fgid.sroa.0.2 = phi i32 [ %call47, %if.then45.cleanup67_crit_edge ], [ %fgid.sroa.0.0.copyload, %if.else53.cleanup67_crit_edge ]
  %fuid.sroa.0.2 = phi i32 [ %fuid.sroa.0.0.copyload, %if.then45.cleanup67_crit_edge ], [ %call56, %if.else53.cleanup67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unix_id) #17
  br label %got_valid_id

if.end8.i.i:                                      ; preds = %cleanup67.thread, %lor.lhs.false.if.end8.i.i_crit_edge
  %17 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_subauth, align 1
  %conv.i = zext i8 %18 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 11
  %add.i = add nuw nsw i32 %mul.i, 24
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #20
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.cleanup182_crit_edge, label %if.end.i

if.end8.i.i.cleanup182_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup182

if.end.i:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sidtype)
  %cmp.i227 = icmp eq i32 %sidtype, 1
  %cond.i = select i1 %cmp.i227, i32 111, i32 103
  %19 = ptrtoint ptr %psid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %psid, align 1
  %conv2.i = zext i8 %20 to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.61, i32 noundef %cond.i, i32 noundef %conv2.i) #17
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %call3.i
  %authority.i = getelementptr inbounds %struct.cifs_sid, ptr %psid, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %22 to i64
  %arrayidx6.i = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %24 to i64
  %shl.i = shl nuw nsw i64 %conv7.i, 8
  %or.i = or i64 %shl.i, %conv4.i
  %arrayidx9.i = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %26 to i64
  %shl11.i = shl nuw nsw i64 %conv10.i, 16
  %or12.i = or i64 %or.i, %shl11.i
  %arrayidx14.i = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %28 to i64
  %shl16.i = shl nuw nsw i64 %conv15.i, 24
  %or17.i = or i64 %or12.i, %shl16.i
  %arrayidx19.i = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %30 to i64
  %shl21.i = shl nuw nsw i64 %conv20.i, 32
  %or22.i = or i64 %or17.i, %shl21.i
  %31 = ptrtoint ptr %authority.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %authority.i, align 1
  %conv25.i = zext i8 %32 to i64
  %shl26.i = shl nuw nsw i64 %conv25.i, 48
  %or27.i = or i64 %or22.i, %shl26.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or27.i)
  %cmp28.i = icmp ult i64 %or27.i, 4294967296
  %.str.62..str.63.i = select i1 %cmp28.i, ptr @.str.62, ptr @.str.63
  %call32.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull %.str.62..str.63.i, i64 noundef %or27.i) #17
  %33 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_subauth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp3777.not.i = icmp eq i8 %34, 0
  br i1 %cmp3777.not.i, label %if.end.i.if.end75_crit_edge, label %for.body.preheader.i

if.end.i.if.end75_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

for.body.preheader.i:                             ; preds = %if.end.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr.i, i32 %call32.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %strptr.079.i = phi ptr [ %add.ptr41.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr34.i, %for.body.preheader.i ]
  %i.078.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx39.i = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 3, i32 %i.078.i
  %35 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx39.i, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36) #17
  %call40.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %strptr.079.i, ptr noundef nonnull @.str.64, i32 noundef %37) #17
  %add.ptr41.i = getelementptr i8, ptr %strptr.079.i, i32 %call40.i
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %38 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_subauth, align 1
  %conv36.i = zext i8 %39 to i32
  %cmp37.i = icmp ult i32 %inc.i, %conv36.i
  br i1 %cmp37.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end75_crit_edge

for.body.i.if.end75_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end75:                                         ; preds = %for.body.i.if.end75_crit_edge, %if.end.i.if.end75_crit_edge
  %40 = load ptr, ptr @root_cred, align 4
  %call76 = call ptr @override_creds(ptr noundef %40) #17
  %call.i = call ptr @request_key_tag(ptr noundef nonnull @cifs_idmap_key_type, ptr noundef nonnull %call9.i.i, ptr noundef null, ptr noundef nonnull @.str.5) #17
  %cmp.i228 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %do.body81, label %do.end115

do.body81:                                        ; preds = %if.end75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %41 = load i32, ptr @cifsFYI, align 4
  %and82 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body81.out_revert_creds_crit_edge, label %do.body85

do.body81.out_revert_creds_crit_edge:             ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_revert_creds

do.body85:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sid_to_id.descriptor.7, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sid_to_id, %land.lhs.true97)) #17
          to label %out_revert_creds [label %land.lhs.true97], !srcloc !293

land.lhs.true97:                                  ; preds = %do.body85
  %call98 = call i32 @___ratelimit(ptr noundef nonnull @sid_to_id._rs.6, ptr noundef nonnull @.str.2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %land.lhs.true97.out_revert_creds_crit_edge, label %if.then100

land.lhs.true97.out_revert_creds_crit_edge:       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_revert_creds

if.then100:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #19
  %cond = select i1 %cmp.i227, i32 117, i32 103
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sid_to_id.descriptor.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull %call9.i.i, i32 noundef %cond) #17
  br label %out_revert_creds

do.end115:                                        ; preds = %if.end75
  %datalen = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 13
  %42 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %datalen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %43)
  %cmp117.not = icmp eq i16 %43, 4
  br i1 %cmp117.not, label %if.end152, label %do.body121

do.body121:                                       ; preds = %do.end115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %44 = load i32, ptr @cifsFYI, align 4
  %and122 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body121.do.end151_crit_edge, label %do.body125

do.body121.do.end151_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end151

do.body125:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sid_to_id.descriptor.10, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sid_to_id, %land.lhs.true137)) #17
          to label %do.end151 [label %land.lhs.true137], !srcloc !293

land.lhs.true137:                                 ; preds = %do.body125
  %call138 = call i32 @___ratelimit(ptr noundef nonnull @sid_to_id._rs.9, ptr noundef nonnull @.str.2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %land.lhs.true137.do.end151_crit_edge, label %if.then140

land.lhs.true137.do.end151_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end151

if.then140:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %datalen, align 2
  %conv142 = zext i16 %46 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sid_to_id.descriptor.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %conv142) #17
  br label %do.end151

do.end151:                                        ; preds = %if.then140, %land.lhs.true137.do.end151_crit_edge, %do.body125, %do.body121.do.end151_crit_edge
  call void @key_invalidate(ptr noundef %call.i) #17
  br label %out_key_put

if.end152:                                        ; preds = %do.end115
  %47 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 17
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %id157.0.copyload = load i32, ptr %47, align 4
  br i1 %cmp.i227, label %if.then155, label %if.else165

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #19
  %call159 = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %id157.0.copyload) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call159)
  %cmp.i229.not = icmp eq i32 %call159, -1
  %spec.select = select i1 %cmp.i229.not, i32 %fuid.sroa.0.0.copyload, i32 %call159
  br label %out_key_put

if.else165:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #19
  %call170 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %id157.0.copyload) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call170)
  %cmp.i230.not = icmp eq i32 %call170, -1
  %spec.select219 = select i1 %cmp.i230.not, i32 %fgid.sroa.0.0.copyload, i32 %call170
  br label %out_key_put

out_key_put:                                      ; preds = %if.else165, %if.then155, %do.end151
  %fgid.sroa.0.5 = phi i32 [ %fgid.sroa.0.0.copyload, %do.end151 ], [ %fgid.sroa.0.0.copyload, %if.then155 ], [ %spec.select219, %if.else165 ]
  %fuid.sroa.0.5 = phi i32 [ %fuid.sroa.0.0.copyload, %do.end151 ], [ %spec.select, %if.then155 ], [ %fuid.sroa.0.0.copyload, %if.else165 ]
  call void @key_put(ptr noundef %call.i) #17
  br label %out_revert_creds

out_revert_creds:                                 ; preds = %out_key_put, %if.then100, %land.lhs.true97.out_revert_creds_crit_edge, %do.body85, %do.body81.out_revert_creds_crit_edge
  %fgid.sroa.0.6 = phi i32 [ %fgid.sroa.0.0.copyload, %if.then100 ], [ %fgid.sroa.0.0.copyload, %land.lhs.true97.out_revert_creds_crit_edge ], [ %fgid.sroa.0.0.copyload, %do.body81.out_revert_creds_crit_edge ], [ %fgid.sroa.0.5, %out_key_put ], [ %fgid.sroa.0.0.copyload, %do.body85 ]
  %fuid.sroa.0.6 = phi i32 [ %fuid.sroa.0.0.copyload, %if.then100 ], [ %fuid.sroa.0.0.copyload, %land.lhs.true97.out_revert_creds_crit_edge ], [ %fuid.sroa.0.0.copyload, %do.body81.out_revert_creds_crit_edge ], [ %fuid.sroa.0.5, %out_key_put ], [ %fuid.sroa.0.0.copyload, %do.body85 ]
  call void @revert_creds(ptr noundef %call76) #17
  call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %got_valid_id

got_valid_id:                                     ; preds = %out_revert_creds, %cleanup67
  %fgid.sroa.0.7 = phi i32 [ %fgid.sroa.0.2, %cleanup67 ], [ %fgid.sroa.0.6, %out_revert_creds ]
  %fuid.sroa.0.7 = phi i32 [ %fuid.sroa.0.2, %cleanup67 ], [ %fuid.sroa.0.6, %out_revert_creds ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sidtype)
  %cmp177 = icmp eq i32 %sidtype, 1
  br i1 %cmp177, label %if.then179, label %if.else180

if.then179:                                       ; preds = %got_valid_id
  call void @__sanitizer_cov_trace_pc() #19
  %cf_uid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %49 = ptrtoint ptr %cf_uid to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %fuid.sroa.0.7, ptr %cf_uid, align 8
  br label %cleanup182

if.else180:                                       ; preds = %got_valid_id
  call void @__sanitizer_cov_trace_pc() #19
  %cf_gid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %50 = ptrtoint ptr %cf_gid to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %fgid.sroa.0.7, ptr %cf_gid, align 4
  br label %cleanup182

cleanup182:                                       ; preds = %if.else180, %if.then179, %if.end8.i.i.cleanup182_crit_edge, %if.then17, %land.lhs.true.cleanup182_crit_edge, %do.body7, %do.body4.cleanup182_crit_edge
  %retval.0 = phi i32 [ -5, %do.body4.cleanup182_crit_edge ], [ -5, %land.lhs.true.cleanup182_crit_edge ], [ -5, %if.then17 ], [ 0, %if.else180 ], [ 0, %if.then179 ], [ -5, %do.body7 ], [ -12, %if.end8.i.i.cleanup182_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_well_known_sid(ptr noundef readonly %psid, ptr noundef %puid, i1 noundef zeroext %is_group) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psid, null
  %cmp = icmp eq ptr %puid, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_subauth1 = getelementptr inbounds %struct.cifs_sid, ptr %psid, i32 0, i32 1
  %0 = ptrtoint ptr %num_subauth1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_subauth1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp2 = icmp eq i8 %1, 2
  br i1 %cmp2, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sid_unix_groups.sid_unix_users = select i1 %is_group, ptr @sid_unix_groups, ptr @sid_unix_users
  br label %if.end18

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp9 = icmp eq i8 %1, 3
  br i1 %cmp9, label %if.then11, label %if.else8.cleanup_crit_edge

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #19
  %sid_unix_NFS_groups.sid_unix_NFS_users = select i1 %is_group, ptr @sid_unix_NFS_groups, ptr @sid_unix_NFS_users
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.then4
  %pwell_known_sid.0 = phi ptr [ %sid_unix_groups.sid_unix_users, %if.then4 ], [ %sid_unix_NFS_groups.sid_unix_NFS_users, %if.then11 ]
  %2 = ptrtoint ptr %psid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %psid, align 1
  %4 = ptrtoint ptr %pwell_known_sid.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwell_known_sid.0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp22.not = icmp eq i8 %3, %5
  br i1 %cmp22.not, label %for.body.preheader, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.preheader:                               ; preds = %if.end18
  %arrayidx = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %arrayidx30 = getelementptr %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp32.not = icmp eq i8 %7, %9
  br i1 %cmp32.not, label %for.inc, label %for.body.preheader.do.body35_crit_edge

for.body.preheader.do.body35_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body35

do.body35:                                        ; preds = %for.inc.4.do.body35_crit_edge, %for.inc.3.do.body35_crit_edge, %for.inc.2.do.body35_crit_edge, %for.inc.1.do.body35_crit_edge, %for.inc.do.body35_crit_edge, %for.body.preheader.do.body35_crit_edge
  %i.0149.lcssa = phi i32 [ 0, %for.body.preheader.do.body35_crit_edge ], [ 1, %for.inc.do.body35_crit_edge ], [ 2, %for.inc.1.do.body35_crit_edge ], [ 3, %for.inc.2.do.body35_crit_edge ], [ 4, %for.inc.3.do.body35_crit_edge ], [ 5, %for.inc.4.do.body35_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %do.body35.cleanup_crit_edge, label %do.body38

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_well_known_sid.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_well_known_sid, %land.lhs.true)) #17
          to label %cleanup [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body38
  %call43 = tail call i32 @___ratelimit(ptr noundef nonnull @is_well_known_sid._rs, ptr noundef nonnull @.str.53) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true.cleanup_crit_edge, label %if.then45

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_well_known_sid.descriptor, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, i32 noundef %i.0149.lcssa) #17
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %arrayidx30.1 = getelementptr %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx30.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp32.not.1 = icmp eq i8 %12, %14
  br i1 %cmp32.not.1, label %for.inc.1, label %for.inc.do.body35_crit_edge

for.inc.do.body35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body35

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2, align 1
  %arrayidx30.2 = getelementptr %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx30.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp32.not.2 = icmp eq i8 %16, %18
  br i1 %cmp32.not.2, label %for.inc.2, label %for.inc.1.do.body35_crit_edge

for.inc.1.do.body35_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body35

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3, align 1
  %arrayidx30.3 = getelementptr %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp32.not.3 = icmp eq i8 %20, %22
  br i1 %cmp32.not.3, label %for.inc.3, label %for.inc.2.do.body35_crit_edge

for.inc.2.do.body35_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body35

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.4, align 1
  %arrayidx30.4 = getelementptr %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx30.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp32.not.4 = icmp eq i8 %24, %26
  br i1 %cmp32.not.4, label %for.inc.4, label %for.inc.3.do.body35_crit_edge

for.inc.3.do.body35_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body35

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.5, align 1
  %arrayidx30.5 = getelementptr %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp32.not.5 = icmp eq i8 %28, %30
  br i1 %cmp32.not.5, label %for.inc.5, label %for.inc.4.do.body35_crit_edge

for.inc.4.do.body35_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body35

for.inc.5:                                        ; preds = %for.inc.4
  %sub_auth = getelementptr inbounds %struct.cifs_sid, ptr %psid, i32 0, i32 3
  %31 = ptrtoint ptr %sub_auth to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %sub_auth, align 1
  br i1 %cmp2, label %if.then56, label %if.else66

if.then56:                                        ; preds = %for.inc.5
  %sub_auth58 = getelementptr inbounds %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 3
  %33 = ptrtoint ptr %sub_auth58 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %sub_auth58, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp60.not = icmp eq i32 %32, %34
  br i1 %cmp60.not, label %if.end63, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end63:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx65 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 3, i32 1
  br label %do.body88

if.else66:                                        ; preds = %for.inc.5
  %35 = tail call i32 @llvm.bswap.i32(i32 %32)
  %36 = ptrtoint ptr %puid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %puid, align 4
  %37 = ptrtoint ptr %sub_auth to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %sub_auth, align 1
  %sub_auth71 = getelementptr inbounds %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 3
  %39 = ptrtoint ptr %sub_auth71 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %sub_auth71, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp73.not = icmp eq i32 %38, %40
  br i1 %cmp73.not, label %lor.lhs.false75, label %if.else66.cleanup_crit_edge

if.else66.cleanup_crit_edge:                      ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false75:                                  ; preds = %if.else66
  %arrayidx77 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx77, align 1
  %arrayidx79 = getelementptr %struct.cifs_sid, ptr %pwell_known_sid.0, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %arrayidx79, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp80.not = icmp eq i32 %42, %44
  br i1 %cmp80.not, label %if.end83, label %lor.lhs.false75.cleanup_crit_edge

lor.lhs.false75.cleanup_crit_edge:                ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end83:                                         ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx85 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 3, i32 2
  br label %do.body88

do.body88:                                        ; preds = %if.end83, %if.end63
  %arrayidx85.sink = phi ptr [ %arrayidx85, %if.end83 ], [ %arrayidx65, %if.end63 ]
  %45 = ptrtoint ptr %arrayidx85.sink to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %arrayidx85.sink, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %puid to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %puid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %49 = load i32, ptr @cifsFYI, align 4
  %and89 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.cleanup_crit_edge, label %do.body92

do.body88.cleanup_crit_edge:                      ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body92:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_well_known_sid.descriptor.56, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_well_known_sid, %land.lhs.true104)) #17
          to label %cleanup [label %land.lhs.true104], !srcloc !293

land.lhs.true104:                                 ; preds = %do.body92
  %call105 = tail call i32 @___ratelimit(ptr noundef nonnull @is_well_known_sid._rs.55, ptr noundef nonnull @.str.53) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %land.lhs.true104.cleanup_crit_edge, label %if.then107

land.lhs.true104.cleanup_crit_edge:               ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then107:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %puid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %puid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_well_known_sid.descriptor.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.3, i32 noundef %51) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %land.lhs.true104.cleanup_crit_edge, %do.body92, %do.body88.cleanup_crit_edge, %lor.lhs.false75.cleanup_crit_edge, %if.else66.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.then45, %land.lhs.true.cleanup_crit_edge, %do.body38, %do.body35.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.else8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.else8.cleanup_crit_edge ], [ false, %if.end18.cleanup_crit_edge ], [ false, %do.body35.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.then45 ], [ false, %if.then56.cleanup_crit_edge ], [ false, %lor.lhs.false75.cleanup_crit_edge ], [ false, %if.else66.cleanup_crit_edge ], [ true, %do.body88.cleanup_crit_edge ], [ true, %land.lhs.true104.cleanup_crit_edge ], [ true, %if.then107 ], [ false, %do.body38 ], [ true, %do.body92 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_cifs_idmap() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cifs_idmap.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cifs_idmap, %land.lhs.true)) #17
          to label %do.end13 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @init_cifs_idmap._rs, ptr noundef nonnull @.str.12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %1 = load ptr, ptr @cifs_idmap_key_type, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cifs_idmap.descriptor, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, ptr noundef %1) #17
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %call14 = tail call ptr @prepare_kernel_cred(ptr noundef null) #17
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end13.cleanup_crit_edge, label %if.end17

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end17:                                         ; preds = %do.end13
  %call21 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.14, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef nonnull %call14, i32 noundef 520290304, i32 noundef 2, ptr noundef null, ptr noundef null) #17
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %call21 to i32
  br label %do.body.i

if.end25:                                         ; preds = %if.end17
  %call26 = tail call i32 @register_key_type(ptr noundef nonnull @cifs_idmap_key_type) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %failed_put_key, label %if.end28

if.end28:                                         ; preds = %if.end25
  %flags = getelementptr inbounds %struct.key, ptr %call21, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #17
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 21
  %3 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call21, ptr %thread_keyring, align 4
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 18
  %4 = ptrtoint ptr %jit_keyring to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %jit_keyring, align 4
  store ptr %call14, ptr @root_cred, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and31 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %do.body34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cifs_idmap.descriptor.16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cifs_idmap, %land.lhs.true46)) #17
          to label %cleanup [label %land.lhs.true46], !srcloc !293

land.lhs.true46:                                  ; preds = %do.body34
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @init_cifs_idmap._rs.15, ptr noundef nonnull @.str.12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.cleanup_crit_edge, label %if.then49

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then49:                                        ; preds = %land.lhs.true46
  %tobool.not.i = icmp eq ptr %call21, null
  br i1 %tobool.not.i, label %if.then49.key_serial.exit_crit_edge, label %cond.true.i

if.then49.key_serial.exit_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %key_serial.exit

cond.true.i:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  %serial.i = getelementptr inbounds %struct.key, ptr %call21, i32 0, i32 1
  %6 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %if.then49.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 0, %if.then49.key_serial.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cifs_idmap.descriptor.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef %cond.i) #17
  br label %cleanup

failed_put_key:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @key_put(ptr noundef %call21) #17
  br label %do.body.i

do.body.i:                                        ; preds = %failed_put_key, %if.then23
  %ret.0 = phi i32 [ %2, %if.then23 ], [ %call26, %failed_put_key ]
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call14) #17
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !292

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__invalid_creds(ptr noundef nonnull %call14, ptr noundef nonnull @.str.66, i32 noundef 286) #17
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call14, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !296
  tail call void @llvm.prefetch.p0(ptr nonnull %call14, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call14, ptr nonnull %call14, i32 1, ptr nonnull elementtype(i32) %call14) #17, !srcloc !297
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !298
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_cred(ptr noundef nonnull %call14) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge, %key_serial.exit, %land.lhs.true46.cleanup_crit_edge, %do.body34, %if.end28.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end13.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %land.lhs.true46.cleanup_crit_edge ], [ 0, %key_serial.exit ], [ 0, %do.body34 ], [ %ret.0, %__validate_creds.exit.i.cleanup_crit_edge ], [ %ret.0, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_cifs_idmap() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @root_cred, align 4
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %thread_keyring, align 4
  tail call void @key_revoke(ptr noundef %2) #17
  tail call void @unregister_key_type(ptr noundef nonnull @cifs_idmap_key_type) #17
  %3 = load ptr, ptr @root_cred, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #17
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !292

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.66, i32 noundef 286) #17
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !296
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #17
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #17, !srcloc !297
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !298
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_cred(ptr noundef nonnull %3) #17
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %put_cred.exit.do.end11_crit_edge, label %do.body2

put_cred.exit.do.end11_crit_edge:                 ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11

do.body2:                                         ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exit_cifs_idmap.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exit_cifs_idmap, %land.lhs.true)) #17
          to label %do.end11 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @exit_cifs_idmap._rs, ptr noundef nonnull @.str.18) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %if.then8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %6 = load ptr, ptr @cifs_idmap_key_type, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exit_cifs_idmap.descriptor, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef %6) #17
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true.do.end11_crit_edge, %do.body2, %put_cred.exit.do.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @setup_authusers_ACE(ptr nocapture noundef writeonly %pntace) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pntace to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pntace, align 1
  %flags = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %flags, align 1
  %access_req = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 3
  %2 = ptrtoint ptr %access_req to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 16, ptr %access_req, align 1
  %sid = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4
  %num_subauth = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %num_subauth to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %num_subauth, align 1
  %4 = ptrtoint ptr %sid to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %sid, align 1
  %arrayidx3 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 0
  %arrayidx3.5 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 5
  %5 = call ptr @memset(ptr %arrayidx3, i32 0, i32 5)
  %6 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %arrayidx3.5, align 1
  %sub_auth = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %sub_auth to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 184549376, ptr %sub_auth, align 1
  %size = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 5120, ptr %size, align 1
  ret i32 20
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @setup_special_mode_ACE(ptr nocapture noundef writeonly %pntace, i64 noundef %nmode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pntace to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %pntace, align 1
  %flags = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %flags, align 1
  %access_req = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 3
  %2 = ptrtoint ptr %access_req to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 0, ptr %access_req, align 1
  %sid = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4
  %num_subauth = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %num_subauth to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %num_subauth, align 1
  %4 = ptrtoint ptr %sid to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %sid, align 1
  %arrayidx3 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 0
  %arrayidx3.5 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 5
  %5 = call ptr @memset(ptr %arrayidx3, i32 0, i32 5)
  %6 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %arrayidx3.5, align 1
  %sub_auth = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %sub_auth to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1476395008, ptr %sub_auth, align 1
  %arrayidx8 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 50331648, ptr %arrayidx8, align 1
  %9 = trunc i64 %nmode to i32
  %conv = and i32 %9, 4095
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %arrayidx11 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %arrayidx11, align 1
  %size = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 7168, ptr %size, align 1
  ret i32 28
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @setup_special_user_owner_ACE(ptr nocapture noundef writeonly %pntace) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pntace to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pntace, align 1
  %flags = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %flags, align 1
  %access_req = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 3
  %2 = ptrtoint ptr %access_req to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 16, ptr %access_req, align 1
  %sid = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4
  %num_subauth = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %num_subauth to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %num_subauth, align 1
  %4 = ptrtoint ptr %sid to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %sid, align 1
  %arrayidx3 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 0
  %arrayidx3.5 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 5
  %5 = call ptr @memset(ptr %arrayidx3, i32 0, i32 5)
  %6 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %arrayidx3.5, align 1
  %sub_auth = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %sub_auth to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1476395008, ptr %sub_auth, align 1
  %arrayidx8 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 16777216, ptr %arrayidx8, align 1
  %9 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  %fsgid = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %agg.tmp.sroa.0.0.copyload)
  %arrayidx11 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %arrayidx11, align 1
  %size = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 7168, ptr %size, align 1
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_cifs_acl_by_fid(ptr noundef %cifs_sb, ptr nocapture noundef readonly %cifsfid, ptr noundef %pacllen, i32 %unused) local_unnamed_addr #0 align 64 {
entry:
  %pntsd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pntsd) #17
  %0 = ptrtoint ptr %pntsd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pntsd, align 4
  %call = tail call ptr @cifs_sb_tlink(ptr noundef %cifs_sb) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @_get_xid() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end25_crit_edge, label %do.body6

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cifs_acl_by_fid.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cifs_acl_by_fid, %land.lhs.true)) #17
          to label %do.end25 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @get_cifs_acl_by_fid._rs, ptr noundef nonnull @.str.20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end25_crit_edge, label %if.then13

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %2 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  %call17 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cifs_acl_by_fid.descriptor, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, i32 noundef %call3, i32 noundef %call17) #17
  br label %do.end25

do.end25:                                         ; preds = %if.then13, %land.lhs.true.do.end25_crit_edge, %do.body6, %if.end.do.end25_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call3, ptr noundef nonnull @.str.20)
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tl_tcon.i, align 4
  %11 = ptrtoint ptr %cifsfid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cifsfid, align 8
  %call28 = call i32 @CIFSSMBGetCIFSACL(i32 noundef %call3, ptr noundef %10, i16 noundef zeroext %12, ptr noundef nonnull %pntsd, ptr noundef %pacllen) #17
  call void @_free_xid(i32 noundef %call3) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and32 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.end25.do.end59_crit_edge, label %do.body35

do.end25.do.end59_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end59

do.body35:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cifs_acl_by_fid.descriptor.23, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cifs_acl_by_fid, %land.lhs.true47)) #17
          to label %do.end59 [label %land.lhs.true47], !srcloc !293

land.lhs.true47:                                  ; preds = %do.body35
  %call48 = call i32 @___ratelimit(ptr noundef nonnull @get_cifs_acl_by_fid._rs.22, ptr noundef nonnull @.str.20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end59_crit_edge, label %if.then50

land.lhs.true47.do.end59_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end59

if.then50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cifs_acl_by_fid.descriptor.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, i32 noundef %call3, i32 noundef %call28) #17
  br label %do.end59

do.end59:                                         ; preds = %if.then50, %land.lhs.true47.do.end59_crit_edge, %do.body35, %do.end25.do.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool60.not = icmp eq i32 %call28, 0
  br i1 %tobool60.not, label %if.else62, label %if.then61

if.then61:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_smb3_exit_err(i32 noundef %call3, ptr noundef nonnull @.str.20, i32 noundef %call28)
  br label %do.end65

if.else62:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_smb3_exit_done(i32 noundef %call3, ptr noundef nonnull @.str.20)
  br label %do.end65

do.end65:                                         ; preds = %if.else62, %if.then61
  call void @cifs_put_tlink(ptr noundef %call) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and68 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.end65.do.end95_crit_edge, label %do.body71

do.end65.do.end95_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end95

do.body71:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cifs_acl_by_fid.descriptor.26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cifs_acl_by_fid, %land.lhs.true83)) #17
          to label %do.end95 [label %land.lhs.true83], !srcloc !293

land.lhs.true83:                                  ; preds = %do.body71
  %call84 = call i32 @___ratelimit(ptr noundef nonnull @get_cifs_acl_by_fid._rs.25, ptr noundef nonnull @.str.20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %land.lhs.true83.do.end95_crit_edge, label %if.then86

land.lhs.true83.do.end95_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end95

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %pacllen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pacllen, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cifs_acl_by_fid.descriptor.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, i32 noundef %call28, i32 noundef %16) #17
  br label %do.end95

do.end95:                                         ; preds = %if.then86, %land.lhs.true83.do.end95_crit_edge, %do.body71, %do.end65.do.end95_crit_edge
  br i1 %tobool60.not, label %if.end99, label %if.then97

if.then97:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #19
  %17 = inttoptr i32 %call28 to ptr
  br label %cleanup

if.end99:                                         ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %pntsd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pntsd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then97, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.then97 ], [ %19, %if.end99 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pntsd) #17
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_tlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !293

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !299

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !282) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !300
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !301
  %13 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !299

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !282) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !302
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 609, ptr noundef nonnull @.str.71) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !303
  %31 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
declare dso_local i32 @CIFSSMBGetCIFSACL(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !293

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !299

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !282) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !304
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !305
  %13 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !299

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !282) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !302
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_smb3_exit_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 558, ptr noundef nonnull @.str.71) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !303
  %31 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
define internal fastcc void @trace_smb3_exit_done(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !293

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !299

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !282) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !306
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !307
  %13 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !299

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !282) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !302
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_smb3_exit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.70, i32 noundef 610, ptr noundef nonnull @.str.71) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !303
  %31 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_cifs_acl(ptr noundef %cifs_sb, ptr noundef %inode, ptr noundef %path, ptr noundef %pacllen, i32 noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.if.then3_crit_edge, label %if.end

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then3

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -280
  %call1 = tail call ptr @find_readable_file(ptr noundef %add.ptr.i, i1 noundef zeroext true) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.then3_crit_edge, label %if.end5

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %call4 = tail call fastcc ptr @get_cifs_acl_by_path(ptr noundef %cifs_sb, ptr noundef %path, ptr noundef %pacllen)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %call1, i32 0, i32 5
  %call6 = tail call ptr @get_cifs_acl_by_fid(ptr noundef %cifs_sb, ptr noundef %fid, ptr noundef %pacllen, i32 undef)
  tail call void @cifsFileInfo_put(ptr noundef nonnull %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3
  %retval.0 = phi ptr [ %call6, %if.end5 ], [ %call4, %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_readable_file(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_cifs_acl_by_path(ptr noundef %cifs_sb, ptr noundef %path, ptr noundef %pacllen) unnamed_addr #0 align 64 {
entry:
  %pntsd = alloca ptr, align 4
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pntsd) #17
  %0 = ptrtoint ptr %pntsd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pntsd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #17
  %1 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %oplock, align 4
  %call = tail call ptr @cifs_sb_tlink(ptr noundef %cifs_sb) #17
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #17
  %2 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #17
  %3 = getelementptr inbounds i8, ptr %oparms, i32 28
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tl_tcon.i, align 4
  %call4 = tail call i32 @_get_xid() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end26_crit_edge, label %do.body7

if.end.do.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cifs_acl_by_path.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cifs_acl_by_path, %land.lhs.true)) #17
          to label %do.end26 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body7
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @get_cifs_acl_by_path._rs, ptr noundef nonnull @.str.73) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end26_crit_edge, label %if.then14

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end26

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %8 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  %call18 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cifs_acl_by_path.descriptor, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73, i32 noundef %call4, i32 noundef %call18) #17
  br label %do.end26

do.end26:                                         ; preds = %if.then14, %land.lhs.true.do.end26_crit_edge, %do.body7, %if.end.do.end26_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call4, ptr noundef nonnull @.str.73)
  %15 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %oparms, align 4
  %cifs_sb29 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %16 = ptrtoint ptr %cifs_sb29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cifs_sb, ptr %cifs_sb29, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %17 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 131072, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not.i, label %do.end26.if.else.i_crit_edge, label %land.lhs.true.i

do.end26.if.else.i_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end26
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %cifs_sb) #17
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end26.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i146 = phi i32 [ 0, %if.else.i ], [ 16384, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %18 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i146, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %19 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %disposition, align 4
  %path31 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %20 = ptrtoint ptr %path31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %path, ptr %path31, align 4
  %fid32 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %21 = ptrtoint ptr %fid32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %fid, ptr %fid32, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %22 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call33 = call i32 @CIFS_open(i32 noundef %call4, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %cifs_create_options.exit.if.end39_crit_edge

cifs_create_options.exit.if.end39_crit_edge:      ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then35:                                        ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fid, align 8
  %call36 = call i32 @CIFSSMBGetCIFSACL(i32 noundef %call4, ptr noundef %6, i16 noundef zeroext %24, ptr noundef nonnull %pntsd, ptr noundef %pacllen) #17
  %25 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fid, align 8
  %conv = zext i16 %26 to i32
  %call38 = call i32 @CIFSSMBClose(i32 noundef %call4, ptr noundef %6, i32 noundef %conv) #17
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %cifs_create_options.exit.if.end39_crit_edge
  %rc.0 = phi i32 [ %call33, %cifs_create_options.exit.if.end39_crit_edge ], [ %call36, %if.then35 ]
  call void @cifs_put_tlink(ptr noundef %call) #17
  call void @_free_xid(i32 noundef %call4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %27 = load i32, ptr @cifsFYI, align 4
  %and43 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end39.do.end70_crit_edge, label %do.body46

if.end39.do.end70_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end70

do.body46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cifs_acl_by_path.descriptor.75, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cifs_acl_by_path, %land.lhs.true58)) #17
          to label %do.end70 [label %land.lhs.true58], !srcloc !293

land.lhs.true58:                                  ; preds = %do.body46
  %call59 = call i32 @___ratelimit(ptr noundef nonnull @get_cifs_acl_by_path._rs.74, ptr noundef nonnull @.str.73) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.do.end70_crit_edge, label %if.then61

land.lhs.true58.do.end70_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end70

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cifs_acl_by_path.descriptor.75, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73, i32 noundef %call4, i32 noundef %rc.0) #17
  br label %do.end70

do.end70:                                         ; preds = %if.then61, %land.lhs.true58.do.end70_crit_edge, %do.body46, %if.end39.do.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool71.not = icmp eq i32 %rc.0, 0
  br i1 %tobool71.not, label %if.else73, label %if.then72

if.then72:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_smb3_exit_err(i32 noundef %call4, ptr noundef nonnull @.str.73, i32 noundef %rc.0)
  br label %do.body78

if.else73:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_smb3_exit_done(i32 noundef %call4, ptr noundef nonnull @.str.73)
  br label %do.body78

do.body78:                                        ; preds = %if.else73, %if.then72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %28 = load i32, ptr @cifsFYI, align 4
  %and79 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.do.end106_crit_edge, label %do.body82

do.body78.do.end106_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end106

do.body82:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cifs_acl_by_path.descriptor.77, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_cifs_acl_by_path, %land.lhs.true94)) #17
          to label %do.end106 [label %land.lhs.true94], !srcloc !293

land.lhs.true94:                                  ; preds = %do.body82
  %call95 = call i32 @___ratelimit(ptr noundef nonnull @get_cifs_acl_by_path._rs.76, ptr noundef nonnull @.str.73) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true94.do.end106_crit_edge, label %if.then97

land.lhs.true94.do.end106_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end106

if.then97:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %pacllen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pacllen, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_cifs_acl_by_path.descriptor.77, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73, i32 noundef %rc.0, i32 noundef %30) #17
  br label %do.end106

do.end106:                                        ; preds = %if.then97, %land.lhs.true94.do.end106_crit_edge, %do.body82, %do.body78.do.end106_crit_edge
  br i1 %tobool71.not, label %if.end110, label %if.then108

if.then108:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #19
  %31 = inttoptr i32 %rc.0 to ptr
  br label %cleanup

if.end110:                                        ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %pntsd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pntsd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.then108, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %31, %if.then108 ], [ %33, %if.end110 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pntsd) #17
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifsFileInfo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_cifs_acl(ptr noundef %pnntsd, i32 noundef %acllen, ptr nocapture noundef readonly %inode, ptr noundef %path, i32 noundef %aclflag) local_unnamed_addr #0 align 64 {
entry:
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #17
  %0 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oplock, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @cifs_sb_tlink(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #17
  %5 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #17
  %6 = getelementptr inbounds i8, ptr %oparms, i32 28
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call1, i32 0, i32 5
  %9 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tl_tcon.i, align 4
  %call5 = tail call i32 @_get_xid() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end27_crit_edge, label %do.body8

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end27

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_cifs_acl.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_cifs_acl, %land.lhs.true)) #17
          to label %do.end27 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body8
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @set_cifs_acl._rs, ptr noundef nonnull @.str.28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end27_crit_edge, label %if.then15

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end27

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %12 = tail call i32 @llvm.read_register.i32(metadata !282) #17
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
  %fsuid = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %18)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call19 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_cifs_acl.descriptor, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.28, i32 noundef %call5, i32 noundef %call19) #17
  br label %do.end27

do.end27:                                         ; preds = %if.then15, %land.lhs.true.do.end27_crit_edge, %do.body8, %if.end.do.end27_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call5, ptr noundef nonnull @.str.28)
  %aclflag.off = add i32 %aclflag, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %aclflag.off)
  %switch = icmp ult i32 %aclflag.off, 2
  %spec.select = select i1 %switch, i32 524288, i32 262144
  %19 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %oparms, align 4
  %cifs_sb34 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %20 = ptrtoint ptr %cifs_sb34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %4, ptr %cifs_sb34, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %21 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end27.if.else.i_crit_edge, label %land.lhs.true.i

do.end27.if.else.i_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end27
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %4) #17
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end27.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i158 = phi i32 [ 0, %if.else.i ], [ 16384, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %22 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i158, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %23 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %disposition, align 4
  %path36 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %24 = ptrtoint ptr %path36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %path, ptr %path36, align 4
  %fid37 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %25 = ptrtoint ptr %fid37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %fid, ptr %fid37, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %26 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call38 = call i32 @CIFS_open(i32 noundef %call5, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end56, label %do.body42

do.body42:                                        ; preds = %cifs_create_options.exit
  %call43 = call i32 @___ratelimit(ptr noundef nonnull @set_cifs_acl._rs.29, ptr noundef nonnull @.str.28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body42.do.body85_crit_edge, label %do.end48

do.body42.do.body85_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body85

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #19
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #21
  br label %do.body85

if.end56:                                         ; preds = %cifs_create_options.exit
  %27 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fid, align 8
  %call57 = call i32 @CIFSSMBSetCIFSACL(i32 noundef %call5, ptr noundef %10, i16 noundef zeroext %28, ptr noundef %pnntsd, i32 noundef %acllen, i32 noundef %aclflag) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_cifs_acl.descriptor.32, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_cifs_acl, %land.lhs.true72)) #17
          to label %do.end82 [label %land.lhs.true72], !srcloc !293

land.lhs.true72:                                  ; preds = %if.end56
  %call73 = call i32 @___ratelimit(ptr noundef nonnull @set_cifs_acl._rs.31, ptr noundef nonnull @.str.28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true72.do.end82_crit_edge, label %if.then75

land.lhs.true72.do.end82_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end82

if.then75:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_cifs_acl.descriptor.32, ptr noundef nonnull @.str.33, i32 noundef %call57) #17
  br label %do.end82

do.end82:                                         ; preds = %if.then75, %land.lhs.true72.do.end82_crit_edge, %if.end56
  %29 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fid, align 8
  %conv = zext i16 %30 to i32
  %call84 = call i32 @CIFSSMBClose(i32 noundef %call5, ptr noundef %10, i32 noundef %conv) #17
  br label %do.body85

do.body85:                                        ; preds = %do.end82, %do.end48, %do.body42.do.body85_crit_edge
  %rc.0 = phi i32 [ %call38, %do.end48 ], [ %call38, %do.body42.do.body85_crit_edge ], [ %call57, %do.end82 ]
  call void @_free_xid(i32 noundef %call5) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %31 = load i32, ptr @cifsFYI, align 4
  %and88 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body85.do.end115_crit_edge, label %do.body91

do.body85.do.end115_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end115

do.body91:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_cifs_acl.descriptor.35, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_cifs_acl, %land.lhs.true103)) #17
          to label %do.end115 [label %land.lhs.true103], !srcloc !293

land.lhs.true103:                                 ; preds = %do.body91
  %call104 = call i32 @___ratelimit(ptr noundef nonnull @set_cifs_acl._rs.34, ptr noundef nonnull @.str.28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true103.do.end115_crit_edge, label %if.then106

land.lhs.true103.do.end115_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end115

if.then106:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_cifs_acl.descriptor.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.28, i32 noundef %call5, i32 noundef %rc.0) #17
  br label %do.end115

do.end115:                                        ; preds = %if.then106, %land.lhs.true103.do.end115_crit_edge, %do.body91, %do.body85.do.end115_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool116.not = icmp eq i32 %rc.0, 0
  br i1 %tobool116.not, label %if.else118, label %if.then117

if.then117:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_smb3_exit_err(i32 noundef %call5, ptr noundef nonnull @.str.28, i32 noundef %rc.0)
  br label %do.end121

if.else118:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @trace_smb3_exit_done(i32 noundef %call5, ptr noundef nonnull @.str.28)
  br label %do.end121

do.end121:                                        ; preds = %if.else118, %if.then117
  call void @cifs_put_tlink(ptr noundef %call1) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %rc.0, %do.end121 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFS_open(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetCIFSACL(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBClose(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_acl_to_fattr(ptr noundef %cifs_sb, ptr nocapture noundef %fattr, ptr noundef %inode, i1 noundef zeroext %mode_from_special_sid, ptr noundef %path, ptr noundef %pfid) local_unnamed_addr #0 align 64 {
entry:
  %acllen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acllen) #17
  %0 = ptrtoint ptr %acllen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %acllen, align 4
  %call = tail call ptr @cifs_sb_tlink(ptr noundef %cifs_sb) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_acl_to_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_acl_to_fattr, %land.lhs.true)) #17
          to label %do.end12 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %entry
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_acl_to_fattr._rs, ptr noundef nonnull @.str.36) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %if.then

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_acl_to_fattr.descriptor, ptr noundef nonnull @.str.37, ptr noundef %path) #17
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true.do.end12_crit_edge, %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end16:                                         ; preds = %do.end12
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server, align 8
  %ops18 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops18, align 4
  %tobool19.not = icmp eq ptr %pfid, null
  br i1 %tobool19.not, label %if.end16.if.else_crit_edge, label %land.lhs.true20

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true20:                                  ; preds = %if.end16
  %get_acl_by_fid = getelementptr inbounds %struct.smb_version_operations, ptr %9, i32 0, i32 94
  %10 = ptrtoint ptr %get_acl_by_fid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_acl_by_fid, align 4
  %tobool21.not = icmp eq ptr %11, null
  br i1 %tobool21.not, label %land.lhs.true20.if.else_crit_edge, label %if.then22

land.lhs.true20.if.else_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #19
  %call24 = call ptr %11(ptr noundef %cifs_sb, ptr noundef nonnull %pfid, ptr noundef nonnull %acllen, i32 noundef 0) #17
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true20.if.else_crit_edge, %if.end16.if.else_crit_edge
  %get_acl = getelementptr inbounds %struct.smb_version_operations, ptr %9, i32 0, i32 93
  %12 = ptrtoint ptr %get_acl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_acl, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.else29, label %if.then26

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call28 = call ptr %13(ptr noundef %cifs_sb, ptr noundef %inode, ptr noundef %path, ptr noundef nonnull %acllen, i32 noundef 0) #17
  br label %if.end31

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @cifs_put_tlink(ptr noundef %call) #17
  br label %cleanup

if.end31:                                         ; preds = %if.then26, %if.then22
  %pntsd.0 = phi ptr [ %call24, %if.then22 ], [ %call28, %if.then26 ]
  %cmp.i104 = icmp ugt ptr %pntsd.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then33, label %if.else50

if.then33:                                        ; preds = %if.end31
  %14 = ptrtoint ptr %pntsd.0 to i32
  %call37 = call i32 @___ratelimit(ptr noundef nonnull @cifs_acl_to_fattr._rs.38, ptr noundef nonnull @.str.36) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then33.if.end75_crit_edge, label %do.end42

if.then33.if.end75_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

do.end42:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %14) #21
  br label %if.end75

if.else50:                                        ; preds = %if.end31
  %15 = ptrtoint ptr %acllen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %acllen, align 4
  br i1 %mode_from_special_sid, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #19
  %call53 = call fastcc i32 @parse_sec_desc(ptr noundef %cifs_sb, ptr noundef %pntsd.0, i32 noundef %16, ptr noundef %fattr, i1 noundef zeroext true)
  call void @kfree(ptr noundef %pntsd.0) #17
  br label %if.end75

if.else54:                                        ; preds = %if.else50
  %call55 = call fastcc i32 @parse_sec_desc(ptr noundef %cifs_sb, ptr noundef %pntsd.0, i32 noundef %16, ptr noundef %fattr, i1 noundef zeroext false)
  call void @kfree(ptr noundef %pntsd.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else54.if.end75_crit_edge, label %do.body59

if.else54.if.end75_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

do.body59:                                        ; preds = %if.else54
  %call60 = call i32 @___ratelimit(ptr noundef nonnull @cifs_acl_to_fattr._rs.40, ptr noundef nonnull @.str.36) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.body59.if.end75_crit_edge, label %do.end65

do.body59.if.end75_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #19
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call55) #21
  br label %if.end75

if.end75:                                         ; preds = %do.end65, %do.body59.if.end75_crit_edge, %if.else54.if.end75_crit_edge, %if.then52, %do.end42, %if.then33.if.end75_crit_edge
  %rc.0 = phi i32 [ %14, %do.end42 ], [ %14, %if.then33.if.end75_crit_edge ], [ %call53, %if.then52 ], [ %call55, %do.end65 ], [ %call55, %do.body59.if.end75_crit_edge ], [ 0, %if.else54.if.end75_crit_edge ]
  call void @cifs_put_tlink(ptr noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.else29, %if.then14
  %retval.0 = phi i32 [ %1, %if.then14 ], [ %rc.0, %if.end75 ], [ -95, %if.else29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acllen) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_sec_desc(ptr noundef %cifs_sb, ptr noundef %pntsd, i32 noundef %acl_len, ptr nocapture noundef %fattr, i1 noundef zeroext %get_mode_from_special_sid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pntsd, i32 %acl_len
  %cmp = icmp eq ptr %pntsd, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %osidoffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 2
  %0 = ptrtoint ptr %osidoffset to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %osidoffset, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr1 = getelementptr i8, ptr %pntsd, i32 %2
  %gsidoffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 3
  %3 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %gsidoffset, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr2 = getelementptr i8, ptr %pntsd, i32 %5
  %dacloffset3 = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 5
  %6 = ptrtoint ptr %dacloffset3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %dacloffset3, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr4 = getelementptr i8, ptr %pntsd, i32 %8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sec_desc.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sec_desc, %land.lhs.true)) #17
          to label %do.end20 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %if.end
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sec_desc._rs, ptr noundef nonnull @.str.78) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end20_crit_edge, label %if.then12

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end20

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %pntsd to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %pntsd, align 1
  %conv = zext i16 %10 to i32
  %type = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %type, align 1
  %conv13 = zext i16 %12 to i32
  %13 = ptrtoint ptr %osidoffset to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %osidoffset, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %gsidoffset, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %sacloffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 4
  %19 = ptrtoint ptr %sacloffset to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %sacloffset, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sec_desc.descriptor, ptr noundef nonnull @.str.79, i32 noundef %conv, i32 noundef %conv13, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %8) #17
  br label %do.end20

do.end20:                                         ; preds = %if.then12, %land.lhs.true.do.end20_crit_edge, %if.end
  %call21 = tail call fastcc i32 @parse_sid(ptr noundef %add.ptr1, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end52, label %do.body25

do.body25:                                        ; preds = %do.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %22 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.body25.cleanup_crit_edge, label %do.body28

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sec_desc.descriptor.81, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sec_desc, %land.lhs.true40)) #17
          to label %cleanup [label %land.lhs.true40], !srcloc !293

land.lhs.true40:                                  ; preds = %do.body28
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sec_desc._rs.80, ptr noundef nonnull @.str.78) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then43

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sec_desc.descriptor.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78, i32 noundef %call21) #17
  br label %cleanup

if.end52:                                         ; preds = %do.end20
  %call53 = tail call i32 @sid_to_id(ptr noundef %cifs_sb, ptr noundef %add.ptr1, ptr noundef %fattr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end86, label %do.body57

do.body57:                                        ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %23 = load i32, ptr @cifsFYI, align 4
  %and58 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.cleanup_crit_edge, label %do.body61

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body61:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sec_desc.descriptor.84, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sec_desc, %land.lhs.true73)) #17
          to label %cleanup [label %land.lhs.true73], !srcloc !293

land.lhs.true73:                                  ; preds = %do.body61
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sec_desc._rs.83, ptr noundef nonnull @.str.78) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.cleanup_crit_edge, label %if.then76

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sec_desc.descriptor.84, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78, i32 noundef %call53) #17
  br label %cleanup

if.end86:                                         ; preds = %if.end52
  %call87 = tail call fastcc i32 @parse_sid(ptr noundef %add.ptr2, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end120, label %do.body91

do.body91:                                        ; preds = %if.end86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %24 = load i32, ptr @cifsFYI, align 4
  %and92 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body91.cleanup_crit_edge, label %do.body95

do.body91.cleanup_crit_edge:                      ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body95:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sec_desc.descriptor.87, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sec_desc, %land.lhs.true107)) #17
          to label %cleanup [label %land.lhs.true107], !srcloc !293

land.lhs.true107:                                 ; preds = %do.body95
  %call108 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sec_desc._rs.86, ptr noundef nonnull @.str.78) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %land.lhs.true107.cleanup_crit_edge, label %if.then110

land.lhs.true107.cleanup_crit_edge:               ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then110:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sec_desc.descriptor.87, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78, i32 noundef %call87) #17
  br label %cleanup

if.end120:                                        ; preds = %if.end86
  %call121 = tail call i32 @sid_to_id(ptr noundef %cifs_sb, ptr noundef %add.ptr2, ptr noundef %fattr, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end154, label %do.body125

do.body125:                                       ; preds = %if.end120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %25 = load i32, ptr @cifsFYI, align 4
  %and126 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body125.cleanup_crit_edge, label %do.body129

do.body125.cleanup_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body129:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sec_desc.descriptor.90, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sec_desc, %land.lhs.true141)) #17
          to label %cleanup [label %land.lhs.true141], !srcloc !293

land.lhs.true141:                                 ; preds = %do.body129
  %call142 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sec_desc._rs.89, ptr noundef nonnull @.str.78) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %land.lhs.true141.cleanup_crit_edge, label %if.then144

land.lhs.true141.cleanup_crit_edge:               ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then144:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sec_desc.descriptor.90, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78, i32 noundef %call121) #17
  br label %cleanup

if.end154:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool155.not = icmp eq i32 %7, 0
  br i1 %tobool155.not, label %do.body160, label %if.then156

if.then156:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @parse_dacl(ptr noundef %add.ptr4, ptr noundef %add.ptr, ptr noundef %add.ptr1, ptr noundef %add.ptr2, ptr noundef %fattr, i1 noundef zeroext %get_mode_from_special_sid)
  br label %cleanup

do.body160:                                       ; preds = %if.end154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %26 = load i32, ptr @cifsFYI, align 4
  %and161 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.body160.cleanup_crit_edge, label %do.body164

do.body160.cleanup_crit_edge:                     ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body164:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sec_desc.descriptor.93, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sec_desc, %land.lhs.true176)) #17
          to label %cleanup [label %land.lhs.true176], !srcloc !293

land.lhs.true176:                                 ; preds = %do.body164
  %call177 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sec_desc._rs.92, ptr noundef nonnull @.str.78) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %land.lhs.true176.cleanup_crit_edge, label %if.then179

land.lhs.true176.cleanup_crit_edge:               ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then179:                                       ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sec_desc.descriptor.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then179, %land.lhs.true176.cleanup_crit_edge, %do.body164, %do.body160.cleanup_crit_edge, %if.then156, %if.then144, %land.lhs.true141.cleanup_crit_edge, %do.body129, %do.body125.cleanup_crit_edge, %if.then110, %land.lhs.true107.cleanup_crit_edge, %do.body95, %do.body91.cleanup_crit_edge, %if.then76, %land.lhs.true73.cleanup_crit_edge, %do.body61, %do.body57.cleanup_crit_edge, %if.then43, %land.lhs.true40.cleanup_crit_edge, %do.body28, %do.body25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call21, %do.body25.cleanup_crit_edge ], [ %call21, %land.lhs.true40.cleanup_crit_edge ], [ %call21, %if.then43 ], [ %call53, %do.body57.cleanup_crit_edge ], [ %call53, %land.lhs.true73.cleanup_crit_edge ], [ %call53, %if.then76 ], [ %call87, %do.body91.cleanup_crit_edge ], [ %call87, %land.lhs.true107.cleanup_crit_edge ], [ %call87, %if.then110 ], [ %call121, %do.body125.cleanup_crit_edge ], [ %call121, %land.lhs.true141.cleanup_crit_edge ], [ %call121, %if.then144 ], [ 0, %if.then179 ], [ 0, %land.lhs.true176.cleanup_crit_edge ], [ 0, %do.body160.cleanup_crit_edge ], [ 0, %if.then156 ], [ %call21, %do.body28 ], [ %call53, %do.body61 ], [ %call87, %do.body95 ], [ %call121, %do.body129 ], [ 0, %do.body164 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @id_mode_to_cifs_acl(ptr noundef %inode, ptr noundef %path, ptr noundef %pnmode, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce) local_unnamed_addr #0 align 64 {
entry:
  %aclflag = alloca i32, align 4
  %secdesclen = alloca i32, align 4
  %nsecdesclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aclflag) #17
  %0 = ptrtoint ptr %aclflag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %aclflag, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secdesclen) #17
  %1 = ptrtoint ptr %secdesclen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %secdesclen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsecdesclen) #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @cifs_sb_tlink(ptr noundef %5) #17
  %cmp.i204 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call2, i32 0, i32 5
  %7 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %server, align 8
  %ops6 = getelementptr inbounds %struct.TCP_Server_Info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %ops6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_mode_to_cifs_acl.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@id_mode_to_cifs_acl, %land.lhs.true)) #17
          to label %do.end19 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %if.end
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @id_mode_to_cifs_acl._rs, ptr noundef nonnull @.str.44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %if.then14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end19

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_mode_to_cifs_acl.descriptor, ptr noundef nonnull @.str.45, ptr noundef %path) #17
  br label %do.end19

do.end19:                                         ; preds = %if.then14, %land.lhs.true.do.end19_crit_edge, %if.end
  %get_acl = getelementptr inbounds %struct.smb_version_operations, ptr %14, i32 0, i32 93
  %15 = ptrtoint ptr %get_acl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_acl, align 4
  %cmp = icmp eq ptr %16, null
  br i1 %cmp, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @cifs_put_tlink(ptr noundef %call2) #17
  br label %cleanup

if.end21:                                         ; preds = %do.end19
  %call23 = call ptr %16(ptr noundef %5, ptr noundef %inode, ptr noundef %path, ptr noundef nonnull %secdesclen, i32 noundef 0) #17
  %cmp.i205 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %if.then25, label %if.end42

if.then25:                                        ; preds = %if.end21
  %17 = ptrtoint ptr %call23 to i32
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @id_mode_to_cifs_acl._rs.46, ptr noundef nonnull @.str.44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then25.do.end41_crit_edge, label %do.end34

if.then25.do.end41_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

do.end34:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.44, i32 noundef %17) #21
  br label %do.end41

do.end41:                                         ; preds = %do.end34, %if.then25.do.end41_crit_edge
  call void @cifs_put_tlink(ptr noundef %call2) #17
  br label %cleanup

if.end42:                                         ; preds = %if.end21
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %19, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  %20 = xor i1 %tobool43.not, true
  %and47 = and i32 %19, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp ne i32 %and47, 0
  %21 = ptrtoint ptr %secdesclen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %secdesclen, align 4
  %tobool52.not = icmp eq ptr %pnmode, null
  br i1 %tobool52.not, label %if.end42.if.else61_crit_edge, label %land.lhs.true53

if.end42.if.else61_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else61

land.lhs.true53:                                  ; preds = %if.end42
  %23 = ptrtoint ptr %pnmode to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pnmode, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %24)
  %cmp54.not = icmp eq i64 %24, -1
  br i1 %cmp54.not, label %land.lhs.true53.if.else61_crit_edge, label %if.then55

land.lhs.true53.if.else61_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else61

if.then55:                                        ; preds = %land.lhs.true53
  br i1 %tobool43.not, label %if.else58, label %if.then57

if.then57:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #19
  %add = add i32 %22, 152
  %25 = ptrtoint ptr %nsecdesclen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %nsecdesclen, align 4
  br label %if.end72

if.else58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #19
  %add59 = add i32 %22, 380
  %26 = ptrtoint ptr %nsecdesclen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add59, ptr %nsecdesclen, align 4
  br label %if.end72

if.else61:                                        ; preds = %land.lhs.true53.if.else61_crit_edge, %if.end42.if.else61_crit_edge
  %27 = ptrtoint ptr %nsecdesclen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 156, ptr %nsecdesclen, align 4
  %dacloffset62 = getelementptr inbounds %struct.cifs_ntsd, ptr %call23, i32 0, i32 5
  %28 = ptrtoint ptr %dacloffset62 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %dacloffset62, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool63.not = icmp eq i32 %29, 0
  br i1 %tobool63.not, label %if.else61.if.end72_crit_edge, label %if.then64

if.else61.if.end72_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then64:                                        ; preds = %if.else61
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %add.ptr = getelementptr i8, ptr %call23, i32 %30
  br i1 %tobool43.not, label %if.else68, label %if.then66

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #19
  %num_aces = getelementptr inbounds %struct.cifs_acl, ptr %add.ptr, i32 0, i32 2
  %31 = ptrtoint ptr %num_aces to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %num_aces, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %mul = mul i32 %33, 76
  %add67 = add i32 %mul, 156
  %34 = ptrtoint ptr %nsecdesclen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add67, ptr %nsecdesclen, align 4
  br label %if.end72

if.else68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #19
  %size = getelementptr inbounds %struct.cifs_acl, ptr %add.ptr, i32 0, i32 1
  %35 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %size, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv = zext i16 %37 to i32
  %add69 = add nuw nsw i32 %conv, 156
  %38 = ptrtoint ptr %nsecdesclen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add69, ptr %nsecdesclen, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.then66, %if.else61.if.end72_crit_edge, %if.else58, %if.then57
  %39 = ptrtoint ptr %nsecdesclen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nsecdesclen, align 4
  %41 = call i32 @llvm.umax.i32(i32 %40, i32 332)
  %42 = ptrtoint ptr %nsecdesclen to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %nsecdesclen, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #20
  %tobool77.not = icmp eq ptr %call9.i, null
  br i1 %tobool77.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %call23) #17
  call void @cifs_put_tlink(ptr noundef %call2) #17
  br label %cleanup

if.end79:                                         ; preds = %if.end72
  %43 = ptrtoint ptr %secdesclen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %secdesclen, align 4
  %call84 = call fastcc i32 @build_sec_desc(ptr noundef %call23, ptr noundef nonnull %call9.i, i32 noundef %44, ptr noundef nonnull %nsecdesclen, ptr noundef %pnmode, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i1 noundef zeroext %20, i1 noundef zeroext %tobool48.not, ptr noundef nonnull %aclflag)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_mode_to_cifs_acl.descriptor.48, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@id_mode_to_cifs_acl, %land.lhs.true99)) #17
          to label %do.end109 [label %land.lhs.true99], !srcloc !293

land.lhs.true99:                                  ; preds = %if.end79
  %call100 = call i32 @___ratelimit(ptr noundef nonnull @id_mode_to_cifs_acl._rs.47, ptr noundef nonnull @.str.44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %land.lhs.true99.do.end109_crit_edge, label %if.then102

land.lhs.true99.do.end109_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end109

if.then102:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_mode_to_cifs_acl.descriptor.48, ptr noundef nonnull @.str.49, i32 noundef %call84) #17
  br label %do.end109

do.end109:                                        ; preds = %if.then102, %land.lhs.true99.do.end109_crit_edge, %if.end79
  %set_acl = getelementptr inbounds %struct.smb_version_operations, ptr %14, i32 0, i32 95
  %45 = ptrtoint ptr %set_acl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_acl, align 4
  %cmp110 = icmp eq ptr %46, null
  %spec.select = select i1 %cmp110, i32 -95, i32 %call84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool114.not = icmp eq i32 %spec.select, 0
  br i1 %tobool114.not, label %if.then115, label %do.end109.if.end143_crit_edge

do.end109.if.end143_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end143

if.then115:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %nsecdesclen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nsecdesclen, align 4
  %49 = ptrtoint ptr %aclflag to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %aclflag, align 4
  %call117 = call i32 %46(ptr noundef nonnull %call9.i, i32 noundef %48, ptr noundef %inode, ptr noundef %path, i32 noundef %50) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_mode_to_cifs_acl.descriptor.51, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@id_mode_to_cifs_acl, %land.lhs.true132)) #17
          to label %if.end143 [label %land.lhs.true132], !srcloc !293

land.lhs.true132:                                 ; preds = %if.then115
  %call133 = call i32 @___ratelimit(ptr noundef nonnull @id_mode_to_cifs_acl._rs.50, ptr noundef nonnull @.str.44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.if.end143_crit_edge, label %if.then135

land.lhs.true132.if.end143_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end143

if.then135:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_mode_to_cifs_acl.descriptor.51, ptr noundef nonnull @.str.52, i32 noundef %call117) #17
  br label %if.end143

if.end143:                                        ; preds = %if.then135, %land.lhs.true132.if.end143_crit_edge, %if.then115, %do.end109.if.end143_crit_edge
  %rc.1 = phi i32 [ %spec.select, %do.end109.if.end143_crit_edge ], [ %call117, %if.then135 ], [ %call117, %land.lhs.true132.if.end143_crit_edge ], [ %call117, %if.then115 ]
  call void @cifs_put_tlink(ptr noundef %call2) #17
  call void @kfree(ptr noundef nonnull %call9.i) #17
  call void @kfree(ptr noundef %call23) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.then78, %do.end41, %if.then20, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ -95, %if.then20 ], [ %17, %do.end41 ], [ %rc.1, %if.end143 ], [ -12, %if.then78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsecdesclen) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secdesclen) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aclflag) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_sec_desc(ptr noundef readonly %pntsd, ptr noundef %pnntsd, i32 noundef %secdesclen, ptr nocapture noundef writeonly %pnsecdesclen, ptr noundef %pnmode, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, i1 noundef zeroext %mode_from_sid, i1 noundef zeroext %id_from_sid, ptr nocapture noundef %aclflag) unnamed_addr #0 align 64 {
entry:
  %nsize.i = alloca i16, align 2
  %num_aces.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dacloffset3 = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 5
  %0 = ptrtoint ptr %dacloffset3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %dacloffset3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr = getelementptr i8, ptr %pntsd, i32 %secdesclen
  %add.ptr4 = getelementptr i8, ptr %pntsd, i32 %2
  %size5 = getelementptr inbounds %struct.cifs_acl, ptr %add.ptr4, i32 0, i32 1
  %3 = ptrtoint ptr %size5 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %size5, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %add.ptr6 = getelementptr i8, ptr %add.ptr4, i32 %conv
  %cmp = icmp ult ptr %add.ptr, %add.ptr6
  br i1 %cmp, label %do.body9, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

do.body9:                                         ; preds = %if.then
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @build_sec_desc._rs, ptr noundef nonnull @__func__.build_sec_desc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %do.body9.cleanup175_crit_edge, label %do.end

do.body9.cleanup175_crit_edge:                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup175

do.end:                                           ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #21
  br label %cleanup175

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %dacl_ptr.0 = phi ptr [ %add.ptr4, %if.then.if.end19_crit_edge ], [ null, %entry.if.end19_crit_edge ]
  %osidoffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 2
  %6 = ptrtoint ptr %osidoffset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %osidoffset, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr20 = getelementptr i8, ptr %pntsd, i32 %8
  %gsidoffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 3
  %9 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %gsidoffset, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add.ptr21 = getelementptr i8, ptr %pntsd, i32 %11
  %tobool22.not = icmp eq ptr %pnmode, null
  br i1 %tobool22.not, label %if.end19.if.else_crit_edge, label %land.lhs.true

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %if.end19
  %12 = ptrtoint ptr %pnmode to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pnmode, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp23.not = icmp eq i64 %13, -1
  br i1 %cmp23.not, label %land.lhs.true.if.else_crit_edge, label %if.then25

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then25:                                        ; preds = %land.lhs.true
  %add.ptr26 = getelementptr i8, ptr %pnntsd, i32 20
  br i1 %tobool.not, label %if.then25.cond.end_crit_edge, label %cond.true

if.then25.cond.end_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %dacl_ptr.0 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %dacl_ptr.0, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then25.cond.end_crit_edge
  %cond = phi i16 [ %15, %cond.true ], [ 512, %if.then25.cond.end_crit_edge ]
  %16 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %cond, ptr %add.ptr26, align 1
  %size31 = getelementptr i8, ptr %pnntsd, i32 22
  %17 = ptrtoint ptr %size31 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 0, ptr %size31, align 1
  %num_aces = getelementptr i8, ptr %pnntsd, i32 24
  %18 = ptrtoint ptr %num_aces to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %num_aces, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nsize.i) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_aces.i) #17
  %19 = ptrtoint ptr %num_aces.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_aces.i, align 4
  %20 = ptrtoint ptr %nsize.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 8, ptr %nsize.i, align 2
  %tobool.not.i = icmp eq ptr %dacl_ptr.0, null
  br i1 %tobool.not.i, label %cond.end.finalize_dacl.sink.split.i_crit_edge, label %if.end.i

cond.end.finalize_dacl.sink.split.i_crit_edge:    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %finalize_dacl.sink.split.i

if.end.i:                                         ; preds = %cond.end
  %num_aces2.i = getelementptr inbounds %struct.cifs_acl, ptr %dacl_ptr.0, i32 0, i32 2
  %21 = ptrtoint ptr %num_aces2.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %num_aces2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp3.not.i = icmp eq i32 %22, 0
  br i1 %cmp3.not.i, label %if.end.i.finalize_dacl.sink.split.i_crit_edge, label %for.body.preheader.i

if.end.i.finalize_dacl.sink.split.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %finalize_dacl.sink.split.i

for.body.preheader.i:                             ; preds = %if.end.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #17
  %umax.i = tail call i32 @llvm.umax.i32(i32 %23, i32 1) #17
  br label %for.body.i

for.body.i:                                       ; preds = %next_ace.i.for.body.i_crit_edge, %for.body.preheader.i
  %new_aces_set.0.off06.i = phi i1 [ %new_aces_set.1.off0.i, %next_ace.i.for.body.i_crit_edge ], [ false, %for.body.preheader.i ]
  %size.05.i = phi i32 [ %add41.i, %next_ace.i.for.body.i_crit_edge ], [ 8, %for.body.preheader.i ]
  %i.04.i = phi i32 [ %inc43.i, %next_ace.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %conv.i = and i32 %size.05.i, 65535
  %add.ptr.i = getelementptr i8, ptr %dacl_ptr.0, i32 %conv.i
  br i1 %new_aces_set.0.off06.i, label %for.body.i.if.end8.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags.i, align 1
  %26 = and i8 %25, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not.i = icmp eq i8 %26, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @populate_new_aces(ptr noundef %add.ptr26, ptr noundef %add.ptr20, ptr noundef %add.ptr21, ptr noundef nonnull %pnmode, ptr noundef nonnull %num_aces.i, ptr noundef nonnull %nsize.i, i1 noundef zeroext %mode_from_sid) #17
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %land.lhs.true.i.if.end8.i_crit_edge, %for.body.i.if.end8.i_crit_edge
  %new_aces_set.1.off0.i = phi i1 [ true, %for.body.i.if.end8.i_crit_edge ], [ true, %if.then6.i ], [ false, %land.lhs.true.i.if.end8.i_crit_edge ]
  %sid.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4
  %call.i = tail call fastcc i32 @compare_sids(ptr noundef %sid.i, ptr noundef nonnull @sid_unix_NFS_mode) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp eq i32 %call.i, 0
  br i1 %cmp9.i, label %if.end8.i.next_ace.i_crit_edge, label %lor.lhs.false.i

if.end8.i.next_ace.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next_ace.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %call12.i = tail call fastcc i32 @compare_sids(ptr noundef %sid.i, ptr noundef %add.ptr20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %lor.lhs.false.i.next_ace.i_crit_edge, label %lor.lhs.false15.i

lor.lhs.false.i.next_ace.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next_ace.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %call17.i = tail call fastcc i32 @compare_sids(ptr noundef %sid.i, ptr noundef %add.ptr21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp eq i32 %call17.i, 0
  br i1 %cmp18.i, label %lor.lhs.false15.i.next_ace.i_crit_edge, label %lor.lhs.false20.i

lor.lhs.false15.i.next_ace.i_crit_edge:           ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next_ace.i

lor.lhs.false20.i:                                ; preds = %lor.lhs.false15.i
  %call22.i = tail call fastcc i32 @compare_sids(ptr noundef %sid.i, ptr noundef nonnull @sid_everyone) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.i, label %lor.lhs.false20.i.next_ace.i_crit_edge, label %lor.lhs.false25.i

lor.lhs.false20.i.next_ace.i_crit_edge:           ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next_ace.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false20.i
  %call27.i = tail call fastcc i32 @compare_sids(ptr noundef %sid.i, ptr noundef nonnull @sid_authusers) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp eq i32 %call27.i, 0
  br i1 %cmp28.i, label %lor.lhs.false25.i.next_ace.i_crit_edge, label %if.end31.i

lor.lhs.false25.i.next_ace.i_crit_edge:           ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %next_ace.i

if.end31.i:                                       ; preds = %lor.lhs.false25.i
  %27 = ptrtoint ptr %nsize.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nsize.i, align 2
  %conv32.i = zext i16 %28 to i32
  %add.ptr33.i = getelementptr i8, ptr %add.ptr26, i32 %conv32.i
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i, align 1
  %31 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %add.ptr33.i, align 1
  %flags.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags.i.i, align 1
  %flags2.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %flags2.i.i, align 1
  %access_req.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 3
  %35 = ptrtoint ptr %access_req.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %access_req.i.i, align 1
  %access_req3.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 3
  %37 = ptrtoint ptr %access_req3.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %access_req3.i.i, align 1
  %sid6.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4
  %38 = ptrtoint ptr %sid.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sid.i, align 1
  %40 = ptrtoint ptr %sid6.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %sid6.i.i, align 1
  %num_subauth.i26.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %num_subauth.i26.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_subauth.i26.i.i, align 1
  %43 = tail call i8 @llvm.umin.i8(i8 %42, i8 15) #17
  %num_subauth7.i27.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %num_subauth7.i27.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %num_subauth7.i27.i.i, align 1
  %arrayidx.i28.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %arrayidx.i28.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i28.i.i, align 1
  %arrayidx11.i29.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %arrayidx11.i29.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx11.i29.i.i, align 1
  %arrayidx.1.i30.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx.1.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.1.i30.i.i, align 1
  %arrayidx11.1.i31.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx11.1.i31.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx11.1.i31.i.i, align 1
  %arrayidx.2.i32.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4, i32 2, i32 2
  %51 = ptrtoint ptr %arrayidx.2.i32.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.2.i32.i.i, align 1
  %arrayidx11.2.i33.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4, i32 2, i32 2
  %53 = ptrtoint ptr %arrayidx11.2.i33.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx11.2.i33.i.i, align 1
  %arrayidx.3.i34.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4, i32 2, i32 3
  %54 = ptrtoint ptr %arrayidx.3.i34.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.3.i34.i.i, align 1
  %arrayidx11.3.i35.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4, i32 2, i32 3
  %56 = ptrtoint ptr %arrayidx11.3.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx11.3.i35.i.i, align 1
  %arrayidx.4.i36.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4, i32 2, i32 4
  %57 = ptrtoint ptr %arrayidx.4.i36.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.4.i36.i.i, align 1
  %arrayidx11.4.i37.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4, i32 2, i32 4
  %59 = ptrtoint ptr %arrayidx11.4.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx11.4.i37.i.i, align 1
  %arrayidx.5.i38.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4, i32 2, i32 5
  %60 = ptrtoint ptr %arrayidx.5.i38.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.5.i38.i.i, align 1
  %arrayidx11.5.i39.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4, i32 2, i32 5
  %62 = ptrtoint ptr %arrayidx11.5.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx11.5.i39.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp1548.not.i40.i.i = icmp eq i8 %43, 0
  br i1 %cmp1548.not.i40.i.i, label %if.end31.i.cifs_copy_ace.exit.i_crit_edge, label %if.end31.i.for.body17.i47.i.i_crit_edge

if.end31.i.for.body17.i47.i.i_crit_edge:          ; preds = %if.end31.i
  br label %for.body17.i47.i.i

if.end31.i.cifs_copy_ace.exit.i_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cifs_copy_ace.exit.i

for.body17.i47.i.i:                               ; preds = %for.body17.i47.i.i.for.body17.i47.i.i_crit_edge, %if.end31.i.for.body17.i47.i.i_crit_edge
  %i.149.i41.i.i = phi i32 [ %inc22.i44.i.i, %for.body17.i47.i.i.for.body17.i47.i.i_crit_edge ], [ 0, %if.end31.i.for.body17.i47.i.i_crit_edge ]
  %arrayidx18.i42.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 4, i32 3, i32 %i.149.i41.i.i
  %63 = ptrtoint ptr %arrayidx18.i42.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %arrayidx18.i42.i.i, align 1
  %arrayidx20.i43.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 4, i32 3, i32 %i.149.i41.i.i
  %65 = ptrtoint ptr %arrayidx20.i43.i.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %arrayidx20.i43.i.i, align 1
  %inc22.i44.i.i = add nuw nsw i32 %i.149.i41.i.i, 1
  %66 = ptrtoint ptr %num_subauth7.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_subauth7.i27.i.i, align 1
  %conv14.i45.i.i = zext i8 %67 to i32
  %cmp15.i46.i.i = icmp ult i32 %inc22.i44.i.i, %conv14.i45.i.i
  br i1 %cmp15.i46.i.i, label %for.body17.i47.i.i.for.body17.i47.i.i_crit_edge, label %for.body17.i47.i.i.cifs_copy_ace.exit.i_crit_edge

for.body17.i47.i.i.cifs_copy_ace.exit.i_crit_edge: ; preds = %for.body17.i47.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cifs_copy_ace.exit.i

for.body17.i47.i.i.for.body17.i47.i.i_crit_edge:  ; preds = %for.body17.i47.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i47.i.i

cifs_copy_ace.exit.i:                             ; preds = %for.body17.i47.i.i.cifs_copy_ace.exit.i_crit_edge, %if.end31.i.cifs_copy_ace.exit.i_crit_edge
  %size.0.in.in.in.in.i.i = phi i8 [ 0, %if.end31.i.cifs_copy_ace.exit.i_crit_edge ], [ %67, %for.body17.i47.i.i.cifs_copy_ace.exit.i_crit_edge ]
  %size.0.in.in.in.i.i = zext i8 %size.0.in.in.in.in.i.i to i16
  %size.0.in.in.i.i = shl nuw nsw i16 %size.0.in.in.in.i.i, 2
  %size.0.i.i = add nuw nsw i16 %size.0.in.in.i.i, 16
  %68 = tail call i16 @llvm.bswap.i16(i16 %size.0.i.i) #17
  %size13.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr33.i, i32 0, i32 2
  %69 = ptrtoint ptr %size13.i.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %68, ptr %size13.i.i, align 1
  %add.i = add i16 %size.0.i.i, %28
  %70 = ptrtoint ptr %nsize.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %add.i, ptr %nsize.i, align 2
  %71 = ptrtoint ptr %num_aces.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_aces.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %num_aces.i, align 4
  br label %next_ace.i

next_ace.i:                                       ; preds = %cifs_copy_ace.exit.i, %lor.lhs.false25.i.next_ace.i_crit_edge, %lor.lhs.false20.i.next_ace.i_crit_edge, %lor.lhs.false15.i.next_ace.i_crit_edge, %lor.lhs.false.i.next_ace.i_crit_edge, %if.end8.i.next_ace.i_crit_edge
  %size38.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i, i32 0, i32 2
  %73 = ptrtoint ptr %size38.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %size38.i, align 1
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #17
  %conv39.i = zext i16 %75 to i32
  %add41.i = add nuw nsw i32 %conv.i, %conv39.i
  %inc43.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc43.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %next_ace.i.for.body.i_crit_edge

next_ace.i.for.body.i_crit_edge:                  ; preds = %next_ace.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %next_ace.i
  br i1 %new_aces_set.1.off0.i, label %for.end.i.set_chmod_dacl.exit_crit_edge, label %for.end.i.finalize_dacl.sink.split.i_crit_edge

for.end.i.finalize_dacl.sink.split.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %finalize_dacl.sink.split.i

for.end.i.set_chmod_dacl.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_chmod_dacl.exit

finalize_dacl.sink.split.i:                       ; preds = %for.end.i.finalize_dacl.sink.split.i_crit_edge, %if.end.i.finalize_dacl.sink.split.i_crit_edge, %cond.end.finalize_dacl.sink.split.i_crit_edge
  call fastcc void @populate_new_aces(ptr noundef %add.ptr26, ptr noundef %add.ptr20, ptr noundef %add.ptr21, ptr noundef nonnull %pnmode, ptr noundef nonnull %num_aces.i, ptr noundef nonnull %nsize.i, i1 noundef zeroext %mode_from_sid) #17
  br label %set_chmod_dacl.exit

set_chmod_dacl.exit:                              ; preds = %finalize_dacl.sink.split.i, %for.end.i.set_chmod_dacl.exit_crit_edge
  %76 = ptrtoint ptr %num_aces.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_aces.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #17
  %79 = ptrtoint ptr %num_aces to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %num_aces, align 1
  %80 = ptrtoint ptr %nsize.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %nsize.i, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #17
  %83 = ptrtoint ptr %size31 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %size31, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_aces.i) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nsize.i) #17
  %conv35 = zext i16 %81 to i32
  %add = add nuw nsw i32 %conv35, 20
  %call36 = tail call fastcc i32 @copy_sec_desc(ptr noundef %pntsd, ptr noundef %pnntsd, i32 noundef %add, ptr noundef null, ptr noundef null)
  %84 = ptrtoint ptr %pnsecdesclen to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call36, ptr %pnsecdesclen, align 4
  %85 = ptrtoint ptr %aclflag to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %aclflag, align 4
  %or = or i32 %86, 4
  store i32 %or, ptr %aclflag, align 4
  br label %cleanup175

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end19.if.else_crit_edge
  %add.ptr37 = getelementptr i8, ptr %pnntsd, i32 20
  br i1 %tobool.not, label %if.else.cond.end43_crit_edge, label %cond.true39

if.else.cond.end43_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end43

cond.true39:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %87 = ptrtoint ptr %dacl_ptr.0 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %dacl_ptr.0, align 1
  br label %cond.end43

cond.end43:                                       ; preds = %cond.true39, %if.else.cond.end43_crit_edge
  %cond44 = phi i16 [ %88, %cond.true39 ], [ 512, %if.else.cond.end43_crit_edge ]
  %89 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %cond44, ptr %add.ptr37, align 1
  %tobool47.not = icmp eq ptr %dacl_ptr.0, null
  br i1 %tobool47.not, label %cond.end43.cond.end51_crit_edge, label %cond.true48

cond.end43.cond.end51_crit_edge:                  ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end51

cond.true48:                                      ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #19
  %num_aces49 = getelementptr inbounds %struct.cifs_acl, ptr %dacl_ptr.0, i32 0, i32 2
  %90 = ptrtoint ptr %num_aces49 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %num_aces49, align 1
  br label %cond.end51

cond.end51:                                       ; preds = %cond.true48, %cond.end43.cond.end51_crit_edge
  %cond52 = phi i32 [ %91, %cond.true48 ], [ 0, %cond.end43.cond.end51_crit_edge ]
  %num_aces53 = getelementptr i8, ptr %pnntsd, i32 24
  %92 = ptrtoint ptr %num_aces53 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %cond52, ptr %num_aces53, align 1
  %uid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %uid.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp.i.not = icmp eq i32 %uid.coerce.fca.0.extract.i.i, -1
  br i1 %cmp.i.not, label %cond.end51.if.end101_crit_edge, label %if.then56

cond.end51.if.end101_crit_edge:                   ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then56:                                        ; preds = %cond.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 68) #22
  %tobool58.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool58.not, label %if.then56.chown_chgrp_exit_crit_edge, label %if.end60

if.then56.chown_chgrp_exit_crit_edge:             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  br label %chown_chgrp_exit

if.end60:                                         ; preds = %if.then56
  %call62 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %uid.coerce) #17
  br i1 %id_from_sid, label %if.then64, label %if.else70

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  %94 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %call7.i.i, align 8
  %NumAuth = getelementptr inbounds %struct.owner_sid, ptr %call7.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %NumAuth to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 3, ptr %NumAuth, align 1
  %arrayidx = getelementptr %struct.owner_sid, ptr %call7.i.i, i32 0, i32 2, i32 5
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 5, ptr %arrayidx, align 1
  %SubAuthorities = getelementptr inbounds %struct.owner_sid, ptr %call7.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %SubAuthorities to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1476395008, ptr %SubAuthorities, align 8
  %arrayidx67 = getelementptr %struct.owner_sid, ptr %call7.i.i, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 16777216, ptr %arrayidx67, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %call62)
  %arrayidx69 = getelementptr %struct.owner_sid, ptr %call7.i.i, i32 0, i32 3, i32 2
  %100 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx69, align 8
  br label %cleanup.thread300

if.else70:                                        ; preds = %if.end60
  %call71 = tail call fastcc i32 @id_to_sid(i32 noundef %call62, i32 noundef 1, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.else70.cleanup.thread300_crit_edge, label %do.body75

if.else70.cleanup.thread300_crit_edge:            ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread300

do.body75:                                        ; preds = %if.else70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %101 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %do.body75.chown_chgrp_exit_crit_edge, label %do.body78

do.body75.chown_chgrp_exit_crit_edge:             ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #19
  br label %chown_chgrp_exit

do.body78:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_sec_desc.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_sec_desc, %land.lhs.true85)) #17
          to label %chown_chgrp_exit [label %land.lhs.true85], !srcloc !293

land.lhs.true85:                                  ; preds = %do.body78
  %call86 = tail call i32 @___ratelimit(ptr noundef nonnull @build_sec_desc._rs.124, ptr noundef nonnull @__func__.build_sec_desc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %land.lhs.true85.chown_chgrp_exit_crit_edge, label %if.then88

land.lhs.true85.chown_chgrp_exit_crit_edge:       ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #19
  br label %chown_chgrp_exit

if.then88:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_sec_desc.descriptor, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.build_sec_desc, i32 noundef %call71, i32 noundef %call62) #17
  br label %chown_chgrp_exit

cleanup.thread300:                                ; preds = %if.else70.cleanup.thread300_crit_edge, %if.then64
  %102 = ptrtoint ptr %aclflag to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %aclflag, align 4
  %or100 = or i32 %103, 1
  store i32 %or100, ptr %aclflag, align 4
  br label %if.end101

if.end101:                                        ; preds = %cleanup.thread300, %cond.end51.if.end101_crit_edge
  %nowner_sid_ptr.0 = phi ptr [ null, %cond.end51.if.end101_crit_edge ], [ %call7.i.i, %cleanup.thread300 ]
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %gid.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp.i274.not = icmp eq i32 %gid.coerce.fca.0.extract.i.i, -1
  br i1 %cmp.i274.not, label %if.end101.if.end164_crit_edge, label %if.then104

if.end101.if.end164_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end164

if.then104:                                       ; preds = %if.end101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %104 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i275 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3520, i32 noundef 68) #22
  %tobool107.not = icmp eq ptr %call7.i.i275, null
  br i1 %tobool107.not, label %if.then104.chown_chgrp_exit_crit_edge, label %if.end109

if.then104.chown_chgrp_exit_crit_edge:            ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #19
  br label %chown_chgrp_exit

if.end109:                                        ; preds = %if.then104
  %call111 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %gid.coerce) #17
  br i1 %id_from_sid, label %if.then113, label %if.else124

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #19
  %105 = ptrtoint ptr %call7.i.i275 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %call7.i.i275, align 8
  %NumAuth115 = getelementptr inbounds %struct.owner_sid, ptr %call7.i.i275, i32 0, i32 1
  %106 = ptrtoint ptr %NumAuth115 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %NumAuth115, align 1
  %arrayidx117 = getelementptr %struct.owner_sid, ptr %call7.i.i275, i32 0, i32 2, i32 5
  %107 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 5, ptr %arrayidx117, align 1
  %SubAuthorities118 = getelementptr inbounds %struct.owner_sid, ptr %call7.i.i275, i32 0, i32 3
  %108 = ptrtoint ptr %SubAuthorities118 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1476395008, ptr %SubAuthorities118, align 8
  %arrayidx121 = getelementptr %struct.owner_sid, ptr %call7.i.i275, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 33554432, ptr %arrayidx121, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %call111)
  %arrayidx123 = getelementptr %struct.owner_sid, ptr %call7.i.i275, i32 0, i32 3, i32 2
  %111 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx123, align 8
  br label %cleanup161.thread308

if.else124:                                       ; preds = %if.end109
  %call125 = tail call fastcc i32 @id_to_sid(i32 noundef %call111, i32 noundef 2, ptr noundef nonnull %call7.i.i275)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.else124.cleanup161.thread308_crit_edge, label %do.body129

if.else124.cleanup161.thread308_crit_edge:        ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup161.thread308

do.body129:                                       ; preds = %if.else124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %112 = load i32, ptr @cifsFYI, align 4
  %and130 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %do.body129.chown_chgrp_exit_crit_edge, label %do.body133

do.body129.chown_chgrp_exit_crit_edge:            ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #19
  br label %chown_chgrp_exit

do.body133:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_sec_desc.descriptor.127, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_sec_desc, %land.lhs.true145)) #17
          to label %chown_chgrp_exit [label %land.lhs.true145], !srcloc !293

land.lhs.true145:                                 ; preds = %do.body133
  %call146 = tail call i32 @___ratelimit(ptr noundef nonnull @build_sec_desc._rs.126, ptr noundef nonnull @__func__.build_sec_desc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %land.lhs.true145.chown_chgrp_exit_crit_edge, label %if.then148

land.lhs.true145.chown_chgrp_exit_crit_edge:      ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #19
  br label %chown_chgrp_exit

if.then148:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_sec_desc.descriptor.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.build_sec_desc, i32 noundef %call125, i32 noundef %call111) #17
  br label %chown_chgrp_exit

cleanup161.thread308:                             ; preds = %if.else124.cleanup161.thread308_crit_edge, %if.then113
  %113 = ptrtoint ptr %aclflag to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %aclflag, align 4
  %or160 = or i32 %114, 2
  store i32 %or160, ptr %aclflag, align 4
  br label %if.end164

if.end164:                                        ; preds = %cleanup161.thread308, %if.end101.if.end164_crit_edge
  %ngroup_sid_ptr.0 = phi ptr [ null, %if.end101.if.end164_crit_edge ], [ %call7.i.i275, %cleanup161.thread308 ]
  br i1 %tobool.not, label %if.end164.if.end169_crit_edge, label %if.then166

if.end164.if.end169_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end169

if.then166:                                       ; preds = %if.end164
  %num_aces.i276 = getelementptr inbounds %struct.cifs_acl, ptr %dacl_ptr.0, i32 0, i32 2
  %115 = ptrtoint ptr %num_aces.i276 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %num_aces.i276, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp135.not.i = icmp eq i32 %116, 0
  br i1 %cmp135.not.i, label %if.then166.replace_sids_and_copy_aces.exit_crit_edge, label %for.body.lr.ph.i

if.then166.replace_sids_and_copy_aces.exit_crit_edge: ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #19
  br label %replace_sids_and_copy_aces.exit

for.body.lr.ph.i:                                 ; preds = %if.then166
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #17
  %tobool.not.i277 = icmp eq ptr %nowner_sid_ptr.0, null
  %num_subauth.i.i.i = getelementptr inbounds %struct.cifs_sid, ptr %nowner_sid_ptr.0, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr %struct.cifs_sid, ptr %nowner_sid_ptr.0, i32 0, i32 2, i32 0
  %arrayidx.1.i.i.i = getelementptr %struct.cifs_sid, ptr %nowner_sid_ptr.0, i32 0, i32 2, i32 1
  %arrayidx.2.i.i.i = getelementptr %struct.cifs_sid, ptr %nowner_sid_ptr.0, i32 0, i32 2, i32 2
  %arrayidx.3.i.i.i = getelementptr %struct.cifs_sid, ptr %nowner_sid_ptr.0, i32 0, i32 2, i32 3
  %arrayidx.4.i.i.i = getelementptr %struct.cifs_sid, ptr %nowner_sid_ptr.0, i32 0, i32 2, i32 4
  %arrayidx.5.i.i.i = getelementptr %struct.cifs_sid, ptr %nowner_sid_ptr.0, i32 0, i32 2, i32 5
  %tobool6.not.i = icmp eq ptr %ngroup_sid_ptr.0, null
  %num_subauth.i.i45.i = getelementptr inbounds %struct.cifs_sid, ptr %ngroup_sid_ptr.0, i32 0, i32 1
  %arrayidx.i.i47.i = getelementptr %struct.cifs_sid, ptr %ngroup_sid_ptr.0, i32 0, i32 2, i32 0
  %arrayidx.1.i.i49.i = getelementptr %struct.cifs_sid, ptr %ngroup_sid_ptr.0, i32 0, i32 2, i32 1
  %arrayidx.2.i.i51.i = getelementptr %struct.cifs_sid, ptr %ngroup_sid_ptr.0, i32 0, i32 2, i32 2
  %arrayidx.3.i.i53.i = getelementptr %struct.cifs_sid, ptr %ngroup_sid_ptr.0, i32 0, i32 2, i32 3
  %arrayidx.4.i.i55.i = getelementptr %struct.cifs_sid, ptr %ngroup_sid_ptr.0, i32 0, i32 2, i32 4
  %arrayidx.5.i.i57.i = getelementptr %struct.cifs_sid, ptr %ngroup_sid_ptr.0, i32 0, i32 2, i32 5
  %umax.i278 = tail call i32 @llvm.umax.i32(i32 %117, i32 1) #17
  br label %for.body.i281

for.body.i281:                                    ; preds = %if.end16.i.for.body.i281_crit_edge, %for.body.lr.ph.i
  %nsize.0138.i = phi i16 [ 8, %for.body.lr.ph.i ], [ %add23.i, %if.end16.i.for.body.i281_crit_edge ]
  %size.0137.i = phi i32 [ 8, %for.body.lr.ph.i ], [ %add.i292, %if.end16.i.for.body.i281_crit_edge ]
  %i.0136.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i293, %if.end16.i.for.body.i281_crit_edge ]
  %conv.i279 = and i32 %size.0137.i, 65535
  %add.ptr.i280 = getelementptr i8, ptr %dacl_ptr.0, i32 %conv.i279
  %conv1.i = zext i16 %nsize.0138.i to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr37, i32 %conv1.i
  br i1 %tobool.not.i277, label %for.body.i281.if.else.i_crit_edge, label %land.lhs.true.i284

for.body.i281.if.else.i_crit_edge:                ; preds = %for.body.i281
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i284:                               ; preds = %for.body.i281
  %sid.i282 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4
  %call.i283 = tail call fastcc i32 @compare_sids(ptr noundef %sid.i282, ptr noundef %add.ptr20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i283)
  %cmp3.i = icmp eq i32 %call.i283, 0
  br i1 %cmp3.i, label %if.then.i.i, label %land.lhs.true.i284.if.else.i_crit_edge

land.lhs.true.i284.if.else.i_crit_edge:           ; preds = %land.lhs.true.i284
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then.i.i:                                      ; preds = %land.lhs.true.i284
  %118 = ptrtoint ptr %add.ptr.i280 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %add.ptr.i280, align 1
  %120 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %add.ptr2.i, align 1
  %flags.i.i285 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i.i285 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %flags.i.i285, align 1
  %flags2.i.i286 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 1
  %123 = ptrtoint ptr %flags2.i.i286 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %flags2.i.i286, align 1
  %access_req.i.i287 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 3
  %124 = ptrtoint ptr %access_req.i.i287 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %access_req.i.i287, align 1
  %access_req3.i.i288 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 3
  %126 = ptrtoint ptr %access_req3.i.i288 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %125, ptr %access_req3.i.i288, align 1
  %sid6.i.i289 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4
  %127 = ptrtoint ptr %nowner_sid_ptr.0 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %nowner_sid_ptr.0, align 8
  %129 = ptrtoint ptr %sid6.i.i289 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %sid6.i.i289, align 1
  %130 = ptrtoint ptr %num_subauth.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %num_subauth.i.i.i, align 1
  %132 = tail call i8 @llvm.umin.i8(i8 %131, i8 15) #17
  %num_subauth7.i.i.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %num_subauth7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %num_subauth7.i.i.i, align 1
  %134 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i.i.i, align 2
  %arrayidx11.i.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2
  %136 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx11.i.i.i, align 1
  %137 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %arrayidx11.1.i.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 1
  %139 = ptrtoint ptr %arrayidx11.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx11.1.i.i.i, align 1
  %140 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.2.i.i.i, align 4
  %arrayidx11.2.i.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 2
  %142 = ptrtoint ptr %arrayidx11.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx11.2.i.i.i, align 1
  %143 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %arrayidx11.3.i.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 3
  %145 = ptrtoint ptr %arrayidx11.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx11.3.i.i.i, align 1
  %146 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.4.i.i.i, align 2
  %arrayidx11.4.i.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 4
  %148 = ptrtoint ptr %arrayidx11.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx11.4.i.i.i, align 1
  %149 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %arrayidx11.5.i.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 5
  %151 = ptrtoint ptr %arrayidx11.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx11.5.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp1548.not.i.i.i = icmp eq i8 %132, 0
  br i1 %cmp1548.not.i.i.i, label %if.then.i.i.if.end16.i_crit_edge, label %if.then.i.i.for.body17.i.i.i_crit_edge

if.then.i.i.for.body17.i.i.i_crit_edge:           ; preds = %if.then.i.i
  br label %for.body17.i.i.i

if.then.i.i.if.end16.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

for.body17.i.i.i:                                 ; preds = %for.body17.i.i.i.for.body17.i.i.i_crit_edge, %if.then.i.i.for.body17.i.i.i_crit_edge
  %i.149.i.i.i = phi i32 [ %inc22.i.i.i, %for.body17.i.i.i.for.body17.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body17.i.i.i_crit_edge ]
  %arrayidx18.i.i.i = getelementptr %struct.cifs_sid, ptr %nowner_sid_ptr.0, i32 0, i32 3, i32 %i.149.i.i.i
  %152 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx18.i.i.i, align 4
  %arrayidx20.i.i.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 3, i32 %i.149.i.i.i
  %154 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 %153, ptr %arrayidx20.i.i.i, align 1
  %inc22.i.i.i = add nuw nsw i32 %i.149.i.i.i, 1
  %155 = ptrtoint ptr %num_subauth7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %num_subauth7.i.i.i, align 1
  %conv14.i.i.i = zext i8 %156 to i32
  %cmp15.i.i.i = icmp ult i32 %inc22.i.i.i, %conv14.i.i.i
  br i1 %cmp15.i.i.i, label %for.body17.i.i.i.for.body17.i.i.i_crit_edge, label %for.body17.i.i.i.if.end16.i_crit_edge

for.body17.i.i.i.if.end16.i_crit_edge:            ; preds = %for.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

for.body17.i.i.i.for.body17.i.i.i_crit_edge:      ; preds = %for.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i.i.i

if.else.i:                                        ; preds = %land.lhs.true.i284.if.else.i_crit_edge, %for.body.i281.if.else.i_crit_edge
  br i1 %tobool6.not.i, label %if.else.i.if.else14.i_crit_edge, label %land.lhs.true7.i

if.else.i.if.else14.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else14.i

land.lhs.true7.i:                                 ; preds = %if.else.i
  %sid8.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4
  %call9.i = tail call fastcc i32 @compare_sids(ptr noundef %sid8.i, ptr noundef %add.ptr21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then.i60.i, label %land.lhs.true7.i.if.else14.i_crit_edge

land.lhs.true7.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else14.i

if.then.i60.i:                                    ; preds = %land.lhs.true7.i
  %157 = ptrtoint ptr %add.ptr.i280 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %add.ptr.i280, align 1
  %159 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %add.ptr2.i, align 1
  %flags.i39.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 1
  %160 = ptrtoint ptr %flags.i39.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %flags.i39.i, align 1
  %flags2.i40.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 1
  %162 = ptrtoint ptr %flags2.i40.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %flags2.i40.i, align 1
  %access_req.i41.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 3
  %163 = ptrtoint ptr %access_req.i41.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %access_req.i41.i, align 1
  %access_req3.i42.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 3
  %165 = ptrtoint ptr %access_req3.i42.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %164, ptr %access_req3.i42.i, align 1
  %sid6.i44.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4
  %166 = ptrtoint ptr %ngroup_sid_ptr.0 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %ngroup_sid_ptr.0, align 8
  %168 = ptrtoint ptr %sid6.i44.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %sid6.i44.i, align 1
  %169 = ptrtoint ptr %num_subauth.i.i45.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %num_subauth.i.i45.i, align 1
  %171 = tail call i8 @llvm.umin.i8(i8 %170, i8 15) #17
  %num_subauth7.i.i46.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 1
  %172 = ptrtoint ptr %num_subauth7.i.i46.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %num_subauth7.i.i46.i, align 1
  %173 = ptrtoint ptr %arrayidx.i.i47.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.i.i47.i, align 2
  %arrayidx11.i.i48.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2
  %175 = ptrtoint ptr %arrayidx11.i.i48.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %arrayidx11.i.i48.i, align 1
  %176 = ptrtoint ptr %arrayidx.1.i.i49.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.1.i.i49.i, align 1
  %arrayidx11.1.i.i50.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 1
  %178 = ptrtoint ptr %arrayidx11.1.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %arrayidx11.1.i.i50.i, align 1
  %179 = ptrtoint ptr %arrayidx.2.i.i51.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.2.i.i51.i, align 4
  %arrayidx11.2.i.i52.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 2
  %181 = ptrtoint ptr %arrayidx11.2.i.i52.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %arrayidx11.2.i.i52.i, align 1
  %182 = ptrtoint ptr %arrayidx.3.i.i53.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.3.i.i53.i, align 1
  %arrayidx11.3.i.i54.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 3
  %184 = ptrtoint ptr %arrayidx11.3.i.i54.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %arrayidx11.3.i.i54.i, align 1
  %185 = ptrtoint ptr %arrayidx.4.i.i55.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx.4.i.i55.i, align 2
  %arrayidx11.4.i.i56.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 4
  %187 = ptrtoint ptr %arrayidx11.4.i.i56.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %arrayidx11.4.i.i56.i, align 1
  %188 = ptrtoint ptr %arrayidx.5.i.i57.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.5.i.i57.i, align 1
  %arrayidx11.5.i.i58.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 5
  %190 = ptrtoint ptr %arrayidx11.5.i.i58.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %arrayidx11.5.i.i58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %cmp1548.not.i.i59.i = icmp eq i8 %171, 0
  br i1 %cmp1548.not.i.i59.i, label %if.then.i60.i.if.end16.i_crit_edge, label %if.then.i60.i.for.body17.i.i67.i_crit_edge

if.then.i60.i.for.body17.i.i67.i_crit_edge:       ; preds = %if.then.i60.i
  br label %for.body17.i.i67.i

if.then.i60.i.if.end16.i_crit_edge:               ; preds = %if.then.i60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

for.body17.i.i67.i:                               ; preds = %for.body17.i.i67.i.for.body17.i.i67.i_crit_edge, %if.then.i60.i.for.body17.i.i67.i_crit_edge
  %i.149.i.i61.i = phi i32 [ %inc22.i.i64.i, %for.body17.i.i67.i.for.body17.i.i67.i_crit_edge ], [ 0, %if.then.i60.i.for.body17.i.i67.i_crit_edge ]
  %arrayidx18.i.i62.i = getelementptr %struct.cifs_sid, ptr %ngroup_sid_ptr.0, i32 0, i32 3, i32 %i.149.i.i61.i
  %191 = ptrtoint ptr %arrayidx18.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx18.i.i62.i, align 4
  %arrayidx20.i.i63.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 3, i32 %i.149.i.i61.i
  %193 = ptrtoint ptr %arrayidx20.i.i63.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 %192, ptr %arrayidx20.i.i63.i, align 1
  %inc22.i.i64.i = add nuw nsw i32 %i.149.i.i61.i, 1
  %194 = ptrtoint ptr %num_subauth7.i.i46.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %num_subauth7.i.i46.i, align 1
  %conv14.i.i65.i = zext i8 %195 to i32
  %cmp15.i.i66.i = icmp ult i32 %inc22.i.i64.i, %conv14.i.i65.i
  br i1 %cmp15.i.i66.i, label %for.body17.i.i67.i.for.body17.i.i67.i_crit_edge, label %for.body17.i.i67.i.if.end16.i_crit_edge

for.body17.i.i67.i.if.end16.i_crit_edge:          ; preds = %for.body17.i.i67.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

for.body17.i.i67.i.for.body17.i.i67.i_crit_edge:  ; preds = %for.body17.i.i67.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i.i67.i

if.else14.i:                                      ; preds = %land.lhs.true7.i.if.else14.i_crit_edge, %if.else.i.if.else14.i_crit_edge
  %196 = ptrtoint ptr %add.ptr.i280 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %add.ptr.i280, align 1
  %198 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %add.ptr2.i, align 1
  %flags.i98.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 1
  %199 = ptrtoint ptr %flags.i98.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %flags.i98.i, align 1
  %flags2.i99.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 1
  %201 = ptrtoint ptr %flags2.i99.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %flags2.i99.i, align 1
  %access_req.i100.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 3
  %202 = ptrtoint ptr %access_req.i100.i to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %access_req.i100.i, align 1
  %access_req3.i101.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 3
  %204 = ptrtoint ptr %access_req3.i101.i to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 %203, ptr %access_req3.i101.i, align 1
  %sid6.i102.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4
  %sid7.i103.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4
  %205 = ptrtoint ptr %sid7.i103.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %sid7.i103.i, align 1
  %207 = ptrtoint ptr %sid6.i102.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %sid6.i102.i, align 1
  %num_subauth.i26.i104.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4, i32 1
  %208 = ptrtoint ptr %num_subauth.i26.i104.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %num_subauth.i26.i104.i, align 1
  %210 = tail call i8 @llvm.umin.i8(i8 %209, i8 15) #17
  %num_subauth7.i27.i105.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 1
  %211 = ptrtoint ptr %num_subauth7.i27.i105.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %num_subauth7.i27.i105.i, align 1
  %arrayidx.i28.i106.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4, i32 2
  %212 = ptrtoint ptr %arrayidx.i28.i106.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i28.i106.i, align 1
  %arrayidx11.i29.i107.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2
  %214 = ptrtoint ptr %arrayidx11.i29.i107.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %arrayidx11.i29.i107.i, align 1
  %arrayidx.1.i30.i108.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4, i32 2, i32 1
  %215 = ptrtoint ptr %arrayidx.1.i30.i108.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx.1.i30.i108.i, align 1
  %arrayidx11.1.i31.i109.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 1
  %217 = ptrtoint ptr %arrayidx11.1.i31.i109.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %arrayidx11.1.i31.i109.i, align 1
  %arrayidx.2.i32.i110.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4, i32 2, i32 2
  %218 = ptrtoint ptr %arrayidx.2.i32.i110.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.2.i32.i110.i, align 1
  %arrayidx11.2.i33.i111.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 2
  %220 = ptrtoint ptr %arrayidx11.2.i33.i111.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %arrayidx11.2.i33.i111.i, align 1
  %arrayidx.3.i34.i112.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4, i32 2, i32 3
  %221 = ptrtoint ptr %arrayidx.3.i34.i112.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx.3.i34.i112.i, align 1
  %arrayidx11.3.i35.i113.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 3
  %223 = ptrtoint ptr %arrayidx11.3.i35.i113.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %arrayidx11.3.i35.i113.i, align 1
  %arrayidx.4.i36.i114.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4, i32 2, i32 4
  %224 = ptrtoint ptr %arrayidx.4.i36.i114.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.4.i36.i114.i, align 1
  %arrayidx11.4.i37.i115.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 4
  %226 = ptrtoint ptr %arrayidx11.4.i37.i115.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %arrayidx11.4.i37.i115.i, align 1
  %arrayidx.5.i38.i116.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4, i32 2, i32 5
  %227 = ptrtoint ptr %arrayidx.5.i38.i116.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx.5.i38.i116.i, align 1
  %arrayidx11.5.i39.i117.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 2, i32 5
  %229 = ptrtoint ptr %arrayidx11.5.i39.i117.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %arrayidx11.5.i39.i117.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %cmp1548.not.i40.i118.i = icmp eq i8 %210, 0
  br i1 %cmp1548.not.i40.i118.i, label %if.else14.i.if.end16.i_crit_edge, label %if.else14.i.for.body17.i47.i126.i_crit_edge

if.else14.i.for.body17.i47.i126.i_crit_edge:      ; preds = %if.else14.i
  br label %for.body17.i47.i126.i

if.else14.i.if.end16.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

for.body17.i47.i126.i:                            ; preds = %for.body17.i47.i126.i.for.body17.i47.i126.i_crit_edge, %if.else14.i.for.body17.i47.i126.i_crit_edge
  %i.149.i41.i120.i = phi i32 [ %inc22.i44.i123.i, %for.body17.i47.i126.i.for.body17.i47.i126.i_crit_edge ], [ 0, %if.else14.i.for.body17.i47.i126.i_crit_edge ]
  %arrayidx18.i42.i121.i = getelementptr %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 4, i32 3, i32 %i.149.i41.i120.i
  %230 = ptrtoint ptr %arrayidx18.i42.i121.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %arrayidx18.i42.i121.i, align 1
  %arrayidx20.i43.i122.i = getelementptr %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 4, i32 3, i32 %i.149.i41.i120.i
  %232 = ptrtoint ptr %arrayidx20.i43.i122.i to i32
  call void @__asan_storeN_noabort(i32 %232, i32 4)
  store i32 %231, ptr %arrayidx20.i43.i122.i, align 1
  %inc22.i44.i123.i = add nuw nsw i32 %i.149.i41.i120.i, 1
  %233 = ptrtoint ptr %num_subauth7.i27.i105.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %num_subauth7.i27.i105.i, align 1
  %conv14.i45.i124.i = zext i8 %234 to i32
  %cmp15.i46.i125.i = icmp ult i32 %inc22.i44.i123.i, %conv14.i45.i124.i
  br i1 %cmp15.i46.i125.i, label %for.body17.i47.i126.i.for.body17.i47.i126.i_crit_edge, label %for.body17.i47.i126.i.if.end16.i_crit_edge

for.body17.i47.i126.i.if.end16.i_crit_edge:       ; preds = %for.body17.i47.i126.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

for.body17.i47.i126.i.for.body17.i47.i126.i_crit_edge: ; preds = %for.body17.i47.i126.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i47.i126.i

if.end16.i:                                       ; preds = %for.body17.i47.i126.i.if.end16.i_crit_edge, %if.else14.i.if.end16.i_crit_edge, %for.body17.i.i67.i.if.end16.i_crit_edge, %if.then.i60.i.if.end16.i_crit_edge, %for.body17.i.i.i.if.end16.i_crit_edge, %if.then.i.i.if.end16.i_crit_edge
  %size.0.i95.sink.in.in.in.i = phi i8 [ 0, %if.then.i.i.if.end16.i_crit_edge ], [ 0, %if.then.i60.i.if.end16.i_crit_edge ], [ 0, %if.else14.i.if.end16.i_crit_edge ], [ %234, %for.body17.i47.i126.i.if.end16.i_crit_edge ], [ %195, %for.body17.i.i67.i.if.end16.i_crit_edge ], [ %156, %for.body17.i.i.i.if.end16.i_crit_edge ]
  %size.0.i95.sink.in.in.i = zext i8 %size.0.i95.sink.in.in.in.i to i16
  %size.0.i95.sink.in.i = shl nuw nsw i16 %size.0.i95.sink.in.in.i, 2
  %size.0.i95.sink.i = add nuw nsw i16 %size.0.i95.sink.in.i, 16
  %235 = tail call i16 @llvm.bswap.i16(i16 %size.0.i95.sink.i) #17
  %size13.i96.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr2.i, i32 0, i32 2
  %236 = ptrtoint ptr %size13.i96.i to i32
  call void @__asan_storeN_noabort(i32 %236, i32 2)
  store i16 %235, ptr %size13.i96.i, align 1
  %size17.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr.i280, i32 0, i32 2
  %237 = ptrtoint ptr %size17.i to i32
  call void @__asan_loadN_noabort(i32 %237, i32 2)
  %238 = load i16, ptr %size17.i, align 1
  %239 = tail call i16 @llvm.bswap.i16(i16 %238) #17
  %conv18.i = zext i16 %239 to i32
  %add.i292 = add nuw nsw i32 %conv.i279, %conv18.i
  %add23.i = add i16 %size.0.i95.sink.i, %nsize.0138.i
  %inc.i293 = add nuw i32 %i.0136.i, 1
  %exitcond.not.i294 = icmp eq i32 %inc.i293, %umax.i278
  br i1 %exitcond.not.i294, label %if.end16.i.replace_sids_and_copy_aces.exit_crit_edge, label %if.end16.i.for.body.i281_crit_edge

if.end16.i.for.body.i281_crit_edge:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i281

if.end16.i.replace_sids_and_copy_aces.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %replace_sids_and_copy_aces.exit

replace_sids_and_copy_aces.exit:                  ; preds = %if.end16.i.replace_sids_and_copy_aces.exit_crit_edge, %if.then166.replace_sids_and_copy_aces.exit_crit_edge
  %nsize.0.lcssa.i = phi i16 [ 8, %if.then166.replace_sids_and_copy_aces.exit_crit_edge ], [ %add23.i, %if.end16.i.replace_sids_and_copy_aces.exit_crit_edge ]
  %240 = tail call i16 @llvm.bswap.i16(i16 %nsize.0.lcssa.i)
  %size168 = getelementptr i8, ptr %pnntsd, i32 22
  %241 = ptrtoint ptr %size168 to i32
  call void @__asan_storeN_noabort(i32 %241, i32 2)
  store i16 %240, ptr %size168, align 1
  br label %if.end169

if.end169:                                        ; preds = %replace_sids_and_copy_aces.exit, %if.end164.if.end169_crit_edge
  %size170 = getelementptr i8, ptr %pnntsd, i32 22
  %242 = ptrtoint ptr %size170 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 2)
  %243 = load i16, ptr %size170, align 1
  %244 = tail call i16 @llvm.bswap.i16(i16 %243)
  %conv171 = zext i16 %244 to i32
  %add172 = add nuw nsw i32 %conv171, 20
  %call173 = tail call fastcc i32 @copy_sec_desc(ptr noundef %pntsd, ptr noundef %pnntsd, i32 noundef %add172, ptr noundef %nowner_sid_ptr.0, ptr noundef %ngroup_sid_ptr.0)
  %245 = ptrtoint ptr %pnsecdesclen to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %call173, ptr %pnsecdesclen, align 4
  br label %chown_chgrp_exit

chown_chgrp_exit:                                 ; preds = %if.end169, %if.then148, %land.lhs.true145.chown_chgrp_exit_crit_edge, %do.body133, %do.body129.chown_chgrp_exit_crit_edge, %if.then104.chown_chgrp_exit_crit_edge, %if.then88, %land.lhs.true85.chown_chgrp_exit_crit_edge, %do.body78, %do.body75.chown_chgrp_exit_crit_edge, %if.then56.chown_chgrp_exit_crit_edge
  %nowner_sid_ptr.1 = phi ptr [ %nowner_sid_ptr.0, %if.end169 ], [ %call7.i.i, %do.body78 ], [ %nowner_sid_ptr.0, %do.body133 ], [ null, %if.then56.chown_chgrp_exit_crit_edge ], [ %call7.i.i, %do.body75.chown_chgrp_exit_crit_edge ], [ %call7.i.i, %land.lhs.true85.chown_chgrp_exit_crit_edge ], [ %call7.i.i, %if.then88 ], [ %nowner_sid_ptr.0, %if.then104.chown_chgrp_exit_crit_edge ], [ %nowner_sid_ptr.0, %do.body129.chown_chgrp_exit_crit_edge ], [ %nowner_sid_ptr.0, %land.lhs.true145.chown_chgrp_exit_crit_edge ], [ %nowner_sid_ptr.0, %if.then148 ]
  %ngroup_sid_ptr.1 = phi ptr [ %ngroup_sid_ptr.0, %if.end169 ], [ null, %do.body78 ], [ %call7.i.i275, %do.body133 ], [ null, %if.then56.chown_chgrp_exit_crit_edge ], [ null, %do.body75.chown_chgrp_exit_crit_edge ], [ null, %land.lhs.true85.chown_chgrp_exit_crit_edge ], [ null, %if.then88 ], [ null, %if.then104.chown_chgrp_exit_crit_edge ], [ %call7.i.i275, %do.body129.chown_chgrp_exit_crit_edge ], [ %call7.i.i275, %land.lhs.true145.chown_chgrp_exit_crit_edge ], [ %call7.i.i275, %if.then148 ]
  %rc.6 = phi i32 [ 0, %if.end169 ], [ %call71, %do.body78 ], [ %call125, %do.body133 ], [ -12, %if.then56.chown_chgrp_exit_crit_edge ], [ %call71, %do.body75.chown_chgrp_exit_crit_edge ], [ %call71, %land.lhs.true85.chown_chgrp_exit_crit_edge ], [ %call71, %if.then88 ], [ -12, %if.then104.chown_chgrp_exit_crit_edge ], [ %call125, %do.body129.chown_chgrp_exit_crit_edge ], [ %call125, %land.lhs.true145.chown_chgrp_exit_crit_edge ], [ %call125, %if.then148 ]
  tail call void @kfree(ptr noundef %nowner_sid_ptr.1) #17
  tail call void @kfree(ptr noundef %ngroup_sid_ptr.1) #17
  br label %cleanup175

cleanup175:                                       ; preds = %chown_chgrp_exit, %set_chmod_dacl.exit, %do.end, %do.body9.cleanup175_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body9.cleanup175_crit_edge ], [ 0, %set_chmod_dacl.exit ], [ %rc.6, %chown_chgrp_exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_idmap_key_instantiate(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ult i32 %1, 17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %6 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datalen, align 4
  %8 = call ptr @memcpy(ptr %2, ptr %5, i32 %7)
  br label %if.end6

if.else:                                          ; preds = %entry
  %data2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %9 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data2, align 8
  %call = tail call ptr @kmemdup(ptr noundef %10, i32 noundef %1, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %11 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %11, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %13 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %datalen, align 4
  %conv = trunc i32 %14 to i16
  %datalen8 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 13
  %15 = ptrtoint ptr %datalen8 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %datalen8, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_idmap_key_destroy(ptr nocapture noundef readonly %key) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %datalen = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 13
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %datalen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %1)
  %cmp = icmp ugt i16 %1, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %4) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_describe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @backup_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_sid(ptr noundef %psid, ptr noundef readnone %end_of_acl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %psid, i32 8
  %cmp = icmp ugt ptr %add.ptr, %end_of_acl
  br i1 %cmp, label %do.body1, label %if.end7

do.body1:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sid._rs, ptr noundef nonnull @__func__.parse_sid) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1.return_crit_edge, label %do.end

do.body1.return_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %psid) #21
  br label %return

if.end7:                                          ; preds = %entry
  %num_subauth = getelementptr inbounds %struct.cifs_sid, ptr %psid, i32 0, i32 1
  %0 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_subauth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool8.not = icmp eq i8 %1, 0
  br i1 %tobool8.not, label %if.end7.return_crit_edge, label %if.then9

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then9:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then9.do.end31_crit_edge, label %do.body14

if.then9.do.end31_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31

do.body14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sid.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sid, %land.lhs.true)) #17
          to label %do.end31 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body14
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sid._rs.96, ptr noundef nonnull @__func__.parse_sid) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end31_crit_edge, label %if.then22

land.lhs.true.do.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %psid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %psid, align 1
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_subauth, align 1
  %conv24 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sid.descriptor, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv24) #17
  br label %do.end31

do.end31:                                         ; preds = %if.then22, %land.lhs.true.do.end31_crit_edge, %do.body14, %if.then9.do.end31_crit_edge
  %7 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_subauth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp34122.not = icmp eq i8 %8, 0
  br i1 %cmp34122.not, label %do.end31.do.body67_crit_edge, label %do.end31.do.body37_crit_edge

do.end31.do.body37_crit_edge:                     ; preds = %do.end31
  br label %do.body37

do.end31.do.body67_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body67

do.body37:                                        ; preds = %for.inc.do.body37_crit_edge, %do.end31.do.body37_crit_edge
  %i.0123 = phi i32 [ %inc, %for.inc.do.body37_crit_edge ], [ 0, %do.end31.do.body37_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and38 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.for.inc_crit_edge, label %do.body41

do.body37.for.inc_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sid.descriptor.99, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sid, %land.lhs.true53)) #17
          to label %for.inc [label %land.lhs.true53], !srcloc !293

land.lhs.true53:                                  ; preds = %do.body41
  %call54 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sid._rs.98, ptr noundef nonnull @__func__.parse_sid) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.for.inc_crit_edge, label %if.then56

land.lhs.true53.for.inc_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 3, i32 %i.0123
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sid.descriptor.99, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.3, i32 noundef %i.0123, i32 noundef %12) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %land.lhs.true53.for.inc_crit_edge, %do.body41, %do.body37.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0123, 1
  %13 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_subauth, align 1
  %conv33 = zext i8 %14 to i32
  %cmp34 = icmp ult i32 %inc, %conv33
  br i1 %cmp34, label %for.inc.do.body37_crit_edge, label %for.inc.do.body67_crit_edge

for.inc.do.body67_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body67

for.inc.do.body37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body37

do.body67:                                        ; preds = %for.inc.do.body67_crit_edge, %do.end31.do.body67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %15 = load i32, ptr @cifsFYI, align 4
  %and68 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.return_crit_edge, label %do.body71

do.body67.return_crit_edge:                       ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

do.body71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_sid.descriptor.102, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_sid, %land.lhs.true83)) #17
          to label %return [label %land.lhs.true83], !srcloc !293

land.lhs.true83:                                  ; preds = %do.body71
  %call84 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_sid._rs.101, ptr noundef nonnull @__func__.parse_sid) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %land.lhs.true83.return_crit_edge, label %if.then86

land.lhs.true83.return_crit_edge:                 ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_subauth, align 1
  %conv89 = zext i8 %17 to i32
  %sub = add nsw i32 %conv89, -1
  %arrayidx90 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 3, i32 %sub
  %18 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx90, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_sid.descriptor.102, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.3, i32 noundef %20) #17
  br label %return

return:                                           ; preds = %if.then86, %land.lhs.true83.return_crit_edge, %do.body71, %do.body67.return_crit_edge, %if.end7.return_crit_edge, %do.end, %do.body1.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body1.return_crit_edge ], [ 0, %if.then86 ], [ 0, %land.lhs.true83.return_crit_edge ], [ 0, %do.body67.return_crit_edge ], [ 0, %if.end7.return_crit_edge ], [ 0, %do.body71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_dacl(ptr noundef %pdacl, ptr noundef %end_of_acl, ptr noundef readonly %pownersid, ptr noundef readonly %pgrpsid, ptr nocapture noundef %fattr, i1 noundef zeroext %mode_from_special_sid) unnamed_addr #0 align 64 {
entry:
  %denied_mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdacl, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %0 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cf_mode, align 8
  %2 = or i16 %1, 511
  store i16 %2, ptr %cf_mode, align 8
  br label %cleanup127

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.cifs_acl, ptr %pdacl, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %size, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv2 = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %pdacl, i32 %conv2
  %cmp = icmp ugt ptr %add.ptr, %end_of_acl
  br i1 %cmp, label %do.body5, label %do.body18

do.body5:                                         ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @parse_dacl._rs, ptr noundef nonnull @__func__.parse_dacl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body5.cleanup127_crit_edge, label %do.end

do.body5.cleanup127_crit_edge:                    ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup127

do.end:                                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #19
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #21
  br label %cleanup127

do.body18:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_dacl.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_dacl, %land.lhs.true)) #17
          to label %do.end38 [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body18
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_dacl._rs.105, ptr noundef nonnull @__func__.parse_dacl) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end38_crit_edge, label %if.then27

land.lhs.true.do.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end38

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %pdacl to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %pdacl, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv28 = zext i16 %8 to i32
  %9 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %size, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv30 = zext i16 %11 to i32
  %num_aces31 = getelementptr inbounds %struct.cifs_acl, ptr %pdacl, i32 0, i32 2
  %12 = ptrtoint ptr %num_aces31 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %num_aces31, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_dacl.descriptor, ptr noundef nonnull @.str.106, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %14) #17
  br label %do.end38

do.end38:                                         ; preds = %if.then27, %land.lhs.true.do.end38_crit_edge, %do.body18
  %cf_mode39 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %15 = ptrtoint ptr %cf_mode39 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cf_mode39, align 8
  %17 = and i16 %16, -512
  store i16 %17, ptr %cf_mode39, align 8
  %num_aces42 = getelementptr inbounds %struct.cifs_acl, ptr %pdacl, i32 0, i32 2
  %18 = ptrtoint ptr %num_aces42 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %num_aces42, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp43 = icmp sgt i32 %20, 0
  br i1 %cmp43, label %if.then45, label %do.end38.cleanup127_crit_edge

do.end38.cleanup127_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup127

if.then45:                                        ; preds = %do.end38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %denied_mode) #17
  %21 = ptrtoint ptr %denied_mode to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %denied_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %20)
  %cmp46 = icmp ugt i32 %20, 1073741823
  br i1 %cmp46, label %if.then45.cleanup_crit_edge, label %if.end7.i

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.i:                                        ; preds = %if.then45
  %22 = shl nuw i32 %20, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #20
  %tobool51.not = icmp eq ptr %call8.i, null
  br i1 %tobool51.not, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.for.body_crit_edge

if.end7.i.for.body_crit_edge:                     ; preds = %if.end7.i
  br label %for.body

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %if.end121.for.body_crit_edge, %if.end7.i.for.body_crit_edge
  %i.0190 = phi i32 [ %inc, %if.end121.for.body_crit_edge ], [ 0, %if.end7.i.for.body_crit_edge ]
  %acl_size.0189 = phi i32 [ %conv125, %if.end121.for.body_crit_edge ], [ 8, %if.end7.i.for.body_crit_edge ]
  %acl_base.0188 = phi ptr [ %43, %if.end121.for.body_crit_edge ], [ %pdacl, %if.end7.i.for.body_crit_edge ]
  %add.ptr56 = getelementptr i8, ptr %acl_base.0188, i32 %acl_size.0189
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %i.0190
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr56, ptr %arrayidx, align 4
  tail call fastcc void @dump_ace(ptr noundef %add.ptr56, ptr noundef %end_of_acl)
  br i1 %mode_from_special_sid, label %land.lhs.true60, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true60:                                  ; preds = %for.body
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %sid = getelementptr inbounds %struct.cifs_ace, ptr %25, i32 0, i32 4
  %call62 = tail call fastcc i32 @compare_sids(ptr noundef %sid, ptr noundef nonnull @sid_unix_NFS_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %land.lhs.true60.if.else_crit_edge

land.lhs.true60.if.else_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then65:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %cf_mode39 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cf_mode39, align 8
  %28 = and i16 %27, -4096
  store i16 %28, ptr %cf_mode39, align 8
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %arrayidx72 = getelementptr %struct.cifs_ace, ptr %30, i32 0, i32 4, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx72, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = trunc i32 %33 to i16
  %conv76 = or i16 %28, %34
  %35 = ptrtoint ptr %cf_mode39 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv76, ptr %cf_mode39, align 8
  br label %for.end

if.else:                                          ; preds = %land.lhs.true60.if.else_crit_edge, %for.body.if.else_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %sid78 = getelementptr inbounds %struct.cifs_ace, ptr %37, i32 0, i32 4
  %call79 = tail call fastcc i32 @compare_sids(ptr noundef %sid78, ptr noundef %pownersid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.else.if.end121.sink.split_crit_edge, label %if.else87

if.else.if.end121.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121.sink.split

if.else87:                                        ; preds = %if.else
  %call90 = tail call fastcc i32 @compare_sids(ptr noundef %sid78, ptr noundef %pgrpsid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.else87.if.end121.sink.split_crit_edge, label %if.else100

if.else87.if.end121.sink.split_crit_edge:         ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121.sink.split

if.else100:                                       ; preds = %if.else87
  %call103 = tail call fastcc i32 @compare_sids(ptr noundef %sid78, ptr noundef nonnull @sid_everyone)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.else100.if.end121.sink.split_crit_edge, label %lor.lhs.false

if.else100.if.end121.sink.split_crit_edge:        ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121.sink.split

lor.lhs.false:                                    ; preds = %if.else100
  %call108 = tail call fastcc i32 @compare_sids(ptr noundef %sid78, ptr noundef nonnull @sid_authusers)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp eq i32 %call108, 0
  br i1 %cmp109, label %lor.lhs.false.if.end121.sink.split_crit_edge, label %lor.lhs.false.if.end121_crit_edge

lor.lhs.false.if.end121_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121

lor.lhs.false.if.end121.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121.sink.split

if.end121.sink.split:                             ; preds = %lor.lhs.false.if.end121.sink.split_crit_edge, %if.else100.if.end121.sink.split_crit_edge, %if.else87.if.end121.sink.split_crit_edge, %if.else.if.end121.sink.split_crit_edge
  %.sink193 = phi i16 [ 448, %if.else.if.end121.sink.split_crit_edge ], [ 56, %if.else87.if.end121.sink.split_crit_edge ], [ 7, %lor.lhs.false.if.end121.sink.split_crit_edge ], [ 7, %if.else100.if.end121.sink.split_crit_edge ]
  %access_req = getelementptr inbounds %struct.cifs_ace, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %access_req to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %access_req, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %37, align 1
  %conv85 = zext i8 %41 to i32
  call fastcc void @access_flags_to_mode(i32 noundef %39, i32 noundef %conv85, ptr noundef %cf_mode39, ptr noundef nonnull %denied_mode, i16 noundef zeroext %.sink193)
  br label %if.end121

if.end121:                                        ; preds = %if.end121.sink.split, %lor.lhs.false.if.end121_crit_edge
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %size124 = getelementptr inbounds %struct.cifs_ace, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %size124 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %size124, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv125 = zext i16 %46 to i32
  %inc = add nuw nsw i32 %i.0190, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %if.end121.for.end_crit_edge, label %if.end121.for.body_crit_edge

if.end121.for.body_crit_edge:                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end121.for.end_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.end121.for.end_crit_edge, %if.then65
  tail call void @kfree(ptr noundef nonnull %call8.i) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %denied_mode) #17
  br label %cleanup127

cleanup:                                          ; preds = %if.end7.i.cleanup_crit_edge, %if.then45.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %denied_mode) #17
  br label %cleanup127

cleanup127:                                       ; preds = %cleanup, %for.end, %do.end38.cleanup127_crit_edge, %do.end, %do.body5.cleanup127_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_ace(ptr noundef readonly %pace, ptr noundef readnone %end_of_acl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.cifs_ace, ptr %pace, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %size, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %2)
  %cmp = icmp ult i16 %2, 16
  br i1 %cmp, label %do.body2, label %if.end12

do.body2:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @dump_ace._rs, ptr noundef nonnull @__func__.dump_ace) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2.cleanup_crit_edge, label %do.end

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %size, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv6 = zext i16 %5 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %conv6) #21
  br label %cleanup

if.end12:                                         ; preds = %entry
  %conv = zext i16 %2 to i32
  %add.ptr = getelementptr i8, ptr %pace, i32 %conv
  %cmp15 = icmp ugt ptr %add.ptr, %end_of_acl
  br i1 %cmp15, label %do.body19, label %if.end33

do.body19:                                        ; preds = %if.end12
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_ace._rs.108, ptr noundef nonnull @__func__.dump_ace) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body19.cleanup_crit_edge, label %do.end25

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #19
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #21
  br label %cleanup

if.end33:                                         ; preds = %if.end12
  %sid = getelementptr inbounds %struct.cifs_ace, ptr %pace, i32 0, i32 4
  %num_subauth34 = getelementptr inbounds %struct.cifs_ace, ptr %pace, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %num_subauth34 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_subauth34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool36.not = icmp eq i8 %7, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.then37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %8 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.then37.do.body71.preheader_crit_edge, label %do.body42

if.then37.do.body71.preheader_crit_edge:          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body71.preheader

do.body42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_ace.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_ace, %land.lhs.true)) #17
          to label %do.body71.preheader [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body42
  %call48 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_ace._rs.112, ptr noundef nonnull @__func__.dump_ace) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true.do.body71.preheader_crit_edge, label %if.then50

land.lhs.true.do.body71.preheader_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body71.preheader

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %sid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sid, align 1
  %conv52 = zext i8 %10 to i32
  %11 = ptrtoint ptr %num_subauth34 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_subauth34, align 1
  %conv55 = zext i8 %12 to i32
  %13 = ptrtoint ptr %pace to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pace, align 1
  %conv56 = zext i8 %14 to i32
  %flags = getelementptr inbounds %struct.cifs_ace, ptr %pace, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 1
  %conv57 = zext i8 %16 to i32
  %17 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %size, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv59 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_ace.descriptor, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.3, i32 noundef %conv52, i32 noundef %conv55, i32 noundef %conv56, i32 noundef %conv57, i32 noundef %conv59) #17
  br label %do.body71.preheader

do.body71.preheader:                              ; preds = %if.then50, %land.lhs.true.do.body71.preheader_crit_edge, %do.body42, %if.then37.do.body71.preheader_crit_edge
  %umax = zext i8 %7 to i32
  br label %do.body71

do.body71:                                        ; preds = %for.inc.do.body71_crit_edge, %do.body71.preheader
  %i.0122 = phi i32 [ %inc, %for.inc.do.body71_crit_edge ], [ 0, %do.body71.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %20 = load i32, ptr @cifsFYI, align 4
  %and72 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.body71.for.inc_crit_edge, label %do.body75

do.body71.for.inc_crit_edge:                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.body75:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_ace.descriptor.115, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_ace, %land.lhs.true87)) #17
          to label %for.inc [label %land.lhs.true87], !srcloc !293

land.lhs.true87:                                  ; preds = %do.body75
  %call88 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_ace._rs.114, ptr noundef nonnull @__func__.dump_ace) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true87.for.inc_crit_edge, label %if.then90

land.lhs.true87.for.inc_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then90:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr %struct.cifs_ace, ptr %pace, i32 0, i32 4, i32 3, i32 %i.0122
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_ace.descriptor.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.3, i32 noundef %i.0122, i32 noundef %23) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then90, %land.lhs.true87.for.inc_crit_edge, %do.body75, %do.body71.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body71_crit_edge

for.inc.do.body71_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body71

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end25, %do.body19.cleanup_crit_edge, %do.end, %do.body2.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @compare_sids(ptr noundef readonly %ctsid, ptr noundef readonly %cwsid) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctsid, null
  %tobool1.not = icmp eq ptr %cwsid, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctsid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctsid, align 1
  %2 = ptrtoint ptr %cwsid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cwsid, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %for.body.preheader, label %if.then5

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.cifs_sid, ptr %ctsid, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx18 = getelementptr %struct.cifs_sid, ptr %cwsid, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp20.not = icmp eq i8 %5, %7
  br i1 %cmp20.not, label %for.cond, label %for.body.preheader.if.then22_crit_edge

for.body.preheader.if.then22_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp10 = icmp ugt i8 %1, %3
  %. = select i1 %cmp10, i32 1, i32 -1
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.cifs_sid, ptr %ctsid, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1
  %arrayidx18.1 = getelementptr %struct.cifs_sid, ptr %cwsid, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp20.not.1 = icmp eq i8 %9, %11
  br i1 %cmp20.not.1, label %for.cond.1, label %for.cond.if.then22_crit_edge

for.cond.if.then22_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.cifs_sid, ptr %ctsid, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %arrayidx18.2 = getelementptr %struct.cifs_sid, ptr %cwsid, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx18.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp20.not.2 = icmp eq i8 %13, %15
  br i1 %cmp20.not.2, label %for.cond.2, label %for.cond.1.if.then22_crit_edge

for.cond.1.if.then22_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.cifs_sid, ptr %ctsid, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %arrayidx18.3 = getelementptr %struct.cifs_sid, ptr %cwsid, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp20.not.3 = icmp eq i8 %17, %19
  br i1 %cmp20.not.3, label %for.cond.3, label %for.cond.2.if.then22_crit_edge

for.cond.2.if.then22_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.cifs_sid, ptr %ctsid, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %arrayidx18.4 = getelementptr %struct.cifs_sid, ptr %cwsid, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx18.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp20.not.4 = icmp eq i8 %21, %23
  br i1 %cmp20.not.4, label %for.cond.4, label %for.cond.3.if.then22_crit_edge

for.cond.3.if.then22_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.cifs_sid, ptr %ctsid, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5, align 1
  %arrayidx18.5 = getelementptr %struct.cifs_sid, ptr %cwsid, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx18.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp20.not.5 = icmp eq i8 %25, %27
  br i1 %cmp20.not.5, label %for.cond.5, label %for.cond.4.if.then22_crit_edge

for.cond.4.if.then22_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then22

for.cond.5:                                       ; preds = %for.cond.4
  %num_subauth34 = getelementptr inbounds %struct.cifs_sid, ptr %ctsid, i32 0, i32 1
  %28 = ptrtoint ptr %num_subauth34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_subauth34, align 1
  %num_subauth36 = getelementptr inbounds %struct.cifs_sid, ptr %cwsid, i32 0, i32 1
  %30 = ptrtoint ptr %num_subauth36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_subauth36, align 1
  %32 = tail call i8 @llvm.umin.i8(i8 %29, i8 %31)
  %cond = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool40.not.not = icmp eq i8 %32, 0
  br i1 %tobool40.not.not, label %for.cond.5.cleanup_crit_edge, label %for.cond.5.for.body45_crit_edge

for.cond.5.for.body45_crit_edge:                  ; preds = %for.cond.5
  br label %for.body45

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then22:                                        ; preds = %for.cond.4.if.then22_crit_edge, %for.cond.3.if.then22_crit_edge, %for.cond.2.if.then22_crit_edge, %for.cond.1.if.then22_crit_edge, %for.cond.if.then22_crit_edge, %for.body.preheader.if.then22_crit_edge
  %.lcssa112 = phi i8 [ %5, %for.body.preheader.if.then22_crit_edge ], [ %9, %for.cond.if.then22_crit_edge ], [ %13, %for.cond.1.if.then22_crit_edge ], [ %17, %for.cond.2.if.then22_crit_edge ], [ %21, %for.cond.3.if.then22_crit_edge ], [ %25, %for.cond.4.if.then22_crit_edge ]
  %.lcssa110 = phi i8 [ %7, %for.body.preheader.if.then22_crit_edge ], [ %11, %for.cond.if.then22_crit_edge ], [ %15, %for.cond.1.if.then22_crit_edge ], [ %19, %for.cond.2.if.then22_crit_edge ], [ %23, %for.cond.3.if.then22_crit_edge ], [ %27, %for.cond.4.if.then22_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %.lcssa112, i8 %.lcssa110)
  %cmp29 = icmp ugt i8 %.lcssa112, %.lcssa110
  %.97 = select i1 %cmp29, i32 1, i32 -1
  br label %cleanup

for.cond42:                                       ; preds = %for.body45
  %inc62 = add nuw nsw i32 %i.1105, 1
  %exitcond.not = icmp eq i32 %inc62, %cond
  br i1 %exitcond.not, label %for.cond42.cleanup_crit_edge, label %for.cond42.for.body45_crit_edge

for.cond42.for.body45_crit_edge:                  ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body45

for.cond42.cleanup_crit_edge:                     ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body45:                                       ; preds = %for.cond42.for.body45_crit_edge, %for.cond.5.for.body45_crit_edge
  %i.1105 = phi i32 [ %inc62, %for.cond42.for.body45_crit_edge ], [ 0, %for.cond.5.for.body45_crit_edge ]
  %arrayidx46 = getelementptr %struct.cifs_sid, ptr %ctsid, i32 0, i32 3, i32 %i.1105
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx46, align 1
  %arrayidx48 = getelementptr %struct.cifs_sid, ptr %cwsid, i32 0, i32 3, i32 %i.1105
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp49.not = icmp eq i32 %34, %36
  br i1 %cmp49.not, label %for.cond42, label %if.then51

if.then51:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #19
  %37 = tail call i32 @llvm.bswap.i32(i32 %34)
  %38 = tail call i32 @llvm.bswap.i32(i32 %36)
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %38)
  %cmp56 = icmp ugt i32 %37, %38
  %.99 = select i1 %cmp56, i32 1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %for.cond42.cleanup_crit_edge, %if.then22, %for.cond.5.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %if.then5 ], [ %.97, %if.then22 ], [ %.99, %if.then51 ], [ 0, %for.cond.5.cleanup_crit_edge ], [ 0, %for.cond42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @access_flags_to_mode(i32 noundef %ace_flags, i32 noundef %type, ptr nocapture noundef %pmode, ptr nocapture noundef %pdenied, i16 noundef zeroext %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %ace_flags)
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body69 [
    i32 1, label %if.then
    i32 0, label %if.end80
  ]

if.then:                                          ; preds = %entry
  %and = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pmode, align 2
  %and2294 = and i16 %mask, 511
  %4 = and i16 %and2294, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not = icmp eq i16 %4, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pdenied, align 2
  %or295 = or i16 %6, %and2294
  store i16 %or295, ptr %pdenied, align 2
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %and10 = and i32 %0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp ne i32 %and10, 0
  %and12 = and i32 %0, 278
  call void @__sanitizer_cov_trace_const_cmp4(i32 278, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 278
  %or.cond = or i1 %tobool11.not, %cmp13
  br i1 %or.cond, label %land.lhs.true15, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

land.lhs.true15:                                  ; preds = %if.end
  %7 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pmode, align 2
  %and18292 = and i16 %mask, 146
  %9 = and i16 %and18292, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool20.not = icmp eq i16 %9, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true15.if.end27_crit_edge

land.lhs.true15.if.end27_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pdenied, align 2
  %or25293 = or i16 %11, %and18292
  store i16 %or25293, ptr %pdenied, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %land.lhs.true15.if.end27_crit_edge, %if.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool29.not = icmp slt i32 %0, 0
  %and31 = and i32 %0, 137
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 137
  %or.cond296 = or i1 %tobool29.not, %cmp32
  br i1 %or.cond296, label %land.lhs.true34, label %if.end27.if.end46_crit_edge

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

land.lhs.true34:                                  ; preds = %if.end27
  %12 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pmode, align 2
  %and37290 = and i16 %mask, 292
  %14 = and i16 %and37290, %13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool39.not = icmp eq i16 %14, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true34.if.end46_crit_edge

land.lhs.true34.if.end46_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then40:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pdenied, align 2
  %or44291 = or i16 %16, %and37290
  store i16 %or44291, ptr %pdenied, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %land.lhs.true34.if.end46_crit_edge, %if.end27.if.end46_crit_edge
  %17 = and i32 %0, 536870944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.end46.cleanup_crit_edge, label %land.lhs.true53

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end46
  %19 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pmode, align 2
  %and56288 = and i16 %mask, 73
  %21 = and i16 %and56288, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool58.not = icmp eq i16 %21, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then59:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pdenied, align 2
  %or63289 = or i16 %23, %and56288
  store i16 %or63289, ptr %pdenied, align 2
  br label %cleanup

do.body69:                                        ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @access_flags_to_mode._rs, ptr noundef nonnull @__func__.access_flags_to_mode) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool70.not = icmp eq i32 %call, 0
  br i1 %tobool70.not, label %do.body69.cleanup_crit_edge, label %do.end

do.body69.cleanup_crit_edge:                      ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #19
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %type) #21
  br label %cleanup

if.end80:                                         ; preds = %entry
  %and81 = and i32 %0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end114_crit_edge, label %land.lhs.true83

if.end80.if.end114_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end114

land.lhs.true83:                                  ; preds = %if.end80
  %24 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pdenied, align 2
  %and86286 = and i16 %mask, 511
  %26 = and i16 %and86286, %25
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool88.not = icmp eq i16 %26, 0
  br i1 %tobool88.not, label %if.then89, label %land.lhs.true83.if.end114_crit_edge

land.lhs.true83.if.end114_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end114

if.then89:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pmode, align 2
  %or93287 = or i16 %28, %and86286
  store i16 %or93287, ptr %pmode, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @access_flags_to_mode.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@access_flags_to_mode, %land.lhs.true103)) #17
          to label %cleanup [label %land.lhs.true103], !srcloc !293

land.lhs.true103:                                 ; preds = %if.then89
  %call104 = tail call i32 @___ratelimit(ptr noundef nonnull @access_flags_to_mode._rs.118, ptr noundef nonnull @__func__.access_flags_to_mode) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true103.cleanup_crit_edge, label %if.then106

land.lhs.true103.cleanup_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then106:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @access_flags_to_mode.descriptor, ptr noundef nonnull @.str.119) #17
  br label %cleanup

if.end114:                                        ; preds = %land.lhs.true83.if.end114_crit_edge, %if.end80.if.end114_crit_edge
  %and115 = and i32 %0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp ne i32 %and115, 0
  %and118 = and i32 %0, 278
  call void @__sanitizer_cov_trace_const_cmp4(i32 278, i32 %and118)
  %cmp119 = icmp eq i32 %and118, 278
  %or.cond298 = or i1 %tobool116.not, %cmp119
  br i1 %or.cond298, label %land.lhs.true121, label %if.end114.if.end133_crit_edge

if.end114.if.end133_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end133

land.lhs.true121:                                 ; preds = %if.end114
  %29 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pdenied, align 2
  %and124284 = and i16 %mask, 146
  %31 = and i16 %and124284, %30
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool126.not = icmp eq i16 %31, 0
  br i1 %tobool126.not, label %if.then127, label %land.lhs.true121.if.end133_crit_edge

land.lhs.true121.if.end133_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end133

if.then127:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pmode, align 2
  %or131285 = or i16 %33, %and124284
  store i16 %or131285, ptr %pmode, align 2
  br label %if.end133

if.end133:                                        ; preds = %if.then127, %land.lhs.true121.if.end133_crit_edge, %if.end114.if.end133_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool135.not = icmp slt i32 %0, 0
  %and137 = and i32 %0, 137
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %and137)
  %cmp138 = icmp eq i32 %and137, 137
  %or.cond299 = or i1 %tobool135.not, %cmp138
  br i1 %or.cond299, label %land.lhs.true140, label %if.end133.if.end152_crit_edge

if.end133.if.end152_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152

land.lhs.true140:                                 ; preds = %if.end133
  %34 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pdenied, align 2
  %and143282 = and i16 %mask, 292
  %36 = and i16 %and143282, %35
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool145.not = icmp eq i16 %36, 0
  br i1 %tobool145.not, label %if.then146, label %land.lhs.true140.if.end152_crit_edge

land.lhs.true140.if.end152_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152

if.then146:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pmode, align 2
  %or150283 = or i16 %38, %and143282
  store i16 %or150283, ptr %pmode, align 2
  br label %if.end152

if.end152:                                        ; preds = %if.then146, %land.lhs.true140.if.end152_crit_edge, %if.end133.if.end152_crit_edge
  %39 = and i32 %0, 536870944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %if.end152.if.end171_crit_edge, label %land.lhs.true159

if.end152.if.end171_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end171

land.lhs.true159:                                 ; preds = %if.end152
  %41 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pdenied, align 2
  %and162280 = and i16 %mask, 73
  %43 = and i16 %and162280, %42
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool164.not = icmp eq i16 %43, 0
  br i1 %tobool164.not, label %if.then165, label %land.lhs.true159.if.end171_crit_edge

land.lhs.true159.if.end171_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end171

if.then165:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pmode, align 2
  %or169281 = or i16 %45, %and162280
  store i16 %or169281, ptr %pmode, align 2
  br label %if.end171

if.end171:                                        ; preds = %if.then165, %land.lhs.true159.if.end171_crit_edge, %if.end152.if.end171_crit_edge
  %and172 = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.end171.do.body203_crit_edge, label %if.then174

if.end171.do.body203_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body203

if.then174:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_const_cmp2(i16 448, i16 %mask)
  %cmp176 = icmp eq i16 %mask, 448
  %46 = ptrtoint ptr %pdenied to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %pdenied, align 2
  %48 = and i16 %47, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool181.not = icmp eq i16 %48, 0
  br i1 %cmp176, label %if.then178, label %if.else187

if.then178:                                       ; preds = %if.then174
  br i1 %tobool181.not, label %if.then178.do.body203.sink.split_crit_edge, label %if.then178.do.body203_crit_edge

if.then178.do.body203_crit_edge:                  ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body203

if.then178.do.body203.sink.split_crit_edge:       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body203.sink.split

if.else187:                                       ; preds = %if.then174
  br i1 %tobool181.not, label %if.then191, label %if.else187.do.body203_crit_edge

if.else187.do.body203_crit_edge:                  ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body203

if.then191:                                       ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pmode, align 2
  %51 = and i16 %50, -513
  store i16 %51, ptr %pmode, align 2
  br label %do.body203.sink.split

do.body203.sink.split:                            ; preds = %if.then191, %if.then178.do.body203.sink.split_crit_edge
  %pdenied.sink307 = phi ptr [ %pdenied, %if.then191 ], [ %pmode, %if.then178.do.body203.sink.split_crit_edge ]
  %52 = ptrtoint ptr %pdenied.sink307 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %pdenied.sink307, align 2
  %54 = or i16 %53, 512
  store i16 %54, ptr %pdenied.sink307, align 2
  br label %do.body203

do.body203:                                       ; preds = %do.body203.sink.split, %if.else187.do.body203_crit_edge, %if.then178.do.body203_crit_edge, %if.end171.do.body203_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @access_flags_to_mode.descriptor.121, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@access_flags_to_mode, %land.lhs.true215)) #17
          to label %cleanup [label %land.lhs.true215], !srcloc !293

land.lhs.true215:                                 ; preds = %do.body203
  %call216 = tail call i32 @___ratelimit(ptr noundef nonnull @access_flags_to_mode._rs.120, ptr noundef nonnull @__func__.access_flags_to_mode) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %land.lhs.true215.cleanup_crit_edge, label %if.then218

land.lhs.true215.cleanup_crit_edge:               ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then218:                                       ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %pmode to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pmode, align 2
  %conv219 = zext i16 %56 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @access_flags_to_mode.descriptor.121, ptr noundef nonnull @.str.122, i32 noundef %0, i32 noundef %conv219) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then218, %land.lhs.true215.cleanup_crit_edge, %do.body203, %if.then106, %land.lhs.true103.cleanup_crit_edge, %if.then89, %do.end, %do.body69.cleanup_crit_edge, %if.then59, %land.lhs.true53.cleanup_crit_edge, %if.end46.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_sec_desc(ptr nocapture noundef readonly %pntsd, ptr nocapture noundef %pnntsd, i32 noundef %sidsoffset, ptr noundef readonly %pownersid, ptr noundef readonly %pgrpsid) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pntsd to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %pntsd, align 1
  %2 = ptrtoint ptr %pnntsd to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %pnntsd, align 1
  %type = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %type, align 1
  %type2 = getelementptr inbounds %struct.cifs_ntsd, ptr %pnntsd, i32 0, i32 1
  %5 = ptrtoint ptr %type2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %type2, align 1
  %dacloffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pnntsd, i32 0, i32 5
  %6 = ptrtoint ptr %dacloffset to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 335544320, ptr %dacloffset, align 1
  %sacloffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pnntsd, i32 0, i32 4
  %7 = ptrtoint ptr %sacloffset to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %sacloffset, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %sidsoffset)
  %osidoffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pnntsd, i32 0, i32 2
  %9 = ptrtoint ptr %osidoffset to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %osidoffset, align 1
  %add = add i32 %sidsoffset, 68
  %10 = tail call i32 @llvm.bswap.i32(i32 %add)
  %gsidoffset = getelementptr inbounds %struct.cifs_ntsd, ptr %pnntsd, i32 0, i32 3
  %11 = ptrtoint ptr %gsidoffset to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %gsidoffset, align 1
  %tobool.not = icmp eq ptr %pownersid, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %osidoffset3 = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 2
  %12 = ptrtoint ptr %osidoffset3 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %osidoffset3, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr = getelementptr i8, ptr %pntsd, i32 %14
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %owner_sid_ptr.0 = phi ptr [ %add.ptr, %if.else ], [ %pownersid, %entry.if.end_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %pnntsd, i32 %sidsoffset
  %15 = ptrtoint ptr %owner_sid_ptr.0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %owner_sid_ptr.0, align 1
  %17 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %add.ptr4, align 1
  %num_subauth.i = getelementptr inbounds %struct.cifs_sid, ptr %owner_sid_ptr.0, i32 0, i32 1
  %18 = ptrtoint ptr %num_subauth.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_subauth.i, align 1
  %20 = tail call i8 @llvm.umin.i8(i8 %19, i8 15) #17
  %num_subauth7.i = getelementptr inbounds %struct.cifs_sid, ptr %add.ptr4, i32 0, i32 1
  %21 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %num_subauth7.i, align 1
  %arrayidx.i = getelementptr %struct.cifs_sid, ptr %owner_sid_ptr.0, i32 0, i32 2, i32 0
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %arrayidx11.i = getelementptr %struct.cifs_sid, ptr %add.ptr4, i32 0, i32 2, i32 0
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx11.i, align 1
  %arrayidx.1.i = getelementptr %struct.cifs_sid, ptr %owner_sid_ptr.0, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx11.1.i = getelementptr %struct.cifs_sid, ptr %add.ptr4, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx11.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.cifs_sid, ptr %owner_sid_ptr.0, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx11.2.i = getelementptr %struct.cifs_sid, ptr %add.ptr4, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx11.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.cifs_sid, ptr %owner_sid_ptr.0, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx11.3.i = getelementptr %struct.cifs_sid, ptr %add.ptr4, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx11.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.cifs_sid, ptr %owner_sid_ptr.0, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx11.4.i = getelementptr %struct.cifs_sid, ptr %add.ptr4, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx11.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.cifs_sid, ptr %owner_sid_ptr.0, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx11.5.i = getelementptr %struct.cifs_sid, ptr %add.ptr4, i32 0, i32 2, i32 5
  %39 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx11.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp1548.not.i = icmp eq i8 %20, 0
  br i1 %cmp1548.not.i, label %if.end.cifs_copy_sid.exit_crit_edge, label %if.end.for.body17.i_crit_edge

if.end.for.body17.i_crit_edge:                    ; preds = %if.end
  br label %for.body17.i

if.end.cifs_copy_sid.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cifs_copy_sid.exit

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %if.end.for.body17.i_crit_edge
  %i.149.i = phi i32 [ %inc22.i, %for.body17.i.for.body17.i_crit_edge ], [ 0, %if.end.for.body17.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.cifs_sid, ptr %owner_sid_ptr.0, i32 0, i32 3, i32 %i.149.i
  %40 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx18.i, align 1
  %arrayidx20.i = getelementptr %struct.cifs_sid, ptr %add.ptr4, i32 0, i32 3, i32 %i.149.i
  %42 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %arrayidx20.i, align 1
  %inc22.i = add nuw nsw i32 %i.149.i, 1
  %43 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_subauth7.i, align 1
  %conv14.i = zext i8 %44 to i32
  %cmp15.i = icmp ult i32 %inc22.i, %conv14.i
  br i1 %cmp15.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.cifs_copy_sid.exit_crit_edge

for.body17.i.cifs_copy_sid.exit_crit_edge:        ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cifs_copy_sid.exit

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i

cifs_copy_sid.exit:                               ; preds = %for.body17.i.cifs_copy_sid.exit_crit_edge, %if.end.cifs_copy_sid.exit_crit_edge
  %tobool5.not = icmp eq ptr %pgrpsid, null
  br i1 %tobool5.not, label %if.else7, label %cifs_copy_sid.exit.if.end10_crit_edge

cifs_copy_sid.exit.if.end10_crit_edge:            ; preds = %cifs_copy_sid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.else7:                                         ; preds = %cifs_copy_sid.exit
  call void @__sanitizer_cov_trace_pc() #19
  %gsidoffset8 = getelementptr inbounds %struct.cifs_ntsd, ptr %pntsd, i32 0, i32 3
  %45 = ptrtoint ptr %gsidoffset8 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %gsidoffset8, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %add.ptr9 = getelementptr i8, ptr %pntsd, i32 %47
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %cifs_copy_sid.exit.if.end10_crit_edge
  %group_sid_ptr.0 = phi ptr [ %add.ptr9, %if.else7 ], [ %pgrpsid, %cifs_copy_sid.exit.if.end10_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %add.ptr4, i32 68
  %48 = ptrtoint ptr %group_sid_ptr.0 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %group_sid_ptr.0, align 1
  %50 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %add.ptr12, align 1
  %num_subauth.i33 = getelementptr inbounds %struct.cifs_sid, ptr %group_sid_ptr.0, i32 0, i32 1
  %51 = ptrtoint ptr %num_subauth.i33 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_subauth.i33, align 1
  %53 = tail call i8 @llvm.umin.i8(i8 %52, i8 15) #17
  %num_subauth7.i34 = getelementptr inbounds %struct.cifs_sid, ptr %add.ptr12, i32 0, i32 1
  %54 = ptrtoint ptr %num_subauth7.i34 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %num_subauth7.i34, align 1
  %arrayidx.i35 = getelementptr %struct.cifs_sid, ptr %group_sid_ptr.0, i32 0, i32 2, i32 0
  %55 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i35, align 1
  %arrayidx11.i36 = getelementptr %struct.cifs_sid, ptr %add.ptr12, i32 0, i32 2, i32 0
  %57 = ptrtoint ptr %arrayidx11.i36 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx11.i36, align 1
  %arrayidx.1.i37 = getelementptr %struct.cifs_sid, ptr %group_sid_ptr.0, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %arrayidx.1.i37 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.1.i37, align 1
  %arrayidx11.1.i38 = getelementptr %struct.cifs_sid, ptr %add.ptr12, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %arrayidx11.1.i38 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx11.1.i38, align 1
  %arrayidx.2.i39 = getelementptr %struct.cifs_sid, ptr %group_sid_ptr.0, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %arrayidx.2.i39 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.2.i39, align 1
  %arrayidx11.2.i40 = getelementptr %struct.cifs_sid, ptr %add.ptr12, i32 0, i32 2, i32 2
  %63 = ptrtoint ptr %arrayidx11.2.i40 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx11.2.i40, align 1
  %arrayidx.3.i41 = getelementptr %struct.cifs_sid, ptr %group_sid_ptr.0, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %arrayidx.3.i41 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.3.i41, align 1
  %arrayidx11.3.i42 = getelementptr %struct.cifs_sid, ptr %add.ptr12, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %arrayidx11.3.i42 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx11.3.i42, align 1
  %arrayidx.4.i43 = getelementptr %struct.cifs_sid, ptr %group_sid_ptr.0, i32 0, i32 2, i32 4
  %67 = ptrtoint ptr %arrayidx.4.i43 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.4.i43, align 1
  %arrayidx11.4.i44 = getelementptr %struct.cifs_sid, ptr %add.ptr12, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %arrayidx11.4.i44 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx11.4.i44, align 1
  %arrayidx.5.i45 = getelementptr %struct.cifs_sid, ptr %group_sid_ptr.0, i32 0, i32 2, i32 5
  %70 = ptrtoint ptr %arrayidx.5.i45 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.5.i45, align 1
  %arrayidx11.5.i46 = getelementptr %struct.cifs_sid, ptr %add.ptr12, i32 0, i32 2, i32 5
  %72 = ptrtoint ptr %arrayidx11.5.i46 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx11.5.i46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp1548.not.i47 = icmp eq i8 %53, 0
  br i1 %cmp1548.not.i47, label %if.end10.cifs_copy_sid.exit58_crit_edge, label %if.end10.for.body17.i54_crit_edge

if.end10.for.body17.i54_crit_edge:                ; preds = %if.end10
  br label %for.body17.i54

if.end10.cifs_copy_sid.exit58_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cifs_copy_sid.exit58

for.body17.i54:                                   ; preds = %for.body17.i54.for.body17.i54_crit_edge, %if.end10.for.body17.i54_crit_edge
  %i.149.i48 = phi i32 [ %inc22.i51, %for.body17.i54.for.body17.i54_crit_edge ], [ 0, %if.end10.for.body17.i54_crit_edge ]
  %arrayidx18.i49 = getelementptr %struct.cifs_sid, ptr %group_sid_ptr.0, i32 0, i32 3, i32 %i.149.i48
  %73 = ptrtoint ptr %arrayidx18.i49 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %arrayidx18.i49, align 1
  %arrayidx20.i50 = getelementptr %struct.cifs_sid, ptr %add.ptr12, i32 0, i32 3, i32 %i.149.i48
  %75 = ptrtoint ptr %arrayidx20.i50 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %arrayidx20.i50, align 1
  %inc22.i51 = add nuw nsw i32 %i.149.i48, 1
  %76 = ptrtoint ptr %num_subauth7.i34 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_subauth7.i34, align 1
  %conv14.i52 = zext i8 %77 to i32
  %cmp15.i53 = icmp ult i32 %inc22.i51, %conv14.i52
  br i1 %cmp15.i53, label %for.body17.i54.for.body17.i54_crit_edge, label %for.body17.i54.cifs_copy_sid.exit58_crit_edge

for.body17.i54.cifs_copy_sid.exit58_crit_edge:    ; preds = %for.body17.i54
  call void @__sanitizer_cov_trace_pc() #19
  br label %cifs_copy_sid.exit58

for.body17.i54.for.body17.i54_crit_edge:          ; preds = %for.body17.i54
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i54

cifs_copy_sid.exit58:                             ; preds = %for.body17.i54.cifs_copy_sid.exit58_crit_edge, %if.end10.cifs_copy_sid.exit58_crit_edge
  %add14 = add i32 %sidsoffset, 136
  ret i32 %add14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @id_to_sid(i32 noundef %cid, i32 noundef %sidtype, ptr nocapture noundef %ssid) unnamed_addr #0 align 64 {
entry:
  %desc = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %desc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sidtype)
  %cmp = icmp eq i32 %sidtype, 1
  %cond = select i1 %cmp, i32 111, i32 103
  %0 = call ptr @memset(ptr %desc, i32 255, i32 14)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %desc, i32 noundef 14, ptr noundef nonnull @.str.131, i32 noundef %cond, i32 noundef %cid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call)
  %cmp1 = icmp ugt i32 %call, 13
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @root_cred, align 4
  %call2 = tail call ptr @override_creds(ptr noundef %1) #17
  %call.i = call ptr @request_key_tag(ptr noundef nonnull @cifs_idmap_key_type, ptr noundef nonnull %desc, ptr noundef null, ptr noundef nonnull @.str.5) #17
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.else25

if.then6:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then6.out_revert_creds_crit_edge, label %do.body9

if.then6.out_revert_creds_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_revert_creds

do.body9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_to_sid.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@id_to_sid, %land.lhs.true)) #17
          to label %out_revert_creds [label %land.lhs.true], !srcloc !293

land.lhs.true:                                    ; preds = %do.body9
  %call14 = call i32 @___ratelimit(ptr noundef nonnull @id_to_sid._rs, ptr noundef nonnull @.str.132) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.out_revert_creds_crit_edge, label %if.then16

land.lhs.true.out_revert_creds_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_revert_creds

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %cond18 = select i1 %cmp, i32 117, i32 103
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_to_sid.descriptor, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.132, i32 noundef %cond18, i32 noundef %cid) #17
  br label %out_revert_creds

if.else25:                                        ; preds = %if.end
  %datalen = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %datalen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %4)
  %cmp26 = icmp ult i16 %4, 8
  br i1 %cmp26, label %if.then28, label %if.end62

if.then28:                                        ; preds = %if.else25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and31 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then28.invalidate_key_crit_edge, label %do.body34

if.then28.invalidate_key_crit_edge:               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  br label %invalidate_key

do.body34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_to_sid.descriptor.135, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@id_to_sid, %land.lhs.true46)) #17
          to label %invalidate_key [label %land.lhs.true46], !srcloc !293

land.lhs.true46:                                  ; preds = %do.body34
  %call47 = call i32 @___ratelimit(ptr noundef nonnull @id_to_sid._rs.134, ptr noundef nonnull @.str.132) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.invalidate_key_crit_edge, label %if.then49

land.lhs.true46.invalidate_key_crit_edge:         ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #19
  br label %invalidate_key

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %datalen, align 2
  %conv51 = zext i16 %7 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_to_sid.descriptor.135, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.132, i32 noundef %conv51) #17
  br label %invalidate_key

if.end62:                                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %4)
  %cmp65 = icmp ult i16 %4, 17
  %8 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 17
  br i1 %cmp65, label %if.end62.cond.end_crit_edge, label %cond.false

if.end62.cond.end_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end62.cond.end_crit_edge
  %cond67 = phi ptr [ %10, %cond.false ], [ %8, %if.end62.cond.end_crit_edge ]
  %num_subauth = getelementptr inbounds %struct.cifs_sid, ptr %cond67, i32 0, i32 1
  %11 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_subauth, align 1
  %conv68 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv68, 2
  %add = add nuw nsw i32 %mul, 8
  %conv70 = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv70)
  %cmp71 = icmp ugt i32 %add, %conv70
  br i1 %cmp71, label %if.then73, label %if.end106

if.then73:                                        ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and76 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then73.invalidate_key_crit_edge, label %do.body79

if.then73.invalidate_key_crit_edge:               ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  br label %invalidate_key

do.body79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_to_sid.descriptor.137, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@id_to_sid, %land.lhs.true91)) #17
          to label %invalidate_key [label %land.lhs.true91], !srcloc !293

land.lhs.true91:                                  ; preds = %do.body79
  %call92 = call i32 @___ratelimit(ptr noundef nonnull @id_to_sid._rs.136, ptr noundef nonnull @.str.132) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %land.lhs.true91.invalidate_key_crit_edge, label %if.then94

land.lhs.true91.invalidate_key_crit_edge:         ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #19
  br label %invalidate_key

if.then94:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %datalen, align 2
  %conv96 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_to_sid.descriptor.137, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.132, i32 noundef %conv96, i32 noundef %add) #17
  br label %invalidate_key

if.end106:                                        ; preds = %cond.end
  %16 = ptrtoint ptr %cond67 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cond67, align 1
  %18 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ssid, align 1
  %19 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_subauth, align 1
  %21 = call i8 @llvm.umin.i8(i8 %20, i8 15) #17
  %num_subauth7.i = getelementptr inbounds %struct.cifs_sid, ptr %ssid, i32 0, i32 1
  %22 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %num_subauth7.i, align 1
  %arrayidx.i = getelementptr %struct.cifs_sid, ptr %cond67, i32 0, i32 2, i32 0
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %arrayidx11.i = getelementptr %struct.cifs_sid, ptr %ssid, i32 0, i32 2, i32 0
  %25 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx11.i, align 1
  %arrayidx.1.i = getelementptr %struct.cifs_sid, ptr %cond67, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx11.1.i = getelementptr %struct.cifs_sid, ptr %ssid, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx11.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.cifs_sid, ptr %cond67, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx11.2.i = getelementptr %struct.cifs_sid, ptr %ssid, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx11.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.cifs_sid, ptr %cond67, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx11.3.i = getelementptr %struct.cifs_sid, ptr %ssid, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx11.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.cifs_sid, ptr %cond67, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx11.4.i = getelementptr %struct.cifs_sid, ptr %ssid, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx11.4.i, align 1
  %arrayidx.5.i = getelementptr %struct.cifs_sid, ptr %cond67, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx11.5.i = getelementptr %struct.cifs_sid, ptr %ssid, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx11.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp1548.not.i = icmp eq i8 %21, 0
  br i1 %cmp1548.not.i, label %if.end106.out_key_put_crit_edge, label %if.end106.for.body17.i_crit_edge

if.end106.for.body17.i_crit_edge:                 ; preds = %if.end106
  br label %for.body17.i

if.end106.out_key_put_crit_edge:                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_key_put

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %if.end106.for.body17.i_crit_edge
  %i.149.i = phi i32 [ %inc22.i, %for.body17.i.for.body17.i_crit_edge ], [ 0, %if.end106.for.body17.i_crit_edge ]
  %arrayidx18.i = getelementptr %struct.cifs_sid, ptr %cond67, i32 0, i32 3, i32 %i.149.i
  %41 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx18.i, align 1
  %arrayidx20.i = getelementptr %struct.cifs_sid, ptr %ssid, i32 0, i32 3, i32 %i.149.i
  %43 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %arrayidx20.i, align 1
  %inc22.i = add nuw nsw i32 %i.149.i, 1
  %44 = ptrtoint ptr %num_subauth7.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_subauth7.i, align 1
  %conv14.i = zext i8 %45 to i32
  %cmp15.i = icmp ult i32 %inc22.i, %conv14.i
  br i1 %cmp15.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.out_key_put_crit_edge

for.body17.i.out_key_put_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_key_put

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.i

out_key_put:                                      ; preds = %invalidate_key, %for.body17.i.out_key_put_crit_edge, %if.end106.out_key_put_crit_edge
  %rc.0 = phi i32 [ -5, %invalidate_key ], [ 0, %if.end106.out_key_put_crit_edge ], [ 0, %for.body17.i.out_key_put_crit_edge ]
  call void @key_put(ptr noundef %call.i) #17
  br label %out_revert_creds

out_revert_creds:                                 ; preds = %out_key_put, %if.then16, %land.lhs.true.out_revert_creds_crit_edge, %do.body9, %if.then6.out_revert_creds_crit_edge
  %rc.1 = phi i32 [ -22, %if.then16 ], [ -22, %land.lhs.true.out_revert_creds_crit_edge ], [ -22, %if.then6.out_revert_creds_crit_edge ], [ %rc.0, %out_key_put ], [ -22, %do.body9 ]
  call void @revert_creds(ptr noundef %call2) #17
  br label %cleanup

invalidate_key:                                   ; preds = %if.then94, %land.lhs.true91.invalidate_key_crit_edge, %do.body79, %if.then73.invalidate_key_crit_edge, %if.then49, %land.lhs.true46.invalidate_key_crit_edge, %do.body34, %if.then28.invalidate_key_crit_edge
  call void @key_invalidate(ptr noundef %call.i) #17
  br label %out_key_put

cleanup:                                          ; preds = %out_revert_creds, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out_revert_creds ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %desc) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @populate_new_aces(ptr nocapture noundef writeonly %nacl_base, ptr nocapture noundef readonly %pownersid, ptr nocapture noundef readonly %pgrpsid, ptr nocapture noundef %pnmode, ptr nocapture noundef %pnum_aces, ptr nocapture noundef %pnsize, i1 noundef zeroext %modefromsid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pnmode to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pnmode, align 8
  %2 = ptrtoint ptr %pnum_aces to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pnum_aces, align 4
  %4 = ptrtoint ptr %pnsize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pnsize, align 2
  br i1 %modefromsid, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %nacl_base, i32 %conv
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %add.ptr, align 1
  %flags.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %flags.i, align 1
  %access_req.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %access_req.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %access_req.i, align 1
  %sid.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr, i32 0, i32 4
  %num_subauth.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %num_subauth.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %num_subauth.i, align 1
  %10 = ptrtoint ptr %sid.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %sid.i, align 1
  %arrayidx3.i = getelementptr %struct.cifs_ace, ptr %add.ptr, i32 0, i32 4, i32 2, i32 0
  %arrayidx3.5.i = getelementptr %struct.cifs_ace, ptr %add.ptr, i32 0, i32 4, i32 2, i32 5
  %11 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 5)
  %12 = ptrtoint ptr %arrayidx3.5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %arrayidx3.5.i, align 1
  %sub_auth.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %sub_auth.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 1476395008, ptr %sub_auth.i, align 1
  %arrayidx8.i = getelementptr %struct.cifs_ace, ptr %add.ptr, i32 0, i32 4, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 50331648, ptr %arrayidx8.i, align 1
  %15 = trunc i64 %1 to i32
  %conv.i = and i32 %15, 4095
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #17
  %arrayidx11.i = getelementptr %struct.cifs_ace, ptr %add.ptr, i32 0, i32 4, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %arrayidx11.i, align 1
  %size.i = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr, i32 0, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 7168, ptr %size.i, align 1
  %add = add i16 %5, 28
  %conv3 = zext i16 %add to i32
  %add.ptr4 = getelementptr i8, ptr %nacl_base, i32 %conv3
  %19 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %add.ptr4, align 1
  %flags.i176 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr4, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i176 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %flags.i176, align 1
  %access_req.i177 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr4, i32 0, i32 3
  %21 = ptrtoint ptr %access_req.i177 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 16, ptr %access_req.i177, align 1
  %sid.i178 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr4, i32 0, i32 4
  %num_subauth.i179 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr4, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %num_subauth.i179 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %num_subauth.i179, align 1
  %23 = ptrtoint ptr %sid.i178 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %sid.i178, align 1
  %arrayidx3.i180 = getelementptr %struct.cifs_ace, ptr %add.ptr4, i32 0, i32 4, i32 2, i32 0
  %arrayidx3.5.i181 = getelementptr %struct.cifs_ace, ptr %add.ptr4, i32 0, i32 4, i32 2, i32 5
  %24 = call ptr @memset(ptr %arrayidx3.i180, i32 0, i32 5)
  %25 = ptrtoint ptr %arrayidx3.5.i181 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %arrayidx3.5.i181, align 1
  %sub_auth.i182 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr4, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %sub_auth.i182 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 184549376, ptr %sub_auth.i182, align 1
  %size.i183 = getelementptr inbounds %struct.cifs_ace, ptr %add.ptr4, i32 0, i32 2
  %27 = ptrtoint ptr %size.i183 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 5120, ptr %size.i183, align 1
  %add7 = add i16 %5, 48
  br label %set_size

if.end:                                           ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(68) %pownersid, ptr noundef dereferenceable(68) %pgrpsid, i32 68) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  %shl = shl i64 %1, 3
  %shr = lshr i64 %1, 3
  %and = select i1 %tobool11.not, i64 %shl, i64 -1
  %user_mode.0.in = and i64 %and, %1
  %and14 = select i1 %tobool11.not, i64 %shr, i64 -1
  %group_mode.0.in = and i64 %and14, %1
  %group_mode.0 = and i64 %group_mode.0.in, 56
  %user_mode.0 = and i64 %user_mode.0.in, 448
  %and19 = and i64 %1, 7
  %neg = xor i64 %user_mode.0.in, -1
  %shl20 = shl nuw nsw i64 %group_mode.0, 3
  %shl21 = shl nuw nsw i64 %and19, 6
  %or = or i64 %shl20, %shl21
  %and22 = and i64 %or, %neg
  %neg24 = xor i64 %group_mode.0.in, -1
  %shl25 = shl nuw nsw i64 %and19, 3
  %and26 = and i64 %shl25, %neg24
  %or28 = and i64 %1, -505
  %or29 = or i64 %or28, %group_mode.0
  %or31 = or i64 %or29, %user_mode.0
  %28 = ptrtoint ptr %pnmode to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %or31, ptr %pnmode, align 8
  %and32 = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool36.not = icmp eq i64 %and22, 0
  br i1 %tobool36.not, label %if.end.if.end46_crit_edge, label %if.then37

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv38 = zext i16 %5 to i32
  %add.ptr39 = getelementptr i8, ptr %nacl_base, i32 %conv38
  %call40 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr39, ptr noundef %pownersid, i64 noundef %and22, i16 noundef zeroext 448, i8 noundef zeroext 1, i1 noundef zeroext false)
  %add43 = add i16 %call40, %5
  %inc45 = add i32 %3, 1
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %if.end.if.end46_crit_edge
  %num_aces.0 = phi i32 [ %inc45, %if.then37 ], [ %3, %if.end.if.end46_crit_edge ]
  %nsize.0 = phi i16 [ %add43, %if.then37 ], [ %5, %if.end.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool47.not = icmp eq i64 %and26, 0
  %tobool47.not.not = xor i1 %tobool47.not, true
  %shr48 = lshr exact i64 %user_mode.0, 3
  %and49 = and i64 %shr48, %and26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and49)
  %tobool50.not = icmp eq i64 %and49, 0
  %or.cond = select i1 %tobool47.not.not, i1 %tobool50.not, i1 false
  br i1 %or.cond, label %if.then51, label %if.end46.if.end60_crit_edge

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  %conv52 = zext i16 %nsize.0 to i32
  %add.ptr53 = getelementptr i8, ptr %nacl_base, i32 %conv52
  %call54 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr53, ptr noundef %pgrpsid, i64 noundef %and26, i16 noundef zeroext 56, i8 noundef zeroext 1, i1 noundef zeroext false)
  %add57 = add i16 %call54, %nsize.0
  %inc59 = add i32 %num_aces.0, 1
  br label %if.end60

if.end60:                                         ; preds = %if.then51, %if.end46.if.end60_crit_edge
  %num_aces.1 = phi i32 [ %inc59, %if.then51 ], [ %num_aces.0, %if.end46.if.end60_crit_edge ]
  %nsize.1 = phi i16 [ %add57, %if.then51 ], [ %nsize.0, %if.end46.if.end60_crit_edge ]
  %conv61 = zext i16 %nsize.1 to i32
  %add.ptr62 = getelementptr i8, ptr %nacl_base, i32 %conv61
  %call63 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr62, ptr noundef %pownersid, i64 noundef %user_mode.0, i16 noundef zeroext 448, i8 noundef zeroext 0, i1 noundef zeroext true)
  %add66 = add i16 %call63, %nsize.1
  %inc68 = add i32 %num_aces.1, 1
  %or.cond175 = select i1 %tobool47.not, i1 true, i1 %tobool50.not
  br i1 %or.cond175, label %if.end60.if.end83_crit_edge, label %if.then74

if.end60.if.end83_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

if.then74:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  %conv75 = zext i16 %add66 to i32
  %add.ptr76 = getelementptr i8, ptr %nacl_base, i32 %conv75
  %call77 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr76, ptr noundef %pgrpsid, i64 noundef %and26, i16 noundef zeroext 56, i8 noundef zeroext 1, i1 noundef zeroext false)
  %add80 = add i16 %call77, %add66
  %inc82 = add i32 %num_aces.1, 2
  br label %if.end83

if.end83:                                         ; preds = %if.then74, %if.end60.if.end83_crit_edge
  %num_aces.2 = phi i32 [ %inc82, %if.then74 ], [ %inc68, %if.end60.if.end83_crit_edge ]
  %nsize.2 = phi i16 [ %add80, %if.then74 ], [ %add66, %if.end60.if.end83_crit_edge ]
  %conv84 = zext i16 %nsize.2 to i32
  %add.ptr85 = getelementptr i8, ptr %nacl_base, i32 %conv84
  %call87 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr85, ptr noundef %pgrpsid, i64 noundef %group_mode.0, i16 noundef zeroext 56, i8 noundef zeroext 0, i1 noundef zeroext %tobool33.not)
  %add90 = add i16 %call87, %nsize.2
  %conv93 = zext i16 %add90 to i32
  %add.ptr94 = getelementptr i8, ptr %nacl_base, i32 %conv93
  %call97 = tail call fastcc zeroext i16 @fill_ace_for_sid(ptr noundef %add.ptr94, ptr noundef nonnull @sid_everyone, i64 noundef %and19, i16 noundef zeroext 7, i8 noundef zeroext 0, i1 noundef zeroext %tobool33.not)
  %add100 = add i16 %add90, %call97
  br label %set_size

set_size:                                         ; preds = %if.end83, %if.then
  %num_aces.3.in = phi i32 [ %3, %if.then ], [ %num_aces.2, %if.end83 ]
  %nsize.3 = phi i16 [ %add7, %if.then ], [ %add100, %if.end83 ]
  %num_aces.3 = add i32 %num_aces.3.in, 2
  %29 = ptrtoint ptr %pnum_aces to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %num_aces.3, ptr %pnum_aces, align 4
  %30 = ptrtoint ptr %pnsize to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %nsize.3, ptr %pnsize, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @fill_ace_for_sid(ptr nocapture noundef writeonly %pntace, ptr nocapture noundef readonly %psid, i64 noundef %nmode, i16 noundef zeroext %bits, i8 noundef zeroext %access_type, i1 noundef zeroext %allow_delete_child) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pntace to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %access_type, ptr %pntace, align 1
  %flags = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %flags, align 1
  %conv = trunc i64 %nmode to i16
  %and37.i = and i16 %conv, %bits
  %conv3.i = zext i16 %and37.i to i32
  %and4.i = and i32 %conv3.i, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 2032025
  %and6.i = and i32 %conv3.i, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or9.i = or i32 %spec.select.i, 2032030
  %spec.select39.i = select i1 %tobool7.not.i, i32 %spec.select.i, i32 %or9.i
  %and12.i = and i32 %conv3.i, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %or15.i = or i32 %spec.select39.i, 2032056
  %spec.select = select i1 %tobool13.not.i, i32 %spec.select39.i, i32 %or15.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mode_to_access_flags.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_ace_for_sid, %land.lhs.true.i)) #17
          to label %mode_to_access_flags.exit [label %land.lhs.true.i], !srcloc !293

land.lhs.true.i:                                  ; preds = %entry
  %call22.i = tail call i32 @___ratelimit(ptr noundef nonnull @mode_to_access_flags._rs, ptr noundef nonnull @.str.129) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i.mode_to_access_flags.exit_crit_edge, label %if.then24.i

land.lhs.true.i.mode_to_access_flags.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mode_to_access_flags.exit

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mode_to_access_flags.descriptor, ptr noundef nonnull @.str.130, i32 noundef %conv3.i, i32 noundef %spec.select) #17
  br label %mode_to_access_flags.exit

mode_to_access_flags.exit:                        ; preds = %if.then24.i, %land.lhs.true.i.mode_to_access_flags.exit_crit_edge, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %access_type)
  %cmp = icmp eq i8 %access_type, 0
  %brmerge.demorgan = and i1 %cmp, %allow_delete_child
  %or = or i32 %spec.select, 64
  %spec.select71 = select i1 %brmerge.demorgan, i32 %or, i32 %spec.select
  br i1 %cmp, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %mode_to_access_flags.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select71)
  %tobool8.not = icmp eq i32 %spec.select71, 0
  %spec.select72 = select i1 %tobool8.not, i32 1179784, i32 %spec.select71
  br label %if.end15

if.else:                                          ; preds = %mode_to_access_flags.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %access_type)
  %cmp11 = icmp eq i8 %access_type, 1
  %and = and i32 %spec.select71, -1179785
  %spec.select73 = select i1 %cmp11, i32 %and, i32 %spec.select71
  br label %if.end15

if.end15:                                         ; preds = %if.else, %land.lhs.true7
  %access_req.2 = phi i32 [ %spec.select72, %land.lhs.true7 ], [ %spec.select73, %if.else ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %access_req.2)
  %access_req16 = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 3
  %3 = ptrtoint ptr %access_req16 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %access_req16, align 1
  %4 = ptrtoint ptr %psid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %psid, align 1
  %sid = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4
  %6 = ptrtoint ptr %sid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sid, align 1
  %num_subauth = getelementptr inbounds %struct.cifs_sid, ptr %psid, i32 0, i32 1
  %7 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_subauth, align 1
  %num_subauth19 = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %num_subauth19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %num_subauth19, align 1
  %arrayidx = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %arrayidx24 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 0
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx24, align 1
  %arrayidx.1 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1, align 1
  %arrayidx24.1 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx24.1, align 1
  %arrayidx.2 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2, align 1
  %arrayidx24.2 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx24.2, align 1
  %arrayidx.3 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3, align 1
  %arrayidx24.3 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx24.3, align 1
  %arrayidx.4 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4, align 1
  %arrayidx24.4 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 4
  %24 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx24.4, align 1
  %arrayidx.5 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.5, align 1
  %arrayidx24.5 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 2, i32 5
  %27 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx24.5, align 1
  %28 = load i8, ptr %num_subauth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp2876.not = icmp eq i8 %28, 0
  br i1 %cmp2876.not, label %if.end15.for.end37_crit_edge, label %if.end15.for.body30_crit_edge

if.end15.for.body30_crit_edge:                    ; preds = %if.end15
  br label %for.body30

if.end15.for.end37_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end37

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %if.end15.for.body30_crit_edge
  %i.177 = phi i32 [ %inc36, %for.body30.for.body30_crit_edge ], [ 0, %if.end15.for.body30_crit_edge ]
  %arrayidx31 = getelementptr %struct.cifs_sid, ptr %psid, i32 0, i32 3, i32 %i.177
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %arrayidx31, align 1
  %arrayidx34 = getelementptr %struct.cifs_ace, ptr %pntace, i32 0, i32 4, i32 3, i32 %i.177
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %arrayidx34, align 1
  %inc36 = add nuw nsw i32 %i.177, 1
  %32 = ptrtoint ptr %num_subauth to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_subauth, align 1
  %conv27 = zext i8 %33 to i32
  %cmp28 = icmp ult i32 %inc36, %conv27
  br i1 %cmp28, label %for.body30.for.body30_crit_edge, label %for.body30.for.end37_crit_edge

for.body30.for.end37_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end37

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body30

for.end37:                                        ; preds = %for.body30.for.end37_crit_edge, %if.end15.for.end37_crit_edge
  %.lcssa = phi i8 [ 0, %if.end15.for.end37_crit_edge ], [ %33, %for.body30.for.end37_crit_edge ]
  %conv27.tr = zext i8 %.lcssa to i16
  %34 = shl nuw nsw i16 %conv27.tr, 2
  %conv40 = add nuw nsw i16 %34, 16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv40)
  %size41 = getelementptr inbounds %struct.cifs_ace, ptr %pntace, i32 0, i32 2
  %36 = ptrtoint ptr %size41 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %size41, align 1
  ret i16 %conv40
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !154, !155, !157, !158, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !251, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !270, !272, !273, !274, !275, !277, !278, !280, !281}
!llvm.named.register.sp = !{!282}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/cifsacl.c", i32 349, i32 3}
!2 = !{ptr @sid_to_id._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @sid_to_id.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/cifs/cifsacl.c", i32 397, i32 53}
!10 = !{ptr @sid_to_id._rs.6, !11, !"_rs", i1 false, i1 false}
!11 = !{!"../fs/cifs/cifsacl.c", i32 399, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sid_to_id.descriptor.7, !11, !"descriptor", i1 false, i1 false}
!14 = !{ptr @sid_to_id._rs.9, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../fs/cifs/cifsacl.c", i32 411, i32 3}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sid_to_id.descriptor.10, !15, !"descriptor", i1 false, i1 false}
!18 = !{ptr @init_cifs_idmap._rs, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../fs/cifs/cifsacl.c", i32 459, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @init_cifs_idmap.descriptor, !19, !"descriptor", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/cifs/cifsacl.c", i32 472, i32 26}
!25 = !{ptr @init_cifs_idmap._rs.15, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../fs/cifs/cifsacl.c", i32 493, i32 2}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @init_cifs_idmap.descriptor.16, !26, !"descriptor", i1 false, i1 false}
!29 = !{ptr @exit_cifs_idmap._rs, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../fs/cifs/cifsacl.c", i32 509, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @exit_cifs_idmap.descriptor, !30, !"descriptor", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../fs/cifs/cifsacl.c", i32 920, i32 28}
!36 = !{ptr @get_cifs_acl_by_fid._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../fs/cifs/cifsacl.c", i32 1394, i32 8}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @get_cifs_acl_by_fid.descriptor, !37, !"descriptor", i1 false, i1 false}
!41 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!42 = !{ptr @get_cifs_acl_by_fid._rs.22, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../fs/cifs/cifsacl.c", i32 1397, i32 2}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @get_cifs_acl_by_fid.descriptor.23, !43, !"descriptor", i1 false, i1 false}
!46 = !{ptr @get_cifs_acl_by_fid._rs.25, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../fs/cifs/cifsacl.c", i32 1401, i32 2}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @get_cifs_acl_by_fid.descriptor.26, !47, !"descriptor", i1 false, i1 false}
!50 = !{ptr @set_cifs_acl._rs, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../fs/cifs/cifsacl.c", i32 1484, i32 8}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @set_cifs_acl.descriptor, !51, !"descriptor", i1 false, i1 false}
!54 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!55 = !{ptr @set_cifs_acl._rs.29, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../fs/cifs/cifsacl.c", i32 1502, i32 3}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @set_cifs_acl._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @set_cifs_acl._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @set_cifs_acl._rs.31, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../fs/cifs/cifsacl.c", i32 1507, i32 2}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @set_cifs_acl.descriptor.32, !61, !"descriptor", i1 false, i1 false}
!64 = !{ptr @set_cifs_acl._rs.34, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../fs/cifs/cifsacl.c", i32 1511, i32 2}
!66 = !{ptr @set_cifs_acl.descriptor.35, !65, !"descriptor", i1 false, i1 false}
!67 = !{ptr @cifs_acl_to_fattr._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../fs/cifs/cifsacl.c", i32 1529, i32 2}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cifs_acl_to_fattr.descriptor, !68, !"descriptor", i1 false, i1 false}
!72 = !{ptr @cifs_acl_to_fattr._rs.38, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../fs/cifs/cifsacl.c", i32 1547, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @cifs_acl_to_fattr._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @cifs_acl_to_fattr._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @cifs_acl_to_fattr._rs.40, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../fs/cifs/cifsacl.c", i32 1556, i32 4}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cifs_acl_to_fattr._entry.41, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cifs_acl_to_fattr._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @id_mode_to_cifs_acl._rs, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../fs/cifs/cifsacl.c", i32 1588, i32 2}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @id_mode_to_cifs_acl.descriptor, !83, !"descriptor", i1 false, i1 false}
!87 = !{ptr @id_mode_to_cifs_acl._rs.46, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../fs/cifs/cifsacl.c", i32 1600, i32 3}
!89 = !{ptr @id_mode_to_cifs_acl._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @id_mode_to_cifs_acl._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @id_mode_to_cifs_acl._rs.47, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../fs/cifs/cifsacl.c", i32 1653, i32 2}
!93 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @id_mode_to_cifs_acl.descriptor.48, !92, !"descriptor", i1 false, i1 false}
!95 = !{ptr @id_mode_to_cifs_acl._rs.50, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../fs/cifs/cifsacl.c", i32 1661, i32 3}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @id_mode_to_cifs_acl.descriptor.51, !96, !"descriptor", i1 false, i1 false}
!99 = !{ptr @root_cred, !100, !"root_cred", i1 false, i1 false}
!100 = !{!"../fs/cifs/cifsacl.c", i32 60, i32 27}
!101 = !{ptr @is_well_known_sid._rs, !102, !"_rs", i1 false, i1 false}
!102 = !{!"../fs/cifs/cifsacl.c", i32 234, i32 4}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @is_well_known_sid.descriptor, !102, !"descriptor", i1 false, i1 false}
!106 = !{ptr @is_well_known_sid._rs.55, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../fs/cifs/cifsacl.c", i32 253, i32 2}
!108 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @is_well_known_sid.descriptor.56, !107, !"descriptor", i1 false, i1 false}
!110 = !{ptr @sid_unix_groups, !111, !"sid_unix_groups", i1 false, i1 false}
!111 = !{!"../fs/cifs/cifsacl.c", i32 36, i32 30}
!112 = !{ptr @sid_unix_users, !113, !"sid_unix_users", i1 false, i1 false}
!113 = !{!"../fs/cifs/cifsacl.c", i32 32, i32 30}
!114 = !{ptr @sid_unix_NFS_groups, !115, !"sid_unix_NFS_groups", i1 false, i1 false}
!115 = !{!"../fs/cifs/cifsacl.c", i32 51, i32 30}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/cifs/cifsacl.c", i32 119, i32 24}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/cifs/cifsacl.c", i32 136, i32 25}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/cifs/cifsacl.c", i32 138, i32 25}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/cifs/cifsacl.c", i32 144, i32 25}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/cifs/cifsacl.c", i32 97, i32 17}
!126 = !{ptr @cifs_idmap_key_type, !127, !"cifs_idmap_key_type", i1 false, i1 false}
!127 = !{!"../fs/cifs/cifsacl.c", i32 96, i32 24}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/cred.h", i32 286, i32 3}
!130 = !{ptr @sid_authusers, !131, !"sid_authusers", i1 false, i1 false}
!131 = !{!"../fs/cifs/cifsacl.c", i32 28, i32 30}
!132 = !{ptr @sid_unix_NFS_mode, !133, !"sid_unix_NFS_mode", i1 false, i1 false}
!133 = !{!"../fs/cifs/cifsacl.c", i32 56, i32 30}
!134 = !{ptr @sid_unix_NFS_users, !135, !"sid_unix_NFS_users", i1 false, i1 false}
!135 = !{!"../fs/cifs/cifsacl.c", i32 46, i32 30}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!138 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!140 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!143 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!146 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!149 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!150 = !{ptr @get_cifs_acl_by_path._rs, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../fs/cifs/cifsacl.c", i32 1423, i32 8}
!152 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @get_cifs_acl_by_path.descriptor, !151, !"descriptor", i1 false, i1 false}
!154 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!155 = !{ptr @get_cifs_acl_by_path._rs.74, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../fs/cifs/cifsacl.c", i32 1441, i32 2}
!157 = !{ptr @get_cifs_acl_by_path.descriptor.75, !156, !"descriptor", i1 false, i1 false}
!158 = !{ptr @get_cifs_acl_by_path._rs.76, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../fs/cifs/cifsacl.c", i32 1443, i32 2}
!160 = !{ptr @get_cifs_acl_by_path.descriptor.77, !159, !"descriptor", i1 false, i1 false}
!161 = !{ptr @parse_sec_desc._rs, !162, !"_rs", i1 false, i1 false}
!162 = !{!"../fs/cifs/cifsacl.c", i32 1207, i32 2}
!163 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @parse_sec_desc.descriptor, !162, !"descriptor", i1 false, i1 false}
!166 = !{ptr @parse_sec_desc._rs.80, !167, !"_rs", i1 false, i1 false}
!167 = !{!"../fs/cifs/cifsacl.c", i32 1214, i32 3}
!168 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @parse_sec_desc.descriptor.81, !167, !"descriptor", i1 false, i1 false}
!170 = !{ptr @parse_sec_desc._rs.83, !171, !"_rs", i1 false, i1 false}
!171 = !{!"../fs/cifs/cifsacl.c", i32 1219, i32 3}
!172 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @parse_sec_desc.descriptor.84, !171, !"descriptor", i1 false, i1 false}
!174 = !{ptr @parse_sec_desc._rs.86, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../fs/cifs/cifsacl.c", i32 1226, i32 3}
!176 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @parse_sec_desc.descriptor.87, !175, !"descriptor", i1 false, i1 false}
!178 = !{ptr @parse_sec_desc._rs.89, !179, !"_rs", i1 false, i1 false}
!179 = !{!"../fs/cifs/cifsacl.c", i32 1232, i32 3}
!180 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @parse_sec_desc.descriptor.90, !179, !"descriptor", i1 false, i1 false}
!182 = !{ptr @parse_sec_desc._rs.92, !183, !"_rs", i1 false, i1 false}
!183 = !{!"../fs/cifs/cifsacl.c", i32 1241, i32 3}
!184 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @parse_sec_desc.descriptor.93, !183, !"descriptor", i1 false, i1 false}
!186 = !{ptr @parse_sid._rs, !187, !"_rs", i1 false, i1 false}
!187 = !{!"../fs/cifs/cifsacl.c", i32 1161, i32 3}
!188 = !{ptr @__func__.parse_sid, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @parse_sid._entry, !187, !"_entry", i1 false, i1 false}
!191 = !{ptr @parse_sid._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @parse_sid._rs.96, !193, !"_rs", i1 false, i1 false}
!193 = !{!"../fs/cifs/cifsacl.c", i32 1168, i32 3}
!194 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @parse_sid.descriptor, !193, !"descriptor", i1 false, i1 false}
!196 = !{ptr @parse_sid._rs.98, !197, !"_rs", i1 false, i1 false}
!197 = !{!"../fs/cifs/cifsacl.c", i32 1172, i32 4}
!198 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @parse_sid.descriptor.99, !197, !"descriptor", i1 false, i1 false}
!200 = !{ptr @parse_sid._rs.101, !201, !"_rs", i1 false, i1 false}
!201 = !{!"../fs/cifs/cifsacl.c", i32 1178, i32 3}
!202 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @parse_sid.descriptor.102, !201, !"descriptor", i1 false, i1 false}
!204 = !{ptr @parse_dacl._rs, !205, !"_rs", i1 false, i1 false}
!205 = !{!"../fs/cifs/cifsacl.c", i32 777, i32 3}
!206 = !{ptr @__func__.parse_dacl, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.104, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @parse_dacl._entry, !205, !"_entry", i1 false, i1 false}
!209 = !{ptr @parse_dacl._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @parse_dacl._rs.105, !211, !"_rs", i1 false, i1 false}
!211 = !{!"../fs/cifs/cifsacl.c", i32 781, i32 2}
!212 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @parse_dacl.descriptor, !211, !"descriptor", i1 false, i1 false}
!214 = !{ptr @dump_ace._rs, !215, !"_rs", i1 false, i1 false}
!215 = !{!"../fs/cifs/cifsacl.c", i32 728, i32 3}
!216 = !{ptr @__func__.dump_ace, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @dump_ace._entry, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @dump_ace._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @dump_ace._rs.108, !221, !"_rs", i1 false, i1 false}
!221 = !{!"../fs/cifs/cifsacl.c", i32 733, i32 3}
!222 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @dump_ace._entry.109, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @dump_ace._entry_ptr.111, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @dump_ace._rs.112, !226, !"_rs", i1 false, i1 false}
!226 = !{!"../fs/cifs/cifsacl.c", i32 740, i32 3}
!227 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @dump_ace.descriptor, !226, !"descriptor", i1 false, i1 false}
!229 = !{ptr @dump_ace._rs.114, !230, !"_rs", i1 false, i1 false}
!230 = !{!"../fs/cifs/cifsacl.c", i32 744, i32 4}
!231 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @dump_ace.descriptor.115, !230, !"descriptor", i1 false, i1 false}
!233 = !{ptr @access_flags_to_mode._rs, !234, !"_rs", i1 false, i1 false}
!234 = !{!"../fs/cifs/cifsacl.c", i32 592, i32 3}
!235 = !{ptr @__func__.access_flags_to_mode, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.117, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @access_flags_to_mode._entry, !234, !"_entry", i1 false, i1 false}
!238 = !{ptr @access_flags_to_mode._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @access_flags_to_mode._rs.118, !240, !"_rs", i1 false, i1 false}
!240 = !{!"../fs/cifs/cifsacl.c", i32 600, i32 3}
!241 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @access_flags_to_mode.descriptor, !240, !"descriptor", i1 false, i1 false}
!243 = !{ptr @access_flags_to_mode._rs.120, !244, !"_rs", i1 false, i1 false}
!244 = !{!"../fs/cifs/cifsacl.c", i32 630, i32 2}
!245 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @access_flags_to_mode.descriptor.121, !244, !"descriptor", i1 false, i1 false}
!247 = !{ptr @sid_everyone, !248, !"sid_everyone", i1 false, i1 false}
!248 = !{!"../fs/cifs/cifsacl.c", i32 25, i32 30}
!249 = !{ptr @build_sec_desc._rs, !250, !"_rs", i1 false, i1 false}
!250 = !{!"../fs/cifs/cifsacl.c", i32 1266, i32 4}
!251 = !{ptr @__func__.build_sec_desc, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.123, !250, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @build_sec_desc._entry, !250, !"_entry", i1 false, i1 false}
!254 = !{ptr @build_sec_desc._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @build_sec_desc._rs.124, !256, !"_rs", i1 false, i1 false}
!256 = !{!"../fs/cifs/cifsacl.c", i32 1323, i32 6}
!257 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @build_sec_desc.descriptor, !256, !"descriptor", i1 false, i1 false}
!259 = !{ptr @build_sec_desc._rs.126, !260, !"_rs", i1 false, i1 false}
!260 = !{!"../fs/cifs/cifsacl.c", i32 1352, i32 6}
!261 = !{ptr @.str.128, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @build_sec_desc.descriptor.127, !260, !"descriptor", i1 false, i1 false}
!263 = !{ptr @mode_to_access_flags._rs, !264, !"_rs", i1 false, i1 false}
!264 = !{!"../fs/cifs/cifsacl.c", i32 659, i32 2}
!265 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.130, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @mode_to_access_flags.descriptor, !264, !"descriptor", i1 false, i1 false}
!268 = !{ptr @.str.131, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/cifs/cifsacl.c", i32 284, i32 36}
!270 = !{ptr @id_to_sid._rs, !271, !"_rs", i1 false, i1 false}
!271 = !{!"../fs/cifs/cifsacl.c", i32 294, i32 3}
!272 = !{ptr @.str.132, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.133, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @id_to_sid.descriptor, !271, !"descriptor", i1 false, i1 false}
!275 = !{ptr @id_to_sid._rs.134, !276, !"_rs", i1 false, i1 false}
!276 = !{!"../fs/cifs/cifsacl.c", i32 299, i32 3}
!277 = !{ptr @id_to_sid.descriptor.135, !276, !"descriptor", i1 false, i1 false}
!278 = !{ptr @id_to_sid._rs.136, !279, !"_rs", i1 false, i1 false}
!279 = !{!"../fs/cifs/cifsacl.c", i32 316, i32 3}
!280 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @id_to_sid.descriptor.137, !279, !"descriptor", i1 false, i1 false}
!282 = !{!"sp"}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{!"branch_weights", i32 1, i32 2000}
!293 = !{i64 2148520586, i64 2148520591, i64 2148520604, i64 2148520648, i64 2148520682, i64 2148520703}
!294 = !{i8 0, i8 2}
!295 = !{!"auto-init"}
!296 = !{i64 2148784464}
!297 = !{i64 2148699173, i64 2148699205, i64 2148699234, i64 2148699268, i64 2148699299, i64 2148699322}
!298 = !{i64 2148784693}
!299 = !{!"branch_weights", i32 2000, i32 1}
!300 = !{i64 2158622676}
!301 = !{i64 2158622887}
!302 = !{i64 2149516993}
!303 = !{i64 2149518029}
!304 = !{i64 2158569673}
!305 = !{i64 2158569898}
!306 = !{i64 2158639068}
!307 = !{i64 2158639287}
