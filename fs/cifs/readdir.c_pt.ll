; ModuleID = '/llk/IR_all_yes/fs/cifs/readdir.c_pt.bc'
source_filename = "../fs/cifs/readdir.c"
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
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.FILE_DIRECTORY_INFO = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, [1 x i8] }>
%struct.cifs_fattr = type { i32, i32, i64, i64, i64, i64, %struct.kuid_t, %struct.kgid_t, i16, i32, i32, i32, %struct.timespec64, %struct.timespec64, %struct.timespec64, i32 }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.__kernel_sockaddr_storage = type { %union.anon.145 }
%union.anon.145 = type { ptr, [124 x i8] }
%struct.cifs_dirent = type { ptr, i32, i32, i64 }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.69, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.44 }
%struct.llist_node = type { ptr }
%union.anon.44 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.69 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.51 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.51 = type { %struct.callback_head }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.127, %struct.list_head, %struct.list_head, %union.anon.128 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.127 = type { %struct.list_head }
%union.anon.128 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.dir_context = type { ptr, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%union.anon.142 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.144 = type { ptr }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.149, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.149 = type { %struct.anon.151 }
%struct.anon.151 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
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
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FILE_UNIX_INFO = type <{ i32, i32, %struct.FILE_UNIX_BASIC_INFO, [1 x i8] }>
%struct.FILE_UNIX_BASIC_INFO = type <{ i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64 }>
%struct.FIND_FILE_STANDARD_INFO = type { i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i8, [1 x i8] }
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.smb2_posix_info_parsed = type { ptr, i32, %struct.cifs_sid, %struct.cifs_sid, i32, ptr }
%struct.cifs_sid = type { i8, i8, [6 x i8], [15 x i32] }
%struct.smb2_posix_info = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32 }>
%struct.FILE_FULL_DIRECTORY_INFO = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, [1 x i8] }>
%struct.SEARCH_ID_FULL_DIR_INFO = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, [1 x i8] }>
%struct.FILE_BOTH_DIRECTORY_INFO = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i8, i8, [24 x i8], [1 x i8] }>

@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_readdir._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cifs_readdir\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/cifs/readdir.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cifs_readdir._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor.6 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: initiate cifs search rc %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_readdir._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor.9 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: End of search, empty dir\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_readdir._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIFS: %s: fce error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cifs_readdir._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor.15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CIFS: %s: entry %lld found\0A\00", [36 x i8] zeroinitializer }, align 32
@cifs_readdir._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor.18 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: Could not find entry\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_readdir._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor.21 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 0, i8 -5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"CIFS: %s: loop through %d times filling dir for net buf %p\0A\00", [36 x i8] zeroinitializer }, align 32
@cifs_readdir._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: past SMB end,  num to fill %d i %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cifs_readdir._entry_ptr = internal global ptr @cifs_readdir._entry, section ".printk_index", align 4
@cifs_readdir._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor.26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: last entry in buf at pos %lld %s\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_readdir._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_readdir.descriptor.29 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.30, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@_initiate_cifs_search.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&cifsFile->file_info_lock\00", [38 x i8] zeroinitializer }, align 32
@_initiate_cifs_search._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_initiate_cifs_search.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_initiate_cifs_search\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CIFS: %s: Full path: %s start at: %lld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@find_cifs_entry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"find_cifs_entry\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CIFS: %s: search backing up - close and restart search\0A\00", [40 x i8] zeroinitializer }, align 32
@find_cifs_entry._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry.descriptor.43 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.44, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CIFS: %s: freeing SMB ff cache buf on search rewind\0A\00", [43 x i8] zeroinitializer }, align 32
@find_cifs_entry._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry.descriptor.46 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.47, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: error %d reinitiating a search on rewind\0A\00", [44 x i8] zeroinitializer }, align 32
@find_cifs_entry._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry.descriptor.49 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.50, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIFS: %s: calling findnext2\0A\00", [35 x i8] zeroinitializer }, align 32
@find_cifs_entry._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.40, ptr @.str.3, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: ntwrk_buf_start is NULL during readdir\0A\00", [43 x i8] zeroinitializer }, align 32
@find_cifs_entry._entry_ptr = internal global ptr @find_cifs_entry._entry, section ".printk_index", align 4
@find_cifs_entry._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry.descriptor.54 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.55, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: found entry - pos_in_buf %d\0A\00", [57 x i8] zeroinitializer }, align 32
@find_cifs_entry._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.40, ptr @.str.3, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013CIFS: VFS: reached end of buf searching for pos in buf %d index to find %lld rc %d\0A\00", [42 x i8] zeroinitializer }, align 32
@find_cifs_entry._entry_ptr.59 = internal global ptr @find_cifs_entry._entry.57, section ".printk_index", align 4
@find_cifs_entry._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry.descriptor.61 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.62, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"CIFS: %s: index not in buffer - could not findnext into it\0A\00", [36 x i8] zeroinitializer }, align 32
@find_cifs_entry._rs.63 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@find_cifs_entry.descriptor.64 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.65, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: can not return entries pos_in_buf beyond last\0A\00", [39 x i8] zeroinitializer }, align 32
@dump_cifs_file_struct._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_cifs_file_struct.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dump_cifs_file_struct\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CIFS: %s: empty cifs private file data\0A\00", [56 x i8] zeroinitializer }, align 32
@dump_cifs_file_struct._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_cifs_file_struct.descriptor.69 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.3, ptr @.str.70, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CIFS: %s: Invalid handle\0A\00", [38 x i8] zeroinitializer }, align 32
@dump_cifs_file_struct._rs.71 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_cifs_file_struct.descriptor.72 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.3, ptr @.str.73, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CIFS: %s: end of search\0A\00", [39 x i8] zeroinitializer }, align 32
@dump_cifs_file_struct._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dump_cifs_file_struct.descriptor.75 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.3, ptr @.str.76, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CIFS: %s: empty dir\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cifs_filldir._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_filldir = private unnamed_addr constant [13 x i8] c"cifs_filldir\00", align 1
@cifs_filldir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @__func__.cifs_filldir, ptr @.str.3, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CIFS: VFS: bad search response length %zd past smb end\0A\00", [38 x i8] zeroinitializer }, align 32
@cifs_filldir._entry_ptr = internal global ptr @cifs_filldir._entry, section ".printk_index", align 4
@cifs_fill_dirent._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_fill_dirent.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cifs_fill_dirent\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: Unknown findfirst level %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_fill_dirent_posix._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_fill_dirent_posix = private unnamed_addr constant [23 x i8] c"cifs_fill_dirent_posix\00", align 1
@cifs_fill_dirent_posix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.cifs_fill_dirent_posix, ptr @.str.3, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CIFS: VFS: Invalid POSIX info payload\0A\00", [55 x i8] zeroinitializer }, align 32
@cifs_fill_dirent_posix._entry_ptr = internal global ptr @cifs_fill_dirent_posix._entry, section ".printk_index", align 4
@cifs_unicode_bytelen._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_unicode_bytelen.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_unicode_bytelen\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CIFS: %s: Unicode string longer than PATH_MAX found\0A\00", [43 x i8] zeroinitializer }, align 32
@cifs_posix_to_fattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_posix_to_fattr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cifs_posix_to_fattr\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: posix fattr: dev %d, reparse %d, mode %o\0A\00", [44 x i8] zeroinitializer }, align 32
@cifs_prime_dcache.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"&wq\00", [28 x i8] zeroinitializer }, align 32
@cifs_prime_dcache._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_prime_dcache.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.86, ptr @.str.3, ptr @.str.87, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cifs_prime_dcache\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CIFS: %s: %s: for %s\0A\00", [42 x i8] zeroinitializer }, align 32
@nxt_dir_entry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.nxt_dir_entry = private unnamed_addr constant [14 x i8] c"nxt_dir_entry\00", align 1
@nxt_dir_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @__func__.nxt_dir_entry, ptr @.str.3, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CIFS: VFS: Invalid offset %u\0A\00", [32 x i8] zeroinitializer }, align 32
@nxt_dir_entry._entry_ptr = internal global ptr @nxt_dir_entry._entry, section ".printk_index", align 4
@nxt_dir_entry._rs.89 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nxt_dir_entry.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.nxt_dir_entry, ptr @.str.3, ptr @.str.90, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: %s: new entry %p old entry %p\0A\00", [59 x i8] zeroinitializer }, align 32
@nxt_dir_entry._rs.91 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nxt_dir_entry._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @__func__.nxt_dir_entry, ptr @.str.3, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013CIFS: VFS: search entry %p began after end of SMB %p old entry %p\0A\00", [59 x i8] zeroinitializer }, align 32
@nxt_dir_entry._entry_ptr.94 = internal global ptr @nxt_dir_entry._entry.92, section ".printk_index", align 4
@nxt_dir_entry._rs.95 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nxt_dir_entry._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @__func__.nxt_dir_entry, ptr @.str.3, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CIFS: VFS: search entry %p extends after end of SMB %p\0A\00", [38 x i8] zeroinitializer }, align 32
@nxt_dir_entry._entry_ptr.98 = internal global ptr @nxt_dir_entry._entry.96, section ".printk_index", align 4
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2147483683, i64 2147483684, i64 2147483685, i64 2147483686, i64 2684354589]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2147483658, i64 2147483666, i64 2147483668, i64 2684354572]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 100, i64 261, i64 514]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.105 = internal global [9 x i64] [i64 7, i64 16, i64 1, i64 100, i64 257, i64 258, i64 260, i64 261, i64 514]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2147483658, i64 2147483666, i64 2147483668, i64 2684354572]
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 954, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 968, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 984, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 997, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1000, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1002, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1005, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1021, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1041, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1054, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 609, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 108, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 392, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 411, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 3566, i32 25 }
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 3571, i32 25 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 748, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 758, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 769, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 784, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 802, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 815, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 824, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 830, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 835, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 40, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 44, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 46, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 48, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 862, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 632, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 540, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 484, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 258, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 72, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 74, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 503, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 508, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 511, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.393 = private constant [21 x i8] c"../fs/cifs/readdir.c\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 518, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @cifs_fill_dirent_posix._entry, ptr @cifs_fill_dirent_posix._entry_ptr, ptr @cifs_filldir._entry, ptr @cifs_filldir._entry_ptr, ptr @cifs_readdir._entry, ptr @cifs_readdir._entry_ptr, ptr @find_cifs_entry._entry, ptr @find_cifs_entry._entry.57, ptr @find_cifs_entry._entry_ptr, ptr @find_cifs_entry._entry_ptr.59, ptr @nxt_dir_entry._entry, ptr @nxt_dir_entry._entry.92, ptr @nxt_dir_entry._entry.96, ptr @nxt_dir_entry._entry_ptr, ptr @nxt_dir_entry._entry_ptr.94, ptr @nxt_dir_entry._entry_ptr.98, ptr @cifs_readdir._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_readdir._rs.5, ptr @.str.7, ptr @cifs_readdir._rs.8, ptr @.str.10, ptr @cifs_readdir._rs.11, ptr @.str.13, ptr @cifs_readdir._rs.14, ptr @.str.16, ptr @cifs_readdir._rs.17, ptr @.str.19, ptr @cifs_readdir._rs.20, ptr @.str.22, ptr @cifs_readdir._rs.23, ptr @.str.24, ptr @cifs_readdir._rs.25, ptr @.str.27, ptr @cifs_readdir._rs.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @_initiate_cifs_search.__key, ptr @.str.34, ptr @_initiate_cifs_search._rs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @find_cifs_entry._rs, ptr @.str.40, ptr @.str.41, ptr @find_cifs_entry._rs.42, ptr @.str.44, ptr @find_cifs_entry._rs.45, ptr @.str.47, ptr @find_cifs_entry._rs.48, ptr @.str.50, ptr @find_cifs_entry._rs.51, ptr @.str.52, ptr @find_cifs_entry._rs.53, ptr @.str.55, ptr @find_cifs_entry._rs.56, ptr @.str.58, ptr @find_cifs_entry._rs.60, ptr @.str.62, ptr @find_cifs_entry._rs.63, ptr @.str.65, ptr @dump_cifs_file_struct._rs, ptr @.str.66, ptr @.str.67, ptr @dump_cifs_file_struct._rs.68, ptr @.str.70, ptr @dump_cifs_file_struct._rs.71, ptr @.str.73, ptr @dump_cifs_file_struct._rs.74, ptr @.str.76, ptr @cifs_filldir._rs, ptr @.str.77, ptr @cifs_fill_dirent._rs, ptr @.str.78, ptr @.str.79, ptr @cifs_fill_dirent_posix._rs, ptr @.str.80, ptr @cifs_unicode_bytelen._rs, ptr @.str.81, ptr @.str.82, ptr @cifs_posix_to_fattr._rs, ptr @.str.83, ptr @.str.84, ptr @cifs_prime_dcache.__key, ptr @.str.85, ptr @cifs_prime_dcache._rs, ptr @.str.86, ptr @.str.87, ptr @nxt_dir_entry._rs, ptr @.str.88, ptr @nxt_dir_entry._rs.89, ptr @.str.90, ptr @nxt_dir_entry._rs.91, ptr @.str.93, ptr @nxt_dir_entry._rs.95, ptr @.str.97], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_readdir._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_initiate_cifs_search.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_initiate_cifs_search._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cifs_entry._rs.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_cifs_file_struct._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_cifs_file_struct._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_cifs_file_struct._rs.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_cifs_file_struct._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_filldir._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_filldir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fill_dirent._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fill_dirent_posix._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fill_dirent_posix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_unicode_bytelen._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_posix_to_fattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_prime_dcache.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_prime_dcache._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt_dir_entry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt_dir_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt_dir_entry._rs.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt_dir_entry._rs.91 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt_dir_entry._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt_dir_entry._rs.95 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt_dir_entry._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_dir_info_to_fattr(ptr noundef %fattr, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cifs_sb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp1.i = alloca %struct.timespec64, align 8
  %tmp2.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %ExtFileAttributes.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 8
  %1 = ptrtoint ptr %ExtFileAttributes.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %ExtFileAttributes.i, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %cf_cifsattrs.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %4 = ptrtoint ptr %cf_cifsattrs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cf_cifsattrs.i, align 4
  %EndOfFile.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %EndOfFile.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %EndOfFile.i, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #11
  %cf_eof.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %8 = ptrtoint ptr %cf_eof.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cf_eof.i, align 8
  %AllocationSize.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 7
  %9 = ptrtoint ptr %AllocationSize.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %AllocationSize.i, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #11
  %cf_bytes.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 4
  %12 = ptrtoint ptr %cf_bytes.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %cf_bytes.i, align 8
  %CreationTime.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %CreationTime.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %CreationTime.i, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #11
  %cf_createtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 5
  %16 = ptrtoint ptr %cf_createtime.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %cf_createtime.i, align 8
  %cf_atime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #11
  %LastAccessTime.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %LastAccessTime.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %LastAccessTime.i, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %18) #11
  %19 = call ptr @memcpy(ptr %cf_atime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #11
  %cf_ctime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1.i) #11
  %ChangeTime.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 5
  %20 = ptrtoint ptr %ChangeTime.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %ChangeTime.i, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp1.i, i64 noundef %21) #11
  %22 = call ptr @memcpy(ptr %cf_ctime.i, ptr %tmp1.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1.i) #11
  %cf_mtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2.i) #11
  %LastWriteTime.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 4
  %23 = ptrtoint ptr %LastWriteTime.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %LastWriteTime.i, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp2.i, i64 noundef %24) #11
  %25 = call ptr @memcpy(ptr %cf_mtime.i, ptr %tmp2.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2.i) #11
  call fastcc void @cifs_fill_common_info(ptr noundef %fattr, ptr noundef %cifs_sb)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @cifs_fill_common_info(ptr noundef %fattr, ptr nocapture noundef readonly %cifs_sb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cf_uid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %linux_uid, align 4
  %4 = ptrtoint ptr %cf_uid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cf_uid, align 8
  %cf_gid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %5 = load ptr, ptr %ctx, align 4
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %linux_gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %linux_gid, align 8
  %8 = ptrtoint ptr %cf_gid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cf_gid, align 4
  %cf_cifsattrs = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %9 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cf_cifsattrs, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %dir_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %dir_mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dir_mode, align 2
  %15 = or i16 %14, 16384
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %16 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %cf_mode, align 8
  br label %if.end82

if.else:                                          ; preds = %entry
  %cf_cifstag = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 15
  %17 = ptrtoint ptr %cf_cifstag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cf_cifstag, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.else70 [
    i32 -1610612707, label %if.then5
    i32 -2147483612, label %if.then18
    i32 -2147483613, label %if.then32
    i32 -2147483611, label %if.then46
    i32 -2147483610, label %if.then60
  ]

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %file_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %file_mode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %file_mode, align 4
  %cf_mode9 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %24 = ptrtoint ptr %cf_mode9 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cf_mode9, align 8
  %26 = or i16 %23, %25
  %or11178 = or i16 %26, -24576
  store i16 %or11178, ptr %cf_mode9, align 8
  br label %if.end82

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %file_mode20 = getelementptr inbounds %struct.smb3_fs_context, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %file_mode20 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %file_mode20, align 4
  %cf_mode23 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %31 = ptrtoint ptr %cf_mode23 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cf_mode23, align 8
  %33 = or i16 %30, %32
  %or25177 = or i16 %33, 4096
  store i16 %or25177, ptr %cf_mode23, align 8
  br label %if.end82

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %file_mode34 = getelementptr inbounds %struct.smb3_fs_context, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %file_mode34 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %file_mode34, align 4
  %cf_mode37 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %38 = ptrtoint ptr %cf_mode37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cf_mode37, align 8
  %40 = or i16 %37, %39
  %or39176 = or i16 %40, -16384
  store i16 %or39176, ptr %cf_mode37, align 8
  br label %if.end82

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  %file_mode48 = getelementptr inbounds %struct.smb3_fs_context, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %file_mode48 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %file_mode48, align 4
  %cf_mode51 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %45 = ptrtoint ptr %cf_mode51 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cf_mode51, align 8
  %47 = or i16 %44, %46
  %or53175 = or i16 %47, 8192
  store i16 %or53175, ptr %cf_mode51, align 8
  br label %if.end82

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 4
  %file_mode62 = getelementptr inbounds %struct.smb3_fs_context, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %file_mode62 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %file_mode62, align 4
  %cf_mode65 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %52 = ptrtoint ptr %cf_mode65 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cf_mode65, align 8
  %54 = or i16 %51, %53
  %or67174 = or i16 %54, 24576
  store i16 %or67174, ptr %cf_mode65, align 8
  br label %if.end82

if.else70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 4
  %file_mode72 = getelementptr inbounds %struct.smb3_fs_context, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %file_mode72 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %file_mode72, align 4
  %59 = or i16 %58, -32768
  %cf_mode76 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %60 = ptrtoint ptr %cf_mode76 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %cf_mode76, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.else70, %if.then60, %if.then46, %if.then32, %if.then18, %if.then5, %if.then
  %.sink = phi i32 [ 10, %if.then5 ], [ 12, %if.then32 ], [ 6, %if.then60 ], [ 8, %if.else70 ], [ 2, %if.then46 ], [ 1, %if.then18 ], [ 4, %if.then ]
  %cf_dtype13 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %61 = ptrtoint ptr %cf_dtype13 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %cf_dtype13, align 4
  %and.i = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end82.if.end85_crit_edge, label %if.end.i

if.end82.if.end85_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.end.i:                                         ; preds = %if.end82
  %cf_cifstag.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 15
  %62 = ptrtoint ptr %cf_cifstag.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cf_cifstag.i, align 8
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %63, label %if.end.i.if.end85_crit_edge [
    i32 -2147483638, label %if.end.i.if.then83_crit_edge
    i32 -2147483630, label %if.end.i.if.then83_crit_edge181
    i32 -1610612724, label %if.end.i.if.then83_crit_edge182
    i32 -2147483628, label %if.end.i.if.then83_crit_edge183
    i32 0, label %if.end.i.if.then83_crit_edge184
  ]

if.end.i.if.then83_crit_edge184:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

if.end.i.if.then83_crit_edge183:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

if.end.i.if.then83_crit_edge182:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

if.end.i.if.then83_crit_edge181:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

if.end.i.if.then83_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

if.end.i.if.end85_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then83:                                        ; preds = %if.end.i.if.then83_crit_edge, %if.end.i.if.then83_crit_edge181, %if.end.i.if.then83_crit_edge182, %if.end.i.if.then83_crit_edge183, %if.end.i.if.then83_crit_edge184
  %65 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fattr, align 8
  %or84 = or i32 %66, 4
  store i32 %or84, ptr %fattr, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end.i.if.end85_crit_edge, %if.end82.if.end85_crit_edge
  %67 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fattr, align 8
  %or87 = or i32 %68, 16
  store i32 %or87, ptr %fattr, align 8
  %and89 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end85.if.end96_crit_edge, label %if.then91

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %cf_mode92 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %69 = ptrtoint ptr %cf_mode92 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %cf_mode92, align 8
  %71 = and i16 %70, -147
  store i16 %71, ptr %cf_mode92, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.end85.if.end96_crit_edge
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %72 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mnt_cifs_flags, align 4
  %74 = and i32 %73, 268435968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %if.end96.if.end105_crit_edge, label %if.then102

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then102:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %or104 = or i32 %68, 20
  %76 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or104, ptr %fattr, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end96.if.end105_crit_edge
  %77 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mnt_cifs_flags, align 4
  %and107 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  %and110 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  %or.cond180 = select i1 %tobool108.not, i1 true, i1 %tobool111.not
  br i1 %or.cond180, label %if.end105.if.end129_crit_edge, label %if.then112

if.end105.if.end129_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.then112:                                       ; preds = %if.end105
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %79 = ptrtoint ptr %cf_eof to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %cf_eof, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %cmp113 = icmp eq i64 %80, 0
  br i1 %cmp113, label %if.then115, label %if.else125

if.then115:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  %cf_mode116 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %81 = ptrtoint ptr %cf_mode116 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %cf_mode116, align 8
  %83 = and i16 %82, 4095
  %84 = or i16 %83, 4096
  store i16 %84, ptr %cf_mode116, align 8
  %cf_dtype124 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %85 = ptrtoint ptr %cf_dtype124 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %cf_dtype124, align 4
  br label %if.end129

if.else125:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fattr, align 8
  %or127 = or i32 %87, 4
  store i32 %or127, ptr %fattr, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.else125, %if.then115, %if.end105.if.end129_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_readdir(ptr noundef %file, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca [6 x i8], align 1
  %de.i = alloca %struct.cifs_dirent, align 8
  %fattr.i = alloca %struct.cifs_fattr, align 8
  %name.i = alloca %struct.qstr, align 8
  %current_entry = alloca ptr, align 4
  %num_to_fill = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_entry) #11
  %0 = ptrtoint ptr %current_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %current_entry, align 4, !annotation !195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_to_fill) #11
  %1 = ptrtoint ptr %num_to_fill to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_to_fill, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %2 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #11
  %call1 = tail call i32 @_get_xid() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body3

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true)) #11
          to label %do.end21 [label %land.lhs.true], !srcloc !196

land.lhs.true:                                    ; preds = %do.body3
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end21_crit_edge, label %if.then10

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %10)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call14 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %call1, i32 noundef %call14) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then10, %land.lhs.true.do.end21_crit_edge, %do.body3, %entry.do.end21_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call1)
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %and.i.i = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end21.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !197

do.end21.file_dentry.exit_crit_edge:              ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %15 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 8
  %17 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %20(ptr noundef %12, ptr noundef %16) #11
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %do.end21.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %12, %do.end21.file_dentry.exit_crit_edge ]
  %call24 = tail call ptr @build_path_from_dentry(ptr noundef %retval.0.i.i, ptr noundef %call.i) #11
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %call24 to i32
  br label %rddir2_exit

if.end28:                                         ; preds = %file_dentry.exit
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %23, null
  br i1 %cmp, label %if.then29, label %if.end28.if.end64_crit_edge

if.end28.if.end64_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then29:                                        ; preds = %if.end28
  %call30 = tail call fastcc i32 @initiate_cifs_search(i32 noundef %call1, ptr noundef %file, ptr noundef %call24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %24 = load i32, ptr @cifsFYI, align 4
  %and33 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then29.do.end60_crit_edge, label %do.body36

if.then29.do.end60_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

do.body36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor.6, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true48)) #11
          to label %do.end60 [label %land.lhs.true48], !srcloc !196

land.lhs.true48:                                  ; preds = %do.body36
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.5, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.do.end60_crit_edge, label %if.then51

land.lhs.true48.do.end60_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef %call30) #11
  br label %do.end60

do.end60:                                         ; preds = %if.then51, %land.lhs.true48.do.end60_crit_edge, %do.body36, %if.then29.do.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool61.not = icmp eq i32 %call30, 0
  br i1 %tobool61.not, label %do.end60.if.end64_crit_edge, label %do.end60.rddir2_exit_crit_edge

do.end60.rddir2_exit_crit_edge:                   ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

do.end60.if.end64_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end64:                                         ; preds = %do.end60.if.end64_crit_edge, %if.end28.if.end64_crit_edge
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %25 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.100)
  switch i64 %26, label %if.end64.if.end67_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %if.end64.if.then6.i_crit_edge
  ]

if.end64.if.then6.i_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.end64.if.end67_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then.i:                                        ; preds = %if.end64
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 8
  %29 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %34 to i64
  %call.i.i428 = tail call i32 %28(ptr noundef %ctx, ptr noundef nonnull @.str.37, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i428)
  %cmp.i.i = icmp eq i32 %call.i.i428, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.rddir2_exit_crit_edge

if.then.i.rddir2_exit_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end64.if.then6.i_crit_edge
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 8
  %38 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dentry.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #11
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #11
  %conv.i20.i = zext i32 %45 to i64
  %call1.i.i = tail call i32 %37(ptr noundef %ctx, ptr noundef nonnull @.str.38, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.rddir2_exit_crit_edge

if.then6.i.rddir2_exit_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 2, ptr %pos.i, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end9.i, %if.end64.if.end67_crit_edge
  %47 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private_data, align 4
  %srch_inf = getelementptr inbounds %struct.cifsFileInfo, ptr %48, i32 0, i32 16
  %endOfSearch = getelementptr inbounds %struct.cifsFileInfo, ptr %48, i32 0, i32 16, i32 9
  %49 = ptrtoint ptr %endOfSearch to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load = load i8, ptr %endOfSearch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -65
  br i1 %.not, label %do.body76, label %if.end106

do.body76:                                        ; preds = %if.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %50 = load i32, ptr @cifsFYI, align 4
  %and77 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.rddir2_exit_crit_edge, label %do.body80

do.body76.rddir2_exit_crit_edge:                  ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

do.body80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor.9, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true92)) #11
          to label %rddir2_exit [label %land.lhs.true92], !srcloc !196

land.lhs.true92:                                  ; preds = %do.body80
  %call93 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.8, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.rddir2_exit_crit_edge, label %if.then95

land.lhs.true92.rddir2_exit_crit_edge:            ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

if.then95:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3) #11
  br label %rddir2_exit

if.end106:                                        ; preds = %if.end67
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %48, i32 0, i32 8
  %51 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tl_tcon.i, align 4
  %55 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %pos.i, align 8
  %call108 = call fastcc i32 @find_cifs_entry(i32 noundef %call1, ptr noundef %54, i64 noundef %56, ptr noundef %file, ptr noundef %call24, ptr noundef nonnull %current_entry, ptr noundef nonnull %num_to_fill)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.else141, label %do.body112

do.body112:                                       ; preds = %if.end106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %57 = load i32, ptr @cifsFYI, align 4
  %and113 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.body112.rddir2_exit_crit_edge, label %do.body116

do.body112.rddir2_exit_crit_edge:                 ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

do.body116:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true128)) #11
          to label %rddir2_exit [label %land.lhs.true128], !srcloc !196

land.lhs.true128:                                 ; preds = %do.body116
  %call129 = call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.11, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %land.lhs.true128.rddir2_exit_crit_edge, label %if.then131

land.lhs.true128.rddir2_exit_crit_edge:           ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

if.then131:                                       ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef %call108) #11
  br label %rddir2_exit

if.else141:                                       ; preds = %if.end106
  %58 = ptrtoint ptr %current_entry to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %current_entry, align 4
  %cmp142.not = icmp eq ptr %59, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %60 = load i32, ptr @cifsFYI, align 4
  %and178 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %cmp142.not, label %do.body177, label %do.body145

do.body145:                                       ; preds = %if.else141
  br i1 %tobool179.not, label %do.body145.do.body209_crit_edge, label %do.body149

do.body145.do.body209_crit_edge:                  ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body209

do.body149:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor.15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true161)) #11
          to label %do.body209 [label %land.lhs.true161], !srcloc !196

land.lhs.true161:                                 ; preds = %do.body149
  %call162 = call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.14, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %land.lhs.true161.do.body209_crit_edge, label %if.then164

land.lhs.true161.do.body209_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body209

if.then164:                                       ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %pos.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i64 noundef %62) #11
  br label %do.body209

do.body177:                                       ; preds = %if.else141
  br i1 %tobool179.not, label %do.body177.rddir2_exit_crit_edge, label %do.body181

do.body177.rddir2_exit_crit_edge:                 ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

do.body181:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor.18, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true193)) #11
          to label %rddir2_exit [label %land.lhs.true193], !srcloc !196

land.lhs.true193:                                 ; preds = %do.body181
  %call194 = call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.17, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %land.lhs.true193.rddir2_exit_crit_edge, label %if.then196

land.lhs.true193.rddir2_exit_crit_edge:           ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

if.then196:                                       ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3) #11
  br label %rddir2_exit

do.body209:                                       ; preds = %if.then164, %land.lhs.true161.do.body209_crit_edge, %do.body149, %do.body145.do.body209_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %63 = load i32, ptr @cifsFYI, align 4
  %and210 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %do.body209.do.end238_crit_edge, label %do.body213

do.body209.do.end238_crit_edge:                   ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end238

do.body213:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor.21, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true225)) #11
          to label %do.end238 [label %land.lhs.true225], !srcloc !196

land.lhs.true225:                                 ; preds = %do.body213
  %call226 = call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.20, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %land.lhs.true225.do.end238_crit_edge, label %if.then228

land.lhs.true225.do.end238_crit_edge:             ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end238

if.then228:                                       ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %num_to_fill to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_to_fill, align 4
  %ntwrk_buf_start = getelementptr inbounds %struct.cifsFileInfo, ptr %48, i32 0, i32 16, i32 4
  %66 = ptrtoint ptr %ntwrk_buf_start to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ntwrk_buf_start, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef %65, ptr noundef %67) #11
  br label %do.end238

do.end238:                                        ; preds = %if.then228, %land.lhs.true225.do.end238_crit_edge, %do.body213, %do.body209.do.end238_crit_edge
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %54, i32 0, i32 7
  %68 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %calc_smb_size = getelementptr inbounds %struct.smb_version_operations, ptr %73, i32 0, i32 66
  %74 = ptrtoint ptr %calc_smb_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %calc_smb_size, align 4
  %ntwrk_buf_start240 = getelementptr inbounds %struct.cifsFileInfo, ptr %48, i32 0, i32 16, i32 4
  %76 = ptrtoint ptr %ntwrk_buf_start240 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ntwrk_buf_start240, align 8
  %call243 = call i32 %75(ptr noundef %77, ptr noundef %71) #11
  %78 = ptrtoint ptr %ntwrk_buf_start240 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ntwrk_buf_start240, align 8
  %add.ptr = getelementptr i8, ptr %79, i32 %call243
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3264, i32 noundef 1022) #14
  %cmp247 = icmp eq ptr %call7.i, null
  br i1 %cmp247, label %do.end238.rddir2_exit_crit_edge, label %for.cond.preheader

do.end238.rddir2_exit_crit_edge:                  ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %rddir2_exit

for.cond.preheader:                               ; preds = %do.end238
  %81 = ptrtoint ptr %num_to_fill to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_to_fill, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp250468 = icmp sgt i32 %82, 0
  br i1 %cmp250468, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %f_inode.i.i430 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %namelen.i = getelementptr inbounds %struct.cifs_dirent, ptr %de.i, i32 0, i32 1
  %name36.i = getelementptr inbounds %struct.qstr, ptr %name.i, i32 0, i32 1
  %ino55.i = getelementptr inbounds %struct.cifs_dirent, ptr %de.i, i32 0, i32 3
  %cf_uniqueid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr.i, i32 0, i32 2
  %cf_dtype.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr.i, i32 0, i32 11
  %info_level = getelementptr inbounds %struct.cifsFileInfo, ptr %48, i32 0, i32 16, i32 2
  %83 = ptrtoint ptr %current_entry to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr = load ptr, ptr %current_entry, align 4
  br label %for.body

for.body:                                         ; preds = %if.else313.for.body_crit_edge, %for.body.lr.ph
  %84 = phi ptr [ %.pr, %for.body.lr.ph ], [ %call315, %if.else313.for.body_crit_edge ]
  %i.0469 = phi i32 [ 0, %for.body.lr.ph ], [ %inc317, %if.else313.for.body_crit_edge ]
  %cmp251 = icmp eq ptr %84, null
  br i1 %cmp251, label %do.body254, label %if.end268

do.body254:                                       ; preds = %for.body
  %call255 = call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.23, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255)
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %do.body254.for.end_crit_edge, label %do.end260

do.body254.for.end_crit_edge:                     ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end260:                                        ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %num_to_fill to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_to_fill, align 4
  %call262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %86, i32 noundef %i.0469) #15
  br label %for.end

if.end268:                                        ; preds = %for.body
  %87 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %call7.i, align 8
  %88 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %private_data, align 4
  %90 = ptrtoint ptr %f_inode.i.i430 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %f_inode.i.i430, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 33
  %94 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %de.i) #11
  %96 = call ptr @memset(ptr %de.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fattr.i) #11
  %97 = call ptr @memset(ptr %fattr.i, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #11
  %98 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %info_level.i = getelementptr inbounds %struct.cifsFileInfo, ptr %89, i32 0, i32 16, i32 2
  %99 = ptrtoint ptr %info_level.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %info_level.i, align 2
  %unicode.i = getelementptr inbounds %struct.cifsFileInfo, ptr %89, i32 0, i32 16, i32 9
  %101 = ptrtoint ptr %unicode.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i = load i8, ptr %unicode.i, align 4
  %102 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %bf.cast.i = icmp ne i8 %102, 0
  %call3.i = call fastcc i32 @cifs_fill_dirent(ptr noundef nonnull %de.i, ptr noundef nonnull %84, i16 noundef zeroext %100, i1 noundef zeroext %bf.cast.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end268.cifs_filldir.exit.thread452_crit_edge

if.end268.cifs_filldir.exit.thread452_crit_edge:  ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_filldir.exit.thread452

if.end.i:                                         ; preds = %if.end268
  %103 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %namelen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %call243)
  %cmp.i431 = icmp ugt i32 %104, %call243
  br i1 %cmp.i431, label %do.body5.i, label %if.end17.i

do.body5.i:                                       ; preds = %if.end.i
  %call6.i = call i32 @___ratelimit(ptr noundef nonnull @cifs_filldir._rs, ptr noundef nonnull @__func__.cifs_filldir) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body5.i.cifs_filldir.exit.thread452_crit_edge, label %do.end.i

do.body5.i.cifs_filldir.exit.thread452_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_filldir.exit.thread452

do.end.i:                                         ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %namelen.i, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %106) #15
  br label %cifs_filldir.exit.thread452

if.end17.i:                                       ; preds = %if.end.i
  %107 = ptrtoint ptr %unicode.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load20.i = load i8, ptr %unicode.i, align 4
  %108 = and i8 %bf.load20.i, 32
  %109 = ptrtoint ptr %de.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %de.i, align 8
  %tobool.not.i.i432 = icmp eq ptr %110, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %bf.cast33.not.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i.i432, label %if.end27.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end17.i
  br i1 %bf.cast33.not.i, label %if.else25.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %111 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %104, label %if.then2.i.i.if.then34.i_crit_edge [
    i32 2, label %if.then4.i.i
    i32 4, label %if.then12.i.i
  ]

if.then2.i.i.if.then34.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34.i

if.then4.i.i:                                     ; preds = %if.then2.i.i
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %110, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11776, i16 %113)
  %cmp5.i.i = icmp eq i16 %113, 11776
  br i1 %cmp5.i.i, label %if.then4.i.i.cifs_filldir.exit.thread_crit_edge, label %if.then4.i.i.if.then34.i_crit_edge

if.then4.i.i.if.then34.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34.i

if.then4.i.i.cifs_filldir.exit.thread_crit_edge:  ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_filldir.exit.thread

if.then12.i.i:                                    ; preds = %if.then2.i.i
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %110, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11776, i16 %115)
  %cmp15.i.i = icmp eq i16 %115, 11776
  br i1 %cmp15.i.i, label %land.lhs.true.i.i, label %if.then12.i.i.if.then34.i_crit_edge

if.then12.i.i.if.then34.i_crit_edge:              ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34.i

land.lhs.true.i.i:                                ; preds = %if.then12.i.i
  %arrayidx17.i.i = getelementptr i16, ptr %110, i32 1
  %116 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx17.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11776, i16 %117)
  %cmp19.i.i = icmp eq i16 %117, 11776
  br i1 %cmp19.i.i, label %land.lhs.true.i.i.cifs_filldir.exit.thread_crit_edge, label %land.lhs.true.i.i.if.then34.i_crit_edge

land.lhs.true.i.i.if.then34.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34.i

land.lhs.true.i.i.cifs_filldir.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_filldir.exit.thread

if.else25.i.i:                                    ; preds = %if.end.i.i
  %118 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %104, label %if.else25.i.i.if.else.i_crit_edge [
    i32 1, label %cifs_entry_is_dot.exit.i
    i32 2, label %if.then41.i.i
  ]

if.else25.i.i.if.else.i_crit_edge:                ; preds = %if.else25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then41.i.i:                                    ; preds = %if.else25.i.i
  %119 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %120)
  %cmp45.i.i = icmp eq i8 %120, 46
  br i1 %cmp45.i.i, label %land.lhs.true47.i.i, label %if.then41.i.i.if.else.i_crit_edge

if.then41.i.i.if.else.i_crit_edge:                ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true47.i.i:                              ; preds = %if.then41.i.i
  %arrayidx49.i.i = getelementptr i8, ptr %110, i32 1
  %121 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx49.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %122)
  %cmp51.i.i = icmp eq i8 %122, 46
  br i1 %cmp51.i.i, label %land.lhs.true47.i.i.cifs_filldir.exit.thread_crit_edge, label %land.lhs.true47.i.i.if.else.i_crit_edge

land.lhs.true47.i.i.if.else.i_crit_edge:          ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true47.i.i.cifs_filldir.exit.thread_crit_edge: ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_filldir.exit.thread

cifs_entry_is_dot.exit.i:                         ; preds = %if.else25.i.i
  %123 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %124)
  %cmp33.i.i = icmp eq i8 %124, 46
  br i1 %cmp33.i.i, label %cifs_entry_is_dot.exit.i.cifs_filldir.exit.thread_crit_edge, label %cifs_entry_is_dot.exit.i.if.else.i_crit_edge

cifs_entry_is_dot.exit.i.if.else.i_crit_edge:     ; preds = %cifs_entry_is_dot.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

cifs_entry_is_dot.exit.i.cifs_filldir.exit.thread_crit_edge: ; preds = %cifs_entry_is_dot.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_filldir.exit.thread

if.end27.i:                                       ; preds = %if.end17.i
  br i1 %bf.cast33.not.i, label %if.end27.i.if.else.i_crit_edge, label %if.end27.i.if.then34.i_crit_edge

if.end27.i.if.then34.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34.i

if.end27.i.if.else.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then34.i:                                      ; preds = %if.end27.i.if.then34.i_crit_edge, %land.lhs.true.i.i.if.then34.i_crit_edge, %if.then12.i.i.if.then34.i_crit_edge, %if.then4.i.i.if.then34.i_crit_edge, %if.then2.i.i.if.then34.i_crit_edge
  %local_nls.i = getelementptr inbounds %struct.cifs_sb_info, ptr %95, i32 0, i32 3
  %125 = ptrtoint ptr %local_nls.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %local_nls.i, align 4
  %call35.i = call i32 @cifs_remap(ptr noundef %95) #11
  %127 = ptrtoint ptr %name36.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call7.i, ptr %name36.i, align 8
  %128 = ptrtoint ptr %de.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %de.i, align 8
  %130 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %namelen.i, align 4
  %132 = call i32 @llvm.umin.i32(i32 %131, i32 %call243) #11
  %call42.i = call i32 @cifs_from_utf16(ptr noundef nonnull %call7.i, ptr noundef %129, i32 noundef 1022, i32 noundef %132, ptr noundef %126, i32 noundef %call35.i) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp.i.i) #11
  %uni2char.i.i = getelementptr inbounds %struct.nls_table, ptr %126, i32 0, i32 2
  %133 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 6)
  %134 = ptrtoint ptr %uni2char.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %uni2char.i.i, align 4
  %call.i.i433 = call i32 %135(i16 noundef zeroext 0, ptr noundef nonnull %tmp.i.i, i32 noundef 6) #11
  %136 = call i32 @llvm.smax.i32(i32 %call.i.i433, i32 1) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp.i.i) #11
  %sub.i = sub i32 %call42.i, %136
  br label %if.end49.i

if.else.i:                                        ; preds = %if.end27.i.if.else.i_crit_edge, %cifs_entry_is_dot.exit.i.if.else.i_crit_edge, %land.lhs.true47.i.i.if.else.i_crit_edge, %if.then41.i.i.if.else.i_crit_edge, %if.else25.i.i.if.else.i_crit_edge
  %137 = ptrtoint ptr %name36.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %110, ptr %name36.i, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.then34.i
  %storemerge.i = phi i32 [ %104, %if.else.i ], [ %sub.i, %if.then34.i ]
  %138 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %storemerge.i, ptr %name.i, align 8
  %139 = ptrtoint ptr %info_level.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %info_level.i, align 2
  %141 = zext i16 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %140, label %sw.default.i [
    i16 100, label %sw.bb.i
    i16 514, label %sw.bb52.i
    i16 1, label %sw.bb53.i
    i16 261, label %sw.bb54.i
  ]

sw.bb.i:                                          ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cifs_posix_to_fattr(ptr noundef nonnull %fattr.i, ptr noundef nonnull %84, ptr noundef %95) #11
  br label %sw.epilog.i

sw.bb52.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %basic.i = getelementptr inbounds %struct.FILE_UNIX_INFO, ptr %84, i32 0, i32 2
  call void @cifs_unix_basic_to_fattr(ptr noundef nonnull %fattr.i, ptr noundef %basic.i, ptr noundef %95) #11
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cifs_std_info_to_fattr(ptr noundef nonnull %fattr.i, ptr noundef nonnull %84, ptr noundef %95) #11
  br label %sw.epilog.i

sw.bb54.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cifs_fulldir_info_to_fattr(ptr noundef nonnull %fattr.i, ptr noundef nonnull %84, ptr noundef %95) #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @cifs_dir_info_to_fattr(ptr noundef nonnull %fattr.i, ptr noundef nonnull %84, ptr noundef %95) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb54.i, %sw.bb53.i, %sw.bb52.i, %sw.bb.i
  %142 = ptrtoint ptr %ino55.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %ino55.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %143)
  %tobool56.not.i = icmp eq i64 %143, 0
  br i1 %tobool56.not.i, label %sw.epilog.i.if.else60.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.else60.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else60.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %95, i32 0, i32 6
  %144 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i434 = and i32 %145, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i434)
  %tobool57.not.i = icmp eq i32 %and.i434, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i.if.else60.i_crit_edge, label %if.then58.i

land.lhs.true.i.if.else60.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else60.i

if.then58.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %cf_uniqueid.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %143, ptr %cf_uniqueid.i, align 8
  br label %if.end64.i

if.else60.i:                                      ; preds = %land.lhs.true.i.if.else60.i_crit_edge, %sw.epilog.i.if.else60.i_crit_edge
  %call61.i = call i32 @iunique(ptr noundef %93, i32 noundef 2) #11
  %conv62.i = zext i32 %call61.i to i64
  %147 = ptrtoint ptr %cf_uniqueid.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %conv62.i, ptr %cf_uniqueid.i, align 8
  call void @cifs_autodisable_serverino(ptr noundef %95) #11
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else60.i, %if.then58.i
  %mnt_cifs_flags65.i = getelementptr inbounds %struct.cifs_sb_info, ptr %95, i32 0, i32 6
  %148 = ptrtoint ptr %mnt_cifs_flags65.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mnt_cifs_flags65.i, align 4
  %and66.i = and i32 %149, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end64.i.if.end72.i_crit_edge, label %land.lhs.true68.i

if.end64.i.if.end72.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

land.lhs.true68.i:                                ; preds = %if.end64.i
  %call69.i = call zeroext i1 @couldbe_mf_symlink(ptr noundef nonnull %fattr.i) #11
  br i1 %call69.i, label %if.then71.i, label %land.lhs.true68.i.if.end72.i_crit_edge

land.lhs.true68.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then71.i:                                      ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %fattr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %fattr.i, align 8
  %or.i = or i32 %151, 4
  store i32 %or.i, ptr %fattr.i, align 8
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then71.i, %land.lhs.true68.i.if.end72.i_crit_edge, %if.end64.i.if.end72.i_crit_edge
  %152 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dentry.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 8
  %and.i.i.i = and i32 %155, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end72.i.cifs_filldir.exit_crit_edge, label %if.then.i.i.i, !prof !197

if.end72.i.cifs_filldir.exit_crit_edge:           ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_filldir.exit

if.then.i.i.i:                                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %f_inode.i.i430 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %f_inode.i.i430, align 8
  %d_op.i.i.i = getelementptr inbounds %struct.dentry, ptr %153, i32 0, i32 8
  %158 = ptrtoint ptr %d_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %d_op.i.i.i, align 8
  %d_real.i.i.i = getelementptr inbounds %struct.dentry_operations, ptr %159, i32 0, i32 12
  %160 = ptrtoint ptr %d_real.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %d_real.i.i.i, align 16
  %call.i.i.i = call ptr %161(ptr noundef %153, ptr noundef %157) #11
  br label %cifs_filldir.exit

cifs_filldir.exit.thread:                         ; preds = %cifs_entry_is_dot.exit.i.cifs_filldir.exit.thread_crit_edge, %land.lhs.true47.i.i.cifs_filldir.exit.thread_crit_edge, %land.lhs.true.i.i.cifs_filldir.exit.thread_crit_edge, %if.then4.i.i.cifs_filldir.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %de.i) #11
  br label %if.end275

cifs_filldir.exit.thread452:                      ; preds = %do.end.i, %do.body5.i.cifs_filldir.exit.thread452_crit_edge, %if.end268.cifs_filldir.exit.thread452_crit_edge
  %retval.0.i437.ph = phi i32 [ -22, %do.body5.i.cifs_filldir.exit.thread452_crit_edge ], [ -22, %do.end.i ], [ %call3.i, %if.end268.cifs_filldir.exit.thread452_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %de.i) #11
  br label %if.then271

cifs_filldir.exit:                                ; preds = %if.then.i.i.i, %if.end72.i.cifs_filldir.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i.i ], [ %153, %if.end72.i.cifs_filldir.exit_crit_edge ]
  call fastcc void @cifs_prime_dcache(ptr noundef %retval.0.i.i.i, ptr noundef nonnull %name.i, ptr noundef nonnull %fattr.i) #11
  %162 = ptrtoint ptr %cf_uniqueid.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %cf_uniqueid.i, align 8
  %conv.i.i.i = trunc i64 %163 to i32
  %shr.i.i.i = lshr i64 %163, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 1
  %add.i.i = add nuw i32 %shr.i.i.i.i, 1
  %164 = ptrtoint ptr %name36.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %name36.i, align 8
  %166 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %name.i, align 8
  %conv78.i = zext i32 %add.i.i to i64
  %168 = ptrtoint ptr %cf_dtype.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %cf_dtype.i, align 4
  %170 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ctx, align 8
  %172 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %pos.i, align 8
  %call.i114.i = call i32 %171(ptr noundef %ctx, ptr noundef %165, i32 noundef %167, i64 noundef %173, i64 noundef %conv78.i, i32 noundef %169) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %cmp.i.i436.not = icmp eq i32 %call.i114.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %de.i) #11
  br i1 %cmp.i.i436.not, label %cifs_filldir.exit.if.end275_crit_edge, label %cifs_filldir.exit.if.then271_crit_edge

cifs_filldir.exit.if.then271_crit_edge:           ; preds = %cifs_filldir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then271

cifs_filldir.exit.if.end275_crit_edge:            ; preds = %cifs_filldir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end275

if.then271:                                       ; preds = %cifs_filldir.exit.if.then271_crit_edge, %cifs_filldir.exit.thread452
  %retval.0.i437455 = phi i32 [ %retval.0.i437.ph, %cifs_filldir.exit.thread452 ], [ 1, %cifs_filldir.exit.if.then271_crit_edge ]
  %174 = call i32 @llvm.smin.i32(i32 %retval.0.i437455, i32 0)
  br label %for.end

if.end275:                                        ; preds = %cifs_filldir.exit.if.end275_crit_edge, %cifs_filldir.exit.thread
  %175 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %pos.i, align 8
  %inc = add i64 %176, 1
  store i64 %inc, ptr %pos.i, align 8
  %177 = ptrtoint ptr %srch_inf to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %srch_inf, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %178)
  %cmp279 = icmp eq i64 %inc, %178
  br i1 %cmp279, label %do.body282, label %if.else313

do.body282:                                       ; preds = %if.end275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %179 = load i32, ptr @cifsFYI, align 4
  %and283 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %do.body282.do.end311_crit_edge, label %do.body286

do.body282.do.end311_crit_edge:                   ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end311

do.body286:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor.26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true298)) #11
          to label %do.end311 [label %land.lhs.true298], !srcloc !196

land.lhs.true298:                                 ; preds = %do.body286
  %call299 = call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.25, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %land.lhs.true298.do.end311_crit_edge, label %if.then301

land.lhs.true298.do.end311_crit_edge:             ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end311

if.then301:                                       ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #13
  %180 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %pos.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, i64 noundef %181, ptr noundef nonnull %call7.i) #11
  br label %do.end311

do.end311:                                        ; preds = %if.then301, %land.lhs.true298.do.end311_crit_edge, %do.body286, %do.body282.do.end311_crit_edge
  %182 = ptrtoint ptr %current_entry to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %current_entry, align 4
  call fastcc void @cifs_save_resume_key(ptr noundef %183, ptr noundef %48)
  br label %for.end

if.else313:                                       ; preds = %if.end275
  %184 = ptrtoint ptr %current_entry to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %current_entry, align 4
  %186 = ptrtoint ptr %info_level to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %info_level, align 2
  %conv = zext i16 %187 to i32
  %call315 = call fastcc ptr @nxt_dir_entry(ptr noundef %185, ptr noundef %add.ptr, i32 noundef %conv)
  %188 = ptrtoint ptr %current_entry to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call315, ptr %current_entry, align 4
  %inc317 = add nuw nsw i32 %i.0469, 1
  %189 = ptrtoint ptr %num_to_fill to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %num_to_fill, align 4
  %cmp250 = icmp slt i32 %inc317, %190
  br i1 %cmp250, label %if.else313.for.body_crit_edge, label %if.else313.for.end_crit_edge

if.else313.for.end_crit_edge:                     ; preds = %if.else313
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else313.for.body_crit_edge:                    ; preds = %if.else313
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.else313.for.end_crit_edge, %do.end311, %if.then271, %do.end260, %do.body254.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rc.2 = phi i32 [ 0, %do.end260 ], [ 0, %do.body254.for.end_crit_edge ], [ 0, %do.end311 ], [ %174, %if.then271 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ 0, %if.else313.for.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %rddir2_exit

rddir2_exit:                                      ; preds = %for.end, %do.end238.rddir2_exit_crit_edge, %if.then196, %land.lhs.true193.rddir2_exit_crit_edge, %do.body181, %do.body177.rddir2_exit_crit_edge, %if.then131, %land.lhs.true128.rddir2_exit_crit_edge, %do.body116, %do.body112.rddir2_exit_crit_edge, %if.then95, %land.lhs.true92.rddir2_exit_crit_edge, %do.body80, %do.body76.rddir2_exit_crit_edge, %if.then6.i.rddir2_exit_crit_edge, %if.then.i.rddir2_exit_crit_edge, %do.end60.rddir2_exit_crit_edge, %if.then26
  %rc.3 = phi i32 [ %21, %if.then26 ], [ %call30, %do.end60.rddir2_exit_crit_edge ], [ %call108, %if.then131 ], [ %call108, %land.lhs.true128.rddir2_exit_crit_edge ], [ %call108, %do.body112.rddir2_exit_crit_edge ], [ %rc.2, %for.end ], [ 0, %if.then196 ], [ 0, %land.lhs.true193.rddir2_exit_crit_edge ], [ 0, %do.body177.rddir2_exit_crit_edge ], [ 0, %do.body76.rddir2_exit_crit_edge ], [ 0, %land.lhs.true92.rddir2_exit_crit_edge ], [ 0, %if.then95 ], [ -12, %do.end238.rddir2_exit_crit_edge ], [ 0, %if.then.i.rddir2_exit_crit_edge ], [ 0, %if.then6.i.rddir2_exit_crit_edge ], [ 0, %do.body80 ], [ %call108, %do.body116 ], [ 0, %do.body181 ]
  %tobool.not.i438 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i438, label %rddir2_exit.free_dentry_path.exit_crit_edge, label %if.then.i439

rddir2_exit.free_dentry_path.exit_crit_edge:      ; preds = %rddir2_exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_dentry_path.exit

if.then.i439:                                     ; preds = %rddir2_exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %191 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %191, ptr noundef nonnull %call.i) #11
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i439, %rddir2_exit.free_dentry_path.exit_crit_edge
  call void @_free_xid(i32 noundef %call1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %192 = load i32, ptr @cifsFYI, align 4
  %and321 = and i32 %192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and321)
  %tobool322.not = icmp eq i32 %and321, 0
  br i1 %tobool322.not, label %free_dentry_path.exit.do.end348_crit_edge, label %do.body324

free_dentry_path.exit.do.end348_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end348

do.body324:                                       ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_readdir.descriptor.29, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_readdir, %land.lhs.true336)) #11
          to label %do.end348 [label %land.lhs.true336], !srcloc !196

land.lhs.true336:                                 ; preds = %do.body324
  %call337 = call i32 @___ratelimit(ptr noundef nonnull @cifs_readdir._rs.28, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337)
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %land.lhs.true336.do.end348_crit_edge, label %if.then339

land.lhs.true336.do.end348_crit_edge:             ; preds = %land.lhs.true336
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end348

if.then339:                                       ; preds = %land.lhs.true336
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_readdir.descriptor.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %call1, i32 noundef %rc.3) #11
  br label %do.end348

do.end348:                                        ; preds = %if.then339, %land.lhs.true336.do.end348_crit_edge, %do.body324, %free_dentry_path.exit.do.end348_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool349.not = icmp eq i32 %rc.3, 0
  br i1 %tobool349.not, label %if.else351, label %if.then350

if.then350:                                       ; preds = %do.end348
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_smb3_exit_err(i32 noundef %call1, i32 noundef %rc.3)
  br label %do.end354

if.else351:                                       ; preds = %do.end348
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_smb3_exit_done(i32 noundef %call1)
  br label %do.end354

do.end354:                                        ; preds = %if.else351, %if.then350
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_to_fill) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_entry) #11
  ret i32 %rc.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !196

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !199
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !197

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !200
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
  %.b1 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 609, ptr noundef nonnull @.str.32) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
declare dso_local ptr @build_path_from_dentry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @initiate_cifs_search(i32 noundef %xid, ptr nocapture noundef %file, ptr noundef %full_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_initiate_cifs_search(i32 noundef %xid, ptr noundef %file, ptr noundef %full_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call)
  %cmp.not = icmp eq i32 %call, -35
  br i1 %cmp.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 512, i32 noundef 2048, i32 noundef 2) #11
  %call.1 = tail call fastcc i32 @_initiate_cifs_search(i32 noundef %xid, ptr noundef %file, ptr noundef %full_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call.1)
  %cmp.not.1 = icmp eq i32 %call.1, -35
  br i1 %cmp.not.1, label %if.end.1, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 512, i32 noundef 2048, i32 noundef 2) #11
  %call.2 = tail call fastcc i32 @_initiate_cifs_search(i32 noundef %xid, ptr noundef %file, ptr noundef %full_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call.2)
  %cmp.not.2 = icmp eq i32 %call.2, -35
  br i1 %cmp.not.2, label %if.end.2, label %if.end.1.do.end_crit_edge

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 512, i32 noundef 2048, i32 noundef 2) #11
  %call.3 = tail call fastcc i32 @_initiate_cifs_search(i32 noundef %xid, ptr noundef %file, ptr noundef %full_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call.3)
  %cmp.not.3 = icmp eq i32 %call.3, -35
  br i1 %cmp.not.3, label %if.end.3, label %if.end.2.do.end_crit_edge

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 512, i32 noundef 2048, i32 noundef 2) #11
  %call.4 = tail call fastcc i32 @_initiate_cifs_search(i32 noundef %xid, ptr noundef %file, ptr noundef %full_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call.4)
  %cmp.not.4 = icmp eq i32 %call.4, -35
  br i1 %cmp.not.4, label %if.end.4, label %if.end.3.do.end_crit_edge

if.end.3.do.end_crit_edge:                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 512, i32 noundef 2048, i32 noundef 2) #11
  %call.5 = tail call fastcc i32 @_initiate_cifs_search(i32 noundef %xid, ptr noundef %file, ptr noundef %full_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call.5)
  %cmp.not.5 = icmp eq i32 %call.5, -35
  br i1 %cmp.not.5, label %if.end.5, label %if.end.4.do.end_crit_edge

if.end.4.do.end_crit_edge:                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.5:                                         ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 512, i32 noundef 2048, i32 noundef 2) #11
  br label %do.end

do.end:                                           ; preds = %if.end.5, %if.end.4.do.end_crit_edge, %if.end.3.do.end_crit_edge, %if.end.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %if.end.do.end_crit_edge ], [ %call.2, %if.end.1.do.end_crit_edge ], [ %call.3, %if.end.2.do.end_crit_edge ], [ %call.4, %if.end.3.do.end_crit_edge ], [ %call.5, %if.end.4.do.end_crit_edge ], [ -35, %if.end.5 ]
  ret i32 %call.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_cifs_entry(i32 noundef %xid, ptr noundef %tcon, i64 noundef %pos, ptr noundef %file, ptr noundef %full_path, ptr noundef writeonly %current_entry, ptr noundef writeonly %num_to_ret) unnamed_addr #0 align 64 {
entry:
  %de.i495 = alloca %struct.cifs_dirent, align 8
  %de.i = alloca %struct.cifs_dirent, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %8 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ses, align 8
  %server1 = getelementptr inbounds %struct.cifs_ses, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %server1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %server1, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %query_dir_first = getelementptr inbounds %struct.smb_version_operations, ptr %13, i32 0, i32 63
  %14 = ptrtoint ptr %query_dir_first to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %query_dir_first, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.cleanup383_crit_edge, label %lor.lhs.false

entry.cleanup383_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

lor.lhs.false:                                    ; preds = %entry
  %query_dir_next = getelementptr inbounds %struct.smb_version_operations, ptr %13, i32 0, i32 64
  %16 = ptrtoint ptr %query_dir_next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %query_dir_next, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup383_crit_edge, label %if.end

lor.lhs.false.cleanup383_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

if.end:                                           ; preds = %lor.lhs.false
  %cmp = icmp eq ptr %1, null
  %cmp5 = icmp eq ptr %current_entry, null
  %or.cond = or i1 %cmp5, %cmp
  %cmp7 = icmp eq ptr %num_to_ret, null
  %or.cond472 = or i1 %cmp7, %or.cond
  br i1 %or.cond472, label %if.end.cleanup383_crit_edge, label %if.end9

if.end.cleanup383_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

if.end9:                                          ; preds = %if.end
  %18 = ptrtoint ptr %current_entry to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %current_entry, align 4
  %srch_inf = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %srch_inf to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %srch_inf, align 8
  %entries_in_buffer = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 1
  %21 = ptrtoint ptr %entries_in_buffer to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %entries_in_buffer, align 8
  %conv = zext i16 %22 to i64
  %sub = sub i64 %20, %conv
  tail call fastcc void @dump_cifs_file_struct(ptr noundef %file)
  %23 = ptrtoint ptr %srch_inf to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %srch_inf, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %pos)
  %cmp13 = icmp sgt i64 %24, %pos
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false17

land.lhs.true:                                    ; preds = %if.end9
  %25 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_inode.i.i, align 8
  %time.i = getelementptr i8, ptr %26, i32 -56
  %27 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %pos)
  %cmp18 = icmp sgt i64 %sub, %pos
  %or.cond473 = select i1 %cmp.i, i1 true, i1 %cmp18
  br i1 %or.cond473, label %land.lhs.true.do.body21_crit_edge, label %land.lhs.true.if.end140_crit_edge

land.lhs.true.if.end140_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

land.lhs.true.do.body21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

lor.lhs.false17:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %pos)
  %cmp18.old = icmp sgt i64 %sub, %pos
  br i1 %cmp18.old, label %lor.lhs.false17.do.body21_crit_edge, label %lor.lhs.false17.if.end140_crit_edge

lor.lhs.false17.if.end140_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

lor.lhs.false17.do.body21_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

do.body21:                                        ; preds = %lor.lhs.false17.do.body21_crit_edge, %land.lhs.true.do.body21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %29 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.body21.do.end38_crit_edge, label %do.body24

do.body21.do.end38_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.body24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_cifs_entry.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_cifs_entry, %land.lhs.true29)) #11
          to label %do.end38 [label %land.lhs.true29], !srcloc !196

land.lhs.true29:                                  ; preds = %do.body24
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end38_crit_edge, label %if.then32

land.lhs.true29.do.end38_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_cifs_entry.descriptor, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %land.lhs.true29.do.end38_crit_edge, %do.body24, %do.body21.do.end38_crit_edge
  %file_info_lock = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %file_info_lock) #11
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %dir_needs_close = getelementptr inbounds %struct.smb_version_operations, ptr %31, i32 0, i32 99
  %32 = ptrtoint ptr %dir_needs_close to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dir_needs_close, align 4
  %call40 = tail call zeroext i1 %33(ptr noundef nonnull %1) #11
  br i1 %call40, label %if.then41, label %if.else50

if.then41:                                        ; preds = %do.end38
  %invalidHandle = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %invalidHandle to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %invalidHandle, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %invalidHandle, align 4
  tail call void @_raw_spin_unlock(ptr noundef %file_info_lock) #11
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %close_dir = getelementptr inbounds %struct.smb_version_operations, ptr %36, i32 0, i32 65
  %37 = ptrtoint ptr %close_dir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %close_dir, align 4
  %tobool44.not = icmp eq ptr %38, null
  br i1 %tobool44.not, label %if.then41.if.end52_crit_edge, label %if.then45

if.then41.if.end52_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 5
  %call48 = tail call i32 %38(i32 noundef %xid, ptr noundef %tcon, ptr noundef %fid) #11
  br label %if.end52

if.else50:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %file_info_lock) #11
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then45, %if.then41.if.end52_crit_edge
  %ntwrk_buf_start = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 4
  %39 = ptrtoint ptr %ntwrk_buf_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ntwrk_buf_start, align 8
  %tobool54.not = icmp eq ptr %40, null
  br i1 %tobool54.not, label %if.end52.if.end98_crit_edge, label %do.body57

if.end52.if.end98_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

do.body57:                                        ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %41 = load i32, ptr @cifsFYI, align 4
  %and58 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.do.end85_crit_edge, label %do.body61

do.body57.do.end85_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end85

do.body61:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_cifs_entry.descriptor.43, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_cifs_entry, %land.lhs.true73)) #11
          to label %do.end85 [label %land.lhs.true73], !srcloc !196

land.lhs.true73:                                  ; preds = %do.body61
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs.42, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end85_crit_edge, label %if.then76

land.lhs.true73.do.end85_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end85

if.then76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_cifs_entry.descriptor.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3) #11
  br label %do.end85

do.end85:                                         ; preds = %if.then76, %land.lhs.true73.do.end85_crit_edge, %do.body61, %do.body57.do.end85_crit_edge
  %smallBuf = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 9
  %42 = ptrtoint ptr %smallBuf to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load87 = load i8, ptr %smallBuf, align 4
  %43 = and i8 %bf.load87, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %bf.cast.not = icmp eq i8 %43, 0
  %44 = ptrtoint ptr %ntwrk_buf_start to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ntwrk_buf_start, align 8
  br i1 %bf.cast.not, label %if.else92, label %if.then89

if.then89:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cifs_small_buf_release(ptr noundef %45) #11
  br label %if.end95

if.else92:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cifs_buf_release(ptr noundef %45) #11
  br label %if.end95

if.end95:                                         ; preds = %if.else92, %if.then89
  %46 = ptrtoint ptr %ntwrk_buf_start to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ntwrk_buf_start, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.end95, %if.end52.if.end98_crit_edge
  %call99 = tail call fastcc i32 @initiate_cifs_search(i32 noundef %xid, ptr noundef %file, ptr noundef %full_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end132, label %do.body103

do.body103:                                       ; preds = %if.end98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %47 = load i32, ptr @cifsFYI, align 4
  %and104 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body103.cleanup383_crit_edge, label %do.body107

do.body103.cleanup383_crit_edge:                  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

do.body107:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_cifs_entry.descriptor.46, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_cifs_entry, %land.lhs.true119)) #11
          to label %cleanup383 [label %land.lhs.true119], !srcloc !196

land.lhs.true119:                                 ; preds = %do.body107
  %call120 = tail call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs.45, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %land.lhs.true119.cleanup383_crit_edge, label %if.then122

land.lhs.true119.cleanup383_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

if.then122:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_cifs_entry.descriptor.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, i32 noundef %call99) #11
  br label %cleanup383

if.end132:                                        ; preds = %if.end98
  %last_entry = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 6
  %48 = ptrtoint ptr %last_entry to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %last_entry, align 8
  %tobool134.not = icmp eq ptr %49, null
  br i1 %tobool134.not, label %if.end132.if.end140_crit_edge, label %if.then135

if.end132.if.end140_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then135:                                       ; preds = %if.end132
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %de.i) #11
  %50 = call ptr @memset(ptr %de.i, i32 255, i32 24)
  %info_level.i = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 2
  %51 = ptrtoint ptr %info_level.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %info_level.i, align 2
  %unicode.i = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 9
  %53 = ptrtoint ptr %unicode.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i = load i8, ptr %unicode.i, align 4
  %54 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %bf.cast.i = icmp ne i8 %54, 0
  %call.i = call fastcc i32 @cifs_fill_dirent(ptr noundef nonnull %de.i, ptr noundef nonnull %49, i16 noundef zeroext %52, i1 noundef zeroext %bf.cast.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then135.cifs_save_resume_key.exit_crit_edge

if.then135.cifs_save_resume_key.exit_crit_edge:   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_save_resume_key.exit

if.then.i:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %de.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %de.i, align 8
  %presume_name.i = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 7
  %57 = ptrtoint ptr %presume_name.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %presume_name.i, align 4
  %namelen.i = getelementptr inbounds %struct.cifs_dirent, ptr %de.i, i32 0, i32 1
  %58 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %namelen.i, align 4
  %resume_name_len.i = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 8
  %60 = ptrtoint ptr %resume_name_len.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %resume_name_len.i, align 8
  %resume_key.i = getelementptr inbounds %struct.cifs_dirent, ptr %de.i, i32 0, i32 2
  %61 = ptrtoint ptr %resume_key.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %resume_key.i, align 8
  %resume_key5.i = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 3
  %63 = ptrtoint ptr %resume_key5.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %resume_key5.i, align 4
  br label %cifs_save_resume_key.exit

cifs_save_resume_key.exit:                        ; preds = %if.then.i, %if.then135.cifs_save_resume_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %de.i) #11
  br label %if.end140

if.end140:                                        ; preds = %cifs_save_resume_key.exit, %if.end132.if.end140_crit_edge, %lor.lhs.false17.if.end140_crit_edge, %land.lhs.true.if.end140_crit_edge
  %call141 = call zeroext i1 @backup_cred(ptr noundef %7) #11
  %spec.select = select i1 %call141, i16 22, i16 6
  %endOfSearch = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 9
  %fid191 = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 5
  %last_entry195 = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 6
  %info_level.i496 = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 2
  %presume_name.i502 = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 7
  %namelen.i503 = getelementptr inbounds %struct.cifs_dirent, ptr %de.i495, i32 0, i32 1
  %resume_name_len.i504 = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 8
  %resume_key.i505 = getelementptr inbounds %struct.cifs_dirent, ptr %de.i495, i32 0, i32 2
  %resume_key5.i506 = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end201.while.cond_crit_edge, %if.end140
  %64 = ptrtoint ptr %srch_inf to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %srch_inf, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %pos)
  %cmp148.not = icmp sgt i64 %65, %pos
  br i1 %cmp148.not, label %if.then209, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %66 = ptrtoint ptr %endOfSearch to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load154 = load i8, ptr %endOfSearch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load154)
  %bf.cast156.not = icmp sgt i8 %bf.load154, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %67 = load i32, ptr @cifsFYI, align 4
  %and161 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %bf.cast156.not, label %do.body160, label %do.body311

do.body160:                                       ; preds = %land.rhs
  br i1 %tobool162.not, label %do.body160.do.end188_crit_edge, label %do.body164

do.body160.do.end188_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end188

do.body164:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_cifs_entry.descriptor.49, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_cifs_entry, %land.lhs.true176)) #11
          to label %do.end188 [label %land.lhs.true176], !srcloc !196

land.lhs.true176:                                 ; preds = %do.body164
  %call177 = call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs.48, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %land.lhs.true176.do.end188_crit_edge, label %if.then179

land.lhs.true176.do.end188_crit_edge:             ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end188

if.then179:                                       ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_cifs_entry.descriptor.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3) #11
  br label %do.end188

do.end188:                                        ; preds = %if.then179, %land.lhs.true176.do.end188_crit_edge, %do.body164, %do.body160.do.end188_crit_edge
  %68 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops, align 4
  %query_dir_next190 = getelementptr inbounds %struct.smb_version_operations, ptr %69, i32 0, i32 64
  %70 = ptrtoint ptr %query_dir_next190 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %query_dir_next190, align 4
  %call193 = call i32 %71(i32 noundef %xid, ptr noundef %tcon, ptr noundef %fid191, i16 noundef zeroext %spec.select, ptr noundef %srch_inf) #11
  %72 = ptrtoint ptr %last_entry195 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %last_entry195, align 8
  %tobool196.not = icmp eq ptr %73, null
  br i1 %tobool196.not, label %do.end188.if.end201_crit_edge, label %if.then197

do.end188.if.end201_crit_edge:                    ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

if.then197:                                       ; preds = %do.end188
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %de.i495) #11
  %74 = call ptr @memset(ptr %de.i495, i32 255, i32 24)
  %75 = ptrtoint ptr %info_level.i496 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %info_level.i496, align 2
  %77 = ptrtoint ptr %endOfSearch to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i498 = load i8, ptr %endOfSearch, align 4
  %78 = and i8 %bf.load.i498, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %bf.cast.i499 = icmp ne i8 %78, 0
  %call.i500 = call fastcc i32 @cifs_fill_dirent(ptr noundef nonnull %de.i495, ptr noundef nonnull %73, i16 noundef zeroext %76, i1 noundef zeroext %bf.cast.i499) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i500)
  %tobool.not.i501 = icmp eq i32 %call.i500, 0
  br i1 %tobool.not.i501, label %if.then.i507, label %if.then197.cifs_save_resume_key.exit508_crit_edge

if.then197.cifs_save_resume_key.exit508_crit_edge: ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_save_resume_key.exit508

if.then.i507:                                     ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %de.i495 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %de.i495, align 8
  %81 = ptrtoint ptr %presume_name.i502 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %presume_name.i502, align 4
  %82 = ptrtoint ptr %namelen.i503 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %namelen.i503, align 4
  %84 = ptrtoint ptr %resume_name_len.i504 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %resume_name_len.i504, align 8
  %85 = ptrtoint ptr %resume_key.i505 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %resume_key.i505, align 8
  %87 = ptrtoint ptr %resume_key5.i506 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %resume_key5.i506, align 4
  br label %cifs_save_resume_key.exit508

cifs_save_resume_key.exit508:                     ; preds = %if.then.i507, %if.then197.cifs_save_resume_key.exit508_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %de.i495) #11
  br label %if.end201

if.end201:                                        ; preds = %cifs_save_resume_key.exit508, %do.end188.if.end201_crit_edge
  %tobool202.not = icmp eq i32 %call193, 0
  br i1 %tobool202.not, label %if.end201.while.cond_crit_edge, label %if.end201.cleanup383_crit_edge

if.end201.cleanup383_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

if.end201.while.cond_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then209:                                       ; preds = %while.cond
  %ntwrk_buf_start211 = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 4
  %88 = ptrtoint ptr %ntwrk_buf_start211 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ntwrk_buf_start211, align 8
  %cmp212 = icmp eq ptr %89, null
  br i1 %cmp212, label %do.body216, label %if.end230

do.body216:                                       ; preds = %if.then209
  %call217 = call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs.51, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %do.body216.cleanup383_crit_edge, label %do.end222

do.body216.cleanup383_crit_edge:                  ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

do.end222:                                        ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #13
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #15
  br label %cleanup383

if.end230:                                        ; preds = %if.then209
  %90 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops, align 4
  %calc_smb_size = getelementptr inbounds %struct.smb_version_operations, ptr %91, i32 0, i32 66
  %92 = ptrtoint ptr %calc_smb_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %calc_smb_size, align 4
  %call236 = call i32 %93(ptr noundef nonnull %89, ptr noundef %11) #11
  %add.ptr = getelementptr i8, ptr %89, i32 %call236
  %srch_entries_start = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 5
  %94 = ptrtoint ptr %srch_entries_start to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %srch_entries_start, align 4
  %96 = ptrtoint ptr %srch_inf to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %srch_inf, align 8
  %98 = ptrtoint ptr %entries_in_buffer to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %entries_in_buffer, align 8
  %conv242 = zext i16 %99 to i64
  %sub243.neg = sub i64 %pos, %97
  %sub244 = add i64 %sub243.neg, %conv242
  %conv245 = trunc i64 %sub244 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %100 = load i32, ptr @cifsFYI, align 4
  %and248 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.end230.do.end275_crit_edge, label %do.body251

if.end230.do.end275_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end275

do.body251:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_cifs_entry.descriptor.54, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_cifs_entry, %land.lhs.true263)) #11
          to label %do.end275 [label %land.lhs.true263], !srcloc !196

land.lhs.true263:                                 ; preds = %do.body251
  %call264 = call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs.53, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %land.lhs.true263.do.end275_crit_edge, label %if.then266

land.lhs.true263.do.end275_crit_edge:             ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end275

if.then266:                                       ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_cifs_entry.descriptor.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef %conv245) #11
  br label %do.end275

do.end275:                                        ; preds = %if.then266, %land.lhs.true263.do.end275_crit_edge, %do.body251, %if.end230.do.end275_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv245)
  %cmp276517 = icmp slt i32 %conv245, 1
  %cmp279.not518 = icmp eq ptr %95, null
  %or.cond474519 = select i1 %cmp276517, i1 true, i1 %cmp279.not518
  br i1 %or.cond474519, label %do.end275.for.end_crit_edge, label %do.end275.for.body_crit_edge

do.end275.for.body_crit_edge:                     ; preds = %do.end275
  br label %for.body

do.end275.for.end_crit_edge:                      ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end275.for.body_crit_edge
  %cur_ent.0521 = phi ptr [ %call284, %for.body.for.body_crit_edge ], [ %95, %do.end275.for.body_crit_edge ]
  %i.0520 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end275.for.body_crit_edge ]
  %101 = ptrtoint ptr %info_level.i496 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %info_level.i496, align 2
  %conv283 = zext i16 %102 to i32
  %call284 = call fastcc ptr @nxt_dir_entry(ptr noundef nonnull %cur_ent.0521, ptr noundef %add.ptr, i32 noundef %conv283)
  %inc = add nuw nsw i32 %i.0520, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv245)
  %cmp276 = icmp sge i32 %inc, %conv245
  %cmp279.not = icmp eq ptr %call284, null
  %or.cond474 = select i1 %cmp276, i1 true, i1 %cmp279.not
  br i1 %or.cond474, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end275.for.end_crit_edge
  %cur_ent.0.lcssa = phi ptr [ %95, %do.end275.for.end_crit_edge ], [ %call284, %for.body.for.end_crit_edge ]
  %cmp276.lcssa = phi i1 [ %cmp276517, %do.end275.for.end_crit_edge ], [ %cmp276, %for.body.for.end_crit_edge ]
  %cmp279.not.lcssa = phi i1 [ %cmp279.not518, %do.end275.for.end_crit_edge ], [ %cmp279.not, %for.body.for.end_crit_edge ]
  %cmp285.not = xor i1 %cmp279.not.lcssa, true
  %brmerge = select i1 %cmp285.not, i1 true, i1 %cmp276.lcssa
  br i1 %brmerge, label %for.end.if.end340_crit_edge, label %do.body292

for.end.if.end340_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end340

do.body292:                                       ; preds = %for.end
  %call293 = call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs.56, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %do.body292.if.end340_crit_edge, label %do.end298

do.body292.if.end340_crit_edge:                   ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end340

do.end298:                                        ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #13
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv245, i64 noundef %pos, i32 noundef 0) #15
  br label %if.end340

do.body311:                                       ; preds = %land.rhs
  br i1 %tobool162.not, label %do.body311.cleanup383_crit_edge, label %do.body315

do.body311.cleanup383_crit_edge:                  ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

do.body315:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_cifs_entry.descriptor.61, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_cifs_entry, %land.lhs.true327)) #11
          to label %cleanup383 [label %land.lhs.true327], !srcloc !196

land.lhs.true327:                                 ; preds = %do.body315
  %call328 = call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs.60, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %land.lhs.true327.cleanup383_crit_edge, label %if.then330

land.lhs.true327.cleanup383_crit_edge:            ; preds = %land.lhs.true327
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup383

if.then330:                                       ; preds = %land.lhs.true327
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_cifs_entry.descriptor.61, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3) #11
  br label %cleanup383

if.end340:                                        ; preds = %do.end298, %do.body292.if.end340_crit_edge, %for.end.if.end340_crit_edge
  %103 = ptrtoint ptr %current_entry to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %cur_ent.0.lcssa, ptr %current_entry, align 4
  %104 = ptrtoint ptr %entries_in_buffer to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %entries_in_buffer, align 8
  %conv343 = zext i16 %105 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv343, i32 %conv245)
  %cmp344.not = icmp sgt i32 %conv343, %conv245
  br i1 %cmp344.not, label %if.else377, label %do.body348

do.body348:                                       ; preds = %if.end340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %106 = load i32, ptr @cifsFYI, align 4
  %and349 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %do.body348.if.end382_crit_edge, label %do.body352

do.body348.if.end382_crit_edge:                   ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end382

do.body352:                                       ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_cifs_entry.descriptor.64, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_cifs_entry, %land.lhs.true364)) #11
          to label %if.end382 [label %land.lhs.true364], !srcloc !196

land.lhs.true364:                                 ; preds = %do.body352
  %call365 = call i32 @___ratelimit(ptr noundef nonnull @find_cifs_entry._rs.63, ptr noundef nonnull @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %land.lhs.true364.if.end382_crit_edge, label %if.then367

land.lhs.true364.if.end382_crit_edge:             ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end382

if.then367:                                       ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_cifs_entry.descriptor.64, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.3) #11
  br label %if.end382

if.else377:                                       ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #13
  %sub381 = sub i32 %conv343, %conv245
  br label %if.end382

if.end382:                                        ; preds = %if.else377, %if.then367, %land.lhs.true364.if.end382_crit_edge, %do.body352, %do.body348.if.end382_crit_edge
  %storemerge = phi i32 [ %sub381, %if.else377 ], [ 0, %do.body348.if.end382_crit_edge ], [ 0, %land.lhs.true364.if.end382_crit_edge ], [ 0, %if.then367 ], [ 0, %do.body352 ]
  %107 = ptrtoint ptr %num_to_ret to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %storemerge, ptr %num_to_ret, align 4
  br label %cleanup383

cleanup383:                                       ; preds = %if.end382, %if.then330, %land.lhs.true327.cleanup383_crit_edge, %do.body315, %do.body311.cleanup383_crit_edge, %do.end222, %do.body216.cleanup383_crit_edge, %if.end201.cleanup383_crit_edge, %if.then122, %land.lhs.true119.cleanup383_crit_edge, %do.body107, %do.body103.cleanup383_crit_edge, %if.end.cleanup383_crit_edge, %lor.lhs.false.cleanup383_crit_edge, %entry.cleanup383_crit_edge
  %retval.1 = phi i32 [ 0, %if.end382 ], [ -38, %lor.lhs.false.cleanup383_crit_edge ], [ -38, %entry.cleanup383_crit_edge ], [ -2, %if.end.cleanup383_crit_edge ], [ %call99, %do.body103.cleanup383_crit_edge ], [ %call99, %land.lhs.true119.cleanup383_crit_edge ], [ %call99, %if.then122 ], [ 0, %do.body311.cleanup383_crit_edge ], [ 0, %land.lhs.true327.cleanup383_crit_edge ], [ 0, %if.then330 ], [ %call99, %do.body107 ], [ 0, %do.body315 ], [ -5, %do.body216.cleanup383_crit_edge ], [ -5, %do.end222 ], [ -2, %if.end201.cleanup383_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_save_resume_key(ptr noundef %current_entry, ptr nocapture noundef %file_info) unnamed_addr #0 align 64 {
entry:
  %de = alloca %struct.cifs_dirent, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %de) #11
  %0 = call ptr @memset(ptr %de, i32 255, i32 24)
  %info_level = getelementptr inbounds %struct.cifsFileInfo, ptr %file_info, i32 0, i32 16, i32 2
  %1 = ptrtoint ptr %info_level to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %info_level, align 2
  %unicode = getelementptr inbounds %struct.cifsFileInfo, ptr %file_info, i32 0, i32 16, i32 9
  %3 = ptrtoint ptr %unicode to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %unicode, align 4
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast = icmp ne i8 %4, 0
  %call = call fastcc i32 @cifs_fill_dirent(ptr noundef nonnull %de, ptr noundef %current_entry, i16 noundef zeroext %2, i1 noundef zeroext %bf.cast)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %de, align 8
  %presume_name = getelementptr inbounds %struct.cifsFileInfo, ptr %file_info, i32 0, i32 16, i32 7
  %7 = ptrtoint ptr %presume_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %presume_name, align 4
  %namelen = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 1
  %8 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %namelen, align 4
  %resume_name_len = getelementptr inbounds %struct.cifsFileInfo, ptr %file_info, i32 0, i32 16, i32 8
  %10 = ptrtoint ptr %resume_name_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %resume_name_len, align 8
  %resume_key = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 2
  %11 = ptrtoint ptr %resume_key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resume_key, align 8
  %resume_key5 = getelementptr inbounds %struct.cifsFileInfo, ptr %file_info, i32 0, i32 16, i32 3
  %13 = ptrtoint ptr %resume_key5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %resume_key5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %de) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nxt_dir_entry(ptr noundef %old_entry, ptr noundef %end_of_smb, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp = icmp eq i32 %level, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %old_entry, i32 28
  %FileNameLength = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %old_entry, i32 0, i32 10
  %0 = ptrtoint ptr %FileNameLength to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %FileNameLength, align 1
  %conv = zext i8 %1 to i32
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %conv
  br label %do.body18

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %old_entry to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %old_entry, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add.ptr2 = getelementptr i8, ptr %old_entry, i32 %4
  %cmp3 = icmp ult ptr %add.ptr2, %old_entry
  br i1 %cmp3, label %do.body6, label %if.else.do.body18_crit_edge

if.else.do.body18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

do.body6:                                         ; preds = %if.else
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @nxt_dir_entry._rs, ptr noundef nonnull @__func__.nxt_dir_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body6.cleanup87_crit_edge, label %do.end

do.body6.cleanup87_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %4) #15
  br label %cleanup87

do.body18:                                        ; preds = %if.else.do.body18_crit_edge, %if.then
  %new_entry.1 = phi ptr [ %add.ptr1, %if.then ], [ %add.ptr2, %if.else.do.body18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body18.do.end38_crit_edge, label %do.body21

do.body18.do.end38_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.body21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt_dir_entry.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt_dir_entry, %land.lhs.true)) #11
          to label %do.end38 [label %land.lhs.true], !srcloc !196

land.lhs.true:                                    ; preds = %do.body21
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @nxt_dir_entry._rs.89, ptr noundef nonnull @__func__.nxt_dir_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true.do.end38_crit_edge, label %if.then29

land.lhs.true.do.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt_dir_entry.descriptor, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.3, ptr noundef %new_entry.1, ptr noundef %old_entry) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %land.lhs.true.do.end38_crit_edge, %do.body21, %do.body18.do.end38_crit_edge
  %cmp39.not = icmp ult ptr %new_entry.1, %end_of_smb
  br i1 %cmp39.not, label %if.else57, label %do.body43

do.body43:                                        ; preds = %do.end38
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @nxt_dir_entry._rs.91, ptr noundef nonnull @__func__.nxt_dir_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body43.cleanup87_crit_edge, label %do.end49

do.body43.cleanup87_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %new_entry.1, ptr noundef %end_of_smb, ptr noundef %old_entry) #15
  br label %cleanup87

if.else57:                                        ; preds = %do.end38
  %add.ptr61 = getelementptr i8, ptr %new_entry.1, i32 28
  %cmp62 = icmp ugt ptr %add.ptr61, %end_of_smb
  %or.cond = select i1 %cmp, i1 %cmp62, i1 false
  br i1 %or.cond, label %if.else57.do.body72_crit_edge, label %lor.lhs.false

if.else57.do.body72_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body72

lor.lhs.false:                                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp64.not = icmp ne i32 %level, 1
  %add.ptr67 = getelementptr i8, ptr %new_entry.1, i32 65
  %cmp68 = icmp ugt ptr %add.ptr67, %end_of_smb
  %or.cond110 = select i1 %cmp64.not, i1 %cmp68, i1 false
  br i1 %or.cond110, label %lor.lhs.false.do.body72_crit_edge, label %lor.lhs.false.cleanup87_crit_edge

lor.lhs.false.cleanup87_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

lor.lhs.false.do.body72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body72

do.body72:                                        ; preds = %lor.lhs.false.do.body72_crit_edge, %if.else57.do.body72_crit_edge
  %call73 = tail call i32 @___ratelimit(ptr noundef nonnull @nxt_dir_entry._rs.95, ptr noundef nonnull @__func__.nxt_dir_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.body72.cleanup87_crit_edge, label %do.end78

do.body72.cleanup87_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup87

do.end78:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %new_entry.1, ptr noundef nonnull %end_of_smb) #15
  br label %cleanup87

cleanup87:                                        ; preds = %do.end78, %do.body72.cleanup87_crit_edge, %lor.lhs.false.cleanup87_crit_edge, %do.end49, %do.body43.cleanup87_crit_edge, %do.end, %do.body6.cleanup87_crit_edge
  %retval.1 = phi ptr [ null, %do.end49 ], [ null, %do.body43.cleanup87_crit_edge ], [ null, %do.end78 ], [ null, %do.body72.cleanup87_crit_edge ], [ %new_entry.1, %lor.lhs.false.cleanup87_crit_edge ], [ null, %do.body6.cleanup87_crit_edge ], [ null, %do.end ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, i32 noundef %rc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !196

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.2, i32 noundef %rc) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !197

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !200
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
  %.b1 = load i1, ptr @trace_smb3_exit_err.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_smb3_exit_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 558, ptr noundef nonnull @.str.32) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
define internal fastcc void @trace_smb3_exit_done(i32 noundef %xid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !196

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !197

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !200
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
  %.b1 = load i1, ptr @trace_smb3_exit_done.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_smb3_exit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 610, ptr noundef nonnull @.str.32) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #11
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
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_NTtimeToUnix(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_initiate_cifs_search(i32 noundef %xid, ptr nocapture noundef %file, ptr noundef %full_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @cifs_sb_tlink(ptr noundef %5) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 528) #14
  %cmp6 = icmp eq ptr %call7.i.i, null
  br i1 %cmp6, label %if.end.error_exit_crit_edge, label %do.body

if.end.error_exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_exit

do.body:                                          ; preds = %if.end
  %file_info_lock = getelementptr inbounds %struct.cifsFileInfo, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %file_info_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @_initiate_cifs_search.__key, i16 noundef signext 3) #11
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %do.body.cifs_get_tlink.exit_crit_edge, label %if.then.i

do.body.cifs_get_tlink.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_get_tlink.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %tl_count.i = getelementptr inbounds %struct.tcon_link, ptr %call1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tl_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tl_count.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tl_count.i, ptr %tl_count.i, i32 1, ptr elementtype(i32) %tl_count.i) #11, !srcloc !206
  br label %cifs_get_tlink.exit

cifs_get_tlink.exit:                              ; preds = %if.then.i, %do.body.cifs_get_tlink.exit_crit_edge
  %tlink12 = getelementptr inbounds %struct.cifsFileInfo, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %tlink12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %tlink12, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tlink15 = getelementptr inbounds %struct.cifsFileInfo, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %tlink15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tlink15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %cifs_get_tlink.exit
  %cifsFile.0 = phi ptr [ %call7.i.i, %cifs_get_tlink.exit ], [ %7, %if.else ]
  %tlink.0 = phi ptr [ %call1, %cifs_get_tlink.exit ], [ null, %if.else ]
  %call1.pn = phi ptr [ %call1, %cifs_get_tlink.exit ], [ %14, %if.else ]
  %tcon.0.in = getelementptr inbounds %struct.tcon_link, ptr %call1.pn, i32 0, i32 5
  %15 = ptrtoint ptr %tcon.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %tcon.0 = load ptr, ptr %tcon.0.in, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0, i32 0, i32 7
  %16 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ses, align 8
  %server18 = getelementptr inbounds %struct.cifs_ses, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %server18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server18, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %query_dir_first = getelementptr inbounds %struct.smb_version_operations, ptr %21, i32 0, i32 63
  %22 = ptrtoint ptr %query_dir_first to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %query_dir_first, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end17.error_exit_crit_edge, label %if.end20

if.end17.error_exit_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_exit

if.end20:                                         ; preds = %if.end17
  %invalidHandle = getelementptr inbounds %struct.cifsFileInfo, ptr %cifsFile.0, i32 0, i32 10
  %24 = ptrtoint ptr %invalidHandle to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %invalidHandle, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %invalidHandle, align 4
  %srch_inf = getelementptr inbounds %struct.cifsFileInfo, ptr %cifsFile.0, i32 0, i32 16
  %endOfSearch = getelementptr inbounds %struct.cifsFileInfo, ptr %cifsFile.0, i32 0, i32 16, i32 9
  %25 = ptrtoint ptr %endOfSearch to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load21 = load i8, ptr %endOfSearch, align 4
  %bf.clear22 = and i8 %bf.load21, 127
  store i8 %bf.clear22, ptr %endOfSearch, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %26 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end20.do.end44_crit_edge, label %do.body28

if.end20.do.end44_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

do.body28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_initiate_cifs_search.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_initiate_cifs_search, %land.lhs.true)) #11
          to label %do.end44 [label %land.lhs.true], !srcloc !196

land.lhs.true:                                    ; preds = %do.body28
  %call33 = tail call i32 @___ratelimit(ptr noundef nonnull @_initiate_cifs_search._rs, ptr noundef nonnull @.str.35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true.do.end44_crit_edge, label %if.then35

land.lhs.true.do.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %27 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %f_pos, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_initiate_cifs_search.descriptor, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef %full_path, i64 noundef %28) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then35, %land.lhs.true.do.end44_crit_edge, %do.body28, %if.end20.do.end44_crit_edge
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0, i32 0, i32 22
  %info_level = getelementptr inbounds %struct.cifsFileInfo, ptr %cifsFile.0, i32 0, i32 16, i32 2
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0, i32 0, i32 23
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 6
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cifsFile.0, i32 0, i32 5
  br label %ffirst_retry

ffirst_retry:                                     ; preds = %if.then98, %do.end44
  %29 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load45 = load i16, ptr %unix_ext, align 8
  %30 = and i16 %bf.load45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %bf.cast.not = icmp eq i16 %30, 0
  br i1 %bf.cast.not, label %if.else49, label %ffirst_retry.if.end75_crit_edge

ffirst_retry.if.end75_crit_edge:                  ; preds = %ffirst_retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else49:                                        ; preds = %ffirst_retry
  %31 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %posix_extensions, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool50.not = icmp eq i8 %32, 0
  br i1 %tobool50.not, label %if.else54, label %if.else49.if.end75_crit_edge

if.else49.if.end75_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else54:                                        ; preds = %if.else49
  %33 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ses, align 8
  %capabilities = getelementptr inbounds %struct.cifs_ses, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %capabilities, align 8
  %server57 = getelementptr inbounds %struct.cifs_ses, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %server57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %server57, align 8
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vals, align 8
  %cap_nt_find = getelementptr inbounds %struct.smb_version_values, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %cap_nt_find to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cap_nt_find, align 4
  %and58 = and i32 %42, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %cmp59 = icmp eq i32 %and58, 0
  br i1 %cmp59, label %if.else54.if.end75_crit_edge, label %if.else63

if.else54.if.end75_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else63:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mnt_cifs_flags, align 4
  %and64 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %. = select i1 %tobool65.not, i16 257, i16 261
  br label %if.end75

if.end75:                                         ; preds = %if.else63, %if.else54.if.end75_crit_edge, %if.else49.if.end75_crit_edge, %ffirst_retry.if.end75_crit_edge
  %.sink = phi i16 [ 514, %ffirst_retry.if.end75_crit_edge ], [ 100, %if.else49.if.end75_crit_edge ], [ 1, %if.else54.if.end75_crit_edge ], [ %., %if.else63 ]
  %45 = ptrtoint ptr %info_level to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %.sink, ptr %info_level, align 2
  %call76 = tail call zeroext i1 @backup_cred(ptr noundef %5) #11
  %spec.select = select i1 %call76, i16 22, i16 6
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %query_dir_first81 = getelementptr inbounds %struct.smb_version_operations, ptr %47, i32 0, i32 63
  %48 = ptrtoint ptr %query_dir_first81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %query_dir_first81, align 4
  %call83 = tail call i32 %49(i32 noundef %xid, ptr noundef %tcon.0, ptr noundef %full_path, ptr noundef %5, ptr noundef %fid, i16 noundef zeroext %spec.select, ptr noundef %srch_inf) #11
  %50 = zext i32 %call83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call83, label %if.end75.error_exit_crit_edge [
    i32 0, label %if.then86
    i32 -95, label %land.lhs.true94
  ]

if.end75.error_exit_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_exit

if.then86:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %invalidHandle to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load88 = load i8, ptr %invalidHandle, align 4
  %bf.clear89 = and i8 %bf.load88, 127
  store i8 %bf.clear89, ptr %invalidHandle, align 4
  br label %error_exit

land.lhs.true94:                                  ; preds = %if.end75
  %52 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mnt_cifs_flags, align 4
  %and96 = and i32 %53, 4
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %land.lhs.true94.error_exit_crit_edge, label %if.then98

land.lhs.true94.error_exit_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_exit

if.then98:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  %and100 = and i32 %53, -5
  %54 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and100, ptr %mnt_cifs_flags, align 4
  br label %ffirst_retry

error_exit:                                       ; preds = %land.lhs.true94.error_exit_crit_edge, %if.then86, %if.end75.error_exit_crit_edge, %if.end17.error_exit_crit_edge, %if.end.error_exit_crit_edge
  %rc.0 = phi i32 [ 0, %if.then86 ], [ -12, %if.end.error_exit_crit_edge ], [ -38, %if.end17.error_exit_crit_edge ], [ %call83, %if.end75.error_exit_crit_edge ], [ -95, %land.lhs.true94.error_exit_crit_edge ]
  %tlink.1 = phi ptr [ %tlink.0, %if.then86 ], [ %call1, %if.end.error_exit_crit_edge ], [ %tlink.0, %if.end17.error_exit_crit_edge ], [ %tlink.0, %land.lhs.true94.error_exit_crit_edge ], [ %tlink.0, %if.end75.error_exit_crit_edge ]
  tail call void @cifs_put_tlink(ptr noundef %tlink.1) #11
  br label %cleanup

cleanup:                                          ; preds = %error_exit, %if.then3
  %retval.0 = phi i32 [ %8, %if.then3 ], [ %rc.0, %error_exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_tlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @backup_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_cifs_file_struct(ptr noundef readonly %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %if.end17

do.body2:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body2.cleanup_crit_edge, label %do.body5

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_cifs_file_struct.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_cifs_file_struct, %land.lhs.true)) #11
          to label %cleanup [label %land.lhs.true], !srcloc !196

land.lhs.true:                                    ; preds = %do.body5
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_cifs_file_struct._rs, ptr noundef nonnull @.str.66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_cifs_file_struct.descriptor, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end17:                                         ; preds = %if.then
  %invalidHandle = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %invalidHandle to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %invalidHandle, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end17.if.end49_crit_edge, label %do.body20

if.end17.if.end49_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.body20:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and21 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.if.end49_crit_edge, label %do.body24

do.body20.if.end49_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.body24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_cifs_file_struct.descriptor.69, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_cifs_file_struct, %land.lhs.true36)) #11
          to label %if.end49 [label %land.lhs.true36], !srcloc !196

land.lhs.true36:                                  ; preds = %do.body24
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_cifs_file_struct._rs.68, ptr noundef nonnull @.str.66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end49_crit_edge, label %if.then39

land.lhs.true36.if.end49_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_cifs_file_struct.descriptor.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then39, %land.lhs.true36.if.end49_crit_edge, %do.body24, %do.body20.if.end49_crit_edge, %if.end17.if.end49_crit_edge
  %endOfSearch = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 16, i32 9
  %5 = ptrtoint ptr %endOfSearch to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load50 = load i8, ptr %endOfSearch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load50)
  %bf.cast52.not = icmp sgt i8 %bf.load50, -1
  br i1 %bf.cast52.not, label %if.end49.if.end84_crit_edge, label %do.body55

if.end49.if.end84_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

do.body55:                                        ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and56 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.if.end84_crit_edge, label %do.body59

do.body55.if.end84_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

do.body59:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_cifs_file_struct.descriptor.72, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_cifs_file_struct, %land.lhs.true71)) #11
          to label %if.end84 [label %land.lhs.true71], !srcloc !196

land.lhs.true71:                                  ; preds = %do.body59
  %call72 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_cifs_file_struct._rs.71, ptr noundef nonnull @.str.66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.if.end84_crit_edge, label %if.then74

land.lhs.true71.if.end84_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_cifs_file_struct.descriptor.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.3) #11
  br label %if.end84

if.end84:                                         ; preds = %if.then74, %land.lhs.true71.if.end84_crit_edge, %do.body59, %do.body55.if.end84_crit_edge, %if.end49.if.end84_crit_edge
  %7 = ptrtoint ptr %endOfSearch to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load86 = load i8, ptr %endOfSearch, align 4
  %8 = and i8 %bf.load86, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %bf.cast88.not = icmp eq i8 %8, 0
  br i1 %bf.cast88.not, label %if.end84.cleanup_crit_edge, label %do.body91

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body91:                                        ; preds = %if.end84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and92 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body91.cleanup_crit_edge, label %do.body95

do.body91.cleanup_crit_edge:                      ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body95:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_cifs_file_struct.descriptor.75, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_cifs_file_struct, %land.lhs.true107)) #11
          to label %cleanup [label %land.lhs.true107], !srcloc !196

land.lhs.true107:                                 ; preds = %do.body95
  %call108 = tail call i32 @___ratelimit(ptr noundef nonnull @dump_cifs_file_struct._rs.74, ptr noundef nonnull @.str.66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %land.lhs.true107.cleanup_crit_edge, label %if.then110

land.lhs.true107.cleanup_crit_edge:               ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then110:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_cifs_file_struct.descriptor.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %land.lhs.true107.cleanup_crit_edge, %do.body95, %do.body91.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then11, %land.lhs.true.cleanup_crit_edge, %do.body5, %do.body2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_small_buf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_buf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_fill_dirent(ptr noundef writeonly %de, ptr noundef %info, i16 noundef zeroext %level, i1 noundef zeroext %is_unicode) unnamed_addr #0 align 64 {
entry:
  %parsed.i = alloca %struct.smb2_posix_info_parsed, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %de, i32 0, i32 24)
  %conv = zext i16 %level to i32
  %1 = zext i16 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %level, label %do.body7 [
    i16 100, label %sw.bb
    i16 514, label %sw.bb1
    i16 257, label %sw.bb2
    i16 258, label %sw.bb3
    i16 261, label %sw.bb4
    i16 260, label %sw.bb5
    i16 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %parsed.i) #11
  %2 = call ptr @memset(ptr %parsed.i, i32 255, i32 152)
  %call.i = call i32 @posix_info_parse(ptr noundef %info, ptr noundef null, ptr noundef nonnull %parsed.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body1.i, label %if.end10.i

do.body1.i:                                       ; preds = %sw.bb
  %call2.i = call i32 @___ratelimit(ptr noundef nonnull @cifs_fill_dirent_posix._rs, ptr noundef nonnull @__func__.cifs_fill_dirent_posix) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.body1.i.cifs_fill_dirent_posix.exit_crit_edge, label %do.end.i

do.body1.i.cifs_fill_dirent_posix.exit_crit_edge: ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_fill_dirent_posix.exit

do.end.i:                                         ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #15
  br label %cifs_fill_dirent_posix.exit

if.end10.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.smb2_posix_info_parsed, ptr %parsed.i, i32 0, i32 5
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 4
  %5 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %de, align 8
  %name_len.i = getelementptr inbounds %struct.smb2_posix_info_parsed, ptr %parsed.i, i32 0, i32 4
  %6 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %name_len.i, align 4
  %namelen.i = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 1
  %8 = ptrtoint ptr %namelen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %namelen.i, align 4
  %Ignored.i = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %Ignored.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %Ignored.i, align 1
  %resume_key.i = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 2
  %11 = ptrtoint ptr %resume_key.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %resume_key.i, align 8
  %Inode.i = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 9
  %12 = ptrtoint ptr %Inode.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %Inode.i, align 1
  %14 = call i64 @llvm.bswap.i64(i64 %13) #11
  %ino.i = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 3
  %15 = ptrtoint ptr %ino.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %ino.i, align 8
  br label %cifs_fill_dirent_posix.exit

cifs_fill_dirent_posix.exit:                      ; preds = %if.end10.i, %do.end.i, %do.body1.i.cifs_fill_dirent_posix.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %parsed.i) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  %FileName.i = getelementptr inbounds %struct.FILE_UNIX_INFO, ptr %info, i32 0, i32 3
  %16 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %FileName.i, ptr %de, align 8
  br i1 %is_unicode, label %sw.bb1.for.body.i.i_crit_edge, label %if.else.i

sw.bb1.for.body.i.i_crit_edge:                    ; preds = %sw.bb1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb1.for.body.i.i_crit_edge
  %len.027.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb1.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %FileName.i, i32 %len.027.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp1.i.i = icmp eq i16 %18, 0
  br i1 %cmp1.i.i, label %for.body.i.i.cifs_unicode_bytelen.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.cifs_unicode_bytelen.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_unicode_bytelen.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %len.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 4097
  br i1 %exitcond.not.i.i, label %do.body3.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.body3.i.i:                                     ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %19 = load i32, ptr @cifsFYI, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body3.i.i.cifs_unicode_bytelen.exit.i_crit_edge, label %do.body5.i.i

do.body3.i.i.cifs_unicode_bytelen.exit.i_crit_edge: ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_unicode_bytelen.exit.i

do.body5.i.i:                                     ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_unicode_bytelen.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_fill_dirent, %land.lhs.true.i.i)) #11
          to label %cifs_unicode_bytelen.exit.i [label %land.lhs.true.i.i], !srcloc !196

land.lhs.true.i.i:                                ; preds = %do.body5.i.i
  %call9.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_unicode_bytelen._rs, ptr noundef nonnull @.str.81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.cifs_unicode_bytelen.exit.i_crit_edge, label %if.then11.i.i

land.lhs.true.i.i.cifs_unicode_bytelen.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_unicode_bytelen.exit.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_unicode_bytelen.descriptor, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.3) #11
  br label %cifs_unicode_bytelen.exit.i

cifs_unicode_bytelen.exit.i:                      ; preds = %if.then11.i.i, %land.lhs.true.i.i.cifs_unicode_bytelen.exit.i_crit_edge, %do.body5.i.i, %do.body3.i.i.cifs_unicode_bytelen.exit.i_crit_edge, %for.body.i.i.cifs_unicode_bytelen.exit.i_crit_edge
  %len.026.i.i = phi i32 [ 4097, %do.body5.i.i ], [ 4097, %if.then11.i.i ], [ 4097, %land.lhs.true.i.i.cifs_unicode_bytelen.exit.i_crit_edge ], [ 4097, %do.body3.i.i.cifs_unicode_bytelen.exit.i_crit_edge ], [ %len.027.i.i, %for.body.i.i.cifs_unicode_bytelen.exit.i_crit_edge ]
  %retval.0.i.i = shl nuw i32 %len.026.i.i, 1
  br label %cifs_fill_dirent_unix.exit

if.else.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @strnlen(ptr noundef %FileName.i, i32 noundef 4096) #16
  br label %cifs_fill_dirent_unix.exit

cifs_fill_dirent_unix.exit:                       ; preds = %if.else.i, %cifs_unicode_bytelen.exit.i
  %call3.sink.i = phi i32 [ %call3.i, %if.else.i ], [ %retval.0.i.i, %cifs_unicode_bytelen.exit.i ]
  %namelen4.i = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 1
  %20 = ptrtoint ptr %namelen4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call3.sink.i, ptr %namelen4.i, align 4
  %ResumeKey.i = getelementptr inbounds %struct.FILE_UNIX_INFO, ptr %info, i32 0, i32 1
  %21 = ptrtoint ptr %ResumeKey.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %ResumeKey.i, align 1
  %resume_key.i35 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 2
  %23 = ptrtoint ptr %resume_key.i35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %resume_key.i35, align 8
  %UniqueId.i = getelementptr inbounds %struct.FILE_UNIX_INFO, ptr %info, i32 0, i32 2, i32 10
  %24 = ptrtoint ptr %UniqueId.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %UniqueId.i, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #11
  %ino.i36 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 3
  %27 = ptrtoint ptr %ino.i36 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %ino.i36, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %FileName.i37 = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 10
  %28 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %FileName.i37, ptr %de, align 8
  %FileNameLength.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 9
  %29 = ptrtoint ptr %FileNameLength.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %FileNameLength.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %namelen.i38 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 1
  %32 = ptrtoint ptr %namelen.i38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %namelen.i38, align 4
  %FileIndex.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 1
  %33 = ptrtoint ptr %FileIndex.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %FileIndex.i, align 1
  %resume_key.i39 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 2
  %35 = ptrtoint ptr %resume_key.i39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %resume_key.i39, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %FileName.i40 = getelementptr inbounds %struct.FILE_FULL_DIRECTORY_INFO, ptr %info, i32 0, i32 11
  %36 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %FileName.i40, ptr %de, align 8
  %FileNameLength.i41 = getelementptr inbounds %struct.FILE_FULL_DIRECTORY_INFO, ptr %info, i32 0, i32 9
  %37 = ptrtoint ptr %FileNameLength.i41 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %FileNameLength.i41, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %namelen.i42 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 1
  %40 = ptrtoint ptr %namelen.i42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %namelen.i42, align 4
  %FileIndex.i43 = getelementptr inbounds %struct.FILE_FULL_DIRECTORY_INFO, ptr %info, i32 0, i32 1
  %41 = ptrtoint ptr %FileIndex.i43 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %FileIndex.i43, align 1
  %resume_key.i44 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 2
  %43 = ptrtoint ptr %resume_key.i44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %resume_key.i44, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %FileName.i45 = getelementptr inbounds %struct.SEARCH_ID_FULL_DIR_INFO, ptr %info, i32 0, i32 13
  %44 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %FileName.i45, ptr %de, align 8
  %FileNameLength.i46 = getelementptr inbounds %struct.SEARCH_ID_FULL_DIR_INFO, ptr %info, i32 0, i32 9
  %45 = ptrtoint ptr %FileNameLength.i46 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %FileNameLength.i46, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %namelen.i47 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 1
  %48 = ptrtoint ptr %namelen.i47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %namelen.i47, align 4
  %FileIndex.i48 = getelementptr inbounds %struct.SEARCH_ID_FULL_DIR_INFO, ptr %info, i32 0, i32 1
  %49 = ptrtoint ptr %FileIndex.i48 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %FileIndex.i48, align 1
  %resume_key.i49 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 2
  %51 = ptrtoint ptr %resume_key.i49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %resume_key.i49, align 8
  %UniqueId.i50 = getelementptr inbounds %struct.SEARCH_ID_FULL_DIR_INFO, ptr %info, i32 0, i32 12
  %52 = ptrtoint ptr %UniqueId.i50 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %UniqueId.i50, align 1
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #11
  %ino.i51 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 3
  %55 = ptrtoint ptr %ino.i51 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %ino.i51, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %FileName.i52 = getelementptr inbounds %struct.FILE_BOTH_DIRECTORY_INFO, ptr %info, i32 0, i32 14
  %56 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %FileName.i52, ptr %de, align 8
  %FileNameLength.i53 = getelementptr inbounds %struct.FILE_BOTH_DIRECTORY_INFO, ptr %info, i32 0, i32 9
  %57 = ptrtoint ptr %FileNameLength.i53 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %FileNameLength.i53, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #11
  %namelen.i54 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 1
  %60 = ptrtoint ptr %namelen.i54 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %namelen.i54, align 4
  %FileIndex.i55 = getelementptr inbounds %struct.FILE_BOTH_DIRECTORY_INFO, ptr %info, i32 0, i32 1
  %61 = ptrtoint ptr %FileIndex.i55 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %FileIndex.i55, align 1
  %resume_key.i56 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 2
  %63 = ptrtoint ptr %resume_key.i56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %resume_key.i56, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %FileName.i57 = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 11
  %64 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %FileName.i57, ptr %de, align 8
  %FileNameLength.i58 = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 10
  %65 = ptrtoint ptr %FileNameLength.i58 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %FileNameLength.i58, align 1
  %conv.i = zext i8 %66 to i32
  %namelen.i59 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 1
  %67 = ptrtoint ptr %namelen.i59 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i, ptr %namelen.i59, align 4
  %68 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %info, align 1
  %resume_key.i60 = getelementptr inbounds %struct.cifs_dirent, ptr %de, i32 0, i32 2
  %70 = ptrtoint ptr %resume_key.i60 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %resume_key.i60, align 8
  br label %return

do.body7:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %71 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body7.return_crit_edge, label %do.body9

do.body7.return_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body9:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_fill_dirent.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_fill_dirent, %land.lhs.true)) #11
          to label %return [label %land.lhs.true], !srcloc !196

land.lhs.true:                                    ; preds = %do.body9
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_fill_dirent._rs, ptr noundef nonnull @.str.78) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.return_crit_edge, label %if.then16

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_fill_dirent.descriptor, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.3, i32 noundef %conv) #11
  br label %return

return:                                           ; preds = %if.then16, %land.lhs.true.return_crit_edge, %do.body9, %do.body7.return_crit_edge, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %cifs_fill_dirent_unix.exit, %cifs_fill_dirent_posix.exit
  %retval.0 = phi i32 [ -22, %do.body7.return_crit_edge ], [ -22, %if.then16 ], [ -22, %land.lhs.true.return_crit_edge ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %cifs_fill_dirent_unix.exit ], [ 0, %cifs_fill_dirent_posix.exit ], [ -22, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_remap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_from_utf16(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_posix_to_fattr(ptr noundef %fattr, ptr noundef %info, ptr noundef %cifs_sb) unnamed_addr #0 align 64 {
entry:
  %parsed = alloca %struct.smb2_posix_info_parsed, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp1 = alloca %struct.timespec64, align 8
  %tmp2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %parsed) #11
  %0 = call ptr @memset(ptr %parsed, i32 255, i32 152)
  %call = call i32 @posix_info_parse(ptr noundef %info, ptr noundef null, ptr noundef nonnull %parsed) #11
  %1 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %Inode = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 9
  %2 = ptrtoint ptr %Inode to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %Inode, align 1
  %4 = call i64 @llvm.bswap.i64(i64 %3)
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %5 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %cf_uniqueid, align 8
  %AllocationSize = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 7
  %6 = ptrtoint ptr %AllocationSize to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %AllocationSize, align 1
  %8 = call i64 @llvm.bswap.i64(i64 %7)
  %cf_bytes = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 4
  %9 = ptrtoint ptr %cf_bytes to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %cf_bytes, align 8
  %EndOfFile = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 6
  %10 = ptrtoint ptr %EndOfFile to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %EndOfFile, align 1
  %12 = call i64 @llvm.bswap.i64(i64 %11)
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %13 = ptrtoint ptr %cf_eof to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %cf_eof, align 8
  %cf_atime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  %LastAccessTime = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %LastAccessTime to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %LastAccessTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %15) #11
  %16 = call ptr @memcpy(ptr %cf_atime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  %cf_mtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1) #11
  %LastWriteTime = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 4
  %17 = ptrtoint ptr %LastWriteTime to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %LastWriteTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp1, i64 noundef %18) #11
  %19 = call ptr @memcpy(ptr %cf_mtime, ptr %tmp1, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1) #11
  %cf_ctime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2) #11
  %CreationTime = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %CreationTime to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %CreationTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp2, i64 noundef %21) #11
  %22 = call ptr @memcpy(ptr %cf_ctime, ptr %tmp2, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2) #11
  %HardLinks = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 12
  %23 = ptrtoint ptr %HardLinks to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %HardLinks, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %cf_nlink = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %26 = ptrtoint ptr %cf_nlink to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cf_nlink, align 8
  %DosAttributes = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 8
  %27 = ptrtoint ptr %DosAttributes to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %DosAttributes, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %cf_cifsattrs = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %30 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cf_cifsattrs, align 4
  %Mode = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 14
  %31 = ptrtoint ptr %Mode to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %Mode, align 1
  %33 = and i32 %32, -15728641
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %conv = trunc i32 %34 to i16
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %35 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %cf_mode, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %36 = load i32, ptr @cifsFYI, align 4
  %and4 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.body5

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_posix_to_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_posix_to_fattr, %land.lhs.true)) #11
          to label %do.end19 [label %land.lhs.true], !srcloc !196

land.lhs.true:                                    ; preds = %do.body5
  %call11 = call i32 @___ratelimit(ptr noundef nonnull @cifs_posix_to_fattr._rs, ptr noundef nonnull @.str.83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end19_crit_edge, label %if.then13

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %DeviceId = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 10
  %37 = ptrtoint ptr %DeviceId to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %DeviceId, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %ReparseTag = getelementptr inbounds %struct.smb2_posix_info, ptr %info, i32 0, i32 13
  %40 = ptrtoint ptr %ReparseTag to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %ReparseTag, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %Mode to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %Mode, align 1
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_posix_to_fattr.descriptor, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.3, i32 noundef %39, i32 noundef %42, i32 noundef %45) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %land.lhs.true.do.end19_crit_edge, %do.body5, %entry.do.end19_crit_edge
  %46 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cf_cifsattrs, align 4
  %and21 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %48 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cf_mode, align 8
  %. = select i1 %tobool22.not, i16 -32768, i16 16384
  %.75 = select i1 %tobool22.not, i32 8, i32 4
  %50 = or i16 %49, %.
  store i16 %50, ptr %cf_mode, align 8
  %51 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.75, ptr %51, align 4
  %and.i = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end19.if.end37_crit_edge, label %if.end.i

do.end19.if.end37_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end.i:                                         ; preds = %do.end19
  %cf_cifstag.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 15
  %53 = ptrtoint ptr %cf_cifstag.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cf_cifstag.i, align 8
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %54, label %if.end.i.if.end37_crit_edge [
    i32 -2147483638, label %if.end.i.if.then35_crit_edge
    i32 -2147483630, label %if.end.i.if.then35_crit_edge76
    i32 -1610612724, label %if.end.i.if.then35_crit_edge77
    i32 -2147483628, label %if.end.i.if.then35_crit_edge78
    i32 0, label %if.end.i.if.then35_crit_edge79
  ]

if.end.i.if.then35_crit_edge79:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.end.i.if.then35_crit_edge78:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.end.i.if.then35_crit_edge77:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.end.i.if.then35_crit_edge76:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.end.i.if.then35_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then35:                                        ; preds = %if.end.i.if.then35_crit_edge, %if.end.i.if.then35_crit_edge76, %if.end.i.if.then35_crit_edge77, %if.end.i.if.then35_crit_edge78, %if.end.i.if.then35_crit_edge79
  %56 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fattr, align 8
  %or36 = or i32 %57, 4
  store i32 %or36, ptr %fattr, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end.i.if.end37_crit_edge, %do.end19.if.end37_crit_edge
  %owner = getelementptr inbounds %struct.smb2_posix_info_parsed, ptr %parsed, i32 0, i32 2
  %call38 = call i32 @sid_to_id(ptr noundef %cifs_sb, ptr noundef %owner, ptr noundef %fattr, i32 noundef 1) #11
  %group = getelementptr inbounds %struct.smb2_posix_info_parsed, ptr %parsed, i32 0, i32 3
  %call39 = call i32 @sid_to_id(ptr noundef %cifs_sb, ptr noundef %group, ptr noundef %fattr, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %parsed) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_unix_basic_to_fattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_std_info_to_fattr(ptr noundef %fattr, ptr nocapture noundef readonly %info, ptr noundef %cifs_sb) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp1 = alloca %struct.timespec64, align 8
  %tmp2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cifs_sb_master_tcon(ptr noundef %cifs_sb) #11
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server, align 8
  %timeAdj = getelementptr inbounds %struct.TCP_Server_Info, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %timeAdj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeAdj, align 4
  %6 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %cf_atime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  %LastAccessDate = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %LastAccessDate to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %LastAccessDate, align 1
  %LastAccessTime = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %LastAccessTime to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %LastAccessTime, align 1
  call void @cnvrtDosUnixTm(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i16 noundef zeroext %8, i16 noundef zeroext %10, i32 noundef %5) #11
  %11 = call ptr @memcpy(ptr %cf_atime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  %cf_ctime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1) #11
  %LastWriteDate = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 5
  %12 = ptrtoint ptr %LastWriteDate to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %LastWriteDate, align 1
  %LastWriteTime = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 6
  %14 = ptrtoint ptr %LastWriteTime to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %LastWriteTime, align 1
  call void @cnvrtDosUnixTm(ptr nonnull sret(%struct.timespec64) align 8 %tmp1, i16 noundef zeroext %13, i16 noundef zeroext %15, i32 noundef %5) #11
  %16 = call ptr @memcpy(ptr %cf_ctime, ptr %tmp1, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1) #11
  %cf_mtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2) #11
  %17 = ptrtoint ptr %LastWriteDate to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %LastWriteDate, align 1
  %19 = ptrtoint ptr %LastWriteTime to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %LastWriteTime, align 1
  call void @cnvrtDosUnixTm(ptr nonnull sret(%struct.timespec64) align 8 %tmp2, i16 noundef zeroext %18, i16 noundef zeroext %20, i32 noundef %5) #11
  %21 = call ptr @memcpy(ptr %cf_mtime, ptr %tmp2, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2) #11
  %Attributes = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 9
  %22 = ptrtoint ptr %Attributes to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %Attributes, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv = zext i16 %24 to i32
  %cf_cifsattrs = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %25 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %cf_cifsattrs, align 4
  %AllocationSize = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 8
  %26 = ptrtoint ptr %AllocationSize to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %AllocationSize, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %conv5 = zext i32 %28 to i64
  %cf_bytes = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 4
  %29 = ptrtoint ptr %cf_bytes to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv5, ptr %cf_bytes, align 8
  %DataSize = getelementptr inbounds %struct.FIND_FILE_STANDARD_INFO, ptr %info, i32 0, i32 7
  %30 = ptrtoint ptr %DataSize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %DataSize, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %conv6 = zext i32 %32 to i64
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %33 = ptrtoint ptr %cf_eof to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv6, ptr %cf_eof, align 8
  call fastcc void @cifs_fill_common_info(ptr noundef %fattr, ptr noundef %cifs_sb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_fulldir_info_to_fattr(ptr noundef %fattr, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cifs_sb) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp1.i = alloca %struct.timespec64, align 8
  %tmp2.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %ExtFileAttributes.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 8
  %1 = ptrtoint ptr %ExtFileAttributes.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %ExtFileAttributes.i, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %cf_cifsattrs.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %4 = ptrtoint ptr %cf_cifsattrs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cf_cifsattrs.i, align 4
  %EndOfFile.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %EndOfFile.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %EndOfFile.i, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #11
  %cf_eof.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %8 = ptrtoint ptr %cf_eof.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cf_eof.i, align 8
  %AllocationSize.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 7
  %9 = ptrtoint ptr %AllocationSize.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %AllocationSize.i, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #11
  %cf_bytes.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 4
  %12 = ptrtoint ptr %cf_bytes.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %cf_bytes.i, align 8
  %CreationTime.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %CreationTime.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %CreationTime.i, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #11
  %cf_createtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 5
  %16 = ptrtoint ptr %cf_createtime.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %cf_createtime.i, align 8
  %cf_atime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #11
  %LastAccessTime.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %LastAccessTime.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %LastAccessTime.i, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %18) #11
  %19 = call ptr @memcpy(ptr %cf_atime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #11
  %cf_ctime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1.i) #11
  %ChangeTime.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 5
  %20 = ptrtoint ptr %ChangeTime.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %ChangeTime.i, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp1.i, i64 noundef %21) #11
  %22 = call ptr @memcpy(ptr %cf_ctime.i, ptr %tmp1.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1.i) #11
  %cf_mtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2.i) #11
  %LastWriteTime.i = getelementptr inbounds %struct.FILE_DIRECTORY_INFO, ptr %info, i32 0, i32 4
  %23 = ptrtoint ptr %LastWriteTime.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %LastWriteTime.i, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp2.i, i64 noundef %24) #11
  %25 = call ptr @memcpy(ptr %cf_mtime.i, ptr %tmp2.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2.i) #11
  %26 = ptrtoint ptr %cf_cifsattrs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cf_cifsattrs.i, align 4
  %and = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %EaSize = getelementptr inbounds %struct.SEARCH_ID_FULL_DIR_INFO, ptr %info, i32 0, i32 10
  %28 = ptrtoint ptr %EaSize to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %EaSize, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %cf_cifstag = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 15
  %31 = ptrtoint ptr %cf_cifstag to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cf_cifstag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call fastcc void @cifs_fill_common_info(ptr noundef %fattr, ptr noundef %cifs_sb)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_autodisable_serverino(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @couldbe_mf_symlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_prime_dcache(ptr noundef %parent, ptr noundef %name, ptr noundef %fattr) unnamed_addr #0 align 64 {
entry:
  %wq = alloca %struct.wait_queue_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wq) #11
  %4 = call ptr @memset(ptr %wq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wq, ptr noundef nonnull @.str.85, ptr noundef nonnull @cifs_prime_dcache.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end18_crit_edge, label %do.body3

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_prime_dcache.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_prime_dcache, %land.lhs.true)) #11
          to label %do.end18 [label %land.lhs.true], !srcloc !196

land.lhs.true:                                    ; preds = %do.body3
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @cifs_prime_dcache._rs, ptr noundef nonnull @.str.86) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end18_crit_edge, label %if.then10

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %name11 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %6 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name11, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_prime_dcache.descriptor, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.86, ptr noundef %7) #11
  br label %do.end18

do.end18:                                         ; preds = %if.then10, %land.lhs.true.do.end18_crit_edge, %do.body3, %entry.do.end18_crit_edge
  %call19 = call ptr @d_hash_and_lookup(ptr noundef %parent, ptr noundef %name) #11
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %do.end18.if.end27_crit_edge

do.end18.if.end27_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then21:                                        ; preds = %do.end18
  %8 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fattr, align 8
  %and22 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then21.retry_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.retry_crit_edge:                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry

retry:                                            ; preds = %if.end53, %if.then21.retry_crit_edge
  %call26 = call ptr @d_alloc_parallel(ptr noundef %parent, ptr noundef %name, ptr noundef nonnull %wq) #11
  br label %if.end27

if.end27:                                         ; preds = %retry, %do.end18.if.end27_crit_edge
  %dentry.0 = phi ptr [ %call19, %do.end18.if.end27_crit_edge ], [ %call26, %retry ]
  %cmp.i = icmp ugt ptr %dentry.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end27.cleanup_crit_edge, label %if.end30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %10 = ptrtoint ptr %dentry.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dentry.0, align 8
  %and.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not = icmp eq i32 %and.i, 0
  br i1 %tobool32.not, label %if.then33, label %if.else54

if.then33:                                        ; preds = %if.end30
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry.0, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %tobool35.not = icmp eq ptr %13, null
  br i1 %tobool35.not, label %if.then33.if.end53_crit_edge, label %if.then36

if.then33.if.end53_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then36:                                        ; preds = %if.then33
  %and.i99 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.i.not = icmp eq i32 %and.i99, 0
  br i1 %tobool.i.not, label %if.end39, label %if.then36.cleanup.sink.split_crit_edge

if.then36.cleanup.sink.split_crit_edge:           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end39:                                         ; preds = %if.then36
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mnt_cifs_flags, align 4
  %and40 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end39.if.end44_crit_edge

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %uniqueid = getelementptr i8, ptr %13, i32 -40
  %16 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %uniqueid, align 8
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %18 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %cf_uniqueid, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  %uniqueid46 = getelementptr i8, ptr %13, i32 -40
  %19 = ptrtoint ptr %uniqueid46 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %uniqueid46, align 8
  %cf_uniqueid47 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %21 = ptrtoint ptr %cf_uniqueid47 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cf_uniqueid47, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp = icmp eq i64 %20, %22
  br i1 %cmp, label %land.lhs.true48, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true48:                                  ; preds = %if.end44
  %call49 = call i32 @cifs_fattr_to_inode(ptr noundef nonnull %13, ptr noundef %fattr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %land.lhs.true48.cleanup.sink.split_crit_edge, label %land.lhs.true48.if.end53_crit_edge

land.lhs.true48.if.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true48.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end53:                                         ; preds = %land.lhs.true48.if.end53_crit_edge, %if.end44.if.end53_crit_edge, %if.then33.if.end53_crit_edge
  call void @d_invalidate(ptr noundef %dentry.0) #11
  call void @dput(ptr noundef %dentry.0) #11
  br label %retry

if.else54:                                        ; preds = %if.end30
  %call55 = call ptr @cifs_iget(ptr noundef %1, ptr noundef %fattr) #11
  %tobool56.not = icmp eq ptr %call55, null
  %spec.select = select i1 %tobool56.not, ptr inttoptr (i32 -12 to ptr), ptr %call55
  %call60 = call ptr @d_splice_alias(ptr noundef nonnull %spec.select, ptr noundef %dentry.0) #11
  %23 = ptrtoint ptr %dentry.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dentry.0, align 8
  %and.i.i = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.else54.d_lookup_done.exit_crit_edge, label %if.then.i, !prof !197

if.else54.d_lookup_done.exit_crit_edge:           ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #13
  br label %d_lookup_done.exit

if.then.i:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry.0, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #11
  call void @__d_lookup_done(ptr noundef %dentry.0) #11
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #11
  br label %d_lookup_done.exit

d_lookup_done.exit:                               ; preds = %if.then.i, %if.else54.d_lookup_done.exit_crit_edge
  %tobool61.not = icmp eq ptr %call60, null
  %cmp.i101 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool61.not, %cmp.i101
  br i1 %or.cond, label %d_lookup_done.exit.cleanup.sink.split_crit_edge, label %if.then64

d_lookup_done.exit.cleanup.sink.split_crit_edge:  ; preds = %d_lookup_done.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then64:                                        ; preds = %d_lookup_done.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @dput(ptr noundef nonnull %call60) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then64, %d_lookup_done.exit.cleanup.sink.split_crit_edge, %land.lhs.true48.cleanup.sink.split_crit_edge, %if.then36.cleanup.sink.split_crit_edge
  call void @dput(ptr noundef %dentry.0) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_info_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sid_to_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnvrtDosUnixTm(ptr sret(%struct.timespec64) align 8, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_hash_and_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_fattr_to_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_iget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_err(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_done(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !184}
!llvm.named.register.sp = !{!185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/readdir.c", i32 954, i32 8}
!2 = !{ptr @cifs_readdir._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cifs_readdir.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!9 = !{ptr @cifs_readdir._rs.5, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../fs/cifs/readdir.c", i32 968, i32 3}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cifs_readdir.descriptor.6, !10, !"descriptor", i1 false, i1 false}
!13 = !{ptr @cifs_readdir._rs.8, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/readdir.c", i32 984, i32 4}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cifs_readdir.descriptor.9, !14, !"descriptor", i1 false, i1 false}
!17 = !{ptr @cifs_readdir._rs.11, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../fs/cifs/readdir.c", i32 997, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cifs_readdir.descriptor.12, !18, !"descriptor", i1 false, i1 false}
!21 = !{ptr @cifs_readdir._rs.14, !22, !"_rs", i1 false, i1 false}
!22 = !{!"../fs/cifs/readdir.c", i32 1000, i32 3}
!23 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cifs_readdir.descriptor.15, !22, !"descriptor", i1 false, i1 false}
!25 = !{ptr @cifs_readdir._rs.17, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../fs/cifs/readdir.c", i32 1002, i32 3}
!27 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cifs_readdir.descriptor.18, !26, !"descriptor", i1 false, i1 false}
!29 = !{ptr @cifs_readdir._rs.20, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../fs/cifs/readdir.c", i32 1005, i32 2}
!31 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cifs_readdir.descriptor.21, !30, !"descriptor", i1 false, i1 false}
!33 = !{ptr @cifs_readdir._rs.23, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../fs/cifs/readdir.c", i32 1021, i32 4}
!35 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cifs_readdir._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @cifs_readdir._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @cifs_readdir._rs.25, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../fs/cifs/readdir.c", i32 1041, i32 4}
!40 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cifs_readdir.descriptor.26, !39, !"descriptor", i1 false, i1 false}
!42 = !{ptr @cifs_readdir._rs.28, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../fs/cifs/readdir.c", i32 1054, i32 2}
!44 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cifs_readdir.descriptor.29, !43, !"descriptor", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!48 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!50 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!53 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @_initiate_cifs_search.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../fs/cifs/readdir.c", i32 392, i32 3}
!56 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @_initiate_cifs_search._rs, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../fs/cifs/readdir.c", i32 411, i32 2}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @_initiate_cifs_search.descriptor, !58, !"descriptor", i1 false, i1 false}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/cifs/readdir.c", i32 744, i32 30}
!68 = !{ptr @find_cifs_entry._rs, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../fs/cifs/readdir.c", i32 748, i32 3}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @find_cifs_entry.descriptor, !69, !"descriptor", i1 false, i1 false}
!73 = !{ptr @find_cifs_entry._rs.42, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../fs/cifs/readdir.c", i32 758, i32 4}
!75 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @find_cifs_entry.descriptor.43, !74, !"descriptor", i1 false, i1 false}
!77 = !{ptr @find_cifs_entry._rs.45, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../fs/cifs/readdir.c", i32 769, i32 4}
!79 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @find_cifs_entry.descriptor.46, !78, !"descriptor", i1 false, i1 false}
!81 = !{ptr @find_cifs_entry._rs.48, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../fs/cifs/readdir.c", i32 784, i32 3}
!83 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @find_cifs_entry.descriptor.49, !82, !"descriptor", i1 false, i1 false}
!85 = !{ptr @find_cifs_entry._rs.51, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../fs/cifs/readdir.c", i32 802, i32 4}
!87 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @find_cifs_entry._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @find_cifs_entry._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @find_cifs_entry._rs.53, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../fs/cifs/readdir.c", i32 815, i32 3}
!92 = !{ptr @.str.55, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @find_cifs_entry.descriptor.54, !91, !"descriptor", i1 false, i1 false}
!94 = !{ptr @find_cifs_entry._rs.56, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../fs/cifs/readdir.c", i32 824, i32 4}
!96 = !{ptr @.str.58, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @find_cifs_entry._entry.57, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @find_cifs_entry._entry_ptr.59, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @find_cifs_entry._rs.60, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../fs/cifs/readdir.c", i32 830, i32 3}
!101 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @find_cifs_entry.descriptor.61, !100, !"descriptor", i1 false, i1 false}
!103 = !{ptr @find_cifs_entry._rs.63, !104, !"_rs", i1 false, i1 false}
!104 = !{!"../fs/cifs/readdir.c", i32 835, i32 3}
!105 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @find_cifs_entry.descriptor.64, !104, !"descriptor", i1 false, i1 false}
!107 = !{ptr @dump_cifs_file_struct._rs, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../fs/cifs/readdir.c", i32 40, i32 4}
!109 = !{ptr @.str.66, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.67, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @dump_cifs_file_struct.descriptor, !108, !"descriptor", i1 false, i1 false}
!112 = !{ptr @dump_cifs_file_struct._rs.68, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../fs/cifs/readdir.c", i32 44, i32 4}
!114 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dump_cifs_file_struct.descriptor.69, !113, !"descriptor", i1 false, i1 false}
!116 = !{ptr @dump_cifs_file_struct._rs.71, !117, !"_rs", i1 false, i1 false}
!117 = !{!"../fs/cifs/readdir.c", i32 46, i32 4}
!118 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @dump_cifs_file_struct.descriptor.72, !117, !"descriptor", i1 false, i1 false}
!120 = !{ptr @dump_cifs_file_struct._rs.74, !121, !"_rs", i1 false, i1 false}
!121 = !{!"../fs/cifs/readdir.c", i32 48, i32 4}
!122 = !{ptr @.str.76, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @dump_cifs_file_struct.descriptor.75, !121, !"descriptor", i1 false, i1 false}
!124 = !{ptr @cifs_filldir._rs, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../fs/cifs/readdir.c", i32 862, i32 3}
!126 = !{ptr @__func__.cifs_filldir, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @cifs_filldir._entry, !125, !"_entry", i1 false, i1 false}
!129 = !{ptr @cifs_filldir._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @cifs_fill_dirent._rs, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../fs/cifs/readdir.c", i32 632, i32 3}
!132 = !{ptr @.str.78, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.79, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @cifs_fill_dirent.descriptor, !131, !"descriptor", i1 false, i1 false}
!135 = !{ptr @cifs_fill_dirent_posix._rs, !136, !"_rs", i1 false, i1 false}
!136 = !{!"../fs/cifs/readdir.c", i32 540, i32 3}
!137 = !{ptr @__func__.cifs_fill_dirent_posix, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.80, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @cifs_fill_dirent_posix._entry, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @cifs_fill_dirent_posix._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @cifs_unicode_bytelen._rs, !142, !"_rs", i1 false, i1 false}
!142 = !{!"../fs/cifs/readdir.c", i32 484, i32 2}
!143 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @cifs_unicode_bytelen.descriptor, !142, !"descriptor", i1 false, i1 false}
!146 = !{ptr @cifs_posix_to_fattr._rs, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../fs/cifs/readdir.c", i32 258, i32 2}
!148 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @cifs_posix_to_fattr.descriptor, !147, !"descriptor", i1 false, i1 false}
!151 = !{ptr @cifs_prime_dcache.__key, !152, !"__key", i1 false, i1 false}
!152 = !{!"../fs/cifs/readdir.c", i32 72, i32 2}
!153 = !{ptr @.str.85, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @cifs_prime_dcache._rs, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../fs/cifs/readdir.c", i32 74, i32 2}
!156 = !{ptr @.str.86, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @cifs_prime_dcache.descriptor, !155, !"descriptor", i1 false, i1 false}
!159 = !{ptr @nxt_dir_entry._rs, !160, !"_rs", i1 false, i1 false}
!160 = !{!"../fs/cifs/readdir.c", i32 503, i32 4}
!161 = !{ptr @__func__.nxt_dir_entry, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @nxt_dir_entry._entry, !160, !"_entry", i1 false, i1 false}
!164 = !{ptr @nxt_dir_entry._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @nxt_dir_entry._rs.89, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../fs/cifs/readdir.c", i32 508, i32 2}
!167 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @nxt_dir_entry.descriptor, !166, !"descriptor", i1 false, i1 false}
!169 = !{ptr @nxt_dir_entry._rs.91, !170, !"_rs", i1 false, i1 false}
!170 = !{!"../fs/cifs/readdir.c", i32 511, i32 3}
!171 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @nxt_dir_entry._entry.92, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @nxt_dir_entry._entry_ptr.94, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @nxt_dir_entry._rs.95, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../fs/cifs/readdir.c", i32 518, i32 3}
!176 = !{ptr @.str.97, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @nxt_dir_entry._entry.96, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @nxt_dir_entry._entry_ptr.98, !175, !"_entry_ptr", i1 false, i1 false}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!181 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!182 = distinct !{null, !183, !"__already_done", i1 false, i1 false}
!183 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!184 = distinct !{null, !183, !"__warned", i1 false, i1 false}
!185 = !{!"sp"}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{!"auto-init"}
!196 = !{i64 2148505236, i64 2148505241, i64 2148505254, i64 2148505298, i64 2148505332, i64 2148505353}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2158661580}
!199 = !{i64 2158661791}
!200 = !{i64 2149501643}
!201 = !{i64 2149502679}
!202 = !{i64 2158612638}
!203 = !{i64 2158612863}
!204 = !{i64 2158682033}
!205 = !{i64 2158682252}
!206 = !{i64 2148680638, i64 2148680664, i64 2148680693, i64 2148680727, i64 2148680758, i64 2148680781}
!207 = !{i8 0, i8 2}
