; ModuleID = '/llk/IR_all_yes/fs/cifs/inode.c_pt.bc'
source_filename = "../fs/cifs/inode.c"
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
%struct.uid_gid_map = type { i32, %union.anon.36 }
%union.anon.36 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.121 }
%union.anon.121 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.128 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.129 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.131 = type { ptr }
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
%struct.cifs_fattr = type { i32, i32, i64, i64, i64, i64, %struct.kuid_t, %struct.kgid_t, i16, i32, i32, i32, %struct.timespec64, %struct.timespec64, %struct.timespec64, i32 }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.155, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.155 = type { %struct.anon.157 }
%struct.anon.157 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
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
%struct.__kernel_sockaddr_storage = type { %union.anon.151 }
%union.anon.151 = type { ptr, [124 x i8] }
%struct.cifs_fscache_inode_coherency_data = type { i64, i64, i32, i32 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.149, %union.anon.150 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.149 = type { ptr, [12 x i8] }
%union.anon.150 = type { ptr, [4 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.FILE_UNIX_BASIC_INFO = type <{ i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64 }>
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.126, %struct.list_head, %struct.list_head, %union.anon.127 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.126 = type { %struct.list_head }
%union.anon.127 = type { %struct.hlist_node }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FILE_ALL_INFO = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i64, i32, i32, i32, [1 x i8] }>
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.SEARCH_ID_FULL_DIR_INFO = type <{ i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, [1 x i8] }>
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_open_parms = type { ptr, ptr, i32, i32, i32, ptr, ptr, i16, i8 }
%struct.cifs_io_parms = type { i16, i64, i64, i32, i64, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.113, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.113 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.smb311_posix_qinfo = type <{ i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, [0 x i8] }>
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.FILE_BASIC_INFO = type { i64, i64, i64, i64, i32, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.cifs_unix_set_info_args = type { i64, i64, i64, i64, %struct.kuid_t, %struct.kgid_t, i32 }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.page = type { i32, %union.anon.8, %union.anon.119, %struct.atomic_t, i32 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.119 = type { %struct.atomic_t }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_unix_basic_to_fattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cifs_unix_basic_to_fattr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cifs_unix_basic_to_fattr\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/inode.c\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: unknown type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cifs_get_inode_info_unix._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info_unix.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cifs_get_inode_info_unix\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIFS: %s: Getting info on %s\0A\00", [34 x i8] zeroinitializer }, align 32
@cifs_get_inode_info_unix._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info_unix.descriptor.8 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.9, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: check_mf_symlink: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_get_inode_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cifs_get_inode_info\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: No need to revalidate cached inode sizes\0A\00", [44 x i8] zeroinitializer }, align 32
@cifs_get_inode_info._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info.descriptor.13 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.14, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CIFS: %s: reparse tag 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@cifs_get_inode_info._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info.descriptor.16 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.17, i8 1, i8 0, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIFS: %s: %s: unhandled err rc %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cifs_get_inode_info._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info.descriptor.19 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.20, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: cifs_sfu_type failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info.descriptor.22 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.23, i8 1, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CIFS: %s: %s: Get mode from SID failed. rc=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@cifs_get_inode_info._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info.descriptor.25 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.26, i8 1, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: %s: Getting ACL failed with error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cifs_get_inode_info._rs.27 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_inode_info.descriptor.28 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.9, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smb311_posix_get_inode_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb311_posix_get_inode_info.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.11, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smb311_posix_get_inode_info\00", [36 x i8] zeroinitializer }, align 32
@smb311_posix_get_inode_info._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb311_posix_get_inode_info.descriptor.31 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.17, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@smb311_posix_get_inode_info._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb311_posix_get_inode_info.descriptor.33 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.9, i8 1, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_iget._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_iget.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cifs_iget\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: %s: looking for uniqueid=%llu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cifs_root_iget._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_root_iget.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_root_iget\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_root_iget._rs.39 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_root_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: server does not support POSIX extensions\0A\00", [41 x i8] zeroinitializer }, align 32
@cifs_root_iget._entry_ptr = internal global ptr @cifs_root_iget._entry, section ".printk_index", align 4
@cifs_root_iget._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_root_iget.descriptor.42 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.43, i8 1, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: ipc connection - fake read inode\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_ipc_inode_ops = internal constant %struct.inode_operations { ptr @cifs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@cifs_root_iget._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_root_iget.descriptor.45 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.46, i8 1, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_set_file_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_set_file_info.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cifs_set_file_info\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: CIFS - CTIME changed\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_unlink._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_unlink.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 1, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cifs_unlink\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: cifs_unlink, dir=0x%p, dentry=0x%p\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_unlink._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_unlink.descriptor.52 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.38, i8 1, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_unlink._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_unlink.descriptor.54 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.55, i8 1, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: posix del rc %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cifs_unlink._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_unlink.descriptor.57 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.46, i8 1, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_mkdir._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_mkdir.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 1, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cifs_mkdir\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: In cifs_mkdir, mode = %04ho inode = 0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@cifs_mkdir._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_mkdir.descriptor.61 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.38, i8 1, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_mkdir._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_mkdir.descriptor.63 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.64, i8 1, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: cifs_mkdir returned 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_mkdir._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_mkdir.descriptor.66 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.46, i8 1, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_rmdir._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_rmdir.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 1, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cifs_rmdir\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CIFS: %s: cifs_rmdir, inode = 0x%p\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_rmdir._rs.69 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_rmdir.descriptor.70 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.38, i8 1, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_rmdir._rs.71 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_rmdir.descriptor.72 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.46, i8 1, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_rename2._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_rename2.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.3, ptr @.str.38, i8 2, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cifs_rename2\00", [19 x i8] zeroinitializer }, align 32
@cifs_rename2._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_rename2.descriptor.75 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.3, ptr @.str.46, i8 2, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_invalidate_mapping._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_invalidate_mapping = private unnamed_addr constant [24 x i8] c"cifs_invalidate_mapping\00", align 1
@cifs_invalidate_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.cifs_invalidate_mapping, ptr @.str.3, i32 2274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s: Could not invalidate inode %p\0A\00", [48 x i8] zeroinitializer }, align 32
@cifs_invalidate_mapping._entry_ptr = internal global ptr @cifs_invalidate_mapping._entry, section ".printk_index", align 4
@cifs_revalidate_dentry_attr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_revalidate_dentry_attr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.77, ptr @.str.3, ptr @.str.38, i8 2, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cifs_revalidate_dentry_attr\00", [36 x i8] zeroinitializer }, align 32
@cifs_revalidate_dentry_attr._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_revalidate_dentry_attr.descriptor.79 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.77, ptr @.str.3, ptr @.str.80, i8 2, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"CIFS: %s: Update attributes: %s inode 0x%p count %d dentry: 0x%p d_time %ld jiffies %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@cifs_revalidate_dentry_attr._rs.81 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_revalidate_dentry_attr.descriptor.82 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.77, ptr @.str.3, ptr @.str.46, i8 2, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_revalidate_cache._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_revalidate_cache\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: %s: revalidating inode %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache.descriptor.87 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.3, ptr @.str.88, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CIFS: %s: %s: inode %llu is new\0A\00", [63 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache._rs.89 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache.descriptor.90 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.3, ptr @.str.91, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: %s: inode %llu is oplocked\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache.descriptor.93 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.3, ptr @.str.94, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: %s: inode %llu is unchanged\0A\00", [57 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache._rs.95 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_revalidate_cache.descriptor.96 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.3, ptr @.str.97, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CIFS: %s: %s: invalidating inode %llu mapping\0A\00", [49 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@cifs_file_inode_ops = external dso_local constant %struct.inode_operations, align 128
@cifs_file_direct_nobrl_ops = external dso_local constant %struct.file_operations, align 4
@cifs_file_direct_ops = external dso_local constant %struct.file_operations, align 4
@cifs_file_strict_nobrl_ops = external dso_local constant %struct.file_operations, align 4
@cifs_file_strict_ops = external dso_local constant %struct.file_operations, align 4
@cifs_file_nobrl_ops = external dso_local constant %struct.file_operations, align 4
@cifs_file_ops = external dso_local constant %struct.file_operations, align 4
@cifs_addr_ops_smallbuf = external dso_local constant %struct.address_space_operations, align 4
@cifs_addr_ops = external dso_local constant %struct.address_space_operations, align 4
@cifs_dfs_referral_inode_operations = external dso_local constant %struct.inode_operations, align 128
@cifs_dir_inode_ops = external dso_local constant %struct.inode_operations, align 128
@cifs_dir_ops = external dso_local constant %struct.file_operations, align 4
@cifs_symlink_inode_ops = external dso_local constant %struct.inode_operations, align 128
@cifs_create_dfs_fattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_create_dfs_fattr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.3, ptr @.str.100, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_create_dfs_fattr\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: creating fake fattr for DFS referral\0A\00", [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cifs_all_info_to_fattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_all_info_to_fattr = private unnamed_addr constant [23 x i8] c"cifs_all_info_to_fattr\00", align 1
@cifs_all_info_to_fattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @__func__.cifs_all_info_to_fattr, ptr @.str.3, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CIFS: VFS: bogus file nlink value %u\0A\00", [56 x i8] zeroinitializer }, align 32
@cifs_all_info_to_fattr._entry_ptr = internal global ptr @cifs_all_info_to_fattr._entry, section ".printk_index", align 4
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@cifs_set_fattr_ino._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_set_fattr_ino.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.3, ptr @.str.104, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cifs_set_fattr_ino\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: Invalid (0) inodenum\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_sfu_type._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_sfu_type.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.3, ptr @.str.106, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cifs_sfu_type\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: check sfu type of %s, open rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IntxBLK\00", [24 x i8] zeroinitializer }, align 32
@cifs_sfu_type._rs.108 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_sfu_type.descriptor.109 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.3, ptr @.str.110, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CIFS: %s: Block device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IntxCHR\00", [24 x i8] zeroinitializer }, align 32
@cifs_sfu_type._rs.112 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_sfu_type.descriptor.113 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.3, ptr @.str.114, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIFS: %s: Char device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IntxLNK\00", [24 x i8] zeroinitializer }, align 32
@cifs_sfu_type._rs.116 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_sfu_type.descriptor.117 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.3, ptr @.str.118, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CIFS: %s: Symlink\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SETFILEBITS\00", [20 x i8] zeroinitializer }, align 32
@cifs_sfu_mode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_sfu_mode.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cifs_sfu_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CIFS: %s: special bits 0%o org mode 0%o\0A\00", [55 x i8] zeroinitializer }, align 32
@cifs_sfu_mode._rs.122 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_sfu_mode.descriptor.123 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.3, ptr @.str.124, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CIFS: %s: special mode bits 0%o\0A\00", [63 x i8] zeroinitializer }, align 32
@smb311_posix_info_to_fattr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smb311_posix_info_to_fattr.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.125, ptr @.str.3, ptr @.str.126, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smb311_posix_info_to_fattr\00", [37 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"CIFS: %s: POSIX query info: mode 0x%x uniqueid 0x%llx nlink %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.128 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@cifs_posix_mkdir._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_posix_mkdir.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.3, ptr @.str.131, i8 1, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cifs_posix_mkdir\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIFS: %s: posix mkdir returned 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@cifs_posix_mkdir._rs.132 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_posix_mkdir.descriptor.133 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.3, ptr @.str.134, i8 1, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CIFS: %s: instantiated dentry %p %pd to inode %p\0A\00", [46 x i8] zeroinitializer }, align 32
@cifs_posix_mkdir._rs.135 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_posix_mkdir.descriptor.136 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.130, ptr @.str.3, ptr @.str.137, i8 1, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CIFS: %s: unexpected number of links %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@lookupCacheEnabled = external dso_local local_unnamed_addr global i8, align 1
@cifs_get_file_info_unix._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_file_info_unix.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.143, ptr @.str.3, ptr @.str.38, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cifs_get_file_info_unix\00", [40 x i8] zeroinitializer }, align 32
@cifs_get_file_info_unix._rs.144 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_file_info_unix.descriptor.145 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.143, ptr @.str.3, ptr @.str.46, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_get_file_info._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_file_info.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.3, ptr @.str.38, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cifs_get_file_info\00", [45 x i8] zeroinitializer }, align 32
@cifs_get_file_info._rs.147 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_file_info.descriptor.148 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.3, ptr @.str.46, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@cifs_setattr_unix._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_setattr_unix.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.150, ptr @.str.3, ptr @.str.151, i8 2, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cifs_setattr_unix\00", [46 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: setattr_unix on file %pd attrs->ia_valid=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@cifs_setattr_unix._rs.152 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_setattr_unix.descriptor.153 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.150, ptr @.str.3, ptr @.str.38, i8 2, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_setattr_unix._rs.154 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_setattr_unix.descriptor.155 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.150, ptr @.str.3, ptr @.str.46, i8 2, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_set_file_size._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_set_file_size.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.156, ptr @.str.3, ptr @.str.157, i8 2, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cifs_set_file_size\00", [45 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: SetFSize for attrs rc = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_set_file_size._rs.158 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_set_file_size.descriptor.159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.156, ptr @.str.3, ptr @.str.160, i8 2, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: SetEOF by path (setattrs) rc = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.161, ptr @.str.3, ptr @.str.38, i8 2, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cifs_setattr_nounix\00", [44 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix._rs.162 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix.descriptor.163 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.161, ptr @.str.3, ptr @.str.164, i8 2, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: setattr on file %pd attrs->ia_valid 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix._rs.165 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix.descriptor.166 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.161, ptr @.str.3, ptr @.str.167, i8 2, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: %s: Setting id failed with error: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix._rs.168 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix.descriptor.169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.161, ptr @.str.3, ptr @.str.170, i8 2, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: %s: Setting ACL failed with error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix._rs.171 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_setattr_nounix.descriptor.172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.161, ptr @.str.3, ptr @.str.46, i8 2, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.173 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967230]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967230, i64 4294967283]
@__sancov_gen_cov_switch_values.176 = internal global [7 x i64] [i64 5, i64 32, i64 2147483683, i64 2147483684, i64 2147483685, i64 2147483686, i64 2684354589]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967230, i64 4294967283]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.180 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967280, i64 4294967283, i64 4294967294]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 4294967279, i64 4294967283]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967230]
@__sancov_gen_cov_switch_values.185 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967201, i64 4294967230, i64 4294967274]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.187 = internal global [7 x i64] [i64 5, i64 32, i64 4294966782, i64 4294966783, i64 4294966784, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.188 = internal global [6 x i64] [i64 4, i64 32, i64 4294966782, i64 4294966783, i64 4294966784, i64 4294967292]
@__sancov_gen_cov_switch_values.189 = internal global [6 x i64] [i64 4, i64 32, i64 4294966782, i64 4294966783, i64 4294966784, i64 4294967292]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967287]
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 291, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 382, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 408, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 948, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 983, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1027, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1047, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1057, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1067, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1082, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1138, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1173, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1187, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1286, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1339, i32 18 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1344, i32 8 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1350, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1367, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1383, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1426, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1602, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1613, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1635, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1702, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1866, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1877, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1911, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1926, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1943, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1945, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2005, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2104, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2203, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2273, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2369, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2378, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2394, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 89, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 93, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 100, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 109, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 114, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 271, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 330, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 722, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant [22 x i8] c"../fs/cifs/cifsglob.h\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 1950, i32 46 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 897, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 486, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 501, i32 14 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 502, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 513, i32 21 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 514, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 525, i32 21 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 526, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 573, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 581, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 584, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 644, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.552, i32 609, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 108, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1815, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1837, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 1841, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 232, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 57, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 354, i32 8 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 367, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 747, i32 8 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 782, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 717, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2671, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2674, i32 8 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2800, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2599, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2624, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2821, i32 8 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2823, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2893, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2914, i32 5 }
@___asan_gen_.659 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.660 = private constant [19 x i8] c"../fs/cifs/inode.c\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 2988, i32 2 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @cifs_all_info_to_fattr._entry, ptr @cifs_all_info_to_fattr._entry_ptr, ptr @cifs_invalidate_mapping._entry, ptr @cifs_invalidate_mapping._entry_ptr, ptr @cifs_root_iget._entry, ptr @cifs_root_iget._entry_ptr, ptr @cifs_unix_basic_to_fattr._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_get_inode_info_unix._rs, ptr @.str.5, ptr @.str.6, ptr @cifs_get_inode_info_unix._rs.7, ptr @.str.9, ptr @cifs_get_inode_info._rs, ptr @.str.10, ptr @.str.11, ptr @cifs_get_inode_info._rs.12, ptr @.str.14, ptr @cifs_get_inode_info._rs.15, ptr @.str.17, ptr @cifs_get_inode_info._rs.18, ptr @.str.20, ptr @cifs_get_inode_info._rs.21, ptr @.str.23, ptr @cifs_get_inode_info._rs.24, ptr @.str.26, ptr @cifs_get_inode_info._rs.27, ptr @smb311_posix_get_inode_info._rs, ptr @.str.29, ptr @smb311_posix_get_inode_info._rs.30, ptr @smb311_posix_get_inode_info._rs.32, ptr @cifs_iget._rs, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @cifs_root_iget._rs, ptr @.str.37, ptr @.str.38, ptr @cifs_root_iget._rs.39, ptr @.str.40, ptr @cifs_root_iget._rs.41, ptr @.str.43, ptr @cifs_root_iget._rs.44, ptr @.str.46, ptr @cifs_set_file_info._rs, ptr @.str.47, ptr @.str.48, ptr @cifs_unlink._rs, ptr @.str.49, ptr @.str.50, ptr @cifs_unlink._rs.51, ptr @cifs_unlink._rs.53, ptr @.str.55, ptr @cifs_unlink._rs.56, ptr @cifs_mkdir._rs, ptr @.str.58, ptr @.str.59, ptr @cifs_mkdir._rs.60, ptr @cifs_mkdir._rs.62, ptr @.str.64, ptr @cifs_mkdir._rs.65, ptr @cifs_rmdir._rs, ptr @.str.67, ptr @.str.68, ptr @cifs_rmdir._rs.69, ptr @cifs_rmdir._rs.71, ptr @cifs_rename2._rs, ptr @.str.73, ptr @cifs_rename2._rs.74, ptr @cifs_invalidate_mapping._rs, ptr @.str.76, ptr @cifs_revalidate_dentry_attr._rs, ptr @.str.77, ptr @cifs_revalidate_dentry_attr._rs.78, ptr @.str.80, ptr @cifs_revalidate_dentry_attr._rs.81, ptr @cifs_revalidate_cache._rs, ptr @.str.84, ptr @.str.85, ptr @cifs_revalidate_cache._rs.86, ptr @.str.88, ptr @cifs_revalidate_cache._rs.89, ptr @.str.91, ptr @cifs_revalidate_cache._rs.92, ptr @.str.94, ptr @cifs_revalidate_cache._rs.95, ptr @.str.97, ptr @.str.98, ptr @cifs_create_dfs_fattr._rs, ptr @.str.99, ptr @.str.100, ptr @cifs_all_info_to_fattr._rs, ptr @.str.101, ptr @.str.102, ptr @cifs_set_fattr_ino._rs, ptr @.str.103, ptr @.str.104, ptr @cifs_sfu_type._rs, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @cifs_sfu_type._rs.108, ptr @.str.110, ptr @.str.111, ptr @cifs_sfu_type._rs.112, ptr @.str.114, ptr @.str.115, ptr @cifs_sfu_type._rs.116, ptr @.str.118, ptr @.str.119, ptr @cifs_sfu_mode._rs, ptr @.str.120, ptr @.str.121, ptr @cifs_sfu_mode._rs.122, ptr @.str.124, ptr @smb311_posix_info_to_fattr._rs, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @cifs_posix_mkdir._rs, ptr @.str.130, ptr @.str.131, ptr @cifs_posix_mkdir._rs.132, ptr @.str.134, ptr @cifs_posix_mkdir._rs.135, ptr @.str.137, ptr @.str.141, ptr @.str.142, ptr @cifs_get_file_info_unix._rs, ptr @.str.143, ptr @cifs_get_file_info_unix._rs.144, ptr @cifs_get_file_info._rs, ptr @.str.146, ptr @cifs_get_file_info._rs.147, ptr @.str.149, ptr @cifs_setattr_unix._rs, ptr @.str.150, ptr @.str.151, ptr @cifs_setattr_unix._rs.152, ptr @cifs_setattr_unix._rs.154, ptr @cifs_set_file_size._rs, ptr @.str.156, ptr @.str.157, ptr @cifs_set_file_size._rs.158, ptr @.str.160, ptr @cifs_setattr_nounix._rs, ptr @.str.161, ptr @cifs_setattr_nounix._rs.162, ptr @.str.164, ptr @cifs_setattr_nounix._rs.165, ptr @.str.167, ptr @cifs_setattr_nounix._rs.168, ptr @.str.170, ptr @cifs_setattr_nounix._rs.171], section "llvm.metadata"
@0 = internal global [157 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_unix_basic_to_fattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info_unix._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info_unix._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_inode_info._rs.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_posix_get_inode_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_posix_get_inode_info._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_posix_get_inode_info._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_iget._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_root_iget._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_root_iget._rs.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_root_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_root_iget._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_root_iget._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_set_file_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_unlink._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_unlink._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_unlink._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_unlink._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mkdir._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mkdir._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mkdir._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mkdir._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_rmdir._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_rmdir._rs.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_rmdir._rs.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_rename2._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_rename2._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_invalidate_mapping._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_invalidate_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_revalidate_dentry_attr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_revalidate_dentry_attr._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_revalidate_dentry_attr._rs.81 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_revalidate_cache._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_revalidate_cache._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_revalidate_cache._rs.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_revalidate_cache._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_revalidate_cache._rs.95 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_create_dfs_fattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_all_info_to_fattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_all_info_to_fattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_set_fattr_ino._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sfu_type._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sfu_type._rs.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sfu_type._rs.112 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sfu_type._rs.116 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sfu_mode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sfu_mode._rs.122 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb311_posix_info_to_fattr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_posix_mkdir._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_posix_mkdir._rs.132 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_posix_mkdir._rs.135 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_file_info_unix._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_file_info_unix._rs.144 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_file_info._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_file_info._rs.147 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_setattr_unix._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_setattr_unix._rs.152 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_setattr_unix._rs.154 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_set_file_size._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_set_file_size._rs.158 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_setattr_nounix._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_setattr_nounix._rs.162 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_setattr_nounix._rs.165 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_setattr_nounix._rs.168 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_setattr_nounix._rs.171 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_fattr_to_inode(ptr noundef %inode, ptr noundef %fattr) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp7 = alloca %struct.timespec64, align 8
  %tmp9 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -280
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %6 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cf_mode, align 8
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %9, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %if.then, label %land.lhs.true.if.end_crit_edge, !prof !351

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %time = getelementptr i8, ptr %inode, i32 -56
  %10 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %time, align 8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @cifs_revalidate_cache(ptr noundef %inode, ptr noundef %fattr)
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %cf_mtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  %11 = ptrtoint ptr %cf_mtime to i32
  call void @__asan_load8_noabort(i32 %11)
  %.unpack = load i64, ptr %cf_mtime, align 8
  %12 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt117 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %.elt117 to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack118 = load i64, ptr %.elt117, align 8
  %14 = insertvalue [2 x i64] %12, i64 %.unpack118, 1
  call void @timestamp_truncate(ptr nonnull sret(%struct.timespec64) align 8 %tmp, [2 x i64] %14, ptr noundef %inode) #15
  %15 = call ptr @memcpy(ptr %cf_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %cf_atime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp7) #15
  %16 = ptrtoint ptr %cf_atime to i32
  call void @__asan_load8_noabort(i32 %16)
  %.unpack119 = load i64, ptr %cf_atime, align 8
  %17 = insertvalue [2 x i64] undef, i64 %.unpack119, 0
  %.elt120 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %.elt120 to i32
  call void @__asan_load8_noabort(i32 %18)
  %.unpack121 = load i64, ptr %.elt120, align 8
  %19 = insertvalue [2 x i64] %17, i64 %.unpack121, 1
  call void @timestamp_truncate(ptr nonnull sret(%struct.timespec64) align 8 %tmp7, [2 x i64] %19, ptr noundef %inode) #15
  %20 = call ptr @memcpy(ptr %cf_atime, ptr %tmp7, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp7) #15
  %cf_ctime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp9) #15
  %21 = ptrtoint ptr %cf_ctime to i32
  call void @__asan_load8_noabort(i32 %21)
  %.unpack122 = load i64, ptr %cf_ctime, align 8
  %22 = insertvalue [2 x i64] undef, i64 %.unpack122, 0
  %.elt123 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %.elt123 to i32
  call void @__asan_load8_noabort(i32 %23)
  %.unpack124 = load i64, ptr %.elt123, align 8
  %24 = insertvalue [2 x i64] %22, i64 %.unpack124, 1
  call void @timestamp_truncate(ptr nonnull sret(%struct.timespec64) align 8 %tmp9, [2 x i64] %24, ptr noundef %inode) #15
  %25 = call ptr @memcpy(ptr %cf_ctime, ptr %tmp9, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp9) #15
  %26 = ptrtoint ptr %cf_atime to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cf_atime, align 8
  %28 = ptrtoint ptr %cf_mtime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %cf_mtime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp.i = icmp slt i64 %27, %29
  br i1 %cmp.i, label %if.end.if.end18_crit_edge, label %if.end.i

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp4.i = icmp sgt i64 %27, %29
  br i1 %cmp4.i, label %if.end.i.if.else_crit_edge, label %timespec64_compare.exit

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

timespec64_compare.exit:                          ; preds = %if.end.i
  %30 = ptrtoint ptr %.elt120 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %.elt120, align 8
  %32 = ptrtoint ptr %.elt117 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %.elt117, align 8
  %sub.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 0
  br i1 %cmp, label %timespec64_compare.exit.if.end18_crit_edge, label %timespec64_compare.exit.if.else_crit_edge

timespec64_compare.exit.if.else_crit_edge:        ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

timespec64_compare.exit.if.end18_crit_edge:       ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.else:                                          ; preds = %timespec64_compare.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.else, %timespec64_compare.exit.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %cf_atime.sink = phi ptr [ %cf_atime, %if.else ], [ %cf_mtime, %if.end.if.end18_crit_edge ], [ %cf_mtime, %timespec64_compare.exit.if.end18_crit_edge ]
  %i_atime16 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %34 = call ptr @memcpy(ptr %i_atime16, ptr %cf_atime.sink, i32 16)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %35 = call ptr @memcpy(ptr %i_mtime, ptr %cf_mtime, i32 16)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %36 = call ptr @memcpy(ptr %i_ctime, ptr %cf_ctime, i32 16)
  %cf_rdev = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 9
  %37 = ptrtoint ptr %cf_rdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cf_rdev, align 4
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %39 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %i_rdev, align 8
  %40 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fattr, align 8
  %and.i = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  %42 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_state, align 8
  %and1.i = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.cifs_nlink_fattr_to_inode.exit_crit_edge, label %if.then3.i

if.then.i.cifs_nlink_fattr_to_inode.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_nlink_fattr_to_inode.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %cf_cifsattrs.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %44 = ptrtoint ptr %cf_cifsattrs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cf_cifsattrs.i, align 4
  %and4.i = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %..i = select i1 %tobool5.not.i, i32 1, i32 2
  br label %return.sink.split.i

if.end8.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %cf_nlink.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %46 = ptrtoint ptr %cf_nlink.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cf_nlink.i, align 8
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end8.i, %if.then3.i
  %.sink.i = phi i32 [ %47, %if.end8.i ], [ %..i, %if.then3.i ]
  call void @set_nlink(ptr noundef %inode, i32 noundef %.sink.i) #15
  br label %cifs_nlink_fattr_to_inode.exit

cifs_nlink_fattr_to_inode.exit:                   ; preds = %return.sink.split.i, %if.then.i.cifs_nlink_fattr_to_inode.exit_crit_edge
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %cf_uid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %48 = ptrtoint ptr %cf_uid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cf_uid, align 8
  %50 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %cf_gid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %51 = ptrtoint ptr %cf_gid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cf_gid, align 4
  %53 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %i_gid, align 8
  %54 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_state, align 8
  %and22 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %cifs_nlink_fattr_to_inode.exit.if.then26_crit_edge

cifs_nlink_fattr_to_inode.exit.if.then26_crit_edge: ; preds = %cifs_nlink_fattr_to_inode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

lor.lhs.false:                                    ; preds = %cifs_nlink_fattr_to_inode.exit
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %56 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mnt_cifs_flags, align 4
  %and24 = and i32 %57, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false.if.then26_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %cifs_nlink_fattr_to_inode.exit.if.then26_crit_edge
  %cf_mode27 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %58 = ptrtoint ptr %cf_mode27 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %cf_mode27, align 8
  %60 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %inode, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %lor.lhs.false.if.end28_crit_edge
  %cf_cifsattrs = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %61 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cf_cifsattrs, align 4
  %cifsAttrs = getelementptr i8, ptr %inode, i32 -120
  %63 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %cifsAttrs, align 8
  %64 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fattr, align 8
  %and29 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else33, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.else33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.end28.if.end35_crit_edge
  %.sink = phi i32 [ %66, %if.else33 ], [ 0, %if.end28.if.end35_crit_edge ]
  %67 = getelementptr i8, ptr %inode, i32 -56
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.sink, ptr %67, align 8
  %69 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fattr, align 8
  %and37 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %flags41 = getelementptr i8, ptr %inode, i32 -108
  br i1 %tobool38.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 3, ptr noundef %flags41) #15
  br label %if.end42

if.else40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags41) #15
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %71 = ptrtoint ptr %cf_eof to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %cf_eof, align 8
  %server_eof = getelementptr i8, ptr %inode, i32 -48
  %73 = ptrtoint ptr %server_eof to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %server_eof, align 8
  %74 = load i64, ptr %cf_eof, align 8
  %call44 = call zeroext i1 @is_size_safe_to_change(ptr noundef %add.ptr.i, i64 noundef %74) #15
  br i1 %call44, label %if.then45, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %cf_eof to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %cf_eof, align 8
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %76)
  %cf_bytes = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 4
  %77 = ptrtoint ptr %cf_bytes to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %cf_bytes, align 8
  %add = add i64 %78, 511
  %shr = lshr i64 %add, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %79 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %shr, ptr %i_blocks, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  %80 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fattr, align 8
  %and50 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end47.if.end53_crit_edge, label %if.then52

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %82 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_flags, align 4
  %or = or i32 %83, 2048
  store i32 %or, ptr %i_flags, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end47.if.end53_crit_edge
  %84 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_state, align 8
  %and55 = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.cleanup_crit_edge, label %if.then57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then57:                                        ; preds = %if.end53
  %86 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 33
  %88 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i.i, align 16
  %90 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %inode, align 8
  %92 = and i16 %91, -4096
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i16 %92, label %sw.default.i [
    i16 -32768, label %sw.bb.i
    i16 16384, label %sw.bb33.i
    i16 -24576, label %sw.bb41.i
  ]

sw.bb.i:                                          ; preds = %if.then57
  %i_op.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %94 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @cifs_file_inode_ops, ptr %i_op.i, align 8
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %89, i32 0, i32 6
  %95 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and1.i126 = and i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i126)
  %tobool.not.i127 = icmp eq i32 %and1.i126, 0
  br i1 %tobool.not.i127, label %if.else6.i, label %if.then.i128

if.then.i128:                                     ; preds = %sw.bb.i
  %and3.i = and i32 %96, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %97 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @cifs_file_direct_nobrl_ops, ptr %97, align 8
  br label %if.end25.i

if.else.i:                                        ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #17
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @cifs_file_direct_ops, ptr %97, align 8
  br label %if.end25.i

if.else6.i:                                       ; preds = %sw.bb.i
  %and8.i = and i32 %96, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and19.i = and i32 %96, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %100 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  br i1 %tobool9.not.i, label %if.else17.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else6.i
  br i1 %tobool20.not.i, label %if.else15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @cifs_file_strict_nobrl_ops, ptr %100, align 8
  br label %if.end25.i

if.else15.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @cifs_file_strict_ops, ptr %100, align 8
  br label %if.end25.i

if.else17.i:                                      ; preds = %if.else6.i
  br i1 %tobool20.not.i, label %if.else22.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @cifs_file_nobrl_ops, ptr %100, align 8
  br label %if.end25.i

if.else22.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @cifs_file_ops, ptr %100, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else22.i, %if.then21.i, %if.else15.i, %if.then14.i, %if.else.i, %if.then5.i
  %call26.i = call ptr @cifs_sb_master_tcon(ptr noundef %89) #15
  %ses.i = getelementptr inbounds %struct.cifs_tcon, ptr %call26.i, i32 0, i32 7
  %105 = ptrtoint ptr %ses.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ses.i, align 8
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %server.i, align 8
  %max_read.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %108, i32 0, i32 72
  %109 = ptrtoint ptr %max_read.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_read.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4184, i32 %110)
  %cmp.i129 = icmp ult i32 %110, 4184
  %a_ops.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  br i1 %cmp.i129, label %if.then28.i, label %if.else29.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %111 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @cifs_addr_ops_smallbuf, ptr %a_ops.i, align 8
  br label %cleanup

if.else29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %112 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @cifs_addr_ops, ptr %a_ops.i, align 8
  br label %cleanup

sw.bb33.i:                                        ; preds = %if.then57
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %113 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %i_flags.i, align 4
  %and34.i = and i32 %114, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %i_op39.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  br i1 %tobool35.not.i, label %if.else38.i, label %if.then36.i

if.then36.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #17
  %115 = ptrtoint ptr %i_op39.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @cifs_dfs_referral_inode_operations, ptr %i_op39.i, align 8
  br label %cleanup

if.else38.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %i_op39.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @cifs_dir_inode_ops, ptr %i_op39.i, align 8
  %117 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @cifs_dir_ops, ptr %117, align 8
  br label %cleanup

sw.bb41.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  %i_op42.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %119 = ptrtoint ptr %i_op42.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @cifs_symlink_inode_ops, ptr %i_op42.i, align 8
  br label %cleanup

sw.default.i:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #17
  %120 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i_rdev, align 8
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %91, i32 noundef %121) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %sw.bb41.i, %if.else38.i, %if.then36.i, %if.else29.i, %if.then28.i, %if.end53.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -116, %if.then ], [ 0, %if.end53.cleanup_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.else29.i ], [ 0, %if.then36.i ], [ 0, %if.else38.i ], [ 0, %sw.bb41.i ], [ 0, %sw.default.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_revalidate_cache(ptr noundef %inode, ptr nocapture noundef %fattr) unnamed_addr #0 align 64 {
entry:
  %cd = alloca %struct.cifs_fscache_inode_coherency_data, align 8
  %tmp88 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cd) #15
  %0 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cifs_fscache_inode_coherency_data, ptr %cd, i32 0, i32 3
  %3 = call ptr @memset(ptr %cd, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body2

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_revalidate_cache.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_revalidate_cache, %land.lhs.true)) #15
          to label %do.end14 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_revalidate_cache._rs, ptr noundef nonnull @.str.84) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %if.then9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %uniqueid = getelementptr i8, ptr %inode, i32 -40
  %5 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %uniqueid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_revalidate_cache.descriptor, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84, i64 noundef %6) #15
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %land.lhs.true.do.end14_crit_edge, %do.body2, %entry.do.end14_crit_edge
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state, align 8
  %and15 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end49, label %do.body19

do.body19:                                        ; preds = %do.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and20 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.cleanup_crit_edge, label %do.body23

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_revalidate_cache.descriptor.87, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_revalidate_cache, %land.lhs.true35)) #15
          to label %cleanup [label %land.lhs.true35], !srcloc !352

land.lhs.true35:                                  ; preds = %do.body23
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_revalidate_cache._rs.86, ptr noundef nonnull @.str.84) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true35.cleanup_crit_edge, label %if.then38

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  %uniqueid39 = getelementptr i8, ptr %inode, i32 -40
  %10 = ptrtoint ptr %uniqueid39 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %uniqueid39, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_revalidate_cache.descriptor.87, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84, i64 noundef %11) #15
  br label %cleanup

if.end49:                                         ; preds = %do.end14
  %oplock = getelementptr i8, ptr %inode, i32 -116
  %12 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oplock, align 4
  %and50 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %lor.lhs.false, label %if.end49.do.body57_crit_edge

if.end49.do.body57_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body57

lor.lhs.false:                                    ; preds = %if.end49
  %i_sb = getelementptr i8, ptr %inode, i32 28
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mnt_cifs_flags, align 4
  %and53 = and i32 %19, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end87, label %lor.lhs.false.do.body57_crit_edge

lor.lhs.false.do.body57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body57

do.body57:                                        ; preds = %lor.lhs.false.do.body57_crit_edge, %if.end49.do.body57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %20 = load i32, ptr @cifsFYI, align 4
  %and58 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.cleanup_crit_edge, label %do.body61

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body61:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_revalidate_cache.descriptor.90, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_revalidate_cache, %land.lhs.true73)) #15
          to label %cleanup [label %land.lhs.true73], !srcloc !352

land.lhs.true73:                                  ; preds = %do.body61
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_revalidate_cache._rs.89, ptr noundef nonnull @.str.84) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.cleanup_crit_edge, label %if.then76

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then76:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #17
  %uniqueid77 = getelementptr i8, ptr %inode, i32 -40
  %21 = ptrtoint ptr %uniqueid77 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %uniqueid77, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_revalidate_cache.descriptor.90, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84, i64 noundef %22) #15
  br label %cleanup

if.end87:                                         ; preds = %lor.lhs.false
  %cf_mtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp88) #15
  %23 = ptrtoint ptr %cf_mtime to i32
  call void @__asan_load8_noabort(i32 %23)
  %.unpack = load i64, ptr %cf_mtime, align 8
  %24 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt179 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13, i32 1
  %25 = ptrtoint ptr %.elt179 to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack180 = load i64, ptr %.elt179, align 8
  %26 = insertvalue [2 x i64] %24, i64 %.unpack180, 1
  call void @timestamp_truncate(ptr nonnull sret(%struct.timespec64) align 8 %tmp88, [2 x i64] %26, ptr noundef %inode) #15
  %27 = call ptr @memcpy(ptr %cf_mtime, ptr %tmp88, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp88) #15
  %i_mtime = getelementptr %struct.inode, ptr %inode, i32 0, i32 16
  %28 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_mtime, align 8
  %30 = ptrtoint ptr %cf_mtime to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cf_mtime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp.i = icmp eq i64 %29, %31
  br i1 %cmp.i, label %timespec64_equal.exit, label %if.end87.do.body128_crit_edge

if.end87.do.body128_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body128

timespec64_equal.exit:                            ; preds = %if.end87
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %32 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec.i, align 8
  %34 = ptrtoint ptr %.elt179 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %.elt179, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.i.not = icmp eq i32 %33, %35
  br i1 %cmp3.i.not, label %land.lhs.true93, label %timespec64_equal.exit.do.body128_crit_edge

timespec64_equal.exit.do.body128_crit_edge:       ; preds = %timespec64_equal.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body128

land.lhs.true93:                                  ; preds = %timespec64_equal.exit
  %server_eof = getelementptr i8, ptr %inode, i32 -48
  %36 = ptrtoint ptr %server_eof to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %server_eof, align 8
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %38 = ptrtoint ptr %cf_eof to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %cf_eof, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp = icmp eq i64 %37, %39
  br i1 %cmp, label %do.body96, label %land.lhs.true93.do.body128_crit_edge

land.lhs.true93.do.body128_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body128

do.body96:                                        ; preds = %land.lhs.true93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %40 = load i32, ptr @cifsFYI, align 4
  %and97 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body96.cleanup_crit_edge, label %do.body100

do.body96.cleanup_crit_edge:                      ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body100:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_revalidate_cache.descriptor.93, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_revalidate_cache, %land.lhs.true112)) #15
          to label %cleanup [label %land.lhs.true112], !srcloc !352

land.lhs.true112:                                 ; preds = %do.body100
  %call113 = call i32 @___ratelimit(ptr noundef nonnull @cifs_revalidate_cache._rs.92, ptr noundef nonnull @.str.84) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.cleanup_crit_edge, label %if.then115

land.lhs.true112.cleanup_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then115:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #17
  %uniqueid116 = getelementptr i8, ptr %inode, i32 -40
  %41 = ptrtoint ptr %uniqueid116 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %uniqueid116, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_revalidate_cache.descriptor.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84, i64 noundef %42) #15
  br label %cleanup

do.body128:                                       ; preds = %land.lhs.true93.do.body128_crit_edge, %timespec64_equal.exit.do.body128_crit_edge, %if.end87.do.body128_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %43 = load i32, ptr @cifsFYI, align 4
  %and129 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.body128.do.end157_crit_edge, label %do.body132

do.body128.do.end157_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end157

do.body132:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_revalidate_cache.descriptor.96, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_revalidate_cache, %land.lhs.true144)) #15
          to label %do.end157 [label %land.lhs.true144], !srcloc !352

land.lhs.true144:                                 ; preds = %do.body132
  %call145 = call i32 @___ratelimit(ptr noundef nonnull @cifs_revalidate_cache._rs.95, ptr noundef nonnull @.str.84) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %land.lhs.true144.do.end157_crit_edge, label %if.then147

land.lhs.true144.do.end157_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end157

if.then147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #17
  %uniqueid148 = getelementptr i8, ptr %inode, i32 -40
  %44 = ptrtoint ptr %uniqueid148 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %uniqueid148, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_revalidate_cache.descriptor.96, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84, i64 noundef %45) #15
  br label %do.end157

do.end157:                                        ; preds = %if.then147, %land.lhs.true144.do.end157_crit_edge, %do.body132, %do.body128.do.end157_crit_edge
  %flags = getelementptr i8, ptr %inode, i32 -108
  call void @_set_bit(i32 noundef 4, ptr noundef %flags) #15
  %46 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_mtime, align 8
  %48 = call i64 @llvm.bswap.i64(i64 %47) #15
  %49 = ptrtoint ptr %cd to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %cd, align 8
  %tv_nsec.i193 = getelementptr i8, ptr %inode, i32 88
  %50 = ptrtoint ptr %tv_nsec.i193 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tv_nsec.i193, align 8
  %52 = call i32 @llvm.bswap.i32(i32 %51) #15
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %1, align 8
  %i_ctime.i = getelementptr i8, ptr %inode, i32 96
  %54 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_ctime.i, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55) #15
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %0, align 8
  %tv_nsec7.i = getelementptr i8, ptr %inode, i32 104
  %58 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tv_nsec7.i, align 8
  %60 = call i32 @llvm.bswap.i32(i32 %59) #15
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %2, align 4
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %62 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fscache.i, align 8
  %call160 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %do.end157.cleanup_crit_edge, label %land.lhs.true.i

do.end157.cleanup_crit_edge:                      ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end157
  %flags1.i = getelementptr inbounds %struct.fscache_cookie, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags1.i, align 4
  %66 = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool2.not.i = icmp eq i32 %66, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__fscache_invalidate(ptr noundef nonnull %63, ptr noundef nonnull %cd, i64 noundef %call160, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %do.end157.cleanup_crit_edge, %if.then115, %land.lhs.true112.cleanup_crit_edge, %do.body100, %do.body96.cleanup_crit_edge, %if.then76, %land.lhs.true73.cleanup_crit_edge, %do.body61, %do.body57.cleanup_crit_edge, %if.then38, %land.lhs.true35.cleanup_crit_edge, %do.body23, %do.body19.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cd) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timestamp_truncate(ptr sret(%struct.timespec64) align 8, [2 x i64], ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_size_safe_to_change(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !353
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !354
  %9 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !355
  %18 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !356
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !357
  %37 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !358

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.98, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !359
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #15
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #15
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !360
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !361
  %48 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_fill_uniqueid(ptr noundef %sb, ptr nocapture noundef writeonly %fattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @iunique(ptr noundef %sb, i32 noundef 2) #15
  %conv = zext i32 %call1 to i64
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %4 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %cf_uniqueid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_unix_basic_to_fattr(ptr noundef writeonly %fattr, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cifs_sb) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp1 = alloca %struct.timespec64, align 8
  %tmp2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %UniqueId = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 10
  %1 = ptrtoint ptr %UniqueId to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %UniqueId, align 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %4 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %cf_uniqueid, align 8
  %NumOfBytes = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %NumOfBytes to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %NumOfBytes, align 1
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %cf_bytes = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 4
  %8 = ptrtoint ptr %cf_bytes to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cf_bytes, align 8
  %9 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %info, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %12 = ptrtoint ptr %cf_eof to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %cf_eof, align 8
  %cf_atime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  %LastAccessTime = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 3
  %13 = ptrtoint ptr %LastAccessTime to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %LastAccessTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %14) #15
  %15 = call ptr @memcpy(ptr %cf_atime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %cf_mtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1) #15
  %LastModificationTime = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 4
  %16 = ptrtoint ptr %LastModificationTime to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %LastModificationTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp1, i64 noundef %17) #15
  %18 = call ptr @memcpy(ptr %cf_mtime, ptr %tmp1, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1) #15
  %cf_ctime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2) #15
  %LastStatusChange = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %LastStatusChange to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %LastStatusChange, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp2, i64 noundef %20) #15
  %21 = call ptr @memcpy(ptr %cf_ctime, ptr %tmp2, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2) #15
  %Permissions = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 11
  %22 = ptrtoint ptr %Permissions to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %Permissions, align 1
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %conv = trunc i64 %24 to i16
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %and = and i16 %conv, 4095
  %25 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %and, ptr %cf_mode, align 8
  %Type = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 7
  %26 = ptrtoint ptr %Type to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %Type, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %28, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
    i32 1, label %sw.bb15
    i32 3, label %sw.bb21
    i32 4, label %sw.bb30
    i32 5, label %sw.bb43
    i32 6, label %sw.bb49
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %30 = or i16 %and, -32768
  %31 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %cf_mode, align 8
  %cf_dtype = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %32 = ptrtoint ptr %cf_dtype to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %cf_dtype, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %33 = or i16 %and, -24576
  %34 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %cf_mode, align 8
  %cf_dtype14 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %35 = ptrtoint ptr %cf_dtype14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10, ptr %cf_dtype14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %36 = or i16 %and, 16384
  %37 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %cf_mode, align 8
  %cf_dtype20 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %38 = ptrtoint ptr %cf_dtype20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %cf_dtype20, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %39 = or i16 %and, 8192
  %40 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %cf_mode, align 8
  %cf_dtype26 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %41 = ptrtoint ptr %cf_dtype26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %cf_dtype26, align 4
  %DevMajor = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 8
  %42 = ptrtoint ptr %DevMajor to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %DevMajor, align 1
  %44 = call i64 @llvm.bswap.i64(i64 %43)
  %shl = shl i64 %44, 20
  %DevMinor = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 9
  %45 = ptrtoint ptr %DevMinor to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %DevMinor, align 1
  %47 = and i64 %46, -264982302294016
  %48 = call i64 @llvm.bswap.i64(i64 %47)
  %or28 = or i64 %48, %shl
  %conv29 = trunc i64 %or28 to i32
  %cf_rdev = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 9
  %49 = ptrtoint ptr %cf_rdev to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv29, ptr %cf_rdev, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %50 = or i16 %and, 24576
  %51 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %cf_mode, align 8
  %cf_dtype35 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %52 = ptrtoint ptr %cf_dtype35 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6, ptr %cf_dtype35, align 4
  %DevMajor36 = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 8
  %53 = ptrtoint ptr %DevMajor36 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %DevMajor36, align 1
  %55 = call i64 @llvm.bswap.i64(i64 %54)
  %shl37 = shl i64 %55, 20
  %DevMinor38 = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 9
  %56 = ptrtoint ptr %DevMinor38 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %DevMinor38, align 1
  %58 = and i64 %57, -264982302294016
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %or40 = or i64 %59, %shl37
  %conv41 = trunc i64 %or40 to i32
  %cf_rdev42 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 9
  %60 = ptrtoint ptr %cf_rdev42 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv41, ptr %cf_rdev42, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %61 = or i16 %and, 4096
  %62 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %cf_mode, align 8
  %cf_dtype48 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %63 = ptrtoint ptr %cf_dtype48 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %cf_dtype48, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %64 = or i16 %and, -16384
  %65 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %cf_mode, align 8
  %cf_dtype54 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %66 = ptrtoint ptr %cf_dtype54 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 12, ptr %cf_dtype54, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %67 = or i16 %and, -32768
  %68 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %cf_mode, align 8
  %cf_dtype59 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %69 = ptrtoint ptr %cf_dtype59 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 8, ptr %cf_dtype59, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %70 = load i32, ptr @cifsFYI, align 4
  %and61 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool.not = icmp eq i32 %and61, 0
  br i1 %tobool.not, label %sw.default.sw.epilog_crit_edge, label %do.body62

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body62:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_unix_basic_to_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_unix_basic_to_fattr, %land.lhs.true)) #15
          to label %sw.epilog [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body62
  %call67 = call i32 @___ratelimit(ptr noundef nonnull @cifs_unix_basic_to_fattr._rs, ptr noundef nonnull @.str.2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then69

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %Type to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %Type, align 1
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_unix_basic_to_fattr.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %73) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then69, %land.lhs.true.sw.epilog_crit_edge, %do.body62, %sw.default.sw.epilog_crit_edge, %sw.bb49, %sw.bb43, %sw.bb30, %sw.bb21, %sw.bb15, %sw.bb9, %sw.bb
  %cf_uid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 4
  %74 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx, align 4
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %75, i32 0, i32 23
  %76 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %linux_uid, align 4
  %78 = ptrtoint ptr %cf_uid to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %cf_uid, align 8
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %79 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mnt_cifs_flags, align 4
  %and74 = and i32 %80, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then76, label %sw.epilog.if.end87_crit_edge

sw.epilog.if.end87_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then76:                                        ; preds = %sw.epilog
  %Uid = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 5
  %81 = ptrtoint ptr %Uid to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %Uid, align 1
  %83 = call i64 @llvm.bswap.i64(i64 %82)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %83)
  %cmp = icmp ult i64 %83, 4294967295
  br i1 %cmp, label %if.then78, label %if.then76.if.end87_crit_edge

if.then76.if.end87_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then78:                                        ; preds = %if.then76
  %conv79 = trunc i64 %83 to i32
  %call80 = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %conv79) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call80)
  %cmp.i.not = icmp eq i32 %call80, -1
  br i1 %cmp.i.not, label %if.then78.if.end87_crit_edge, label %if.then83

if.then78.if.end87_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then83:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %cf_uid to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call80, ptr %cf_uid, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.then78.if.end87_crit_edge, %if.then76.if.end87_crit_edge, %sw.epilog.if.end87_crit_edge
  %cf_gid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %85 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctx, align 4
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %86, i32 0, i32 24
  %87 = ptrtoint ptr %linux_gid to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %linux_gid, align 8
  %89 = ptrtoint ptr %cf_gid to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %cf_gid, align 4
  %90 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mnt_cifs_flags, align 4
  %and90 = and i32 %91, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.then92, label %if.end87.if.end106_crit_edge

if.end87.if.end106_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106

if.then92:                                        ; preds = %if.end87
  %Gid = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 6
  %92 = ptrtoint ptr %Gid to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %93 = load i64, ptr %Gid, align 1
  %94 = call i64 @llvm.bswap.i64(i64 %93)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %94)
  %cmp94 = icmp ult i64 %94, 4294967295
  br i1 %cmp94, label %if.then96, label %if.then92.if.end106_crit_edge

if.then92.if.end106_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106

if.then96:                                        ; preds = %if.then92
  %conv97 = trunc i64 %94 to i32
  %call98 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %conv97) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call98)
  %cmp.i161.not = icmp eq i32 %call98, -1
  br i1 %cmp.i161.not, label %if.then96.if.end106_crit_edge, label %if.then102

if.then96.if.end106_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106

if.then102:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %cf_gid to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call98, ptr %cf_gid, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.then96.if.end106_crit_edge, %if.then92.if.end106_crit_edge, %if.end87.if.end106_crit_edge
  %Nlinks = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %info, i32 0, i32 12
  %96 = ptrtoint ptr %Nlinks to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %97 = load i64, ptr %Nlinks, align 1
  %98 = call i64 @llvm.bswap.i64(i64 %97)
  %conv107 = trunc i64 %98 to i32
  %cf_nlink = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %99 = ptrtoint ptr %cf_nlink to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv107, ptr %cf_nlink, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_NTtimeToUnix(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_get_inode_info_unix(ptr nocapture noundef %pinode, ptr noundef %full_path, ptr noundef %sb, i32 noundef %xid) local_unnamed_addr #0 align 64 {
entry:
  %find_data = alloca %struct.FILE_UNIX_BASIC_INFO, align 1
  %fattr = alloca %struct.cifs_fattr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %find_data) #15
  %0 = call ptr @memset(ptr %find_data, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fattr) #15
  %1 = call ptr @memset(ptr %fattr, i32 255, i32 120)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body2

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info_unix.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info_unix, %land.lhs.true)) #15
          to label %do.end14 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info_unix._rs, ptr noundef nonnull @.str.5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %if.then9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info_unix.descriptor, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %full_path) #15
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %land.lhs.true.do.end14_crit_edge, %do.body2, %entry.do.end14_crit_edge
  %call15 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #15
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %do.end14
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call15, i32 0, i32 5
  %6 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tl_tcon.i, align 4
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %local_nls, align 4
  %call21 = tail call i32 @cifs_remap(ptr noundef %3) #15
  %call22 = call i32 @CIFSSMBUnixQPathInfo(i32 noundef %xid, ptr noundef %7, ptr noundef %full_path, ptr noundef nonnull %find_data, ptr noundef %9, i32 noundef %call21) #15
  call void @cifs_put_tlink(ptr noundef %call15) #15
  %10 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %call22, label %if.end19.cleanup_crit_edge [
    i32 0, label %if.then24
    i32 -66, label %if.then26
  ]

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  call void @cifs_unix_basic_to_fattr(ptr noundef nonnull %fattr, ptr noundef nonnull %find_data, ptr noundef %3)
  br label %if.end29

if.then26:                                        ; preds = %if.end19
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then26.cifs_create_dfs_fattr.exit_crit_edge, label %do.body2.i

if.then26.cifs_create_dfs_fattr.exit_crit_edge:   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

do.body2.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_create_dfs_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info_unix, %land.lhs.true.i)) #15
          to label %cifs_create_dfs_fattr.exit [label %land.lhs.true.i], !srcloc !352

land.lhs.true.i:                                  ; preds = %do.body2.i
  %call7.i = call i32 @___ratelimit(ptr noundef nonnull @cifs_create_dfs_fattr._rs, ptr noundef nonnull @.str.99) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge, label %if.then9.i

land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_create_dfs_fattr.descriptor, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.3) #15
  br label %cifs_create_dfs_fattr.exit

cifs_create_dfs_fattr.exit:                       ; preds = %if.then9.i, %land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge, %do.body2.i, %if.then26.cifs_create_dfs_fattr.exit_crit_edge
  %14 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %cf_mode.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %15 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 16841, ptr %cf_mode.i, align 8
  %cf_uid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx.i = getelementptr inbounds %struct.cifs_sb_info, ptr %12, i32 0, i32 4
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i, align 4
  %linux_uid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %linux_uid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %linux_uid.i, align 4
  %20 = ptrtoint ptr %cf_uid.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cf_uid.i, align 8
  %cf_gid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %linux_gid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %17, i32 0, i32 24
  %21 = ptrtoint ptr %linux_gid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %linux_gid.i, align 8
  %23 = ptrtoint ptr %cf_gid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cf_gid.i, align 4
  %cf_mtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @ktime_get_coarse_real_ts64(ptr noundef %cf_mtime.i) #15
  %cf_atime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  %cf_ctime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  %24 = call ptr @memcpy(ptr %cf_ctime.i, ptr %cf_mtime.i, i32 16)
  %25 = call ptr @memcpy(ptr %cf_atime.i, ptr %cf_mtime.i, i32 16)
  %cf_nlink.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %26 = ptrtoint ptr %cf_nlink.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %cf_nlink.i, align 8
  %27 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %fattr, align 8
  br label %if.end29

if.end29:                                         ; preds = %cifs_create_dfs_fattr.exit, %if.then24
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mnt_cifs_flags, align 4
  %and30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end67_crit_edge, label %if.then32

if.end29.if.end67_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then32:                                        ; preds = %if.end29
  %call33 = call i32 @check_mf_symlink(i32 noundef %xid, ptr noundef %7, ptr noundef %3, ptr noundef nonnull %fattr, ptr noundef %full_path) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end67_crit_edge, label %do.body37

if.then32.if.end67_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

do.body37:                                        ; preds = %if.then32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %30 = load i32, ptr @cifsFYI, align 4
  %and38 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.if.end67_crit_edge, label %do.body41

do.body37.if.end67_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info_unix.descriptor.8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info_unix, %land.lhs.true53)) #15
          to label %if.end67 [label %land.lhs.true53], !srcloc !352

land.lhs.true53:                                  ; preds = %do.body41
  %call54 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info_unix._rs.7, ptr noundef nonnull @.str.5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.if.end67_crit_edge, label %if.then56

land.lhs.true53.if.end67_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info_unix.descriptor.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef %call33) #15
  br label %if.end67

if.end67:                                         ; preds = %if.then56, %land.lhs.true53.if.end67_crit_edge, %do.body41, %do.body37.if.end67_crit_edge, %if.then32.if.end67_crit_edge, %if.end29.if.end67_crit_edge
  %31 = ptrtoint ptr %pinode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pinode, align 4
  %cmp68 = icmp eq ptr %32, null
  br i1 %cmp68, label %if.then69, label %if.else74

if.then69:                                        ; preds = %if.end67
  %33 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i125 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool.not.i126 = icmp eq i32 %and.i125, 0
  br i1 %tobool.not.i126, label %if.end.i, label %if.then69.cifs_fill_uniqueid.exit_crit_edge

if.then69.cifs_fill_uniqueid.exit_crit_edge:      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_fill_uniqueid.exit

if.end.i:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = call i32 @iunique(ptr noundef %sb, i32 noundef 2) #15
  %conv.i = zext i32 %call1.i to i64
  %cf_uniqueid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %37 = ptrtoint ptr %cf_uniqueid.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv.i, ptr %cf_uniqueid.i, align 8
  br label %cifs_fill_uniqueid.exit

cifs_fill_uniqueid.exit:                          ; preds = %if.end.i, %if.then69.cifs_fill_uniqueid.exit_crit_edge
  %call70 = call ptr @cifs_iget(ptr noundef %sb, ptr noundef nonnull %fattr)
  %38 = ptrtoint ptr %pinode to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call70, ptr %pinode, align 4
  %tobool71.not = icmp eq ptr %call70, null
  %spec.select = select i1 %tobool71.not, i32 -12, i32 0
  br label %cleanup

if.else74:                                        ; preds = %if.end67
  %39 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mnt_cifs_flags, align 4
  %and76 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else74.if.end88_crit_edge, label %land.rhs

if.else74.if.end88_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

land.rhs:                                         ; preds = %if.else74
  %uniqueid = getelementptr i8, ptr %32, i32 -40
  %41 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %uniqueid, align 8
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %43 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %cf_uniqueid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp79.not = icmp eq i64 %42, %44
  br i1 %cmp79.not, label %land.rhs.if.end88_crit_edge, label %if.then86, !prof !358

land.rhs.if.end88_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then86:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %time = getelementptr i8, ptr %32, i32 -56
  %45 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %time, align 8
  br label %cleanup

if.end88:                                         ; preds = %land.rhs.if.end88_crit_edge, %if.else74.if.end88_crit_edge
  %call89 = call i32 @cifs_fattr_to_inode(ptr noundef nonnull %32, ptr noundef nonnull %fattr)
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then86, %cifs_fill_uniqueid.exit, %if.end19.cleanup_crit_edge, %if.then17
  %retval.0 = phi i32 [ %5, %if.then17 ], [ %call22, %if.end19.cleanup_crit_edge ], [ -116, %if.then86 ], [ %call89, %if.end88 ], [ %spec.select, %cifs_fill_uniqueid.exit ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %find_data) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_tlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBUnixQPathInfo(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_remap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_tlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_mf_symlink(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_iget(ptr noundef %sb, ptr noundef %fattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  br label %retry_iget5_locked

retry_iget5_locked:                               ; preds = %if.then25, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %retry_iget5_locked.do.end13_crit_edge, label %do.body2

retry_iget5_locked.do.end13_crit_edge:            ; preds = %retry_iget5_locked
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

do.body2:                                         ; preds = %retry_iget5_locked
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_iget.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_iget, %land.lhs.true)) #15
          to label %do.end13 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_iget._rs, ptr noundef nonnull @.str.34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %cf_uniqueid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_iget.descriptor, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i64 noundef %2) #15
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %retry_iget5_locked.do.end13_crit_edge
  %3 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cf_uniqueid, align 8
  %conv.i.i = trunc i64 %4 to i32
  %shr.i.i = lshr i64 %4, 32
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 1
  %add.i = add nuw i32 %shr.i.i.i, 1
  %call16 = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %add.i, ptr noundef nonnull @cifs_find_inode, ptr noundef nonnull @cifs_init_inode, ptr noundef %fattr) #15
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end13.if.end40_crit_edge, label %if.then18

do.end13.if.end40_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then18:                                        ; preds = %do.end13
  %5 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fattr, align 8
  %and19 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then18.if.end30_crit_edge, label %if.then21

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then21:                                        ; preds = %if.then18
  %and23 = and i32 %6, -9
  %7 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and23, ptr %fattr, align 8
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #15
  %8 = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 37
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool.not.i = icmp eq ptr %10, null
  %add.ptr.i = getelementptr i8, ptr %10, i32 -200
  %tobool2.not3136.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not31.i = or i1 %tobool.not.i, %tobool2.not3136.i
  br i1 %tobool2.not31.i, label %if.then21.inode_has_hashed_dentries.exit_crit_edge, label %if.then21.for.body.i_crit_edge

if.then21.for.body.i_crit_edge:                   ; preds = %if.then21
  br label %for.body.i

if.then21.inode_has_hashed_dentries.exit_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %inode_has_hashed_dentries.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then21.for.body.i_crit_edge
  %dentry.032.i = phi ptr [ %add.ptr11.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.then21.for.body.i_crit_edge ]
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry.032.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.not.i, label %lor.lhs.false.i, label %for.body.i.if.then25_crit_edge

for.body.i.if.then25_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

lor.lhs.false.i:                                  ; preds = %for.body.i
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry.032.i, i32 0, i32 3
  %13 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_parent.i, align 8
  %cmp.i = icmp eq ptr %dentry.032.i, %14
  br i1 %cmp.i, label %lor.lhs.false.i.if.then25_crit_edge, label %for.inc.i

lor.lhs.false.i.if.then25_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %d_u.i = getelementptr inbounds %struct.dentry, ptr %dentry.032.i, i32 0, i32 15
  %15 = ptrtoint ptr %d_u.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_u.i, align 8
  %tobool7.not.i = icmp eq ptr %16, null
  %add.ptr11.i = getelementptr i8, ptr %16, i32 -200
  %tobool2.not37.i = icmp eq ptr %add.ptr11.i, null
  %tobool2.not.i = or i1 %tobool7.not.i, %tobool2.not37.i
  br i1 %tobool2.not.i, label %for.inc.i.inode_has_hashed_dentries.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.inode_has_hashed_dentries.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %inode_has_hashed_dentries.exit

inode_has_hashed_dentries.exit:                   ; preds = %for.inc.i.inode_has_hashed_dentries.exit_crit_edge, %if.then21.inode_has_hashed_dentries.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #15
  br label %if.end30

if.then25:                                        ; preds = %lor.lhs.false.i.if.then25_crit_edge, %for.body.i.if.then25_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #15
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @cifs_autodisable_serverino(ptr noundef %18) #15
  tail call void @iput(ptr noundef nonnull %call16) #15
  %call27 = tail call i32 @iunique(ptr noundef %sb, i32 noundef 2) #15
  %conv = zext i32 %call27 to i64
  %19 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %cf_uniqueid, align 8
  br label %retry_iget5_locked

if.end30:                                         ; preds = %inode_has_hashed_dentries.exit, %if.then18.if.end30_crit_edge
  %call31 = tail call i32 @cifs_fattr_to_inode(ptr noundef nonnull %call16, ptr noundef %fattr)
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %20 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_flags, align 4
  %and32 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %i_flags = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 4
  %22 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags, align 4
  %or = or i32 %23, 130
  store i32 %or, ptr %i_flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %i_state = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 24
  %24 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_state, align 8
  %and36 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end40_crit_edge, label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %i_ino = getelementptr inbounds %struct.inode, ptr %call16, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %i_ino, align 8
  tail call void @cifs_fscache_get_inode_cookie(ptr noundef nonnull %call16) #15
  tail call void @unlock_new_inode(ptr noundef nonnull %call16) #15
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35.if.end40_crit_edge, %do.end13.if.end40_crit_edge
  ret ptr %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_get_inode_info(ptr nocapture noundef %inode, ptr noundef %full_path, ptr noundef %in_data, ptr noundef %sb, i32 noundef %xid, ptr noundef %fid) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.cifs_search_info, align 8
  %adjust_tz = alloca i8, align 1
  %fattr = alloca %struct.cifs_fattr, align 8
  %is_reparse_point = alloca i8, align 1
  %reparse_tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %adjust_tz) #15
  %2 = ptrtoint ptr %adjust_tz to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %adjust_tz, align 1
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fattr) #15
  %3 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_reparse_point) #15
  %4 = ptrtoint ptr %is_reparse_point to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_reparse_point, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reparse_tag) #15
  %5 = ptrtoint ptr %reparse_tag to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reparse_tag, align 4
  %call1 = tail call ptr @cifs_sb_tlink(ptr noundef %1) #15
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup317

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call1, i32 0, i32 5
  %7 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ses, align 8
  %server5 = getelementptr inbounds %struct.cifs_ses, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %server5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %server5, align 8
  %tobool.not = icmp eq ptr %in_data, null
  br i1 %tobool.not, label %if.then6, label %if.end.sw.bb_crit_edge

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.then6:                                         ; preds = %if.end
  %13 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %inode, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then6.if.end26_crit_edge, label %land.lhs.true.i

if.then6.if.end26_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

land.lhs.true.i:                                  ; preds = %if.then6
  %oplock.i = getelementptr i8, ptr %14, i32 -116
  %15 = ptrtoint ptr %oplock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oplock.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.is_inode_cache_good.exit_crit_edge

land.lhs.true.i.is_inode_cache_good.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_inode_cache_good.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %i_sb.i = getelementptr i8, ptr %14, i32 28
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and4.i = and i32 %22, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.end26_crit_edge, label %lor.lhs.false.i.is_inode_cache_good.exit_crit_edge

lor.lhs.false.i.is_inode_cache_good.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_inode_cache_good.exit

lor.lhs.false.i.if.end26_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

is_inode_cache_good.exit:                         ; preds = %lor.lhs.false.i.is_inode_cache_good.exit_crit_edge, %land.lhs.true.i.is_inode_cache_good.exit_crit_edge
  %time.i = getelementptr i8, ptr %14, i32 -56
  %23 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i426.not = icmp eq i32 %24, 0
  br i1 %cmp.i426.not, label %is_inode_cache_good.exit.if.end26_crit_edge, label %do.body9

is_inode_cache_good.exit.if.end26_crit_edge:      ; preds = %is_inode_cache_good.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

do.body9:                                         ; preds = %is_inode_cache_good.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %25 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body9.out_crit_edge, label %do.body12

do.body9.out_crit_edge:                           ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info, %land.lhs.true)) #15
          to label %out [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body12
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info._rs, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.out_crit_edge, label %if.then19

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info.descriptor, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #15
  br label %out

if.end26:                                         ; preds = %is_inode_cache_good.exit.if.end26_crit_edge, %lor.lhs.false.i.if.end26_crit_edge, %if.then6.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 109) #18
  %tobool28.not = icmp eq ptr %call7.i, null
  br i1 %tobool28.not, label %if.end26.out_crit_edge, label %if.end30

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end30:                                         ; preds = %if.end26
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %12, i32 0, i32 5
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %query_path_info = getelementptr inbounds %struct.smb_version_operations, ptr %28, i32 0, i32 35
  %29 = ptrtoint ptr %query_path_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %query_path_info, align 4
  %call31 = call i32 %30(i32 noundef %xid, ptr noundef %8, ptr noundef %1, ptr noundef %full_path, ptr noundef nonnull %call7.i, ptr noundef nonnull %adjust_tz, ptr noundef nonnull %is_reparse_point) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call31)
  %cmp = icmp eq i32 %call31, -2
  br i1 %cmp, label %land.lhs.true32, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.end30
  %tobool.not.i427 = icmp eq ptr %8, null
  br i1 %tobool.not.i427, label %land.lhs.true32.do.body93_crit_edge, label %lor.lhs.false.i429

land.lhs.true32.do.body93_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93

lor.lhs.false.i429:                               ; preds = %land.lhs.true32
  %31 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ses, align 8
  %tobool1.not.i428 = icmp eq ptr %32, null
  br i1 %tobool1.not.i428, label %lor.lhs.false.i429.do.body93_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i429.do.body93_crit_edge:           ; preds = %lor.lhs.false.i429
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i429
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %server.i, align 8
  %tobool4.not.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.body93_crit_edge, label %if.end.i

lor.lhs.false2.i.do.body93_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %vals.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %vals.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vals.i.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i.i = call i32 @strcmp(ptr noundef %38, ptr noundef nonnull dereferenceable(4) @.str.102) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %Flags.i = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 12
  %39 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %Flags.i, align 8
  %41 = and i16 %40, 2
  %and.i430 = zext i16 %41 to i32
  br label %is_tcon_dfs.exit

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %share_flags.i = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 29
  %42 = ptrtoint ptr %share_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %share_flags.i, align 4
  %and7.i = and i32 %43, 3
  br label %is_tcon_dfs.exit

is_tcon_dfs.exit:                                 ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %and.i430, %cond.true.i ], [ %and7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool8.i.not = icmp eq i32 %cond.i, 0
  br i1 %tobool8.i.not, label %is_tcon_dfs.exit.do.body93_crit_edge, label %if.then34

is_tcon_dfs.exit.do.body93_crit_edge:             ; preds = %is_tcon_dfs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93

if.then34:                                        ; preds = %is_tcon_dfs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call35 = call i32 @cifs_dfs_query_info_nonascii_quirk(i32 noundef %xid, ptr noundef nonnull %8, ptr noundef %1, ptr noundef %full_path) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge
  %rc.1 = phi i32 [ %call35, %if.then34 ], [ %call31, %if.end30.if.end37_crit_edge ]
  %44 = zext i32 %rc.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %rc.1, label %if.end37.do.body93_crit_edge [
    i32 0, label %if.end37.sw.bb_crit_edge
    i32 -66, label %sw.bb80
    i32 -13, label %sw.bb81
  ]

if.end37.sw.bb_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end37.do.body93_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body93

sw.bb:                                            ; preds = %if.end37.sw.bb_crit_edge, %if.end.sw.bb_crit_edge
  %tmp_data.0469 = phi ptr [ %call7.i, %if.end37.sw.bb_crit_edge ], [ null, %if.end.sw.bb_crit_edge ]
  %data.0467 = phi ptr [ %call7.i, %if.end37.sw.bb_crit_edge ], [ %in_data, %if.end.sw.bb_crit_edge ]
  %Attributes = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %data.0467, i32 0, i32 4
  %45 = ptrtoint ptr %Attributes to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %Attributes, align 1
  %47 = and i32 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool39.not = icmp eq i32 %47, 0
  br i1 %tobool39.not, label %sw.bb.if.end77_crit_edge, label %land.lhs.true40

sw.bb.if.end77_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

land.lhs.true40:                                  ; preds = %sw.bb
  %ops41 = getelementptr inbounds %struct.TCP_Server_Info, ptr %12, i32 0, i32 5
  %48 = ptrtoint ptr %ops41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops41, align 4
  %query_reparse_tag = getelementptr inbounds %struct.smb_version_operations, ptr %49, i32 0, i32 37
  %50 = ptrtoint ptr %query_reparse_tag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %query_reparse_tag, align 4
  %tobool42.not = icmp eq ptr %51, null
  br i1 %tobool42.not, label %land.lhs.true40.if.end77_crit_edge, label %if.then43

land.lhs.true40.if.end77_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then43:                                        ; preds = %land.lhs.true40
  %call46 = call i32 %51(i32 noundef %xid, ptr noundef %8, ptr noundef %1, ptr noundef %full_path, ptr noundef nonnull %reparse_tag) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %52 = load i32, ptr @cifsFYI, align 4
  %and49 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then43.if.end77_crit_edge, label %do.body52

if.then43.if.end77_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

do.body52:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info.descriptor.13, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info, %land.lhs.true64)) #15
          to label %if.end77 [label %land.lhs.true64], !srcloc !352

land.lhs.true64:                                  ; preds = %do.body52
  %call65 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info._rs.12, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.if.end77_crit_edge, label %if.then67

land.lhs.true64.if.end77_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %reparse_tag to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reparse_tag, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info.descriptor.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, i32 noundef %54) #15
  br label %if.end77

if.end77:                                         ; preds = %if.then67, %land.lhs.true64.if.end77_crit_edge, %do.body52, %if.then43.if.end77_crit_edge, %land.lhs.true40.if.end77_crit_edge, %sw.bb.if.end77_crit_edge
  %rc.2 = phi i32 [ %call46, %if.then67 ], [ %call46, %land.lhs.true64.if.end77_crit_edge ], [ %call46, %if.then43.if.end77_crit_edge ], [ 0, %land.lhs.true40.if.end77_crit_edge ], [ 0, %sw.bb.if.end77_crit_edge ], [ %call46, %do.body52 ]
  %55 = ptrtoint ptr %adjust_tz to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %adjust_tz, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool78 = icmp ne i8 %56, 0
  %57 = ptrtoint ptr %is_reparse_point to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_reparse_point, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool79 = icmp ne i8 %58, 0
  %59 = ptrtoint ptr %reparse_tag to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reparse_tag, align 4
  call fastcc void @cifs_all_info_to_fattr(ptr noundef nonnull %fattr, ptr noundef nonnull %data.0467, ptr noundef %sb, i1 noundef zeroext %tobool78, i1 noundef zeroext %tobool79, i32 noundef %60)
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end37
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %63 = load i32, ptr @cifsFYI, align 4
  %and.i433 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i433)
  %tobool.not.i434 = icmp eq i32 %and.i433, 0
  br i1 %tobool.not.i434, label %sw.bb80.cifs_create_dfs_fattr.exit_crit_edge, label %do.body2.i

sw.bb80.cifs_create_dfs_fattr.exit_crit_edge:     ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

do.body2.i:                                       ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_create_dfs_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info, %land.lhs.true.i436)) #15
          to label %cifs_create_dfs_fattr.exit [label %land.lhs.true.i436], !srcloc !352

land.lhs.true.i436:                               ; preds = %do.body2.i
  %call7.i435 = call i32 @___ratelimit(ptr noundef nonnull @cifs_create_dfs_fattr._rs, ptr noundef nonnull @.str.99) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i435)
  %tobool8.not.i = icmp eq i32 %call7.i435, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i436.cifs_create_dfs_fattr.exit_crit_edge, label %if.then9.i

land.lhs.true.i436.cifs_create_dfs_fattr.exit_crit_edge: ; preds = %land.lhs.true.i436
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

if.then9.i:                                       ; preds = %land.lhs.true.i436
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_create_dfs_fattr.descriptor, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.3) #15
  br label %cifs_create_dfs_fattr.exit

cifs_create_dfs_fattr.exit:                       ; preds = %if.then9.i, %land.lhs.true.i436.cifs_create_dfs_fattr.exit_crit_edge, %do.body2.i, %sw.bb80.cifs_create_dfs_fattr.exit_crit_edge
  %64 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %cf_mode.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %65 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 16841, ptr %cf_mode.i, align 8
  %cf_uid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx.i = getelementptr inbounds %struct.cifs_sb_info, ptr %62, i32 0, i32 4
  %66 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctx.i, align 4
  %linux_uid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %67, i32 0, i32 23
  %68 = ptrtoint ptr %linux_uid.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %linux_uid.i, align 4
  %70 = ptrtoint ptr %cf_uid.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %cf_uid.i, align 8
  %cf_gid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %linux_gid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %67, i32 0, i32 24
  %71 = ptrtoint ptr %linux_gid.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %linux_gid.i, align 8
  %73 = ptrtoint ptr %cf_gid.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %cf_gid.i, align 4
  %cf_mtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @ktime_get_coarse_real_ts64(ptr noundef %cf_mtime.i) #15
  %cf_atime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  %cf_ctime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  %74 = call ptr @memcpy(ptr %cf_ctime.i, ptr %cf_mtime.i, i32 16)
  %75 = call ptr @memcpy(ptr %cf_atime.i, ptr %cf_mtime.i, i32 16)
  %cf_nlink.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %76 = ptrtoint ptr %cf_nlink.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %cf_nlink.i, align 8
  %77 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %fattr, align 8
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end37
  %call82 = call zeroext i1 @backup_cred(ptr noundef %1) #15
  br i1 %call82, label %land.lhs.true83, label %sw.bb81.out_crit_edge

sw.bb81.out_crit_edge:                            ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true83:                                  ; preds = %sw.bb81
  %vals.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %12, i32 0, i32 6
  %78 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vals.i, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %call.i = call i32 @strcmp(ptr noundef %81, ptr noundef nonnull dereferenceable(4) @.str.102) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i437 = icmp eq i32 %call.i, 0
  br i1 %cmp.i437, label %if.then85, label %land.lhs.true83.out_crit_edge

land.lhs.true83.out_crit_edge:                    ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then85:                                        ; preds = %land.lhs.true83
  %82 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i) #15
  %84 = call ptr @memset(ptr %info.i, i32 0, i32 40)
  %unix_ext.i = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 22
  %85 = ptrtoint ptr %unix_ext.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load1.i = load i16, ptr %unix_ext.i, align 8
  %86 = and i16 %bf.load1.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %bf.cast.not.i = icmp eq i16 %86, 0
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #17
  %info_level.i = getelementptr inbounds %struct.cifs_search_info, ptr %info.i, i32 0, i32 2
  %87 = ptrtoint ptr %info_level.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 514, ptr %info_level.i, align 2
  br label %if.end13.i

if.else.i:                                        ; preds = %if.then85
  %88 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ses, align 8
  %capabilities.i = getelementptr inbounds %struct.cifs_ses, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %capabilities.i, align 8
  %server.i440 = getelementptr inbounds %struct.cifs_ses, ptr %89, i32 0, i32 5
  %92 = ptrtoint ptr %server.i440 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %server.i440, align 8
  %vals.i441 = getelementptr inbounds %struct.TCP_Server_Info, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %vals.i441 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vals.i441, align 8
  %cap_nt_find.i = getelementptr inbounds %struct.smb_version_values, ptr %95, i32 0, i32 13
  %96 = ptrtoint ptr %cap_nt_find.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cap_nt_find.i, align 4
  %and.i442 = and i32 %97, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i442)
  %cmp.i443 = icmp eq i32 %and.i442, 0
  br i1 %cmp.i443, label %if.then4.i, label %if.else6.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %info_level5.i = getelementptr inbounds %struct.cifs_search_info, ptr %info.i, i32 0, i32 2
  %98 = ptrtoint ptr %info_level5.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1, ptr %info_level5.i, align 2
  br label %if.end13.i

if.else6.i:                                       ; preds = %if.else.i
  %mnt_cifs_flags.i444 = getelementptr inbounds %struct.cifs_sb_info, ptr %83, i32 0, i32 6
  %99 = ptrtoint ptr %mnt_cifs_flags.i444 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mnt_cifs_flags.i444, align 4
  %and7.i445 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i445)
  %tobool.not.i446 = icmp eq i32 %and7.i445, 0
  %info_level11.i = getelementptr inbounds %struct.cifs_search_info, ptr %info.i, i32 0, i32 2
  br i1 %tobool.not.i446, label %if.else10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %info_level11.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 261, ptr %info_level11.i, align 2
  br label %if.end13.i

if.else10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %info_level11.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 257, ptr %info_level11.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else10.i, %if.then8.i, %if.then4.i, %if.then.i
  %call14.i = call i32 @CIFSFindFirst(i32 noundef %xid, ptr noundef %8, ptr noundef %full_path, ptr noundef %83, ptr noundef null, i16 noundef zeroext 19, ptr noundef nonnull %info.i, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %ntwrk_buf_start.i = getelementptr inbounds %struct.cifs_search_info, ptr %info.i, i32 0, i32 4
  %103 = ptrtoint ptr %ntwrk_buf_start.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ntwrk_buf_start.i, align 8
  %srch_entries_start.i = getelementptr inbounds %struct.cifs_search_info, ptr %info.i, i32 0, i32 5
  %105 = ptrtoint ptr %srch_entries_start.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %srch_entries_start.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #15
  call void @cifs_dir_info_to_fattr(ptr noundef nonnull %fattr, ptr noundef %106, ptr noundef %1) #15
  %UniqueId = getelementptr inbounds %struct.SEARCH_ID_FULL_DIR_INFO, ptr %106, i32 0, i32 12
  %107 = ptrtoint ptr %UniqueId to i32
  call void @__asan_loadN_noabort(i32 %107, i32 8)
  %108 = load i64, ptr %UniqueId, align 1
  %109 = call i64 @llvm.bswap.i64(i64 %108)
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %110 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %cf_uniqueid, align 8
  br label %handle_mnt_opt

cleanup:                                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i) #15
  br label %out

do.body93:                                        ; preds = %if.end37.do.body93_crit_edge, %is_tcon_dfs.exit.do.body93_crit_edge, %lor.lhs.false2.i.do.body93_crit_edge, %lor.lhs.false.i429.do.body93_crit_edge, %land.lhs.true32.do.body93_crit_edge
  %rc.1457 = phi i32 [ %rc.1, %if.end37.do.body93_crit_edge ], [ -2, %is_tcon_dfs.exit.do.body93_crit_edge ], [ -2, %lor.lhs.false2.i.do.body93_crit_edge ], [ -2, %lor.lhs.false.i429.do.body93_crit_edge ], [ -2, %land.lhs.true32.do.body93_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %111 = load i32, ptr @cifsFYI, align 4
  %and94 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body93.out_crit_edge, label %do.body97

do.body93.out_crit_edge:                          ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body97:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info.descriptor.16, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info, %land.lhs.true109)) #15
          to label %out [label %land.lhs.true109], !srcloc !352

land.lhs.true109:                                 ; preds = %do.body97
  %call110 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info._rs.15, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true109.out_crit_edge, label %if.then112

land.lhs.true109.out_crit_edge:                   ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then112:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info.descriptor.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %rc.1457) #15
  br label %out

sw.epilog:                                        ; preds = %cifs_create_dfs_fattr.exit, %if.end77
  %tmp_data.0468 = phi ptr [ %call7.i, %cifs_create_dfs_fattr.exit ], [ %tmp_data.0469, %if.end77 ]
  %data.0466 = phi ptr [ %call7.i, %cifs_create_dfs_fattr.exit ], [ %data.0467, %if.end77 ]
  %rc.3 = phi i32 [ 0, %cifs_create_dfs_fattr.exit ], [ %rc.2, %if.end77 ]
  call fastcc void @cifs_set_fattr_ino(i32 noundef %xid, ptr noundef %8, ptr noundef %sb, ptr noundef %inode, ptr noundef %full_path, ptr noundef nonnull %data.0466, ptr noundef nonnull %fattr)
  br label %handle_mnt_opt

handle_mnt_opt:                                   ; preds = %sw.epilog, %cleanup.thread
  %tmp_data.0459 = phi ptr [ %tmp_data.0468, %sw.epilog ], [ %call7.i, %cleanup.thread ]
  %smb1_backup_rsp_buf.1 = phi ptr [ null, %sw.epilog ], [ %104, %cleanup.thread ]
  %rc.4 = phi i32 [ %rc.3, %sw.epilog ], [ 0, %cleanup.thread ]
  %cf_cifsattrs = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %112 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cf_cifsattrs, align 4
  %and122 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %handle_mnt_opt.if.end162_crit_edge, label %land.lhs.true124

handle_mnt_opt.if.end162_crit_edge:               ; preds = %handle_mnt_opt
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162

land.lhs.true124:                                 ; preds = %handle_mnt_opt
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %114 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mnt_cifs_flags, align 4
  %and125 = and i32 %115, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %land.lhs.true124.if.end162_crit_edge, label %if.then127

land.lhs.true124.if.end162_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162

if.then127:                                       ; preds = %land.lhs.true124
  %call128 = call fastcc i32 @cifs_sfu_type(ptr noundef nonnull %fattr, ptr noundef %full_path, ptr noundef %1, i32 noundef %xid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then127.if.end162_crit_edge, label %do.body132

if.then127.if.end162_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162

do.body132:                                       ; preds = %if.then127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %116 = load i32, ptr @cifsFYI, align 4
  %and133 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.body132.if.end162_crit_edge, label %do.body136

do.body132.if.end162_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162

do.body136:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info.descriptor.19, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info, %land.lhs.true148)) #15
          to label %if.end162 [label %land.lhs.true148], !srcloc !352

land.lhs.true148:                                 ; preds = %do.body136
  %call149 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info._rs.18, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %land.lhs.true148.if.end162_crit_edge, label %if.then151

land.lhs.true148.if.end162_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162

if.then151:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info.descriptor.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, i32 noundef %call128) #15
  br label %if.end162

if.end162:                                        ; preds = %if.then151, %land.lhs.true148.if.end162_crit_edge, %do.body136, %do.body132.if.end162_crit_edge, %if.then127.if.end162_crit_edge, %land.lhs.true124.if.end162_crit_edge, %handle_mnt_opt.if.end162_crit_edge
  %mnt_cifs_flags163 = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %117 = ptrtoint ptr %mnt_cifs_flags163 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mnt_cifs_flags163, align 4
  %and164 = and i32 %118, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.else204, label %if.then166

if.then166:                                       ; preds = %if.end162
  %119 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %inode, align 4
  %call167 = call i32 @cifs_acl_to_fattr(ptr noundef %1, ptr noundef nonnull %fattr, ptr noundef %120, i1 noundef zeroext true, ptr noundef %full_path, ptr noundef %fid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -66, i32 %call167)
  %cmp168 = icmp eq i32 %call167, -66
  %spec.store.select = select i1 %cmp168, i32 0, i32 %call167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool171.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool171.not, label %if.then166.if.end247_crit_edge, label %do.body174

if.then166.if.end247_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end247

do.body174:                                       ; preds = %if.then166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %121 = load i32, ptr @cifsFYI, align 4
  %and175 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.body174.out_crit_edge, label %do.body178

do.body174.out_crit_edge:                         ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body178:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info.descriptor.22, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info, %land.lhs.true190)) #15
          to label %out [label %land.lhs.true190], !srcloc !352

land.lhs.true190:                                 ; preds = %do.body178
  %call191 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info._rs.21, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %land.lhs.true190.out_crit_edge, label %if.then193

land.lhs.true190.out_crit_edge:                   ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then193:                                       ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info.descriptor.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %spec.store.select) #15
  br label %out

if.else204:                                       ; preds = %if.end162
  %and206 = and i32 %118, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %if.else204.if.end247_crit_edge, label %if.then208

if.else204.if.end247_crit_edge:                   ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end247

if.then208:                                       ; preds = %if.else204
  %122 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %inode, align 4
  %call209 = call i32 @cifs_acl_to_fattr(ptr noundef %1, ptr noundef nonnull %fattr, ptr noundef %123, i1 noundef zeroext false, ptr noundef %full_path, ptr noundef %fid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -66, i32 %call209)
  %cmp210 = icmp eq i32 %call209, -66
  %spec.store.select330 = select i1 %cmp210, i32 0, i32 %call209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select330)
  %tobool213.not = icmp eq i32 %spec.store.select330, 0
  br i1 %tobool213.not, label %if.then208.if.end247_crit_edge, label %do.body216

if.then208.if.end247_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end247

do.body216:                                       ; preds = %if.then208
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %124 = load i32, ptr @cifsFYI, align 4
  %and217 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %do.body216.out_crit_edge, label %do.body220

do.body216.out_crit_edge:                         ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body220:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info.descriptor.25, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info, %land.lhs.true232)) #15
          to label %out [label %land.lhs.true232], !srcloc !352

land.lhs.true232:                                 ; preds = %do.body220
  %call233 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info._rs.24, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %land.lhs.true232.out_crit_edge, label %if.then235

land.lhs.true232.out_crit_edge:                   ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then235:                                       ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info.descriptor.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %spec.store.select330) #15
  br label %out

if.end247:                                        ; preds = %if.then208.if.end247_crit_edge, %if.else204.if.end247_crit_edge, %if.then166.if.end247_crit_edge
  %rc.5 = phi i32 [ 0, %if.then166.if.end247_crit_edge ], [ 0, %if.then208.if.end247_crit_edge ], [ %rc.4, %if.else204.if.end247_crit_edge ]
  %125 = ptrtoint ptr %mnt_cifs_flags163 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mnt_cifs_flags163, align 4
  %and249 = and i32 %126, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end247.if.end253_crit_edge, label %if.then251

if.end247.if.end253_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end253

if.then251:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @cifs_sfu_mode(ptr noundef nonnull %fattr, ptr noundef %full_path, ptr noundef %1, i32 noundef %xid)
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end247.if.end253_crit_edge
  %127 = ptrtoint ptr %mnt_cifs_flags163 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mnt_cifs_flags163, align 4
  %and255 = and i32 %128, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.end253.if.end292_crit_edge, label %if.then257

if.end253.if.end292_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end292

if.then257:                                       ; preds = %if.end253
  %call258 = call i32 @check_mf_symlink(i32 noundef %xid, ptr noundef %8, ptr noundef %1, ptr noundef nonnull %fattr, ptr noundef %full_path) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.then257.if.end292_crit_edge, label %do.body262

if.then257.if.end292_crit_edge:                   ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end292

do.body262:                                       ; preds = %if.then257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %129 = load i32, ptr @cifsFYI, align 4
  %and263 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %do.body262.if.end292_crit_edge, label %do.body266

do.body262.if.end292_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end292

do.body266:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_inode_info.descriptor.28, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_inode_info, %land.lhs.true278)) #15
          to label %if.end292 [label %land.lhs.true278], !srcloc !352

land.lhs.true278:                                 ; preds = %do.body266
  %call279 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_inode_info._rs.27, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %land.lhs.true278.if.end292_crit_edge, label %if.then281

land.lhs.true278.if.end292_crit_edge:             ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end292

if.then281:                                       ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_inode_info.descriptor.28, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef %call258) #15
  br label %if.end292

if.end292:                                        ; preds = %if.then281, %land.lhs.true278.if.end292_crit_edge, %do.body266, %do.body262.if.end292_crit_edge, %if.then257.if.end292_crit_edge, %if.end253.if.end292_crit_edge
  %130 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %inode, align 4
  %tobool293.not = icmp eq ptr %131, null
  br i1 %tobool293.not, label %if.then294, label %if.else299

if.then294:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #17
  %call295 = call ptr @cifs_iget(ptr noundef %sb, ptr noundef nonnull %fattr)
  %132 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call295, ptr %inode, align 4
  %tobool296.not = icmp eq ptr %call295, null
  %spec.select = select i1 %tobool296.not, i32 -12, i32 %rc.5
  br label %out

if.else299:                                       ; preds = %if.end292
  %133 = ptrtoint ptr %mnt_cifs_flags163 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mnt_cifs_flags163, align 4
  %and301 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301)
  %tobool302.not = icmp eq i32 %and301, 0
  br i1 %tobool302.not, label %if.else299.if.end314_crit_edge, label %land.rhs

if.else299.if.end314_crit_edge:                   ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314

land.rhs:                                         ; preds = %if.else299
  %uniqueid = getelementptr i8, ptr %131, i32 -40
  %135 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %uniqueid, align 8
  %cf_uniqueid304 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %137 = ptrtoint ptr %cf_uniqueid304 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %cf_uniqueid304, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %136, i64 %138)
  %cmp305.not = icmp eq i64 %136, %138
  br i1 %cmp305.not, label %land.rhs.if.end314_crit_edge, label %if.then312, !prof !358

land.rhs.if.end314_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end314

if.then312:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %time = getelementptr i8, ptr %131, i32 -56
  %139 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %time, align 8
  br label %out

if.end314:                                        ; preds = %land.rhs.if.end314_crit_edge, %if.else299.if.end314_crit_edge
  %call315 = call i32 @cifs_fattr_to_inode(ptr noundef nonnull %131, ptr noundef nonnull %fattr)
  br label %out

out:                                              ; preds = %if.end314, %if.then312, %if.then294, %if.then235, %land.lhs.true232.out_crit_edge, %do.body220, %do.body216.out_crit_edge, %if.then193, %land.lhs.true190.out_crit_edge, %do.body178, %do.body174.out_crit_edge, %if.then112, %land.lhs.true109.out_crit_edge, %do.body97, %do.body93.out_crit_edge, %cleanup, %land.lhs.true83.out_crit_edge, %sw.bb81.out_crit_edge, %if.end26.out_crit_edge, %if.then19, %land.lhs.true.out_crit_edge, %do.body12, %do.body9.out_crit_edge
  %smb1_backup_rsp_buf.2 = phi ptr [ null, %do.body9.out_crit_edge ], [ null, %land.lhs.true.out_crit_edge ], [ null, %if.then19 ], [ null, %if.end26.out_crit_edge ], [ null, %do.body93.out_crit_edge ], [ null, %land.lhs.true109.out_crit_edge ], [ null, %if.then112 ], [ null, %cleanup ], [ %smb1_backup_rsp_buf.1, %if.then294 ], [ %smb1_backup_rsp_buf.1, %if.end314 ], [ %smb1_backup_rsp_buf.1, %if.then312 ], [ %smb1_backup_rsp_buf.1, %do.body216.out_crit_edge ], [ %smb1_backup_rsp_buf.1, %land.lhs.true232.out_crit_edge ], [ %smb1_backup_rsp_buf.1, %if.then235 ], [ %smb1_backup_rsp_buf.1, %do.body174.out_crit_edge ], [ %smb1_backup_rsp_buf.1, %land.lhs.true190.out_crit_edge ], [ %smb1_backup_rsp_buf.1, %if.then193 ], [ null, %land.lhs.true83.out_crit_edge ], [ null, %sw.bb81.out_crit_edge ], [ null, %do.body12 ], [ null, %do.body97 ], [ %smb1_backup_rsp_buf.1, %do.body178 ], [ %smb1_backup_rsp_buf.1, %do.body220 ]
  %rc.6 = phi i32 [ 0, %do.body9.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.then19 ], [ -12, %if.end26.out_crit_edge ], [ %rc.1457, %do.body93.out_crit_edge ], [ %rc.1457, %land.lhs.true109.out_crit_edge ], [ %rc.1457, %if.then112 ], [ %call14.i, %cleanup ], [ %spec.select, %if.then294 ], [ %call315, %if.end314 ], [ -116, %if.then312 ], [ %spec.store.select330, %do.body216.out_crit_edge ], [ %spec.store.select330, %land.lhs.true232.out_crit_edge ], [ %spec.store.select330, %if.then235 ], [ %spec.store.select, %do.body174.out_crit_edge ], [ %spec.store.select, %land.lhs.true190.out_crit_edge ], [ %spec.store.select, %if.then193 ], [ -13, %land.lhs.true83.out_crit_edge ], [ -13, %sw.bb81.out_crit_edge ], [ 0, %do.body12 ], [ %rc.1457, %do.body97 ], [ %spec.store.select, %do.body178 ], [ %spec.store.select330, %do.body220 ]
  %tmp_data.1 = phi ptr [ null, %do.body9.out_crit_edge ], [ null, %land.lhs.true.out_crit_edge ], [ null, %if.then19 ], [ null, %if.end26.out_crit_edge ], [ %call7.i, %do.body93.out_crit_edge ], [ %call7.i, %land.lhs.true109.out_crit_edge ], [ %call7.i, %if.then112 ], [ %call7.i, %cleanup ], [ %tmp_data.0459, %if.then294 ], [ %tmp_data.0459, %if.end314 ], [ %tmp_data.0459, %if.then312 ], [ %tmp_data.0459, %do.body216.out_crit_edge ], [ %tmp_data.0459, %land.lhs.true232.out_crit_edge ], [ %tmp_data.0459, %if.then235 ], [ %tmp_data.0459, %do.body174.out_crit_edge ], [ %tmp_data.0459, %land.lhs.true190.out_crit_edge ], [ %tmp_data.0459, %if.then193 ], [ %call7.i, %land.lhs.true83.out_crit_edge ], [ %call7.i, %sw.bb81.out_crit_edge ], [ null, %do.body12 ], [ %call7.i, %do.body97 ], [ %tmp_data.0459, %do.body178 ], [ %tmp_data.0459, %do.body220 ]
  call void @cifs_buf_release(ptr noundef %smb1_backup_rsp_buf.2) #15
  call void @cifs_put_tlink(ptr noundef %call1) #15
  call void @kfree(ptr noundef %tmp_data.1) #15
  br label %cleanup317

cleanup317:                                       ; preds = %out, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %rc.6, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reparse_tag) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_reparse_point) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %adjust_tz) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_dfs_query_info_nonascii_quirk(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_all_info_to_fattr(ptr noundef %fattr, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %sb, i1 noundef zeroext %adjust_tz, i1 noundef zeroext %symlink, i32 noundef %reparse_tag) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp8 = alloca %struct.timespec64, align 8
  %tmp9 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @cifs_sb_master_tcon(ptr noundef %1) #15
  %2 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %Attributes = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %info, i32 0, i32 4
  %3 = ptrtoint ptr %Attributes to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %Attributes, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %cf_cifsattrs = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %6 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cf_cifsattrs, align 4
  %DeletePending = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %info, i32 0, i32 9
  %7 = ptrtoint ptr %DeletePending to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %DeletePending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fattr, align 8
  %or = or i32 %10, 2
  store i32 %or, ptr %fattr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %LastAccessTime = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %LastAccessTime to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %LastAccessTime, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool3.not = icmp eq i64 %12, 0
  %cf_atime6 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %12) #15
  %13 = call ptr @memcpy(ptr %cf_atime6, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ktime_get_coarse_real_ts64(ptr noundef %cf_atime6) #15
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %cf_ctime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp8) #15
  %ChangeTime = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %ChangeTime to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %ChangeTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp8, i64 noundef %15) #15
  %16 = call ptr @memcpy(ptr %cf_ctime, ptr %tmp8, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp8) #15
  %cf_mtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp9) #15
  %LastWriteTime = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %LastWriteTime to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %LastWriteTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp9, i64 noundef %18) #15
  %19 = call ptr @memcpy(ptr %cf_mtime, ptr %tmp9, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp9) #15
  br i1 %adjust_tz, label %if.then11, label %if.end7.if.end20_crit_edge

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 7
  %20 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %server, align 8
  %timeAdj = getelementptr inbounds %struct.TCP_Server_Info, ptr %23, i32 0, i32 42
  %24 = ptrtoint ptr %timeAdj to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeAdj, align 4
  %conv = sext i32 %25 to i64
  %26 = ptrtoint ptr %cf_ctime to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cf_ctime, align 8
  %add = add i64 %27, %conv
  store i64 %add, ptr %cf_ctime, align 8
  %28 = load ptr, ptr %ses, align 8
  %server14 = getelementptr inbounds %struct.cifs_ses, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %server14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %server14, align 8
  %timeAdj15 = getelementptr inbounds %struct.TCP_Server_Info, ptr %30, i32 0, i32 42
  %31 = ptrtoint ptr %timeAdj15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timeAdj15, align 4
  %conv16 = sext i32 %32 to i64
  %33 = ptrtoint ptr %cf_mtime to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cf_mtime, align 8
  %add19 = add i64 %34, %conv16
  store i64 %add19, ptr %cf_mtime, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end7.if.end20_crit_edge
  %EndOfFile = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %info, i32 0, i32 7
  %35 = ptrtoint ptr %EndOfFile to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %EndOfFile, align 1
  %37 = call i64 @llvm.bswap.i64(i64 %36)
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %38 = ptrtoint ptr %cf_eof to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %cf_eof, align 8
  %AllocationSize = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %info, i32 0, i32 6
  %39 = ptrtoint ptr %AllocationSize to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %AllocationSize, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %cf_bytes = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 4
  %42 = ptrtoint ptr %cf_bytes to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %cf_bytes, align 8
  %43 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %info, align 1
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %cf_createtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 5
  %46 = ptrtoint ptr %cf_createtime to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %cf_createtime, align 8
  %NumberOfLinks = getelementptr inbounds %struct.FILE_ALL_INFO, ptr %info, i32 0, i32 8
  %47 = ptrtoint ptr %NumberOfLinks to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %NumberOfLinks, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %cf_nlink = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %50 = ptrtoint ptr %cf_nlink to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cf_nlink, align 8
  %51 = zext i32 %reparse_tag to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %reparse_tag, label %if.else80 [
    i32 -1610612707, label %if.then22
    i32 -2147483612, label %if.then31
    i32 -2147483613, label %if.then44
    i32 -2147483611, label %if.then57
    i32 -2147483610, label %if.then70
  ]

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx, align 4
  %file_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %file_mode to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %file_mode, align 4
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %56 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %cf_mode, align 8
  %58 = or i16 %55, %57
  %or26220 = or i16 %58, -24576
  store i16 %or26220, ptr %cf_mode, align 8
  %cf_dtype = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %59 = ptrtoint ptr %cf_dtype to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 10, ptr %cf_dtype, align 4
  br label %if.end150

if.then31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %ctx32 = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx32, align 4
  %file_mode33 = getelementptr inbounds %struct.smb3_fs_context, ptr %61, i32 0, i32 27
  %62 = ptrtoint ptr %file_mode33 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %file_mode33, align 4
  %cf_mode36 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %64 = ptrtoint ptr %cf_mode36 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %cf_mode36, align 8
  %66 = or i16 %63, %65
  %or38219 = or i16 %66, 4096
  store i16 %or38219, ptr %cf_mode36, align 8
  %cf_dtype40 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %67 = ptrtoint ptr %cf_dtype40 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %cf_dtype40, align 4
  br label %if.end150

if.then44:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %ctx45 = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %68 = ptrtoint ptr %ctx45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx45, align 4
  %file_mode46 = getelementptr inbounds %struct.smb3_fs_context, ptr %69, i32 0, i32 27
  %70 = ptrtoint ptr %file_mode46 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %file_mode46, align 4
  %cf_mode49 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %72 = ptrtoint ptr %cf_mode49 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %cf_mode49, align 8
  %74 = or i16 %71, %73
  %or51218 = or i16 %74, -16384
  store i16 %or51218, ptr %cf_mode49, align 8
  %cf_dtype53 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %75 = ptrtoint ptr %cf_dtype53 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 12, ptr %cf_dtype53, align 4
  br label %if.end150

if.then57:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %ctx58 = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %ctx58 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx58, align 4
  %file_mode59 = getelementptr inbounds %struct.smb3_fs_context, ptr %77, i32 0, i32 27
  %78 = ptrtoint ptr %file_mode59 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %file_mode59, align 4
  %cf_mode62 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %80 = ptrtoint ptr %cf_mode62 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %cf_mode62, align 8
  %82 = or i16 %79, %81
  %or64217 = or i16 %82, 8192
  store i16 %or64217, ptr %cf_mode62, align 8
  %cf_dtype66 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %83 = ptrtoint ptr %cf_dtype66 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %cf_dtype66, align 4
  br label %if.end150

if.then70:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %ctx71 = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %ctx71 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx71, align 4
  %file_mode72 = getelementptr inbounds %struct.smb3_fs_context, ptr %85, i32 0, i32 27
  %86 = ptrtoint ptr %file_mode72 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %file_mode72, align 4
  %cf_mode75 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %88 = ptrtoint ptr %cf_mode75 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %cf_mode75, align 8
  %90 = or i16 %87, %89
  %or77216 = or i16 %90, 24576
  store i16 %or77216, ptr %cf_mode75, align 8
  %cf_dtype79 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %91 = ptrtoint ptr %cf_dtype79 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 6, ptr %cf_dtype79, align 4
  br label %if.end150

if.else80:                                        ; preds = %if.end20
  br i1 %symlink, label %if.then82, label %if.else85

if.then82:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #17
  %cf_mode83 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %92 = ptrtoint ptr %cf_mode83 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -24576, ptr %cf_mode83, align 8
  %cf_dtype84 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %93 = ptrtoint ptr %cf_dtype84 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 10, ptr %cf_dtype84, align 4
  br label %if.end150

if.else85:                                        ; preds = %if.else80
  %94 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cf_cifsattrs, align 4
  %and = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool87.not = icmp eq i32 %and, 0
  %ctx100 = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %96 = ptrtoint ptr %ctx100 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctx100, align 4
  br i1 %tobool87.not, label %if.else99, label %if.then88

if.then88:                                        ; preds = %if.else85
  %dir_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %97, i32 0, i32 28
  %98 = ptrtoint ptr %dir_mode to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %dir_mode, align 2
  %100 = or i16 %99, 16384
  %cf_mode93 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %101 = ptrtoint ptr %cf_mode93 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %cf_mode93, align 8
  %cf_dtype94 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %102 = ptrtoint ptr %cf_dtype94 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 4, ptr %cf_dtype94, align 4
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 22
  %103 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load = load i16, ptr %unix_ext, align 8
  %104 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %bf.cast.not = icmp eq i16 %104, 0
  br i1 %bf.cast.not, label %if.then95, label %if.then88.if.end150_crit_edge

if.then88.if.end150_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

if.then95:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  %105 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fattr, align 8
  %or97 = or i32 %106, 16
  store i32 %or97, ptr %fattr, align 8
  br label %if.end150

if.else99:                                        ; preds = %if.else85
  %file_mode101 = getelementptr inbounds %struct.smb3_fs_context, ptr %97, i32 0, i32 27
  %107 = ptrtoint ptr %file_mode101 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %file_mode101, align 4
  %109 = or i16 %108, -32768
  %cf_mode105 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %110 = ptrtoint ptr %cf_mode105 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %cf_mode105, align 8
  %cf_dtype106 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %111 = ptrtoint ptr %cf_dtype106 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 8, ptr %cf_dtype106, align 4
  %and108 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.else99.if.end115_crit_edge, label %if.then110

if.else99.if.end115_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

if.then110:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #17
  %112 = and i16 %109, -147
  %113 = ptrtoint ptr %cf_mode105 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %cf_mode105, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.else99.if.end115_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp117 = icmp eq i32 %48, 0
  br i1 %cmp117, label %land.lhs.true, label %if.end115.if.end150_crit_edge

if.end115.if.end150_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

land.lhs.true:                                    ; preds = %if.end115
  %unix_ext119 = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 22
  %114 = ptrtoint ptr %unix_ext119 to i32
  call void @__asan_load2_noabort(i32 %114)
  %bf.load120 = load i16, ptr %unix_ext119, align 8
  %115 = and i16 %bf.load120, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %bf.cast123.not = icmp eq i16 %115, 0
  br i1 %bf.cast123.not, label %land.lhs.true124, label %land.lhs.true.if.end150_crit_edge

land.lhs.true.if.end150_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

land.lhs.true124:                                 ; preds = %land.lhs.true
  %116 = ptrtoint ptr %DeletePending to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %DeletePending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool126.not = icmp eq i8 %117, 0
  br i1 %tobool126.not, label %do.body128, label %land.lhs.true124.if.end150_crit_edge

land.lhs.true124.if.end150_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

do.body128:                                       ; preds = %land.lhs.true124
  %call129 = call i32 @___ratelimit(ptr noundef nonnull @cifs_all_info_to_fattr._rs, ptr noundef nonnull @__func__.cifs_all_info_to_fattr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %do.body128.do.end140_crit_edge, label %do.end

do.body128.do.end140_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end140

do.end:                                           ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #17
  %118 = ptrtoint ptr %cf_nlink to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cf_nlink, align 8
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %119) #20
  br label %do.end140

do.end140:                                        ; preds = %do.end, %do.body128.do.end140_crit_edge
  %120 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fattr, align 8
  %or142 = or i32 %121, 16
  store i32 %or142, ptr %fattr, align 8
  br label %if.end150

if.end150:                                        ; preds = %do.end140, %land.lhs.true124.if.end150_crit_edge, %land.lhs.true.if.end150_crit_edge, %if.end115.if.end150_crit_edge, %if.then95, %if.then88.if.end150_crit_edge, %if.then82, %if.then70, %if.then57, %if.then44, %if.then31, %if.then22
  %cf_uid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx151 = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %122 = ptrtoint ptr %ctx151 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ctx151, align 4
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %123, i32 0, i32 23
  %124 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %linux_uid, align 4
  %126 = ptrtoint ptr %cf_uid to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %cf_uid, align 8
  %cf_gid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %127 = load ptr, ptr %ctx151, align 4
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %127, i32 0, i32 24
  %128 = ptrtoint ptr %linux_gid to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %linux_gid, align 8
  %130 = ptrtoint ptr %cf_gid to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %cf_gid, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @backup_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_dir_info_to_fattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_set_fattr_ino(i32 noundef %xid, ptr noundef %tcon, ptr noundef %sb, ptr nocapture noundef readonly %inode, ptr noundef %full_path, ptr noundef %data, ptr noundef %fattr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %uniqueid = getelementptr i8, ptr %5, i32 -40
  %6 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %uniqueid, align 8
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %8 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cf_uniqueid, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @iunique(ptr noundef %sb, i32 noundef 2) #15
  %conv = zext i32 %call5 to i64
  %cf_uniqueid6 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %9 = ptrtoint ptr %cf_uniqueid6 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %cf_uniqueid6, align 8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %10 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ses, align 8
  %server1 = getelementptr inbounds %struct.cifs_ses, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %server1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %server1, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %get_srv_inum = getelementptr inbounds %struct.smb_version_operations, ptr %15, i32 0, i32 38
  %16 = ptrtoint ptr %get_srv_inum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_srv_inum, align 4
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode, align 4
  %tobool8.not = icmp eq ptr %19, null
  %spec.select = select i1 %tobool8.not, ptr %tcon, ptr null
  %cf_uniqueid9 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %call10 = tail call i32 %17(i32 noundef %xid, ptr noundef %spec.select, ptr noundef %1, ptr noundef %full_path, ptr noundef %cf_uniqueid9, ptr noundef %data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end23, label %if.then12

if.then12:                                        ; preds = %if.end7
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inode, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %if.else18, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %uniqueid16 = getelementptr i8, ptr %21, i32 -40
  %22 = ptrtoint ptr %uniqueid16 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %uniqueid16, align 8
  %24 = ptrtoint ptr %cf_uniqueid9 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %cf_uniqueid9, align 8
  br label %cleanup

if.else18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 @iunique(ptr noundef %sb, i32 noundef 2) #15
  %conv20 = zext i32 %call19 to i64
  %25 = ptrtoint ptr %cf_uniqueid9 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv20, ptr %cf_uniqueid9, align 8
  tail call void @cifs_autodisable_serverino(ptr noundef %1) #15
  br label %cleanup

if.end23:                                         ; preds = %if.end7
  %26 = ptrtoint ptr %cf_uniqueid9 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cf_uniqueid9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp = icmp eq i64 %27, 0
  br i1 %cmp, label %land.lhs.true, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end23
  %28 = ptrtoint ptr %full_path to i32
  call void @__asan_load1_noabort(i32 %28)
  %char0 = load i8, ptr %full_path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp27 = icmp eq i8 %char0, 0
  br i1 %cmp27, label %do.body30, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body30:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %29 = load i32, ptr @cifsFYI, align 4
  %and31 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.do.end49_crit_edge, label %do.body34

do.body30.do.end49_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end49

do.body34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_set_fattr_ino.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_set_fattr_ino, %land.lhs.true39)) #15
          to label %do.end49 [label %land.lhs.true39], !srcloc !352

land.lhs.true39:                                  ; preds = %do.body34
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_set_fattr_ino._rs, ptr noundef nonnull @.str.103) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end49_crit_edge, label %if.then42

land.lhs.true39.do.end49_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end49

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_set_fattr_ino.descriptor, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.3) #15
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %land.lhs.true39.do.end49_crit_edge, %do.body34, %do.body30.do.end49_crit_edge
  %30 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inode, align 4
  %tobool50.not = icmp eq ptr %31, null
  br i1 %tobool50.not, label %if.else55, label %if.then51

if.then51:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #17
  %uniqueid53 = getelementptr i8, ptr %31, i32 -40
  %32 = ptrtoint ptr %uniqueid53 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %uniqueid53, align 8
  %34 = ptrtoint ptr %cf_uniqueid9 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %cf_uniqueid9, align 8
  br label %cleanup

if.else55:                                        ; preds = %do.end49
  %35 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fattr, align 8
  %or = or i32 %36, 32
  store i32 %or, ptr %fattr, align 8
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %37 = ptrtoint ptr %treeName to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %treeName, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not3.i = icmp eq i8 %38, 0
  br i1 %tobool.not3.i, label %if.else55.simple_hashstr.exit_crit_edge, label %if.else55.while.body.i_crit_edge

if.else55.while.body.i_crit_edge:                 ; preds = %if.else55
  br label %while.body.i

if.else55.simple_hashstr.exit_crit_edge:          ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #17
  br label %simple_hashstr.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else55.while.body.i_crit_edge
  %39 = phi i8 [ %41, %while.body.i.while.body.i_crit_edge ], [ %38, %if.else55.while.body.i_crit_edge ]
  %hash.05.i = phi i64 [ %mul.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.else55.while.body.i_crit_edge ]
  %str.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %treeName, %if.else55.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.04.i, i32 1
  %conv.i = zext i8 %39 to i64
  %add.i = add i64 %hash.05.i, %conv.i
  %mul.i = mul i64 %add.i, 1125899906842597
  %40 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %while.body.i.simple_hashstr.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.simple_hashstr.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %simple_hashstr.exit

simple_hashstr.exit:                              ; preds = %while.body.i.simple_hashstr.exit_crit_edge, %if.else55.simple_hashstr.exit_crit_edge
  %hash.0.lcssa.i = phi i64 [ 0, %if.else55.simple_hashstr.exit_crit_edge ], [ %mul.i, %while.body.i.simple_hashstr.exit_crit_edge ]
  %42 = ptrtoint ptr %cf_uniqueid9 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %hash.0.lcssa.i, ptr %cf_uniqueid9, align 8
  br label %cleanup

cleanup:                                          ; preds = %simple_hashstr.exit, %if.then51, %land.lhs.true.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.else18, %if.then14, %if.else, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_sfu_type(ptr nocapture noundef %fattr, ptr noundef %path, ptr noundef %cifs_sb, i32 noundef %xid) unnamed_addr #0 align 64 {
entry:
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  %io_parms = alloca %struct.cifs_io_parms, align 8
  %buf = alloca [24 x i8], align 1
  %bytes_read = alloca i32, align 4
  %pbuf = alloca ptr, align 4
  %buf_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #15
  %0 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oplock, align 4, !annotation !363
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #15
  %1 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #15
  %2 = call ptr @memset(ptr %oparms, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %io_parms) #15
  %3 = call ptr @memset(ptr %io_parms, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #15
  %4 = call ptr @memset(ptr %buf, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read) #15
  %5 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %bytes_read, align 4, !annotation !363
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbuf) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_type) #15
  %6 = ptrtoint ptr %buf_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %buf_type, align 4
  %7 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %pbuf, align 4
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %8 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cf_mode, align 8
  %10 = and i16 %9, 4095
  store i16 %10, ptr %cf_mode, align 8
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %11 = ptrtoint ptr %cf_eof to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cf_eof, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %13 = or i16 %10, 4096
  %14 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %cf_mode, align 8
  %cf_dtype = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %15 = ptrtoint ptr %cf_dtype to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %cf_dtype, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %12)
  %cmp7 = icmp ult i64 %12, 8
  br i1 %cmp7, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %16 = or i16 %10, -32768
  %17 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %cf_mode, align 8
  %cf_dtype14 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %18 = ptrtoint ptr %cf_dtype14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %cf_dtype14, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %call = call ptr @cifs_sb_tlink(ptr noundef %cifs_sb) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call, i32 0, i32 5
  %20 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tl_tcon.i, align 4
  %22 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %oparms, align 4
  %cifs_sb22 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %23 = ptrtoint ptr %cifs_sb22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cifs_sb, ptr %cifs_sb22, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %24 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2147483648, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %cifs_sb, null
  br i1 %tobool.not.i, label %if.end19.if.else.i_crit_edge, label %land.lhs.true.i

if.end19.if.else.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end19
  %call.i = call zeroext i1 @backup_cred(ptr noundef nonnull %cifs_sb) #15
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end19.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i282 = phi i32 [ 64, %if.else.i ], [ 16448, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %25 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i282, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %26 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %disposition, align 4
  %path24 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %27 = ptrtoint ptr %path24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %path, ptr %path24, align 4
  %fid25 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %28 = ptrtoint ptr %fid25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fid, ptr %fid25, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %29 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %21, i32 0, i32 7
  %30 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %server, align 8
  %oplocks = getelementptr inbounds %struct.TCP_Server_Info, ptr %33, i32 0, i32 37
  %34 = ptrtoint ptr %oplocks to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load26 = load i8, ptr %oplocks, align 8
  %35 = lshr i8 %bf.load26, 6
  %36 = and i8 %35, 2
  %37 = zext i8 %36 to i32
  %38 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %oplock, align 4
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %33, i32 0, i32 5
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %open = getelementptr inbounds %struct.smb_version_operations, ptr %40, i32 0, i32 54
  %41 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %open, align 4
  %call32 = call i32 %42(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %if.end53, label %do.body34

do.body34:                                        ; preds = %cifs_create_options.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %43 = load i32, ptr @cifsFYI, align 4
  %and35 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.do.end52_crit_edge, label %do.body38

do.body34.do.end52_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end52

do.body38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_sfu_type.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_sfu_type, %land.lhs.true)) #15
          to label %do.end52 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body38
  %call43 = call i32 @___ratelimit(ptr noundef nonnull @cifs_sfu_type._rs, ptr noundef nonnull @.str.105) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true.do.end52_crit_edge, label %if.then45

land.lhs.true.do.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end52

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_sfu_type.descriptor, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.3, ptr noundef %path, i32 noundef %call32) #15
  br label %do.end52

do.end52:                                         ; preds = %if.then45, %land.lhs.true.do.end52_crit_edge, %do.body38, %do.body34.do.end52_crit_edge
  call void @cifs_put_tlink(ptr noundef %call) #15
  br label %cleanup

if.end53:                                         ; preds = %cifs_create_options.exit
  %44 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fid, align 8
  %46 = ptrtoint ptr %io_parms to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %io_parms, align 8
  %47 = call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 69
  %51 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tgid, align 4
  %pid = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 3
  %53 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %pid, align 8
  %tcon56 = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 6
  %54 = ptrtoint ptr %tcon56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %21, ptr %tcon56, align 4
  %offset = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 4
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %offset, align 8
  %length = getelementptr inbounds %struct.cifs_io_parms, ptr %io_parms, i32 0, i32 5
  %56 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %length, align 8
  %57 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ses, align 8
  %server58 = getelementptr inbounds %struct.cifs_ses, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %server58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %server58, align 8
  %ops59 = getelementptr inbounds %struct.TCP_Server_Info, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %ops59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops59, align 4
  %sync_read = getelementptr inbounds %struct.smb_version_operations, ptr %62, i32 0, i32 61
  %63 = ptrtoint ptr %sync_read to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sync_read, align 4
  %call60 = call i32 %64(i32 noundef %xid, ptr noundef nonnull %fid, ptr noundef nonnull %io_parms, ptr noundef nonnull %bytes_read, ptr noundef nonnull %pbuf, ptr noundef nonnull %buf_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %land.lhs.true63, label %if.end53.if.else214_crit_edge

if.end53.if.else214_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else214

land.lhs.true63:                                  ; preds = %if.end53
  %65 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %66)
  %cmp64 = icmp ugt i32 %66, 7
  br i1 %cmp64, label %if.then66, label %land.lhs.true63.if.else214_crit_edge

land.lhs.true63.if.else214_crit_edge:             ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else214

if.then66:                                        ; preds = %land.lhs.true63
  %67 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pbuf, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) @.str.107, ptr noundef dereferenceable(8) %68, i32 8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp68 = icmp eq i32 %bcmp, 0
  br i1 %cmp68, label %do.body72, label %if.else113

do.body72:                                        ; preds = %if.then66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %69 = load i32, ptr @cifsFYI, align 4
  %and73 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.body72.do.end100_crit_edge, label %do.body76

do.body72.do.end100_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end100

do.body76:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_sfu_type.descriptor.109, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_sfu_type, %land.lhs.true88)) #15
          to label %do.end100 [label %land.lhs.true88], !srcloc !352

land.lhs.true88:                                  ; preds = %do.body76
  %call89 = call i32 @___ratelimit(ptr noundef nonnull @cifs_sfu_type._rs.108, ptr noundef nonnull @.str.105) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.lhs.true88.do.end100_crit_edge, label %if.then91

land.lhs.true88.do.end100_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end100

if.then91:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_sfu_type.descriptor.109, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.3) #15
  br label %do.end100

do.end100:                                        ; preds = %if.then91, %land.lhs.true88.do.end100_crit_edge, %do.body76, %do.body72.do.end100_crit_edge
  %70 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cf_mode, align 8
  %72 = or i16 %71, 24576
  store i16 %72, ptr %cf_mode, align 8
  %cf_dtype105 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %73 = ptrtoint ptr %cf_dtype105 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 6, ptr %cf_dtype105, align 4
  %74 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %75)
  %cmp106 = icmp eq i32 %75, 24
  br i1 %cmp106, label %if.then108, label %do.end100.if.end220_crit_edge

do.end100.if.end220_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end220

if.then108:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #17
  %76 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pbuf, align 4
  %add.ptr = getelementptr i8, ptr %77, i32 8
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr, align 8
  %80 = call i64 @llvm.bswap.i64(i64 %79)
  %add.ptr109 = getelementptr i8, ptr %77, i32 16
  %81 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %add.ptr109, align 8
  %83 = call i64 @llvm.bswap.i64(i64 %82)
  %shl = shl i64 %80, 20
  %or110 = or i64 %shl, %83
  %conv111 = trunc i64 %or110 to i32
  %cf_rdev = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 9
  %84 = ptrtoint ptr %cf_rdev to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv111, ptr %cf_rdev, align 4
  br label %if.end220

if.else113:                                       ; preds = %if.then66
  %bcmp271 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) @.str.111, ptr noundef dereferenceable(8) %68, i32 8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp271)
  %cmp115 = icmp eq i32 %bcmp271, 0
  br i1 %cmp115, label %do.body119, label %if.else165

do.body119:                                       ; preds = %if.else113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %85 = load i32, ptr @cifsFYI, align 4
  %and120 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body119.do.end147_crit_edge, label %do.body123

do.body119.do.end147_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end147

do.body123:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_sfu_type.descriptor.113, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_sfu_type, %land.lhs.true135)) #15
          to label %do.end147 [label %land.lhs.true135], !srcloc !352

land.lhs.true135:                                 ; preds = %do.body123
  %call136 = call i32 @___ratelimit(ptr noundef nonnull @cifs_sfu_type._rs.112, ptr noundef nonnull @.str.105) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %land.lhs.true135.do.end147_crit_edge, label %if.then138

land.lhs.true135.do.end147_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end147

if.then138:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_sfu_type.descriptor.113, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.3) #15
  br label %do.end147

do.end147:                                        ; preds = %if.then138, %land.lhs.true135.do.end147_crit_edge, %do.body123, %do.body119.do.end147_crit_edge
  %86 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %cf_mode, align 8
  %88 = or i16 %87, 8192
  store i16 %88, ptr %cf_mode, align 8
  %cf_dtype152 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %89 = ptrtoint ptr %cf_dtype152 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %cf_dtype152, align 4
  %90 = ptrtoint ptr %bytes_read to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bytes_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %91)
  %cmp153 = icmp eq i32 %91, 24
  br i1 %cmp153, label %if.then155, label %do.end147.if.end220_crit_edge

do.end147.if.end220_crit_edge:                    ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end220

if.then155:                                       ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pbuf, align 4
  %add.ptr158 = getelementptr i8, ptr %93, i32 8
  %94 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %add.ptr158, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95)
  %add.ptr159 = getelementptr i8, ptr %93, i32 16
  %97 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %add.ptr159, align 8
  %99 = call i64 @llvm.bswap.i64(i64 %98)
  %shl160 = shl i64 %96, 20
  %or161 = or i64 %shl160, %99
  %conv162 = trunc i64 %or161 to i32
  %cf_rdev163 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 9
  %100 = ptrtoint ptr %cf_rdev163 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv162, ptr %cf_rdev163, align 4
  br label %if.end220

if.else165:                                       ; preds = %if.else113
  %bcmp272 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @.str.115, ptr noundef dereferenceable(7) %68, i32 7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp272)
  %cmp167 = icmp eq i32 %bcmp272, 0
  br i1 %cmp167, label %do.body171, label %if.else205

do.body171:                                       ; preds = %if.else165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %101 = load i32, ptr @cifsFYI, align 4
  %and172 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.body171.do.end199_crit_edge, label %do.body175

do.body171.do.end199_crit_edge:                   ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end199

do.body175:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_sfu_type.descriptor.117, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_sfu_type, %land.lhs.true187)) #15
          to label %do.end199 [label %land.lhs.true187], !srcloc !352

land.lhs.true187:                                 ; preds = %do.body175
  %call188 = call i32 @___ratelimit(ptr noundef nonnull @cifs_sfu_type._rs.116, ptr noundef nonnull @.str.105) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %land.lhs.true187.do.end199_crit_edge, label %if.then190

land.lhs.true187.do.end199_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end199

if.then190:                                       ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_sfu_type.descriptor.117, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.3) #15
  br label %do.end199

do.end199:                                        ; preds = %if.then190, %land.lhs.true187.do.end199_crit_edge, %do.body175, %do.body171.do.end199_crit_edge
  %102 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %cf_mode, align 8
  %104 = or i16 %103, -24576
  store i16 %104, ptr %cf_mode, align 8
  %cf_dtype204 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %105 = ptrtoint ptr %cf_dtype204 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 10, ptr %cf_dtype204, align 4
  br label %if.end220

if.else205:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %cf_mode, align 8
  %108 = or i16 %107, -32768
  store i16 %108, ptr %cf_mode, align 8
  %cf_dtype210 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %109 = ptrtoint ptr %cf_dtype210 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 8, ptr %cf_dtype210, align 4
  br label %if.end220

if.else214:                                       ; preds = %land.lhs.true63.if.else214_crit_edge, %if.end53.if.else214_crit_edge
  %110 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %cf_mode, align 8
  %112 = or i16 %111, -32768
  store i16 %112, ptr %cf_mode, align 8
  %cf_dtype219 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %113 = ptrtoint ptr %cf_dtype219 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 8, ptr %cf_dtype219, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.else214, %if.else205, %do.end199, %if.then155, %do.end147.if.end220_crit_edge, %if.then108, %do.end100.if.end220_crit_edge
  %rc.0 = phi i32 [ 0, %if.then108 ], [ 0, %do.end100.if.end220_crit_edge ], [ 0, %if.then155 ], [ 0, %do.end147.if.end220_crit_edge ], [ 0, %do.end199 ], [ -95, %if.else205 ], [ -95, %if.else214 ]
  %114 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ses, align 8
  %server222 = getelementptr inbounds %struct.cifs_ses, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %server222 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %server222, align 8
  %ops223 = getelementptr inbounds %struct.TCP_Server_Info, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %ops223 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops223, align 4
  %close = getelementptr inbounds %struct.smb_version_operations, ptr %119, i32 0, i32 56
  %120 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %close, align 4
  call void %121(i32 noundef %xid, ptr noundef %21, ptr noundef nonnull %fid) #15
  call void @cifs_put_tlink(ptr noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end220, %do.end52, %if.then17, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then9 ], [ %19, %if.then17 ], [ %call32, %do.end52 ], [ %rc.0, %if.end220 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_type) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbuf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %io_parms) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_acl_to_fattr(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_sfu_mode(ptr nocapture noundef %fattr, ptr noundef %path, ptr noundef %cifs_sb, i32 noundef %xid) unnamed_addr #0 align 64 {
entry:
  %ea_value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ea_value) #15
  %0 = ptrtoint ptr %ea_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ea_value, align 4
  %call = tail call ptr @cifs_sb_tlink(ptr noundef %cifs_sb) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %query_all_EAs = getelementptr inbounds %struct.smb_version_operations, ptr %8, i32 0, i32 91
  %9 = ptrtoint ptr %query_all_EAs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %query_all_EAs, align 4
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cifs_put_tlink(ptr noundef %call) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call10 = call i32 %10(i32 noundef %xid, ptr noundef %2, ptr noundef %path, ptr noundef nonnull @.str.119, ptr noundef nonnull %ea_value, i32 noundef 4, ptr noundef %cifs_sb) #15
  call void @cifs_put_tlink(ptr noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call10)
  %cmp13 = icmp sgt i32 %call10, 3
  br i1 %cmp13, label %if.then14, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then14:                                        ; preds = %if.end5
  %11 = ptrtoint ptr %ea_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ea_value, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %14 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cf_mode, align 8
  %16 = and i16 %15, -3585
  store i16 %16, ptr %cf_mode, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %17 = load i32, ptr @cifsFYI, align 4
  %and18 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.then14.do.end36_crit_edge, label %do.body20

if.then14.do.end36_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end36

do.body20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_sfu_mode.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_sfu_mode, %land.lhs.true)) #15
          to label %do.end36 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body20
  %call25 = call i32 @___ratelimit(ptr noundef nonnull @cifs_sfu_mode._rs, ptr noundef nonnull @.str.120) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end36_crit_edge, label %if.then27

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end36

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cf_mode, align 8
  %conv29 = zext i16 %19 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_sfu_mode.descriptor, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %conv29) #15
  br label %do.end36

do.end36:                                         ; preds = %if.then27, %land.lhs.true.do.end36_crit_edge, %do.body20, %if.then14.do.end36_crit_edge
  %20 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cf_mode, align 8
  %22 = trunc i32 %13 to i16
  %23 = and i16 %22, 3584
  %conv40 = or i16 %21, %23
  store i16 %conv40, ptr %cf_mode, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %24 = load i32, ptr @cifsFYI, align 4
  %and44 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.end36.cleanup_crit_edge, label %do.body47

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body47:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_sfu_mode.descriptor.123, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_sfu_mode, %land.lhs.true59)) #15
          to label %cleanup [label %land.lhs.true59], !srcloc !352

land.lhs.true59:                                  ; preds = %do.body47
  %call60 = call i32 @___ratelimit(ptr noundef nonnull @cifs_sfu_mode._rs.122, ptr noundef nonnull @.str.120) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true59.cleanup_crit_edge, label %if.then62

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_sfu_mode.descriptor.123, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.3, i32 noundef %13) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %land.lhs.true59.cleanup_crit_edge, %do.body47, %do.end36.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ea_value) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_buf_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb311_posix_get_inode_info(ptr nocapture noundef %inode, ptr noundef %full_path, ptr noundef %sb, i32 noundef %xid) local_unnamed_addr #0 align 64 {
entry:
  %adjust_tz = alloca i8, align 1
  %fattr = alloca %struct.cifs_fattr, align 8
  %symlink = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %adjust_tz) #15
  %2 = ptrtoint ptr %adjust_tz to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %adjust_tz, align 1
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fattr) #15
  %3 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %symlink) #15
  %4 = ptrtoint ptr %symlink to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %symlink, align 1
  %call1 = tail call ptr @cifs_sb_tlink(ptr noundef %1) #15
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call1, i32 0, i32 5
  %6 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tl_tcon.i, align 4
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inode, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.if.end23_crit_edge, label %land.lhs.true.i

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true.i:                                  ; preds = %if.end
  %oplock.i = getelementptr i8, ptr %9, i32 -116
  %10 = ptrtoint ptr %oplock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oplock.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.is_inode_cache_good.exit_crit_edge

land.lhs.true.i.is_inode_cache_good.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_inode_cache_good.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %i_sb.i = getelementptr i8, ptr %9, i32 28
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and4.i = and i32 %17, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.end23_crit_edge, label %lor.lhs.false.i.is_inode_cache_good.exit_crit_edge

lor.lhs.false.i.is_inode_cache_good.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_inode_cache_good.exit

lor.lhs.false.i.if.end23_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

is_inode_cache_good.exit:                         ; preds = %lor.lhs.false.i.is_inode_cache_good.exit_crit_edge, %land.lhs.true.i.is_inode_cache_good.exit_crit_edge
  %time.i = getelementptr i8, ptr %9, i32 -56
  %18 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %time.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i162.not = icmp eq i32 %19, 0
  br i1 %cmp.i162.not, label %is_inode_cache_good.exit.if.end23_crit_edge, label %do.body7

is_inode_cache_good.exit.if.end23_crit_edge:      ; preds = %is_inode_cache_good.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.body7:                                         ; preds = %is_inode_cache_good.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %20 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body7.out_crit_edge, label %do.body9

do.body7.out_crit_edge:                           ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body9:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb311_posix_get_inode_info.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb311_posix_get_inode_info, %land.lhs.true)) #15
          to label %out [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body9
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @smb311_posix_get_inode_info._rs, ptr noundef nonnull @.str.29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.out_crit_edge, label %if.then16

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb311_posix_get_inode_info.descriptor, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #15
  br label %out

if.end23:                                         ; preds = %is_inode_cache_good.exit.if.end23_crit_edge, %lor.lhs.false.i.if.end23_crit_edge, %if.end.if.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 80) #18
  %tobool25.not = icmp eq ptr %call7.i, null
  br i1 %tobool25.not, label %if.end23.out_crit_edge, label %if.end27

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end27:                                         ; preds = %if.end23
  %call28 = call i32 @smb311_posix_query_path_info(i32 noundef %xid, ptr noundef %7, ptr noundef %1, ptr noundef %full_path, ptr noundef nonnull %call7.i, ptr noundef nonnull %adjust_tz, ptr noundef nonnull %symlink) #15
  %22 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %call28, label %do.body34 [
    i32 0, label %sw.bb
    i32 -66, label %sw.bb31
    i32 -13, label %if.end27.out_crit_edge
  ]

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %adjust_tz to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adjust_tz, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29 = icmp ne i8 %24, 0
  %25 = ptrtoint ptr %symlink to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %symlink, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool30 = icmp ne i8 %26, 0
  call fastcc void @smb311_posix_info_to_fattr(ptr noundef nonnull %fattr, ptr noundef nonnull %call7.i, ptr noundef %sb, i1 noundef zeroext %tobool29, i1 noundef zeroext %tobool30)
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end27
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %29 = load i32, ptr @cifsFYI, align 4
  %and.i164 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool.not.i165 = icmp eq i32 %and.i164, 0
  br i1 %tobool.not.i165, label %sw.bb31.cifs_create_dfs_fattr.exit_crit_edge, label %do.body2.i

sw.bb31.cifs_create_dfs_fattr.exit_crit_edge:     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

do.body2.i:                                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_create_dfs_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb311_posix_get_inode_info, %land.lhs.true.i167)) #15
          to label %cifs_create_dfs_fattr.exit [label %land.lhs.true.i167], !srcloc !352

land.lhs.true.i167:                               ; preds = %do.body2.i
  %call7.i166 = call i32 @___ratelimit(ptr noundef nonnull @cifs_create_dfs_fattr._rs, ptr noundef nonnull @.str.99) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i166)
  %tobool8.not.i = icmp eq i32 %call7.i166, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i167.cifs_create_dfs_fattr.exit_crit_edge, label %if.then9.i

land.lhs.true.i167.cifs_create_dfs_fattr.exit_crit_edge: ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

if.then9.i:                                       ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_create_dfs_fattr.descriptor, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.3) #15
  br label %cifs_create_dfs_fattr.exit

cifs_create_dfs_fattr.exit:                       ; preds = %if.then9.i, %land.lhs.true.i167.cifs_create_dfs_fattr.exit_crit_edge, %do.body2.i, %sw.bb31.cifs_create_dfs_fattr.exit_crit_edge
  %30 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %cf_mode.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %31 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16841, ptr %cf_mode.i, align 8
  %cf_uid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx.i = getelementptr inbounds %struct.cifs_sb_info, ptr %28, i32 0, i32 4
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i, align 4
  %linux_uid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %linux_uid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %linux_uid.i, align 4
  %36 = ptrtoint ptr %cf_uid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cf_uid.i, align 8
  %cf_gid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %linux_gid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %33, i32 0, i32 24
  %37 = ptrtoint ptr %linux_gid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %linux_gid.i, align 8
  %39 = ptrtoint ptr %cf_gid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cf_gid.i, align 4
  %cf_mtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @ktime_get_coarse_real_ts64(ptr noundef %cf_mtime.i) #15
  %cf_atime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  %cf_ctime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  %40 = call ptr @memcpy(ptr %cf_ctime.i, ptr %cf_mtime.i, i32 16)
  %41 = call ptr @memcpy(ptr %cf_atime.i, ptr %cf_mtime.i, i32 16)
  %cf_nlink.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %42 = ptrtoint ptr %cf_nlink.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %cf_nlink.i, align 8
  %43 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %fattr, align 8
  br label %sw.epilog

do.body34:                                        ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %44 = load i32, ptr @cifsFYI, align 4
  %and35 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.out_crit_edge, label %do.body38

do.body34.out_crit_edge:                          ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb311_posix_get_inode_info.descriptor.31, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb311_posix_get_inode_info, %land.lhs.true50)) #15
          to label %out [label %land.lhs.true50], !srcloc !352

land.lhs.true50:                                  ; preds = %do.body38
  %call51 = call i32 @___ratelimit(ptr noundef nonnull @smb311_posix_get_inode_info._rs.30, ptr noundef nonnull @.str.29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.out_crit_edge, label %if.then53

land.lhs.true50.out_crit_edge:                    ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then53:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb311_posix_get_inode_info.descriptor.31, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.29, i32 noundef %call28) #15
  br label %out

sw.epilog:                                        ; preds = %cifs_create_dfs_fattr.exit, %sw.bb
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mnt_cifs_flags, align 4
  %and63 = and i32 %46, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %sw.epilog.if.end100_crit_edge, label %if.then65

sw.epilog.if.end100_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then65:                                        ; preds = %sw.epilog
  %call66 = call i32 @check_mf_symlink(i32 noundef %xid, ptr noundef %7, ptr noundef %1, ptr noundef nonnull %fattr, ptr noundef %full_path) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end100_crit_edge, label %do.body70

if.then65.if.end100_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

do.body70:                                        ; preds = %if.then65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %47 = load i32, ptr @cifsFYI, align 4
  %and71 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.if.end100_crit_edge, label %do.body74

do.body70.if.end100_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

do.body74:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb311_posix_get_inode_info.descriptor.33, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb311_posix_get_inode_info, %land.lhs.true86)) #15
          to label %if.end100 [label %land.lhs.true86], !srcloc !352

land.lhs.true86:                                  ; preds = %do.body74
  %call87 = call i32 @___ratelimit(ptr noundef nonnull @smb311_posix_get_inode_info._rs.32, ptr noundef nonnull @.str.29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true86.if.end100_crit_edge, label %if.then89

land.lhs.true86.if.end100_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then89:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb311_posix_get_inode_info.descriptor.33, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef %call66) #15
  br label %if.end100

if.end100:                                        ; preds = %if.then89, %land.lhs.true86.if.end100_crit_edge, %do.body74, %do.body70.if.end100_crit_edge, %if.then65.if.end100_crit_edge, %sw.epilog.if.end100_crit_edge
  %48 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %inode, align 4
  %tobool101.not = icmp eq ptr %49, null
  br i1 %tobool101.not, label %if.then102, label %if.else107

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %call103 = call ptr @cifs_iget(ptr noundef %sb, ptr noundef nonnull %fattr)
  %50 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call103, ptr %inode, align 4
  %tobool104.not = icmp eq ptr %call103, null
  %spec.select = select i1 %tobool104.not, i32 -12, i32 0
  br label %out

if.else107:                                       ; preds = %if.end100
  %51 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mnt_cifs_flags, align 4
  %and109 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.else107.if.end120_crit_edge, label %land.rhs

if.else107.if.end120_crit_edge:                   ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

land.rhs:                                         ; preds = %if.else107
  %uniqueid = getelementptr i8, ptr %49, i32 -40
  %53 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %uniqueid, align 8
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %55 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %cf_uniqueid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %56)
  %cmp.not = icmp eq i64 %54, %56
  br i1 %cmp.not, label %land.rhs.if.end120_crit_edge, label %if.then118, !prof !358

land.rhs.if.end120_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

if.then118:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %time = getelementptr i8, ptr %49, i32 -56
  %57 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %time, align 8
  br label %out

if.end120:                                        ; preds = %land.rhs.if.end120_crit_edge, %if.else107.if.end120_crit_edge
  %call121 = call i32 @cifs_fattr_to_inode(ptr noundef nonnull %49, ptr noundef nonnull %fattr)
  br label %out

out:                                              ; preds = %if.end120, %if.then118, %if.then102, %if.then53, %land.lhs.true50.out_crit_edge, %do.body38, %do.body34.out_crit_edge, %if.end27.out_crit_edge, %if.end23.out_crit_edge, %if.then16, %land.lhs.true.out_crit_edge, %do.body9, %do.body7.out_crit_edge
  %rc.1 = phi i32 [ 0, %if.then16 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %do.body7.out_crit_edge ], [ %call28, %if.then53 ], [ %call28, %land.lhs.true50.out_crit_edge ], [ %call28, %do.body34.out_crit_edge ], [ %call28, %if.end27.out_crit_edge ], [ -116, %if.then118 ], [ %call121, %if.end120 ], [ -12, %if.end23.out_crit_edge ], [ %spec.select, %if.then102 ], [ 0, %do.body9 ], [ %call28, %do.body38 ]
  %data.0 = phi ptr [ null, %if.then16 ], [ null, %land.lhs.true.out_crit_edge ], [ null, %do.body7.out_crit_edge ], [ %call7.i, %if.then53 ], [ %call7.i, %land.lhs.true50.out_crit_edge ], [ %call7.i, %do.body34.out_crit_edge ], [ %call7.i, %if.end27.out_crit_edge ], [ %call7.i, %if.then118 ], [ %call7.i, %if.end120 ], [ null, %if.end23.out_crit_edge ], [ %call7.i, %if.then102 ], [ null, %do.body9 ], [ %call7.i, %do.body38 ]
  call void @cifs_put_tlink(ptr noundef %call1) #15
  call void @kfree(ptr noundef %data.0) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %rc.1, %out ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %symlink) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %adjust_tz) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb311_posix_query_path_info(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smb311_posix_info_to_fattr(ptr noundef %fattr, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %sb, i1 noundef zeroext %adjust_tz, i1 noundef zeroext %symlink) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp5 = alloca %struct.timespec64, align 8
  %tmp6 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @cifs_sb_master_tcon(ptr noundef %1) #15
  %2 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %DosAttributes = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 6
  %3 = ptrtoint ptr %DosAttributes to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %DosAttributes, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %cf_cifsattrs = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 1
  %6 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cf_cifsattrs, align 4
  %Inode = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 7
  %7 = ptrtoint ptr %Inode to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %Inode, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %10 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %cf_uniqueid, align 8
  %LastAccessTime = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %LastAccessTime to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %LastAccessTime, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not = icmp eq i64 %12, 0
  %cf_atime4 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %12) #15
  %13 = call ptr @memcpy(ptr %cf_atime4, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ktime_get_coarse_real_ts64(ptr noundef %cf_atime4) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cf_ctime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp5) #15
  %ChangeTime = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %ChangeTime to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %ChangeTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp5, i64 noundef %15) #15
  %16 = call ptr @memcpy(ptr %cf_ctime, ptr %tmp5, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp5) #15
  %cf_mtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp6) #15
  %LastWriteTime = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %LastWriteTime to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %LastWriteTime, align 1
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp6, i64 noundef %18) #15
  %19 = call ptr @memcpy(ptr %cf_mtime, ptr %tmp6, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp6) #15
  br i1 %adjust_tz, label %if.then8, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 7
  %20 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %server, align 8
  %timeAdj = getelementptr inbounds %struct.TCP_Server_Info, ptr %23, i32 0, i32 42
  %24 = ptrtoint ptr %timeAdj to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeAdj, align 4
  %conv = sext i32 %25 to i64
  %26 = ptrtoint ptr %cf_ctime to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cf_ctime, align 8
  %add = add i64 %27, %conv
  store i64 %add, ptr %cf_ctime, align 8
  %28 = load ptr, ptr %ses, align 8
  %server11 = getelementptr inbounds %struct.cifs_ses, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %server11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %server11, align 8
  %timeAdj12 = getelementptr inbounds %struct.TCP_Server_Info, ptr %30, i32 0, i32 42
  %31 = ptrtoint ptr %timeAdj12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timeAdj12, align 4
  %conv13 = sext i32 %32 to i64
  %33 = ptrtoint ptr %cf_mtime to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cf_mtime, align 8
  %add16 = add i64 %34, %conv13
  store i64 %add16, ptr %cf_mtime, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %if.end.if.end17_crit_edge
  %EndOfFile = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 4
  %35 = ptrtoint ptr %EndOfFile to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %EndOfFile, align 1
  %37 = call i64 @llvm.bswap.i64(i64 %36)
  %cf_eof = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 3
  %38 = ptrtoint ptr %cf_eof to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %cf_eof, align 8
  %AllocationSize = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 5
  %39 = ptrtoint ptr %AllocationSize to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %AllocationSize, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %cf_bytes = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 4
  %42 = ptrtoint ptr %cf_bytes to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %cf_bytes, align 8
  %43 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %info, align 1
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %cf_createtime = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 5
  %46 = ptrtoint ptr %cf_createtime to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %cf_createtime, align 8
  %HardLinks = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 10
  %47 = ptrtoint ptr %HardLinks to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %HardLinks, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %cf_nlink = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %50 = ptrtoint ptr %cf_nlink to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cf_nlink, align 8
  %Mode = getelementptr inbounds %struct.smb311_posix_qinfo, ptr %info, i32 0, i32 12
  %51 = ptrtoint ptr %Mode to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %Mode, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %conv18 = trunc i32 %53 to i16
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  br i1 %symlink, label %if.end17.if.end40_crit_edge, label %if.else24

if.end17.if.end40_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.else24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %cf_cifsattrs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cf_cifsattrs, align 4
  %and = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %. = select i1 %tobool26.not, i16 -32768, i16 16384
  %.107 = select i1 %tobool26.not, i32 8, i32 4
  br label %if.end40

if.end40:                                         ; preds = %if.else24, %if.end17.if.end40_crit_edge
  %.sink106 = phi i16 [ -24576, %if.end17.if.end40_crit_edge ], [ %., %if.else24 ]
  %.sink = phi i32 [ 10, %if.end17.if.end40_crit_edge ], [ %.107, %if.else24 ]
  %conv31 = or i16 %.sink106, %conv18
  %56 = ptrtoint ptr %cf_mode to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv31, ptr %cf_mode, align 8
  %cf_dtype32 = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 11
  %57 = ptrtoint ptr %cf_dtype32 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %cf_dtype32, align 4
  %cf_uid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 4
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %59, i32 0, i32 23
  %60 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %linux_uid, align 4
  %62 = ptrtoint ptr %cf_uid to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %cf_uid, align 8
  %cf_gid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %63 = load ptr, ptr %ctx, align 4
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %63, i32 0, i32 24
  %64 = ptrtoint ptr %linux_gid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %linux_gid, align 8
  %66 = ptrtoint ptr %cf_gid to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %cf_gid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %67 = load i32, ptr @cifsFYI, align 4
  %and43 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end40.do.end66_crit_edge, label %do.body46

if.end40.do.end66_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

do.body46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb311_posix_info_to_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smb311_posix_info_to_fattr, %land.lhs.true)) #15
          to label %do.end66 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body46
  %call53 = call i32 @___ratelimit(ptr noundef nonnull @smb311_posix_info_to_fattr._rs, ptr noundef nonnull @.str.125) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true.do.end66_crit_edge, label %if.then55

land.lhs.true.do.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %cf_mode, align 8
  %conv57 = zext i16 %69 to i32
  %70 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %cf_uniqueid, align 8
  %72 = ptrtoint ptr %cf_nlink to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cf_nlink, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smb311_posix_info_to_fattr.descriptor, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.3, i32 noundef %conv57, i64 noundef %71, i32 noundef %73) #15
  br label %do.end66

do.end66:                                         ; preds = %if.then55, %land.lhs.true.do.end66_crit_edge, %do.body46, %if.end40.do.end66_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_find_inode(ptr noundef %inode, ptr nocapture noundef %opaque) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %uniqueid = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %uniqueid, align 8
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %opaque, i32 0, i32 2
  %2 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cf_uniqueid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not = icmp eq i64 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %createtime = getelementptr i8, ptr %inode, i32 -32
  %4 = ptrtoint ptr %createtime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %createtime, align 8
  %cf_createtime = getelementptr inbounds %struct.cifs_fattr, ptr %opaque, i32 0, i32 5
  %6 = ptrtoint ptr %cf_createtime to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cf_createtime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp2.not = icmp eq i64 %5, %7
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cf_mode = getelementptr inbounds %struct.cifs_fattr, ptr %opaque, i32 0, i32 8
  %8 = ptrtoint ptr %cf_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cf_mode, align 8
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %11, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp8 = icmp eq i16 %12, 16384
  br i1 %cmp8, label %land.lhs.true, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 37
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opaque, align 8
  %or = or i32 %17, 8
  store i32 %or, ptr %opaque, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 1, %if.then11 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_init_inode(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %opaque) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %opaque, i32 0, i32 2
  %0 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cf_uniqueid, align 8
  %uniqueid = getelementptr i8, ptr %inode, i32 -40
  %2 = ptrtoint ptr %uniqueid to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %uniqueid, align 8
  %cf_createtime = getelementptr inbounds %struct.cifs_fattr, ptr %opaque, i32 0, i32 5
  %3 = ptrtoint ptr %cf_createtime to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cf_createtime, align 8
  %createtime = getelementptr i8, ptr %inode, i32 -32
  %5 = ptrtoint ptr %createtime to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %createtime, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_autodisable_serverino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_fscache_get_inode_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_root_iget(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inode) #15
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %inode, align 4
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %1) #15
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %prepath = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prepath, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 @strlen(ptr noundef nonnull %6) #21
  %add = add i32 %call4, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #22
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 47, ptr %call9.i.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 1
  %8 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prepath, align 4
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %9, i32 %call4)
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call9 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.36, i32 noundef 3264) #15
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.end
  %path.0 = phi ptr [ %call9.i.i, %if.end ], [ %call9, %if.else.if.end14_crit_edge ]
  %call15 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and17 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end14.do.end41_crit_edge, label %do.body20

if.end14.do.end41_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end41

do.body20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_root_iget.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_root_iget, %land.lhs.true25)) #15
          to label %do.end41 [label %land.lhs.true25], !srcloc !352

land.lhs.true25:                                  ; preds = %do.body20
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_root_iget._rs, ptr noundef nonnull @.str.37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end41_crit_edge, label %if.then28

land.lhs.true25.do.end41_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end41

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #17
  %12 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  %call32 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_root_iget.descriptor, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37, i32 noundef %call15, i32 noundef %call32) #15
  br label %do.end41

do.end41:                                         ; preds = %if.then28, %land.lhs.true25.do.end41_crit_edge, %do.body20, %if.end14.do.end41_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call15, ptr noundef nonnull @.str.37)
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 22
  %19 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %unix_ext, align 8
  %20 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %bf.cast.not = icmp eq i16 %20, 0
  br i1 %bf.cast.not, label %do.end41.if.end66_crit_edge, label %if.then43

do.end41.if.end66_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.then43:                                        ; preds = %do.end41
  %call44 = call i32 @cifs_get_inode_info_unix(ptr noundef nonnull %inode, ptr noundef %path.0, ptr noundef %sb, i32 noundef %call15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, -95
  br i1 %cmp45.not, label %do.body49, label %if.then43.iget_no_retry_crit_edge

if.then43.iget_no_retry_crit_edge:                ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %iget_no_retry

do.body49:                                        ; preds = %if.then43
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_root_iget._rs.39, ptr noundef nonnull @.str.37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body49.do.end62_crit_edge, label %do.end55

do.body49.do.end62_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end62

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #20
  br label %do.end62

do.end62:                                         ; preds = %do.end55, %do.body49.do.end62_crit_edge
  %21 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load64 = load i16, ptr %unix_ext, align 8
  %bf.clear65 = and i16 %bf.load64, -129
  store i16 %bf.clear65, ptr %unix_ext, align 8
  br label %if.end66

if.end66:                                         ; preds = %do.end62, %do.end41.if.end66_crit_edge
  %22 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mnt_cifs_flags, align 4
  %and.i210 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool.not.i = icmp eq i32 %and.i210, 0
  %..i = select i1 %tobool.not.i, i8 92, i8 47
  %..i211 = select i1 %tobool.not.i, i32 47, i32 92
  %call5.i = tail call ptr @strchr(ptr noundef %path.0, i32 noundef %..i211) #15
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %if.end66.convert_delimiter.exit_crit_edge, label %if.end66.while.body.i_crit_edge

if.end66.while.body.i_crit_edge:                  ; preds = %if.end66
  br label %while.body.i

if.end66.convert_delimiter.exit_crit_edge:        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %convert_delimiter.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end66.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %if.end66.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %..i, ptr %call7.i, align 1
  %call.i = tail call ptr @strchr(ptr noundef nonnull %call7.i, i32 noundef %..i211) #15
  %tobool.not.i212 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i212, label %while.body.i.convert_delimiter.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.convert_delimiter.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %convert_delimiter.exit

convert_delimiter.exit:                           ; preds = %while.body.i.convert_delimiter.exit_crit_edge, %if.end66.convert_delimiter.exit_crit_edge
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 23
  %25 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %posix_extensions, align 2, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool68.not = icmp eq i8 %26, 0
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call70 = call i32 @smb311_posix_get_inode_info(ptr noundef nonnull %inode, ptr noundef %path.0, ptr noundef %sb, i32 noundef %call15)
  br label %iget_no_retry

if.else71:                                        ; preds = %convert_delimiter.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call72 = call i32 @cifs_get_inode_info(ptr noundef nonnull %inode, ptr noundef %path.0, ptr noundef null, ptr noundef %sb, i32 noundef %call15, ptr noundef null)
  br label %iget_no_retry

iget_no_retry:                                    ; preds = %if.else71, %if.then69, %if.then43.iget_no_retry_crit_edge
  %rc.0 = phi i32 [ %call44, %if.then43.iget_no_retry_crit_edge ], [ %call70, %if.then69 ], [ %call72, %if.else71 ]
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inode, align 4
  %tobool74.not = icmp eq ptr %28, null
  br i1 %tobool74.not, label %if.then75, label %if.end77

if.then75:                                        ; preds = %iget_no_retry
  call void @__sanitizer_cov_trace_pc() #17
  %29 = inttoptr i32 %rc.0 to ptr
  %30 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %inode, align 4
  br label %out

if.end77:                                         ; preds = %iget_no_retry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool78.not = icmp eq i32 %rc.0, 0
  br i1 %tobool78.not, label %if.end77.out_crit_edge, label %land.lhs.true79

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true79:                                  ; preds = %if.end77
  %31 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load80 = load i16, ptr %unix_ext, align 8
  %32 = and i16 %bf.load80, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %bf.cast83.not = icmp eq i16 %32, 0
  br i1 %bf.cast83.not, label %if.then120.critedge, label %do.body86

do.body86:                                        ; preds = %land.lhs.true79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %33 = load i32, ptr @cifsFYI, align 4
  %and87 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.body86.do.end114_crit_edge, label %do.body90

do.body86.do.end114_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end114

do.body90:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_root_iget.descriptor.42, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_root_iget, %land.lhs.true102)) #15
          to label %do.end114 [label %land.lhs.true102], !srcloc !352

land.lhs.true102:                                 ; preds = %do.body90
  %call103 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_root_iget._rs.41, ptr noundef nonnull @.str.37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %land.lhs.true102.do.end114_crit_edge, label %if.then105

land.lhs.true102.do.end114_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end114

if.then105:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_root_iget.descriptor.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3) #15
  br label %do.end114

do.end114:                                        ; preds = %if.then105, %land.lhs.true102.do.end114_crit_edge, %do.body90, %do.body86.do.end114_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %28, align 8
  %36 = or i16 %35, 16384
  store i16 %36, ptr %28, align 8
  tail call void @set_nlink(ptr noundef nonnull %28, i32 noundef 2) #15
  %i_op = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 7
  %37 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @cifs_ipc_inode_ops, ptr %i_op, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 44
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @simple_dir_operations, ptr %38, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 2
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %linux_uid, align 4
  %44 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 3
  %45 = load ptr, ptr %ctx, align 4
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %45, i32 0, i32 24
  %46 = ptrtoint ptr %linux_gid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %linux_gid, align 8
  %48 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %i_gid, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  br label %out

if.then120.critedge:                              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iget_failed(ptr noundef nonnull %28) #15
  %49 = inttoptr i32 %rc.0 to ptr
  %50 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %inode, align 4
  br label %out

out:                                              ; preds = %if.then120.critedge, %do.end114, %if.end77.out_crit_edge, %if.then75
  tail call void @kfree(ptr noundef %path.0) #15
  tail call void @_free_xid(i32 noundef %call15) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %51 = load i32, ptr @cifsFYI, align 4
  %and127 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %out.do.end154_crit_edge, label %do.body130

out.do.end154_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end154

do.body130:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_root_iget.descriptor.45, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_root_iget, %land.lhs.true142)) #15
          to label %do.end154 [label %land.lhs.true142], !srcloc !352

land.lhs.true142:                                 ; preds = %do.body130
  %call143 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_root_iget._rs.44, ptr noundef nonnull @.str.37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %land.lhs.true142.do.end154_crit_edge, label %if.then145

land.lhs.true142.do.end154_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end154

if.then145:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_root_iget.descriptor.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37, i32 noundef %call15, i32 noundef %rc.0) #15
  br label %do.end154

do.end154:                                        ; preds = %if.then145, %land.lhs.true142.do.end154_crit_edge, %do.body130, %out.do.end154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool155.not = icmp eq i32 %rc.0, 0
  br i1 %tobool155.not, label %if.else157, label %if.then156

if.then156:                                       ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call15, ptr noundef nonnull @.str.37, i32 noundef %rc.0)
  br label %do.end160

if.else157:                                       ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call15, ptr noundef nonnull @.str.37)
  br label %do.end160

do.end160:                                        ; preds = %if.else157, %if.then156
  %52 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %inode, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %53, %do.end160 ], [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !352

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !358

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.129, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !364
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !365
  %13 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !358

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.129, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !366
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.127, i32 noundef 609, ptr noundef nonnull @.str.128) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !367
  %31 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !352

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !358

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.129, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !368
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !369
  %13 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !358

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.129, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !366
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_smb3_exit_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.127, i32 noundef 558, ptr noundef nonnull @.str.128) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !367
  %31 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !352

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !358

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.129, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !370
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !371
  %13 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !358

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.129, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !366
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_smb3_exit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.127, i32 noundef 610, ptr noundef nonnull @.str.128) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !367
  %31 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
define dso_local i32 @cifs_set_file_info(ptr noundef %inode, ptr noundef readonly %attrs, i32 noundef %xid, ptr noundef %full_path, i32 noundef %dosattr) local_unnamed_addr #0 align 64 {
entry:
  %info_buf = alloca %struct.FILE_BASIC_INFO, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info_buf) #15
  %4 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %info_buf, i32 0, i32 1
  %5 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %info_buf, i32 0, i32 2
  %6 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %info_buf, i32 0, i32 3
  %7 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %info_buf, i32 0, i32 4
  %8 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %info_buf, i32 0, i32 5
  %cmp = icmp eq ptr %attrs, null
  %9 = getelementptr inbounds i8, ptr %info_buf, i32 8
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %3) #15
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 7
  %11 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ses, align 8
  %server2 = getelementptr inbounds %struct.cifs_ses, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server2, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %set_file_info = getelementptr inbounds %struct.smb_version_operations, ptr %16, i32 0, i32 41
  %17 = ptrtoint ptr %set_file_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_file_info, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %8, align 4
  %20 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attrs, align 8
  %and = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end9, label %if.end9.thread

if.end9:                                          ; preds = %if.end4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %4, align 8
  %23 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %attrs, align 8
  %and11 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else15, label %if.end9.if.then13_crit_edge

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.end9.thread:                                   ; preds = %if.end4
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 5
  %25 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack67 = load i64, ptr %ia_atime, align 8
  %26 = insertvalue [2 x i64] undef, i64 %.unpack67, 0
  %.elt68 = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %.elt68 to i32
  call void @__asan_load8_noabort(i32 %27)
  %.unpack69 = load i64, ptr %.elt68, align 8
  %28 = insertvalue [2 x i64] %26, i64 %.unpack69, 1
  %call7 = tail call i64 @cifs_UnixTimeToNT([2 x i64] %28) #15
  %29 = tail call i64 @llvm.bswap.i64(i64 %call7)
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %4, align 8
  %31 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %attrs, align 8
  %and1173 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1173)
  %tobool12.not74 = icmp eq i32 %and1173, 0
  br i1 %tobool12.not74, label %if.end9.thread.land.lhs.true_crit_edge, label %if.end9.thread.if.then13_crit_edge

if.end9.thread.if.then13_crit_edge:               ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.end9.thread.land.lhs.true_crit_edge:           ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.then13:                                        ; preds = %if.end9.thread.if.then13_crit_edge, %if.end9.if.then13_crit_edge
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 6
  %33 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %33)
  %.unpack63 = load i64, ptr %ia_mtime, align 8
  %34 = insertvalue [2 x i64] undef, i64 %.unpack63, 0
  %.elt64 = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %.elt64 to i32
  call void @__asan_load8_noabort(i32 %35)
  %.unpack65 = load i64, ptr %.elt64, align 8
  %36 = insertvalue [2 x i64] %34, i64 %.unpack65, 1
  %call14 = tail call i64 @cifs_UnixTimeToNT([2 x i64] %36) #15
  %37 = tail call i64 @llvm.bswap.i64(i64 %call14)
  br label %land.lhs.true

if.else15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %5, align 8
  br label %if.end46

land.lhs.true:                                    ; preds = %if.then13, %if.end9.thread.land.lhs.true_crit_edge
  %.sink = phi i64 [ %37, %if.then13 ], [ 0, %if.end9.thread.land.lhs.true_crit_edge ]
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %.sink, ptr %5, align 8
  %40 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %attrs, align 8
  %and20 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end46_crit_edge, label %do.body23

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

do.body23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %42 = load i32, ptr @cifsFYI, align 4
  %and24 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end42_crit_edge, label %do.body27

do.body23.do.end42_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

do.body27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_set_file_info.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_set_file_info, %land.lhs.true32)) #15
          to label %do.end42 [label %land.lhs.true32], !srcloc !352

land.lhs.true32:                                  ; preds = %do.body27
  %call33 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_set_file_info._rs, ptr noundef nonnull @.str.47) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end42_crit_edge, label %if.then35

land.lhs.true32.do.end42_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_set_file_info.descriptor, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3) #15
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %land.lhs.true32.do.end42_crit_edge, %do.body27, %do.body23.do.end42_crit_edge
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 7
  %43 = ptrtoint ptr %ia_ctime to i32
  call void @__asan_load8_noabort(i32 %43)
  %.unpack = load i64, ptr %ia_ctime, align 8
  %44 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt61 = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %.elt61 to i32
  call void @__asan_load8_noabort(i32 %45)
  %.unpack62 = load i64, ptr %.elt61, align 8
  %46 = insertvalue [2 x i64] %44, i64 %.unpack62, 1
  %call43 = tail call i64 @cifs_UnixTimeToNT([2 x i64] %46) #15
  %47 = tail call i64 @llvm.bswap.i64(i64 %call43)
  br label %if.end46

if.end46:                                         ; preds = %do.end42, %land.lhs.true.if.end46_crit_edge, %if.else15
  %storemerge = phi i64 [ %47, %do.end42 ], [ 0, %land.lhs.true.if.end46_crit_edge ], [ 0, %if.else15 ]
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %storemerge, ptr %6, align 8
  %49 = ptrtoint ptr %info_buf to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %info_buf, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %dosattr)
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %7, align 8
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %set_file_info48 = getelementptr inbounds %struct.smb_version_operations, ptr %53, i32 0, i32 41
  %54 = ptrtoint ptr %set_file_info48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_file_info48, align 4
  %call49 = call i32 %55(ptr noundef %inode, ptr noundef %full_path, ptr noundef nonnull %info_buf, i32 noundef %xid) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end46 ], [ -22, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info_buf) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cifs_UnixTimeToNT([2 x i64]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_rename_pending_delete(ptr noundef %full_path, ptr nocapture noundef readonly %dentry, i32 noundef %xid) local_unnamed_addr #0 align 64 {
entry:
  %oplock = alloca i32, align 4
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #15
  %0 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oplock, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #15
  %1 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #15
  %2 = call ptr @memset(ptr %oparms, i32 255, i32 32)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %call3 = tail call ptr @cifs_sb_tlink(ptr noundef %8) #15
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call3, i32 0, i32 5
  %10 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ses, align 8
  %capabilities = getelementptr inbounds %struct.cifs_ses, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capabilities, align 8
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end8:                                          ; preds = %if.end
  %16 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %oparms, align 4
  %cifs_sb10 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %17 = ptrtoint ptr %cifs_sb10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %cifs_sb10, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %18 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65792, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end8.if.else.i_crit_edge, label %land.lhs.true.i

if.end8.if.else.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end8
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %8) #15
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end8.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i = phi i32 [ 64, %if.else.i ], [ 16448, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %19 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %20 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %disposition, align 4
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %21 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %full_path, ptr %path, align 4
  %fid12 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %22 = ptrtoint ptr %fid12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fid, ptr %fid12, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %23 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call13 = call i32 @CIFS_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 0
  br i1 %cmp.not, label %if.end15, label %cifs_create_options.exit.out_crit_edge

cifs_create_options.exit.out_crit_edge:           ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %cifs_create_options.exit
  %cifsAttrs = getelementptr i8, ptr %4, i32 -120
  %24 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cifsAttrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp16 = icmp eq i32 %25, 0
  %spec.select = select i1 %cmp16, i32 128, i32 %25
  %and19 = and i32 %spec.select, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  %and19.op = or i32 %and19, 2
  %or24 = select i1 %cmp20, i32 130, i32 %and19.op
  call void @__sanitizer_cov_trace_cmp4(i32 %or24, i32 %spec.select)
  %cmp25.not = icmp eq i32 %or24, %spec.select
  br i1 %cmp25.not, label %if.end15.if.end37_crit_edge, label %if.then26

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then26:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 40) #18
  %cmp28 = icmp eq ptr %call7.i.i, null
  br i1 %cmp28, label %if.then26.out_close_crit_edge, label %if.end30

if.then26.out_close_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_close

if.end30:                                         ; preds = %if.then26
  %27 = call i32 @llvm.bswap.i32(i32 %or24)
  %Attributes = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %Attributes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %Attributes, align 8
  %29 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fid, align 8
  %31 = call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 69
  %35 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tgid, align 4
  %call32 = call i32 @CIFSSMBSetFileInfo(i32 noundef %xid, ptr noundef %11, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %30, i32 noundef %36) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or24, ptr %cifsAttrs, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge, %if.end15.if.end37_crit_edge
  %dosattr.1 = phi i32 [ %or24, %if.then34 ], [ %spec.select, %if.end15.if.end37_crit_edge ], [ %spec.select, %if.end30.if.end37_crit_edge ]
  %info_buf.0 = phi ptr [ %call7.i.i, %if.then34 ], [ null, %if.end15.if.end37_crit_edge ], [ %call7.i.i, %if.end30.if.end37_crit_edge ]
  %38 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fid, align 8
  %conv = zext i16 %39 to i32
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %8, i32 0, i32 3
  %40 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %local_nls, align 4
  %call39 = call i32 @cifs_remap(ptr noundef %8) #15
  %call40 = call i32 @CIFSSMBRenameOpenFile(i32 noundef %xid, ptr noundef %11, i32 noundef %conv, ptr noundef null, ptr noundef %41, i32 noundef %call39) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end44, label %if.end37.undo_setattr_crit_edge

if.end37.undo_setattr_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %undo_setattr

if.end44:                                         ; preds = %if.end37
  %flags = getelementptr i8, ptr %4, i32 -108
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags, align 4
  %44 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool46.not = icmp eq i32 %44, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.out_close_crit_edge

if.end44.out_close_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_close

if.then47:                                        ; preds = %if.end44
  %45 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %fid, align 8
  %47 = call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i148 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i148 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task50, align 8
  %tgid51 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 69
  %51 = ptrtoint ptr %tgid51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tgid51, align 4
  %call52 = call i32 @CIFSSMBSetFileDisposition(i32 noundef %xid, ptr noundef %11, i1 noundef zeroext true, i16 noundef zeroext %46, i32 noundef %52) #15
  %53 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %call52, label %if.then59 [
    i32 -2, label %if.then47.if.end61_crit_edge
    i32 0, label %if.then47.if.end61_crit_edge150
  ]

if.then47.if.end61_crit_edge150:                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then47.if.end61_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then59:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %fid, align 8
  %conv68 = zext i16 %55 to i32
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name, align 8
  %58 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %local_nls, align 4
  %call70 = call i32 @cifs_remap(ptr noundef %8) #15
  %call71 = call i32 @CIFSSMBRenameOpenFile(i32 noundef %xid, ptr noundef %11, i32 noundef %conv68, ptr noundef %57, ptr noundef %59, i32 noundef %call70) #15
  br label %undo_setattr

if.end61:                                         ; preds = %if.then47.if.end61_crit_edge, %if.then47.if.end61_crit_edge150
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #15
  br label %out_close

out_close:                                        ; preds = %if.then82, %if.then74.out_close_crit_edge, %undo_setattr.out_close_crit_edge, %if.end61, %if.end44.out_close_crit_edge, %if.then26.out_close_crit_edge
  %rc.1 = phi i32 [ -16, %if.then74.out_close_crit_edge ], [ -16, %if.then82 ], [ -16, %undo_setattr.out_close_crit_edge ], [ 0, %if.end44.out_close_crit_edge ], [ 0, %if.end61 ], [ -12, %if.then26.out_close_crit_edge ]
  %info_buf.1 = phi ptr [ %info_buf.0, %if.then74.out_close_crit_edge ], [ %info_buf.0, %if.then82 ], [ %info_buf.0, %undo_setattr.out_close_crit_edge ], [ %info_buf.0, %if.end44.out_close_crit_edge ], [ %info_buf.0, %if.end61 ], [ null, %if.then26.out_close_crit_edge ]
  %60 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %fid, align 8
  %conv65 = zext i16 %61 to i32
  %call66 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %11, i32 noundef %conv65) #15
  br label %out

out:                                              ; preds = %out_close, %cifs_create_options.exit.out_crit_edge, %if.end.out_crit_edge
  %rc.2 = phi i32 [ %call13, %cifs_create_options.exit.out_crit_edge ], [ %rc.1, %out_close ], [ -16, %if.end.out_crit_edge ]
  %info_buf.2 = phi ptr [ null, %cifs_create_options.exit.out_crit_edge ], [ %info_buf.1, %out_close ], [ null, %if.end.out_crit_edge ]
  call void @kfree(ptr noundef %info_buf.2) #15
  call void @cifs_put_tlink(ptr noundef %call3) #15
  br label %cleanup

undo_setattr:                                     ; preds = %if.then59, %if.end37.undo_setattr_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %dosattr.1, i32 %spec.select)
  %cmp72.not = icmp eq i32 %dosattr.1, %spec.select
  br i1 %cmp72.not, label %undo_setattr.out_close_crit_edge, label %if.then74

undo_setattr.out_close_crit_edge:                 ; preds = %undo_setattr
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_close

if.then74:                                        ; preds = %undo_setattr
  %62 = call i32 @llvm.bswap.i32(i32 %spec.select)
  %Attributes75 = getelementptr inbounds %struct.FILE_BASIC_INFO, ptr %info_buf.0, i32 0, i32 4
  %63 = ptrtoint ptr %Attributes75 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %Attributes75, align 8
  %64 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %fid, align 8
  %66 = call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i149 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i149 to ptr
  %task78 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task78 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task78, align 8
  %tgid79 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 69
  %70 = ptrtoint ptr %tgid79 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tgid79, align 4
  %call80 = call i32 @CIFSSMBSetFileInfo(i32 noundef %xid, ptr noundef %11, ptr noundef %info_buf.0, i16 noundef zeroext %65, i32 noundef %71) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.then74.out_close_crit_edge

if.then74.out_close_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_close

if.then82:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  %72 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select, ptr %cifsAttrs, align 8
  br label %out_close

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %rc.2, %out ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFS_open(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetFileInfo(i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBRenameOpenFile(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBSetFileDisposition(i32 noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBClose(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_unlink(ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %tmp185 = alloca %struct.timespec64, align 8
  %tmp188 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %6 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_unlink.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_unlink, %land.lhs.true)) #15
          to label %do.end15 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body3
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_unlink._rs, ptr noundef nonnull @.str.49) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %if.then10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_unlink.descriptor, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, ptr noundef %dir, ptr noundef %dentry) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %land.lhs.true.do.end15_crit_edge, %do.body3, %entry.do.end15_crit_edge
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp slt i32 %8, 0
  br i1 %tobool.not.i, label %do.end15.cleanup_crit_edge, label %if.end24, !prof !351

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %do.end15
  %call25 = tail call ptr @cifs_sb_tlink(ptr noundef %5) #15
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call25, i32 0, i32 5
  %10 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ses, align 8
  %server31 = getelementptr inbounds %struct.cifs_ses, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %server31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %server31, align 8
  %call32 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %16 = load i32, ptr @cifsFYI, align 4
  %and35 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end29.do.end68_crit_edge, label %do.body38

if.end29.do.end68_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

do.body38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_unlink.descriptor.52, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_unlink, %land.lhs.true50)) #15
          to label %do.end68 [label %land.lhs.true50], !srcloc !352

land.lhs.true50:                                  ; preds = %do.body38
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_unlink._rs.51, ptr noundef nonnull @.str.49) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end68_crit_edge, label %if.then53

land.lhs.true50.do.end68_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

if.then53:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  %17 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %23)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call59 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_unlink.descriptor.52, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49, i32 noundef %call32, i32 noundef %call59) #15
  br label %do.end68

do.end68:                                         ; preds = %if.then53, %land.lhs.true50.do.end68_crit_edge, %do.body38, %if.end29.do.end68_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call32, ptr noundef nonnull @.str.49)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %24 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %24, i32 noundef 3264) #15
  %nodelete = getelementptr inbounds %struct.cifs_tcon, ptr %11, i32 0, i32 22
  %25 = ptrtoint ptr %nodelete to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %nodelete, align 8
  %26 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %bf.cast.not = icmp eq i16 %26, 0
  br i1 %bf.cast.not, label %if.end72, label %do.end68.unlink_out_crit_edge

do.end68.unlink_out_crit_edge:                    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlink_out

if.end72:                                         ; preds = %do.end68
  %call73 = tail call ptr @build_path_from_dentry(ptr noundef %dentry, ptr noundef %call.i) #15
  %cmp.i332 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %call73 to i32
  br label %unlink_out

if.end77:                                         ; preds = %if.end72
  tail call void @cifs_close_deferred_file_under_dentry(ptr noundef %11, ptr noundef %call73) #15
  %28 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ses, align 8
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %server.i, align 8
  %vals.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vals.i, align 8
  %cap_unix.i = getelementptr inbounds %struct.smb_version_values, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %cap_unix.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cap_unix.i, align 4
  %capabilities.i = getelementptr inbounds %struct.cifs_ses, ptr %29, i32 0, i32 15
  %36 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %capabilities.i, align 8
  %and.i333 = and i32 %37, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333)
  %tobool.i.not = icmp eq i32 %and.i333, 0
  br i1 %tobool.i.not, label %if.end77.retry_std_delete_crit_edge, label %land.lhs.true80

if.end77.retry_std_delete_crit_edge:              ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry_std_delete

land.lhs.true80:                                  ; preds = %if.end77
  %Capability = getelementptr inbounds %struct.cifs_tcon, ptr %11, i32 0, i32 21, i32 2
  %38 = ptrtoint ptr %Capability to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %Capability, align 4
  %40 = and i64 %39, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool82.not = icmp eq i64 %40, 0
  br i1 %tobool82.not, label %land.lhs.true80.retry_std_delete_crit_edge, label %if.then83

land.lhs.true80.retry_std_delete_crit_edge:       ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry_std_delete

if.then83:                                        ; preds = %land.lhs.true80
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 3
  %41 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %local_nls, align 4
  %call84 = tail call i32 @cifs_remap(ptr noundef %5) #15
  %call85 = tail call i32 @CIFSPOSIXDelFile(i32 noundef %call32, ptr noundef %11, ptr noundef %call73, i16 noundef zeroext 0, ptr noundef %42, i32 noundef %call84) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %43 = load i32, ptr @cifsFYI, align 4
  %and88 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.then83.do.end115_crit_edge, label %do.body91

if.then83.do.end115_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end115

do.body91:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_unlink.descriptor.54, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_unlink, %land.lhs.true103)) #15
          to label %do.end115 [label %land.lhs.true103], !srcloc !352

land.lhs.true103:                                 ; preds = %do.body91
  %call104 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_unlink._rs.53, ptr noundef nonnull @.str.49) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true103.do.end115_crit_edge, label %if.then106

land.lhs.true103.do.end115_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end115

if.then106:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_unlink.descriptor.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef %call85) #15
  br label %do.end115

do.end115:                                        ; preds = %if.then106, %land.lhs.true103.do.end115_crit_edge, %do.body91, %if.then83.do.end115_crit_edge
  %44 = zext i32 %call85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %call85, label %do.end115.retry_std_delete_crit_edge [
    i32 0, label %do.end115.psx_del_no_retry_crit_edge
    i32 -2, label %do.end115.psx_del_no_retry_crit_edge380
  ]

do.end115.psx_del_no_retry_crit_edge380:          ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %psx_del_no_retry

do.end115.psx_del_no_retry_crit_edge:             ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %psx_del_no_retry

do.end115.retry_std_delete_crit_edge:             ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry_std_delete

retry_std_delete:                                 ; preds = %if.end157.retry_std_delete_crit_edge, %do.end115.retry_std_delete_crit_edge, %land.lhs.true80.retry_std_delete_crit_edge, %if.end77.retry_std_delete_crit_edge
  %attrs.0 = phi ptr [ %call7.i.i, %if.end157.retry_std_delete_crit_edge ], [ null, %land.lhs.true80.retry_std_delete_crit_edge ], [ null, %if.end77.retry_std_delete_crit_edge ], [ null, %do.end115.retry_std_delete_crit_edge ]
  %dosattr.0 = phi i32 [ %or167, %if.end157.retry_std_delete_crit_edge ], [ 0, %land.lhs.true80.retry_std_delete_crit_edge ], [ 0, %if.end77.retry_std_delete_crit_edge ], [ 0, %do.end115.retry_std_delete_crit_edge ]
  %origattr.0 = phi i32 [ %spec.select, %if.end157.retry_std_delete_crit_edge ], [ 0, %land.lhs.true80.retry_std_delete_crit_edge ], [ 0, %if.end77.retry_std_delete_crit_edge ], [ 0, %do.end115.retry_std_delete_crit_edge ]
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %15, i32 0, i32 5
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %unlink = getelementptr inbounds %struct.smb_version_operations, ptr %46, i32 0, i32 49
  %47 = ptrtoint ptr %unlink to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %unlink, align 4
  %tobool120.not = icmp eq ptr %48, null
  br i1 %tobool120.not, label %retry_std_delete.land.lhs.true177_crit_edge, label %if.end122

retry_std_delete.land.lhs.true177_crit_edge:      ; preds = %retry_std_delete
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true177

if.end122:                                        ; preds = %retry_std_delete
  call void @__sanitizer_cov_trace_pc() #17
  %call125 = tail call i32 %48(i32 noundef %call32, ptr noundef %11, ptr noundef %call73, ptr noundef %5) #15
  br label %psx_del_no_retry

psx_del_no_retry:                                 ; preds = %if.end122, %do.end115.psx_del_no_retry_crit_edge, %do.end115.psx_del_no_retry_crit_edge380
  %attrs.1 = phi ptr [ %attrs.0, %if.end122 ], [ null, %do.end115.psx_del_no_retry_crit_edge ], [ null, %do.end115.psx_del_no_retry_crit_edge380 ]
  %dosattr.1 = phi i32 [ %dosattr.0, %if.end122 ], [ 0, %do.end115.psx_del_no_retry_crit_edge ], [ 0, %do.end115.psx_del_no_retry_crit_edge380 ]
  %origattr.1 = phi i32 [ %origattr.0, %if.end122 ], [ 0, %do.end115.psx_del_no_retry_crit_edge ], [ 0, %do.end115.psx_del_no_retry_crit_edge380 ]
  %rc.0 = phi i32 [ %call125, %if.end122 ], [ %call85, %do.end115.psx_del_no_retry_crit_edge ], [ %call85, %do.end115.psx_del_no_retry_crit_edge380 ]
  %49 = zext i32 %rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %rc.0, label %psx_del_no_retry.land.lhs.true177_crit_edge [
    i32 0, label %if.then127
    i32 -2, label %if.then133
    i32 -16, label %if.then136
    i32 -13, label %land.lhs.true149
  ]

psx_del_no_retry.land.lhs.true177_crit_edge:      ; preds = %psx_del_no_retry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true177

if.then127:                                       ; preds = %psx_del_no_retry
  %tobool128.not = icmp eq ptr %1, null
  br i1 %tobool128.not, label %if.then127.if.end186_crit_edge, label %out_reval.thread376

if.then127.if.end186_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

out_reval.thread376:                              ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @cifs_drop_nlink(ptr noundef nonnull %1)
  br label %if.then183

if.then133:                                       ; preds = %psx_del_no_retry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @d_drop(ptr noundef %dentry) #15
  br label %land.lhs.true177

if.then136:                                       ; preds = %psx_del_no_retry
  %ops137 = getelementptr inbounds %struct.TCP_Server_Info, ptr %15, i32 0, i32 5
  %50 = ptrtoint ptr %ops137 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops137, align 4
  %rename_pending_delete = getelementptr inbounds %struct.smb_version_operations, ptr %51, i32 0, i32 50
  %52 = ptrtoint ptr %rename_pending_delete to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rename_pending_delete, align 4
  %tobool138.not = icmp eq ptr %53, null
  br i1 %tobool138.not, label %if.then136.land.lhs.true177_crit_edge, label %if.then139

if.then136.land.lhs.true177_crit_edge:            ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true177

if.then139:                                       ; preds = %if.then136
  %call142 = tail call i32 %53(ptr noundef %call73, ptr noundef %dentry, i32 noundef %call32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.then139.land.lhs.true177_crit_edge

if.then139.land.lhs.true177_crit_edge:            ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true177

if.then144:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @cifs_drop_nlink(ptr noundef %1)
  br label %out_reval

land.lhs.true149:                                 ; preds = %psx_del_no_retry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dosattr.1)
  %cmp150 = icmp ne i32 %dosattr.1, 0
  %tobool152.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp150, i1 true, i1 %tobool152.not
  br i1 %or.cond, label %land.lhs.true149.land.lhs.true177_crit_edge, label %if.then153

land.lhs.true149.land.lhs.true177_crit_edge:      ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true177

if.then153:                                       ; preds = %land.lhs.true149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 80) #18
  %cmp155 = icmp eq ptr %call7.i.i, null
  br i1 %cmp155, label %if.then153.if.then183_crit_edge, label %if.end157

if.then153.if.then183_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then183

if.end157:                                        ; preds = %if.then153
  %cifsAttrs = getelementptr i8, ptr %1, i32 -120
  %55 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cifsAttrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp159 = icmp eq i32 %56, 0
  %spec.select = select i1 %cmp159, i32 128, i32 %56
  %and162 = and i32 %spec.select, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %cmp163 = icmp eq i32 %and162, 0
  %and162.op = or i32 %and162, 2
  %or167 = select i1 %cmp163, i32 130, i32 %and162.op
  %call168 = tail call i32 @cifs_set_file_info(ptr noundef nonnull %1, ptr noundef nonnull %call7.i.i, i32 noundef %call32, ptr noundef %call73, i32 noundef %or167)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169.not = icmp eq i32 %call168, 0
  br i1 %cmp169.not, label %if.end157.retry_std_delete_crit_edge, label %if.end157.if.then183_crit_edge

if.end157.if.then183_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then183

if.end157.retry_std_delete_crit_edge:             ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry_std_delete

land.lhs.true177:                                 ; preds = %land.lhs.true149.land.lhs.true177_crit_edge, %if.then139.land.lhs.true177_crit_edge, %if.then136.land.lhs.true177_crit_edge, %if.then133, %psx_del_no_retry.land.lhs.true177_crit_edge, %retry_std_delete.land.lhs.true177_crit_edge
  %rc.1356 = phi i32 [ -13, %land.lhs.true149.land.lhs.true177_crit_edge ], [ -16, %if.then136.land.lhs.true177_crit_edge ], [ %call142, %if.then139.land.lhs.true177_crit_edge ], [ -2, %if.then133 ], [ -38, %retry_std_delete.land.lhs.true177_crit_edge ], [ %rc.0, %psx_del_no_retry.land.lhs.true177_crit_edge ]
  %attrs.1345355 = phi ptr [ %attrs.1, %land.lhs.true149.land.lhs.true177_crit_edge ], [ %attrs.1, %if.then136.land.lhs.true177_crit_edge ], [ %attrs.1, %if.then139.land.lhs.true177_crit_edge ], [ %attrs.1, %if.then133 ], [ %attrs.0, %retry_std_delete.land.lhs.true177_crit_edge ], [ %attrs.1, %psx_del_no_retry.land.lhs.true177_crit_edge ]
  %dosattr.1346354 = phi i32 [ %dosattr.1, %land.lhs.true149.land.lhs.true177_crit_edge ], [ %dosattr.1, %if.then136.land.lhs.true177_crit_edge ], [ %dosattr.1, %if.then139.land.lhs.true177_crit_edge ], [ %dosattr.1, %if.then133 ], [ %dosattr.0, %retry_std_delete.land.lhs.true177_crit_edge ], [ %dosattr.1, %psx_del_no_retry.land.lhs.true177_crit_edge ]
  %origattr.1347353 = phi i32 [ %origattr.1, %land.lhs.true149.land.lhs.true177_crit_edge ], [ %origattr.1, %if.then136.land.lhs.true177_crit_edge ], [ %origattr.1, %if.then139.land.lhs.true177_crit_edge ], [ %origattr.1, %if.then133 ], [ %origattr.0, %retry_std_delete.land.lhs.true177_crit_edge ], [ %origattr.1, %psx_del_no_retry.land.lhs.true177_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dosattr.1346354)
  %cmp178.not = icmp eq i32 %dosattr.1346354, 0
  br i1 %cmp178.not, label %land.lhs.true177.out_reval_crit_edge, label %if.then179

land.lhs.true177.out_reval_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_reval

if.then179:                                       ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #17
  %call180 = tail call i32 @cifs_set_file_info(ptr noundef %1, ptr noundef %attrs.1345355, i32 noundef %call32, ptr noundef %call73, i32 noundef %origattr.1347353)
  br label %out_reval

out_reval:                                        ; preds = %if.then179, %land.lhs.true177.out_reval_crit_edge, %if.then144
  %attrs.2 = phi ptr [ %attrs.1345355, %if.then179 ], [ %attrs.1345355, %land.lhs.true177.out_reval_crit_edge ], [ %attrs.1, %if.then144 ]
  %rc.2 = phi i32 [ %rc.1356, %if.then179 ], [ %rc.1356, %land.lhs.true177.out_reval_crit_edge ], [ 0, %if.then144 ]
  %tobool182.not = icmp eq ptr %1, null
  br i1 %tobool182.not, label %out_reval.if.end186_crit_edge, label %out_reval.if.then183_crit_edge

out_reval.if.then183_crit_edge:                   ; preds = %out_reval
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then183

out_reval.if.end186_crit_edge:                    ; preds = %out_reval
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

if.then183:                                       ; preds = %out_reval.if.then183_crit_edge, %if.end157.if.then183_crit_edge, %if.then153.if.then183_crit_edge, %out_reval.thread376
  %rc.2369 = phi i32 [ %rc.2, %out_reval.if.then183_crit_edge ], [ -12, %if.then153.if.then183_crit_edge ], [ %call168, %if.end157.if.then183_crit_edge ], [ 0, %out_reval.thread376 ]
  %attrs.2367 = phi ptr [ %attrs.2, %out_reval.if.then183_crit_edge ], [ null, %if.then153.if.then183_crit_edge ], [ %call7.i.i, %if.end157.if.then183_crit_edge ], [ %attrs.1, %out_reval.thread376 ]
  %time = getelementptr i8, ptr %1, i32 -56
  %57 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %time, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp185) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp185, ptr noundef nonnull %1) #15
  %58 = call ptr @memcpy(ptr %i_ctime, ptr %tmp185, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp185) #15
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %out_reval.if.end186_crit_edge, %if.then127.if.end186_crit_edge
  %rc.2370 = phi i32 [ %rc.2369, %if.then183 ], [ %rc.2, %out_reval.if.end186_crit_edge ], [ 0, %if.then127.if.end186_crit_edge ]
  %attrs.2368 = phi ptr [ %attrs.2367, %if.then183 ], [ %attrs.2, %out_reval.if.end186_crit_edge ], [ %attrs.1, %if.then127.if.end186_crit_edge ]
  %i_ctime187 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp188) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp188, ptr noundef %dir) #15
  %59 = call ptr @memcpy(ptr %i_mtime, ptr %tmp188, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp188) #15
  %60 = call ptr @memcpy(ptr %i_ctime187, ptr %i_mtime, i32 16)
  %time191 = getelementptr i8, ptr %dir, i32 -56
  %61 = ptrtoint ptr %time191 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %time191, align 8
  br label %unlink_out

unlink_out:                                       ; preds = %if.end186, %if.then75, %do.end68.unlink_out_crit_edge
  %attrs.3 = phi ptr [ null, %if.then75 ], [ %attrs.2368, %if.end186 ], [ null, %do.end68.unlink_out_crit_edge ]
  %rc.3 = phi i32 [ %27, %if.then75 ], [ %rc.2370, %if.end186 ], [ -13, %do.end68.unlink_out_crit_edge ]
  %tobool.not.i337 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i337, label %unlink_out.free_dentry_path.exit_crit_edge, label %if.then.i

unlink_out.free_dentry_path.exit_crit_edge:       ; preds = %unlink_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %unlink_out
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %62 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %62, ptr noundef nonnull %call.i) #15
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %unlink_out.free_dentry_path.exit_crit_edge
  call void @kfree(ptr noundef %attrs.3) #15
  call void @_free_xid(i32 noundef %call32) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %63 = load i32, ptr @cifsFYI, align 4
  %and195 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %free_dentry_path.exit.do.end222_crit_edge, label %do.body198

free_dentry_path.exit.do.end222_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end222

do.body198:                                       ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_unlink.descriptor.57, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_unlink, %land.lhs.true210)) #15
          to label %do.end222 [label %land.lhs.true210], !srcloc !352

land.lhs.true210:                                 ; preds = %do.body198
  %call211 = call i32 @___ratelimit(ptr noundef nonnull @cifs_unlink._rs.56, ptr noundef nonnull @.str.49) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %land.lhs.true210.do.end222_crit_edge, label %if.then213

land.lhs.true210.do.end222_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end222

if.then213:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_unlink.descriptor.57, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49, i32 noundef %call32, i32 noundef %rc.3) #15
  br label %do.end222

do.end222:                                        ; preds = %if.then213, %land.lhs.true210.do.end222_crit_edge, %do.body198, %free_dentry_path.exit.do.end222_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool223.not = icmp eq i32 %rc.3, 0
  br i1 %tobool223.not, label %if.else225, label %if.then224

if.then224:                                       ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_err(i32 noundef %call32, ptr noundef nonnull @.str.49, i32 noundef %rc.3)
  br label %do.end228

if.else225:                                       ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_done(i32 noundef %call32, ptr noundef nonnull @.str.49)
  br label %do.end228

do.end228:                                        ; preds = %if.else225, %if.then224
  call void @cifs_put_tlink(ptr noundef %call25) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end228, %if.then27, %do.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then27 ], [ %rc.3, %do.end228 ], [ -5, %do.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_path_from_dentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_close_deferred_file_under_dentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSPOSIXDelFile(i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_drop_nlink(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @drop_nlink(ptr noundef %inode) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %direntry, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_mkdir.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_mkdir, %land.lhs.true)) #15
          to label %do.end13 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_mkdir._rs, ptr noundef nonnull @.str.58) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i16 %mode to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_mkdir.descriptor, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.3, i32 noundef %conv, ptr noundef %inode) #15
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp slt i32 %6, 0
  br i1 %tobool.not.i, label %do.end13.cleanup_crit_edge, label %if.end23, !prof !351

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %do.end13
  %call24 = tail call ptr @cifs_sb_tlink(ptr noundef %4) #15
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call24, i32 0, i32 5
  %8 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tl_tcon.i, align 4
  %call30 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and33 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end28.do.end66_crit_edge, label %do.body36

if.end28.do.end66_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

do.body36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_mkdir.descriptor.61, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_mkdir, %land.lhs.true48)) #15
          to label %do.end66 [label %land.lhs.true48], !srcloc !352

land.lhs.true48:                                  ; preds = %do.body36
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_mkdir._rs.60, ptr noundef nonnull @.str.58) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.do.end66_crit_edge, label %if.then51

land.lhs.true48.do.end66_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end66

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #17
  %11 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %17)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call57 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_mkdir.descriptor.61, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58, i32 noundef %call30, i32 noundef %call57) #15
  br label %do.end66

do.end66:                                         ; preds = %if.then51, %land.lhs.true48.do.end66_crit_edge, %do.body36, %if.end28.do.end66_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call30, ptr noundef nonnull @.str.58)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %18 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 3264) #15
  %call69 = tail call ptr @build_path_from_dentry(ptr noundef %direntry, ptr noundef %call.i) #15
  %cmp.i245 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %if.then71, label %if.end73

if.then71:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call69 to i32
  br label %mkdir_out

if.end73:                                         ; preds = %do.end66
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %9, i32 0, i32 7
  %20 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ses, align 8
  %server74 = getelementptr inbounds %struct.cifs_ses, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %server74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %server74, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %posix_mkdir = getelementptr inbounds %struct.smb_version_operations, ptr %25, i32 0, i32 45
  %26 = ptrtoint ptr %posix_mkdir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %posix_mkdir, align 4
  %tobool75.not = icmp eq ptr %27, null
  br i1 %tobool75.not, label %if.end73.if.end83_crit_edge, label %land.lhs.true76

if.end73.if.end83_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83

land.lhs.true76:                                  ; preds = %if.end73
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %9, i32 0, i32 23
  %28 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %posix_extensions, align 2, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool77.not = icmp eq i8 %29, 0
  br i1 %tobool77.not, label %land.lhs.true76.if.end83_crit_edge, label %if.then79

land.lhs.true76.if.end83_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83

if.then79:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  %call82 = tail call i32 %27(i32 noundef %call30, ptr noundef %inode, i16 noundef zeroext %mode, ptr noundef %9, ptr noundef %call69, ptr noundef %4) #15
  tail call void @d_drop(ptr noundef %direntry) #15
  br label %mkdir_out

if.end83:                                         ; preds = %land.lhs.true76.if.end83_crit_edge, %if.end73.if.end83_crit_edge
  %vals.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %23, i32 0, i32 6
  %30 = ptrtoint ptr %vals.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vals.i, align 8
  %cap_unix.i = getelementptr inbounds %struct.smb_version_values, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %cap_unix.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cap_unix.i, align 4
  %capabilities.i = getelementptr inbounds %struct.cifs_ses, ptr %21, i32 0, i32 15
  %34 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %capabilities.i, align 8
  %and.i246 = and i32 %35, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246)
  %tobool.i.not = icmp eq i32 %and.i246, 0
  br i1 %tobool.i.not, label %if.end83.if.end95_crit_edge, label %land.lhs.true87

if.end83.if.end95_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

land.lhs.true87:                                  ; preds = %if.end83
  %Capability = getelementptr inbounds %struct.cifs_tcon, ptr %9, i32 0, i32 21, i32 2
  %36 = ptrtoint ptr %Capability to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %Capability, align 4
  %38 = and i64 %37, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool89.not = icmp eq i64 %38, 0
  br i1 %tobool89.not, label %land.lhs.true87.if.end95_crit_edge, label %if.then90

land.lhs.true87.if.end95_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.then90:                                        ; preds = %land.lhs.true87
  %call91 = tail call fastcc i32 @cifs_posix_mkdir(ptr noundef %inode, ptr noundef %direntry, i16 noundef zeroext %mode, ptr noundef %call69, ptr noundef %4, ptr noundef %9, i32 noundef %call30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call91)
  %cmp.not = icmp eq i32 %call91, -95
  br i1 %cmp.not, label %if.then90.if.end95_crit_edge, label %if.then90.mkdir_out_crit_edge

if.then90.mkdir_out_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #17
  br label %mkdir_out

if.then90.if.end95_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.end95:                                         ; preds = %if.then90.if.end95_crit_edge, %land.lhs.true87.if.end95_crit_edge, %if.end83.if.end95_crit_edge
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %mkdir = getelementptr inbounds %struct.smb_version_operations, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %mkdir to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mkdir, align 4
  %tobool97.not = icmp eq ptr %42, null
  br i1 %tobool97.not, label %if.end95.mkdir_out_crit_edge, label %if.end99

if.end95.mkdir_out_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %mkdir_out

if.end99:                                         ; preds = %if.end95
  %call102 = tail call i32 %42(i32 noundef %call30, ptr noundef %inode, i16 noundef zeroext %mode, ptr noundef %9, ptr noundef %call69, ptr noundef %4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end135, label %do.body106

do.body106:                                       ; preds = %if.end99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %43 = load i32, ptr @cifsFYI, align 4
  %and107 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body106.do.end134_crit_edge, label %do.body110

do.body106.do.end134_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end134

do.body110:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_mkdir.descriptor.63, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_mkdir, %land.lhs.true122)) #15
          to label %do.end134 [label %land.lhs.true122], !srcloc !352

land.lhs.true122:                                 ; preds = %do.body110
  %call123 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_mkdir._rs.62, ptr noundef nonnull @.str.58) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %land.lhs.true122.do.end134_crit_edge, label %if.then125

land.lhs.true122.do.end134_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end134

if.then125:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_mkdir.descriptor.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, i32 noundef %call102) #15
  br label %do.end134

do.end134:                                        ; preds = %if.then125, %land.lhs.true122.do.end134_crit_edge, %do.body110, %do.body106.do.end134_crit_edge
  tail call void @d_drop(ptr noundef %direntry) #15
  br label %mkdir_out

if.end135:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  %call136 = tail call fastcc i32 @cifs_mkdir_qinfo(ptr noundef %inode, ptr noundef %direntry, i16 noundef zeroext %mode, ptr noundef %call69, ptr noundef %4, ptr noundef %9, i32 noundef %call30)
  br label %mkdir_out

mkdir_out:                                        ; preds = %if.end135, %do.end134, %if.end95.mkdir_out_crit_edge, %if.then90.mkdir_out_crit_edge, %if.then79, %if.then71
  %rc.0 = phi i32 [ %19, %if.then71 ], [ %call82, %if.then79 ], [ %call91, %if.then90.mkdir_out_crit_edge ], [ %call102, %do.end134 ], [ %call136, %if.end135 ], [ -38, %if.end95.mkdir_out_crit_edge ]
  %time = getelementptr i8, ptr %inode, i32 -56
  %44 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %time, align 8
  %tobool.not.i247 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i247, label %mkdir_out.free_dentry_path.exit_crit_edge, label %if.then.i

mkdir_out.free_dentry_path.exit_crit_edge:        ; preds = %mkdir_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %mkdir_out
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %45 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %45, ptr noundef nonnull %call.i) #15
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %mkdir_out.free_dentry_path.exit_crit_edge
  tail call void @_free_xid(i32 noundef %call30) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %46 = load i32, ptr @cifsFYI, align 4
  %and141 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %free_dentry_path.exit.do.end168_crit_edge, label %do.body144

free_dentry_path.exit.do.end168_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end168

do.body144:                                       ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_mkdir.descriptor.66, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_mkdir, %land.lhs.true156)) #15
          to label %do.end168 [label %land.lhs.true156], !srcloc !352

land.lhs.true156:                                 ; preds = %do.body144
  %call157 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_mkdir._rs.65, ptr noundef nonnull @.str.58) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %land.lhs.true156.do.end168_crit_edge, label %if.then159

land.lhs.true156.do.end168_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end168

if.then159:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_mkdir.descriptor.66, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58, i32 noundef %call30, i32 noundef %rc.0) #15
  br label %do.end168

do.end168:                                        ; preds = %if.then159, %land.lhs.true156.do.end168_crit_edge, %do.body144, %free_dentry_path.exit.do.end168_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool169.not = icmp eq i32 %rc.0, 0
  br i1 %tobool169.not, label %if.else171, label %if.then170

if.then170:                                       ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call30, ptr noundef nonnull @.str.58, i32 noundef %rc.0)
  br label %do.end174

if.else171:                                       ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call30, ptr noundef nonnull @.str.58)
  br label %do.end174

do.end174:                                        ; preds = %if.else171, %if.then170
  tail call void @cifs_put_tlink(ptr noundef %call24) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end174, %if.then26, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then26 ], [ %rc.0, %do.end174 ], [ -5, %do.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_posix_mkdir(ptr nocapture noundef readonly %inode, ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %full_path, ptr noundef %cifs_sb, ptr noundef %tcon, i32 noundef %xid) unnamed_addr #0 align 64 {
entry:
  %oplock = alloca i32, align 4
  %fattr = alloca %struct.cifs_fattr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #15
  %0 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oplock, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fattr) #15
  %1 = call ptr @memset(ptr %fattr, i32 255, i32 120)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 100) #18
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.posix_mkdir_out_crit_edge, label %if.end

entry.posix_mkdir_out_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_mkdir_out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @current_umask() #15
  %3 = trunc i32 %call1 to i16
  %4 = xor i16 %3, -1
  %conv2 = and i16 %4, %mode
  %conv3 = zext i16 %conv2 to i64
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %5 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local_nls, align 4
  %call4 = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #15
  %call5 = call i32 @CIFSPOSIXCreate(i32 noundef %xid, ptr noundef %tcon, i32 noundef 528, i64 noundef %conv3, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %oplock, ptr noundef %full_path, ptr noundef %6, i32 noundef %call4) #15
  %7 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %call5, label %do.body10 [
    i32 -95, label %if.end.posix_mkdir_out_crit_edge
    i32 0, label %if.end30
  ]

if.end.posix_mkdir_out_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_mkdir_out

do.body10:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %8 = load i32, ptr @cifsFYI, align 4
  %and11 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end28_crit_edge, label %do.body14

do.body10.do.end28_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

do.body14:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_posix_mkdir.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_posix_mkdir, %land.lhs.true)) #15
          to label %do.end28 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body14
  %call19 = call i32 @___ratelimit(ptr noundef nonnull @cifs_posix_mkdir._rs, ptr noundef nonnull @.str.130) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end28_crit_edge, label %if.then21

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end28

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_posix_mkdir.descriptor, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.3, i32 noundef %call5) #15
  br label %do.end28

do.end28:                                         ; preds = %if.then21, %land.lhs.true.do.end28_crit_edge, %do.body14, %do.body10.do.end28_crit_edge
  call void @d_drop(ptr noundef %dentry) #15
  br label %posix_mkdir_out

if.end30:                                         ; preds = %if.end
  %Type = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %Type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp31 = icmp eq i32 %10, -1
  br i1 %cmp31, label %if.end30.posix_mkdir_get_info_crit_edge, label %if.end34

if.end30.posix_mkdir_get_info_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_mkdir_get_info

if.end34:                                         ; preds = %if.end30
  call void @cifs_unix_basic_to_fattr(ptr noundef nonnull %fattr, ptr noundef nonnull %call7.i.i, ptr noundef %cifs_sb)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end34.cifs_fill_uniqueid.exit_crit_edge

if.end34.cifs_fill_uniqueid.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_fill_uniqueid.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = call i32 @iunique(ptr noundef %12, i32 noundef 2) #15
  %conv.i = zext i32 %call1.i to i64
  %cf_uniqueid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %17 = ptrtoint ptr %cf_uniqueid.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv.i, ptr %cf_uniqueid.i, align 8
  br label %cifs_fill_uniqueid.exit

cifs_fill_uniqueid.exit:                          ; preds = %if.end.i, %if.end34.cifs_fill_uniqueid.exit_crit_edge
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %call36 = call ptr @cifs_iget(ptr noundef %19, ptr noundef nonnull %fattr)
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %cifs_fill_uniqueid.exit.posix_mkdir_get_info_crit_edge, label %if.end39

cifs_fill_uniqueid.exit.posix_mkdir_get_info_crit_edge: ; preds = %cifs_fill_uniqueid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_mkdir_get_info

if.end39:                                         ; preds = %cifs_fill_uniqueid.exit
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call36) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %20 = load i32, ptr @cifsFYI, align 4
  %and42 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end39.do.end69_crit_edge, label %do.body45

if.end39.do.end69_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end69

do.body45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_posix_mkdir.descriptor.133, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_posix_mkdir, %land.lhs.true57)) #15
          to label %do.end69 [label %land.lhs.true57], !srcloc !352

land.lhs.true57:                                  ; preds = %do.body45
  %call58 = call i32 @___ratelimit(ptr noundef nonnull @cifs_posix_mkdir._rs.132, ptr noundef nonnull @.str.130) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.do.end69_crit_edge, label %if.then60

land.lhs.true57.do.end69_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end69

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_posix_mkdir.descriptor.133, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.3, ptr noundef %dentry, ptr noundef %dentry, ptr noundef nonnull %call36) #15
  br label %do.end69

do.end69:                                         ; preds = %if.then60, %land.lhs.true57.do.end69_crit_edge, %do.body45, %if.end39.do.end69_crit_edge
  %21 = getelementptr inbounds %struct.inode, ptr %call36, i32 0, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp70.not = icmp eq i32 %23, 2
  br i1 %cmp70.not, label %do.end69.posix_mkdir_out_crit_edge, label %do.body74

do.end69.posix_mkdir_out_crit_edge:               ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_mkdir_out

do.body74:                                        ; preds = %do.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %24 = load i32, ptr @cifsFYI, align 4
  %and75 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.posix_mkdir_out_crit_edge, label %do.body78

do.body74.posix_mkdir_out_crit_edge:              ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_mkdir_out

do.body78:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_posix_mkdir.descriptor.136, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_posix_mkdir, %land.lhs.true90)) #15
          to label %posix_mkdir_out [label %land.lhs.true90], !srcloc !352

land.lhs.true90:                                  ; preds = %do.body78
  %call91 = call i32 @___ratelimit(ptr noundef nonnull @cifs_posix_mkdir._rs.135, ptr noundef nonnull @.str.130) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true90.posix_mkdir_out_crit_edge, label %if.then93

land.lhs.true90.posix_mkdir_out_crit_edge:        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #17
  br label %posix_mkdir_out

if.then93:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %21, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_posix_mkdir.descriptor.136, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.3, i32 noundef %26) #15
  br label %posix_mkdir_out

posix_mkdir_out:                                  ; preds = %posix_mkdir_get_info, %if.then93, %land.lhs.true90.posix_mkdir_out_crit_edge, %do.body78, %do.body74.posix_mkdir_out_crit_edge, %do.end69.posix_mkdir_out_crit_edge, %do.end28, %if.end.posix_mkdir_out_crit_edge, %entry.posix_mkdir_out_crit_edge
  %rc.0 = phi i32 [ %call5, %if.end.posix_mkdir_out_crit_edge ], [ %call5, %do.end28 ], [ %call104, %posix_mkdir_get_info ], [ 0, %if.then93 ], [ 0, %land.lhs.true90.posix_mkdir_out_crit_edge ], [ 0, %do.body74.posix_mkdir_out_crit_edge ], [ 0, %do.end69.posix_mkdir_out_crit_edge ], [ -12, %entry.posix_mkdir_out_crit_edge ], [ 0, %do.body78 ]
  call void @kfree(ptr noundef %call7.i.i) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #15
  ret i32 %rc.0

posix_mkdir_get_info:                             ; preds = %cifs_fill_uniqueid.exit.posix_mkdir_get_info_crit_edge, %if.end30.posix_mkdir_get_info_crit_edge
  %call104 = call fastcc i32 @cifs_mkdir_qinfo(ptr noundef %inode, ptr noundef %dentry, i16 noundef zeroext %conv2, ptr noundef %full_path, ptr noundef %cifs_sb, ptr noundef %tcon, i32 noundef %xid)
  br label %posix_mkdir_out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_mkdir_qinfo(ptr nocapture noundef readonly %parent, ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %full_path, ptr noundef %cifs_sb, ptr noundef %tcon, i32 noundef %xid) unnamed_addr #0 align 64 {
entry:
  %inode = alloca ptr, align 4
  %args = alloca %struct.cifs_unix_set_info_args, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inode) #15
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %inode, align 4
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 23
  %1 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %posix_extensions, align 2, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %call = call i32 @smb311_posix_get_inode_info(ptr noundef nonnull %inode, ptr noundef %full_path, ptr noundef %4, i32 noundef %xid)
  br label %if.end7

if.else:                                          ; preds = %entry
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 22
  %5 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %unix_ext, align 8
  %6 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %bf.cast.not = icmp eq i16 %6, 0
  %i_sb5 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb5, align 4
  br i1 %bf.cast.not, label %if.else4, label %if.then1

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = call i32 @cifs_get_inode_info_unix(ptr noundef nonnull %inode, ptr noundef %full_path, ptr noundef %8, i32 noundef %xid)
  br label %if.end7

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = call i32 @cifs_get_inode_info(ptr noundef nonnull %inode, ptr noundef %full_path, ptr noundef null, ptr noundef %8, i32 noundef %xid, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.then1, %if.then
  %rc.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then1 ], [ %call6, %if.else4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool8.not = icmp eq i32 %rc.0, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp = icmp eq i16 %13, 16384
  br i1 %cmp, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iput(ptr noundef %10) #15
  tail call void @d_drop(ptr noundef %dentry) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %14 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp14 = icmp ult i32 %16, 2
  br i1 %cmp14, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @set_nlink(ptr noundef %10, i32 noundef 2) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %call18 = tail call i32 @current_umask() #15
  %17 = trunc i32 %call18 to i16
  %18 = xor i16 %17, -1
  %conv21 = and i16 %18, %mode
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %parent, align 8
  %21 = and i16 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool25.not = icmp eq i16 %21, 0
  %22 = or i16 %21, %conv21
  %unix_ext30 = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 22
  %23 = ptrtoint ptr %unix_ext30 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load31 = load i16, ptr %unix_ext30, align 8
  %24 = and i16 %bf.load31, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %bf.cast34.not = icmp eq i16 %24, 0
  br i1 %bf.cast34.not, label %if.else67, label %if.then35

if.then35:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args) #15
  %mode36 = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 3
  %conv37 = zext i16 %22 to i64
  %25 = call ptr @memset(ptr %args, i32 255, i32 48)
  %26 = ptrtoint ptr %mode36 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv37, ptr %mode36, align 8
  %uid = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 4
  %gid = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 5
  %device = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %args, i32 0, i32 6
  %27 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %device, align 8
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %28 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mnt_cifs_flags, align 4
  %and38 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else59, label %if.then40

if.then40:                                        ; preds = %if.then35
  %30 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 99
  %34 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fsuid, align 4
  %38 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %uid, align 8
  br i1 %tobool25.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  %i_gid = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 3
  %39 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_gid, align 8
  br label %if.end64

if.else49:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %cred57 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 99
  %43 = ptrtoint ptr %cred57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cred57, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fsgid, align 4
  br label %if.end64

if.else59:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %uid, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %if.else49, %if.then47
  %.sink = phi i32 [ %40, %if.then47 ], [ %46, %if.else49 ], [ -1, %if.else59 ]
  %48 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %gid, align 4
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %49 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %local_nls, align 4
  %call65 = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #15
  %call66 = call i32 @CIFSSMBUnixSetPathInfo(i32 noundef %xid, ptr noundef %tcon, ptr noundef %full_path, ptr noundef nonnull %args, ptr noundef %50, i32 noundef %call65) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args) #15
  br label %if.end122

if.else67:                                        ; preds = %if.end17
  %mnt_cifs_flags69 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %51 = ptrtoint ptr %mnt_cifs_flags69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mnt_cifs_flags69, align 4
  %and70 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %53 = and i16 %conv21, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp74 = icmp eq i16 %53, 0
  %or.cond = select i1 %tobool71.not, i1 %cmp74, i1 false
  br i1 %or.cond, label %land.lhs.true76, label %if.else67.if.end81_crit_edge

if.else67.if.end81_crit_edge:                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

land.lhs.true76:                                  ; preds = %if.else67
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %54 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ses, align 8
  %server68 = getelementptr inbounds %struct.cifs_ses, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %server68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %server68, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops, align 4
  %mkdir_setinfo = getelementptr inbounds %struct.smb_version_operations, ptr %59, i32 0, i32 47
  %60 = ptrtoint ptr %mkdir_setinfo to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mkdir_setinfo, align 4
  %tobool77.not = icmp eq ptr %61, null
  br i1 %tobool77.not, label %land.lhs.true76.if.end81_crit_edge, label %if.then78

land.lhs.true76.if.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %61(ptr noundef %10, ptr noundef %full_path, ptr noundef %cifs_sb, ptr noundef %tcon, i32 noundef %xid) #15
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %land.lhs.true76.if.end81_crit_edge, %if.else67.if.end81_crit_edge
  %62 = ptrtoint ptr %mnt_cifs_flags69 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mnt_cifs_flags69, align 4
  %and83 = and i32 %63, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end81.if.end90_crit_edge, label %if.then85

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  %64 = or i16 %22, 16384
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %10, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end81.if.end90_crit_edge
  %66 = ptrtoint ptr %mnt_cifs_flags69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mnt_cifs_flags69, align 4
  %and92 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end90.if.end122_crit_edge, label %if.then94

if.end90.if.end122_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end122

if.then94:                                        ; preds = %if.end90
  %i_uid = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 2
  %68 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i156 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i156 to ptr
  %task100 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task100 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task100, align 8
  %cred101 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 99
  %72 = ptrtoint ptr %cred101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cred101, align 16
  %fsuid102 = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %fsuid102 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fsuid102, align 4
  %76 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %i_uid, align 4
  %77 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %10, align 8
  %79 = and i16 %78, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool106.not = icmp eq i16 %79, 0
  %i_gid111 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 3
  br i1 %tobool106.not, label %if.else110, label %if.then107

if.then107:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #17
  %i_gid109 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 3
  %80 = ptrtoint ptr %i_gid109 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_gid109, align 8
  %82 = ptrtoint ptr %i_gid111 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %i_gid111, align 8
  br label %if.end122

if.else110:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %task100 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task100, align 8
  %cred118 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 99
  %85 = ptrtoint ptr %cred118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cred118, align 16
  %fsgid119 = getelementptr inbounds %struct.cred, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %fsgid119 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fsgid119, align 4
  %89 = ptrtoint ptr %i_gid111 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %i_gid111, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.else110, %if.then107, %if.end90.if.end122_crit_edge, %if.end64
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %10) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %if.then12, %if.end7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode) #15
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_rmdir(ptr noundef %inode, ptr noundef %direntry) local_unnamed_addr #0 align 64 {
entry:
  %tmp97 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %0 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body2

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_rmdir.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_rmdir, %land.lhs.true)) #15
          to label %do.end14 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_rmdir._rs, ptr noundef nonnull @.str.67) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %if.then9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_rmdir.descriptor, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.3, ptr noundef %inode) #15
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %land.lhs.true.do.end14_crit_edge, %do.body2, %entry.do.end14_crit_edge
  %call15 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and18 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.end14.do.end51_crit_edge, label %do.body21

do.end14.do.end51_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end51

do.body21:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_rmdir.descriptor.70, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_rmdir, %land.lhs.true33)) #15
          to label %do.end51 [label %land.lhs.true33], !srcloc !352

land.lhs.true33:                                  ; preds = %do.body21
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_rmdir._rs.69, ptr noundef nonnull @.str.67) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end51_crit_edge, label %if.then36

land.lhs.true33.do.end51_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end51

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %9)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call42 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_rmdir.descriptor.70, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67, i32 noundef %call15, i32 noundef %call42) #15
  br label %do.end51

do.end51:                                         ; preds = %if.then36, %land.lhs.true33.do.end51_crit_edge, %do.body21, %do.end14.do.end51_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call15, ptr noundef nonnull @.str.67)
  %call53 = tail call ptr @build_path_from_dentry(ptr noundef %direntry, ptr noundef %call.i) #15
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %if.end57

if.then55:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call53 to i32
  br label %rmdir_exit

if.end57:                                         ; preds = %do.end51
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
  br i1 %tobool.not.i, label %if.end57.rmdir_exit_crit_edge, label %if.end67, !prof !351

if.end57.rmdir_exit_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %rmdir_exit

if.end67:                                         ; preds = %if.end57
  %call68 = tail call ptr @cifs_sb_tlink(ptr noundef %14) #15
  %cmp.i176 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %call68 to i32
  br label %rmdir_exit

if.end72:                                         ; preds = %if.end67
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call68, i32 0, i32 5
  %18 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ses, align 8
  %server74 = getelementptr inbounds %struct.cifs_ses, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %server74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %server74, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %rmdir = getelementptr inbounds %struct.smb_version_operations, ptr %25, i32 0, i32 48
  %26 = ptrtoint ptr %rmdir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmdir, align 4
  %tobool75.not = icmp eq ptr %27, null
  br i1 %tobool75.not, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cifs_put_tlink(ptr noundef %call68) #15
  br label %rmdir_exit

if.end77:                                         ; preds = %if.end72
  %nodelete = getelementptr inbounds %struct.cifs_tcon, ptr %19, i32 0, i32 22
  %28 = ptrtoint ptr %nodelete to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %nodelete, align 8
  %29 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast.not = icmp eq i16 %29, 0
  br i1 %bf.cast.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cifs_put_tlink(ptr noundef %call68) #15
  br label %rmdir_exit

if.end79:                                         ; preds = %if.end77
  %call82 = tail call i32 %27(i32 noundef %call15, ptr noundef %19, ptr noundef %call53, ptr noundef %14) #15
  tail call void @cifs_put_tlink(ptr noundef %call68) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %if.end79.if.end90_crit_edge

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i, align 8
  %i_lock = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  %32 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i, align 8
  tail call fastcc void @i_size_write(ptr noundef %33, i64 noundef 0)
  %34 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i, align 8
  tail call void @clear_nlink(ptr noundef %35) #15
  %36 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i, align 8
  %i_lock89 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 18
  tail call void @_raw_spin_unlock(ptr noundef %i_lock89) #15
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %if.end79.if.end90_crit_edge
  %d_inode.i180 = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i180 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i180, align 8
  %time = getelementptr i8, ptr %39, i32 -56
  %40 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %time, align 8
  %time94 = getelementptr i8, ptr %inode, i32 -56
  %41 = ptrtoint ptr %time94 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %time94, align 8
  %42 = load ptr, ptr %d_inode.i180, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 17
  %i_ctime96 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp97) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp97, ptr noundef %inode) #15
  %43 = call ptr @memcpy(ptr %i_mtime, ptr %tmp97, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp97) #15
  %44 = call ptr @memcpy(ptr %i_ctime96, ptr %i_mtime, i32 16)
  %45 = call ptr @memmove(ptr %i_ctime, ptr %i_mtime, i32 16)
  br label %rmdir_exit

rmdir_exit:                                       ; preds = %if.end90, %if.then78, %if.then76, %if.then70, %if.end57.rmdir_exit_crit_edge, %if.then55
  %rc.0 = phi i32 [ %10, %if.then55 ], [ %17, %if.then70 ], [ -13, %if.then78 ], [ %call82, %if.end90 ], [ -38, %if.then76 ], [ -5, %if.end57.rmdir_exit_crit_edge ]
  %tobool.not.i183 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i183, label %rmdir_exit.free_dentry_path.exit_crit_edge, label %if.then.i

rmdir_exit.free_dentry_path.exit_crit_edge:       ; preds = %rmdir_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %rmdir_exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %46 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %46, ptr noundef nonnull %call.i) #15
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %rmdir_exit.free_dentry_path.exit_crit_edge
  call void @_free_xid(i32 noundef %call15) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %47 = load i32, ptr @cifsFYI, align 4
  %and101 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %free_dentry_path.exit.do.end128_crit_edge, label %do.body104

free_dentry_path.exit.do.end128_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end128

do.body104:                                       ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_rmdir.descriptor.72, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_rmdir, %land.lhs.true116)) #15
          to label %do.end128 [label %land.lhs.true116], !srcloc !352

land.lhs.true116:                                 ; preds = %do.body104
  %call117 = call i32 @___ratelimit(ptr noundef nonnull @cifs_rmdir._rs.71, ptr noundef nonnull @.str.67) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %land.lhs.true116.do.end128_crit_edge, label %if.then119

land.lhs.true116.do.end128_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end128

if.then119:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_rmdir.descriptor.72, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67, i32 noundef %call15, i32 noundef %rc.0) #15
  br label %do.end128

do.end128:                                        ; preds = %if.then119, %land.lhs.true116.do.end128_crit_edge, %do.body104, %free_dentry_path.exit.do.end128_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool129.not = icmp eq i32 %rc.0, 0
  br i1 %tobool129.not, label %if.else131, label %if.then130

if.then130:                                       ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_err(i32 noundef %call15, ptr noundef nonnull @.str.67, i32 noundef %rc.0)
  br label %do.end134

if.else131:                                       ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_done(i32 noundef %call15, ptr noundef nonnull @.str.67)
  br label %do.end134

do.end134:                                        ; preds = %if.else131, %if.then130
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_rename2(ptr nocapture noundef readnone %mnt_userns, ptr noundef %source_dir, ptr noundef %source_dentry, ptr noundef %target_dir, ptr noundef %target_dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %tmp113 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %source_dir, i32 0, i32 8
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
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5, !prof !351

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #15
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call6, i32 0, i32 5
  %7 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tl_tcon.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %9 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %10 = load ptr, ptr @names_cachep, align 4
  %call.i239 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 3264) #15
  %call14 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and16 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end10.do.end42_crit_edge, label %do.body19

if.end10.do.end42_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

do.body19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_rename2.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_rename2, %land.lhs.true)) #15
          to label %do.end42 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body19
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_rename2._rs, ptr noundef nonnull @.str.73) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.do.end42_crit_edge, label %if.then30

land.lhs.true.do.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %12 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  %call34 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_rename2.descriptor, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73, i32 noundef %call14, i32 noundef %call34) #15
  br label %do.end42

do.end42:                                         ; preds = %if.then30, %land.lhs.true.do.end42_crit_edge, %do.body19, %if.end10.do.end42_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call14, ptr noundef nonnull @.str.73)
  %call44 = tail call ptr @build_path_from_dentry(ptr noundef %source_dentry, ptr noundef %call.i) #15
  %cmp.i240 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then46, label %if.end48

if.then46:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call44 to i32
  br label %cifs_rename_exit

if.end48:                                         ; preds = %do.end42
  %call49 = tail call ptr @build_path_from_dentry(ptr noundef %target_dentry, ptr noundef %call.i239) #15
  %cmp.i241 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %call49 to i32
  br label %cifs_rename_exit

if.end53:                                         ; preds = %if.end48
  tail call void @cifs_close_deferred_file_under_dentry(ptr noundef %8, ptr noundef %call44) #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %target_dentry, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %cmp.not = icmp eq ptr %22, null
  br i1 %cmp.not, label %if.end53.if.end56_crit_edge, label %if.then55

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cifs_close_deferred_file_under_dentry(ptr noundef %8, ptr noundef %call49) #15
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53.if.end56_crit_edge
  %call57 = tail call fastcc i32 @cifs_do_rename(i32 noundef %call14, ptr noundef %source_dentry, ptr noundef %call44, ptr noundef %target_dentry, ptr noundef %call49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call57)
  %cmp58 = icmp eq i32 %call57, -13
  br i1 %cmp58, label %while.body.preheader, label %if.end56.if.end65_crit_edge

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

while.body.preheader:                             ; preds = %if.end56
  tail call void @cifs_close_all_deferred_files(ptr noundef %8) #15
  %call61 = tail call fastcc i32 @cifs_do_rename(i32 noundef %call14, ptr noundef %source_dentry, ptr noundef %call44, ptr noundef %target_dentry, ptr noundef %call49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, -13
  br i1 %cmp62.not, label %while.cond, label %while.body.preheader.if.end65_crit_edge

while.body.preheader.if.end65_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

while.cond:                                       ; preds = %while.body.preheader
  tail call void @cifs_close_all_deferred_files(ptr noundef %8) #15
  %call61.1 = tail call fastcc i32 @cifs_do_rename(i32 noundef %call14, ptr noundef %source_dentry, ptr noundef %call44, ptr noundef %target_dentry, ptr noundef %call49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call61.1)
  %cmp62.not.1 = icmp eq i32 %call61.1, -13
  br i1 %cmp62.not.1, label %while.cond.1, label %while.cond.if.end65_crit_edge

while.cond.if.end65_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

while.cond.1:                                     ; preds = %while.cond
  tail call void @cifs_close_all_deferred_files(ptr noundef %8) #15
  %call61.2 = tail call fastcc i32 @cifs_do_rename(i32 noundef %call14, ptr noundef %source_dentry, ptr noundef %call44, ptr noundef %target_dentry, ptr noundef %call49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call61.2)
  %cmp62.not.2 = icmp eq i32 %call61.2, -13
  br i1 %cmp62.not.2, label %while.cond.2, label %while.cond.1.if.end65_crit_edge

while.cond.1.if.end65_crit_edge:                  ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

while.cond.2:                                     ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool67.not252 = icmp eq i32 %flags, 0
  br i1 %tobool67.not252, label %while.cond.2.unlink_target_crit_edge, label %while.cond.2.cifs_rename_exit_crit_edge

while.cond.2.cifs_rename_exit_crit_edge:          ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_rename_exit

while.cond.2.unlink_target_crit_edge:             ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlink_target

if.end65:                                         ; preds = %while.cond.1.if.end65_crit_edge, %while.cond.if.end65_crit_edge, %while.body.preheader.if.end65_crit_edge, %if.end56.if.end65_crit_edge
  %rc.1 = phi i32 [ %call57, %if.end56.if.end65_crit_edge ], [ %call61, %while.body.preheader.if.end65_crit_edge ], [ %call61.1, %while.cond.if.end65_crit_edge ], [ %call61.2, %while.cond.1.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool67.not = icmp eq i32 %flags, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cifs_rename_exit_crit_edge

if.end65.cifs_rename_exit_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_rename_exit

if.end69:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %rc.1)
  %cmp70 = icmp eq i32 %rc.1, -17
  br i1 %cmp70, label %land.lhs.true71, label %if.end69.unlink_target_crit_edge

if.end69.unlink_target_crit_edge:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlink_target

land.lhs.true71:                                  ; preds = %if.end69
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 22
  %23 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %unix_ext, align 8
  %24 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %bf.cast.not = icmp eq i16 %24, 0
  br i1 %bf.cast.not, label %land.lhs.true71.unlink_target_crit_edge, label %if.then72

land.lhs.true71.unlink_target_crit_edge:          ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlink_target

if.then72:                                        ; preds = %land.lhs.true71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 200) #18
  %cmp74 = icmp eq ptr %call7.i.i, null
  br i1 %cmp74, label %if.then72.cifs_rename_exit_crit_edge, label %if.end76

if.then72.cifs_rename_exit_crit_edge:             ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_rename_exit

if.end76:                                         ; preds = %if.then72
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %local_nls, align 4
  %call77 = tail call i32 @cifs_remap(ptr noundef %3) #15
  %call78 = tail call i32 @CIFSSMBUnixQPathInfo(i32 noundef %call14, ptr noundef %8, ptr noundef %call44, ptr noundef nonnull %call7.i.i, ptr noundef %27, i32 noundef %call77) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79.not = icmp eq i32 %call78, 0
  br i1 %cmp79.not, label %if.end81, label %if.end76.unlink_target_crit_edge

if.end76.unlink_target_crit_edge:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlink_target

if.end81:                                         ; preds = %if.end76
  %add.ptr = getelementptr %struct.FILE_UNIX_BASIC_INFO, ptr %call7.i.i, i32 1
  %28 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %local_nls, align 4
  %call83 = tail call i32 @cifs_remap(ptr noundef %3) #15
  %call84 = tail call i32 @CIFSSMBUnixQPathInfo(i32 noundef %call14, ptr noundef %8, ptr noundef %call49, ptr noundef %add.ptr, ptr noundef %29, i32 noundef %call83) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %land.lhs.true86, label %if.end81.unlink_target_crit_edge

if.end81.unlink_target_crit_edge:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlink_target

land.lhs.true86:                                  ; preds = %if.end81
  %UniqueId = getelementptr inbounds %struct.FILE_UNIX_BASIC_INFO, ptr %call7.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %UniqueId to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %UniqueId, align 4
  %UniqueId87 = getelementptr %struct.FILE_UNIX_BASIC_INFO, ptr %call7.i.i, i32 1, i32 10
  %32 = ptrtoint ptr %UniqueId87 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %UniqueId87, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp88 = icmp eq i64 %31, %33
  br i1 %cmp88, label %land.lhs.true86.cifs_rename_exit_crit_edge, label %land.lhs.true86.unlink_target_crit_edge

land.lhs.true86.unlink_target_crit_edge:          ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlink_target

land.lhs.true86.cifs_rename_exit_crit_edge:       ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_rename_exit

unlink_target:                                    ; preds = %land.lhs.true86.unlink_target_crit_edge, %if.end81.unlink_target_crit_edge, %if.end76.unlink_target_crit_edge, %land.lhs.true71.unlink_target_crit_edge, %if.end69.unlink_target_crit_edge, %while.cond.2.unlink_target_crit_edge
  %rc.1253256 = phi i32 [ -17, %if.end76.unlink_target_crit_edge ], [ -17, %land.lhs.true86.unlink_target_crit_edge ], [ -17, %if.end81.unlink_target_crit_edge ], [ -17, %land.lhs.true71.unlink_target_crit_edge ], [ %rc.1, %if.end69.unlink_target_crit_edge ], [ -13, %while.cond.2.unlink_target_crit_edge ]
  %info_buf_source.0 = phi ptr [ %call7.i.i, %if.end76.unlink_target_crit_edge ], [ %call7.i.i, %land.lhs.true86.unlink_target_crit_edge ], [ %call7.i.i, %if.end81.unlink_target_crit_edge ], [ null, %land.lhs.true71.unlink_target_crit_edge ], [ null, %if.end69.unlink_target_crit_edge ], [ null, %while.cond.2.unlink_target_crit_edge ]
  %34 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_inode.i, align 8
  %cmp.i243.not = icmp eq ptr %35, null
  br i1 %cmp.i243.not, label %unlink_target.if.end107_crit_edge, label %land.lhs.true93

unlink_target.if.end107_crit_edge:                ; preds = %unlink_target
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

land.lhs.true93:                                  ; preds = %unlink_target
  %36 = zext i32 %rc.1253256 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %rc.1253256, label %land.lhs.true93.if.end107_crit_edge [
    i32 -13, label %land.lhs.true93.if.then96_crit_edge
    i32 -17, label %land.lhs.true93.if.then96_crit_edge260
  ]

land.lhs.true93.if.then96_crit_edge260:           ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96

land.lhs.true93.if.then96_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then96

land.lhs.true93.if.end107_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then96:                                        ; preds = %land.lhs.true93.if.then96_crit_edge, %land.lhs.true93.if.then96_crit_edge260
  %37 = ptrtoint ptr %target_dentry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target_dentry, align 8
  %39 = and i32 %38, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %39)
  %40 = icmp eq i32 %39, 2097152
  br i1 %40, label %if.then98, label %if.else100

if.then98:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #17
  %call99 = tail call i32 @cifs_rmdir(ptr noundef %target_dir, ptr noundef %target_dentry)
  br label %if.end102

if.else100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #17
  %call101 = tail call i32 @cifs_unlink(ptr noundef %target_dir, ptr noundef %target_dentry)
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then98
  %tmprc.0 = phi i32 [ %call99, %if.then98 ], [ %call101, %if.else100 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmprc.0)
  %tobool103.not = icmp eq i32 %tmprc.0, 0
  br i1 %tobool103.not, label %if.end105, label %if.end102.cifs_rename_exit_crit_edge

if.end102.cifs_rename_exit_crit_edge:             ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_rename_exit

if.end105:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  %call106 = tail call fastcc i32 @cifs_do_rename(i32 noundef %call14, ptr noundef %source_dentry, ptr noundef %call44, ptr noundef %target_dentry, ptr noundef %call49)
  br label %if.end107

if.end107:                                        ; preds = %if.end105, %land.lhs.true93.if.end107_crit_edge, %unlink_target.if.end107_crit_edge
  %rc.2 = phi i32 [ %call106, %if.end105 ], [ %rc.1253256, %unlink_target.if.end107_crit_edge ], [ %rc.1253256, %land.lhs.true93.if.end107_crit_edge ]
  %time = getelementptr i8, ptr %target_dir, i32 -56
  %41 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %time, align 8
  %time110 = getelementptr i8, ptr %source_dir, i32 -56
  %42 = ptrtoint ptr %time110 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %time110, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %source_dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %source_dir, i32 0, i32 16
  %i_ctime111 = getelementptr inbounds %struct.inode, ptr %target_dir, i32 0, i32 17
  %i_mtime112 = getelementptr inbounds %struct.inode, ptr %target_dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp113) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp113, ptr noundef %source_dir) #15
  %43 = call ptr @memcpy(ptr %i_mtime112, ptr %tmp113, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp113) #15
  %44 = call ptr @memcpy(ptr %i_ctime111, ptr %i_mtime112, i32 16)
  %45 = call ptr @memmove(ptr %i_mtime, ptr %i_mtime112, i32 16)
  %46 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  br label %cifs_rename_exit

cifs_rename_exit:                                 ; preds = %if.end107, %if.end102.cifs_rename_exit_crit_edge, %land.lhs.true86.cifs_rename_exit_crit_edge, %if.then72.cifs_rename_exit_crit_edge, %if.end65.cifs_rename_exit_crit_edge, %while.cond.2.cifs_rename_exit_crit_edge, %if.then51, %if.then46
  %info_buf_source.1 = phi ptr [ null, %if.then46 ], [ null, %if.then51 ], [ null, %if.end65.cifs_rename_exit_crit_edge ], [ %info_buf_source.0, %if.end102.cifs_rename_exit_crit_edge ], [ %info_buf_source.0, %if.end107 ], [ null, %if.then72.cifs_rename_exit_crit_edge ], [ %call7.i.i, %land.lhs.true86.cifs_rename_exit_crit_edge ], [ null, %while.cond.2.cifs_rename_exit_crit_edge ]
  %rc.3 = phi i32 [ %19, %if.then46 ], [ %20, %if.then51 ], [ %rc.1, %if.end65.cifs_rename_exit_crit_edge ], [ %rc.1253256, %if.end102.cifs_rename_exit_crit_edge ], [ %rc.2, %if.end107 ], [ -12, %if.then72.cifs_rename_exit_crit_edge ], [ 0, %land.lhs.true86.cifs_rename_exit_crit_edge ], [ -13, %while.cond.2.cifs_rename_exit_crit_edge ]
  call void @kfree(ptr noundef %info_buf_source.1) #15
  %tobool.not.i245 = icmp eq ptr %call.i239, null
  br i1 %tobool.not.i245, label %cifs_rename_exit.free_dentry_path.exit_crit_edge, label %if.then.i

cifs_rename_exit.free_dentry_path.exit_crit_edge: ; preds = %cifs_rename_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %cifs_rename_exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %47 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %47, ptr noundef nonnull %call.i239) #15
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %cifs_rename_exit.free_dentry_path.exit_crit_edge
  %tobool.not.i246 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i246, label %free_dentry_path.exit.free_dentry_path.exit248_crit_edge, label %if.then.i247

free_dentry_path.exit.free_dentry_path.exit248_crit_edge: ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dentry_path.exit248

if.then.i247:                                     ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %48 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %48, ptr noundef nonnull %call.i) #15
  br label %free_dentry_path.exit248

free_dentry_path.exit248:                         ; preds = %if.then.i247, %free_dentry_path.exit.free_dentry_path.exit248_crit_edge
  call void @_free_xid(i32 noundef %call14) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %49 = load i32, ptr @cifsFYI, align 4
  %and117 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %free_dentry_path.exit248.do.end144_crit_edge, label %do.body120

free_dentry_path.exit248.do.end144_crit_edge:     ; preds = %free_dentry_path.exit248
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end144

do.body120:                                       ; preds = %free_dentry_path.exit248
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_rename2.descriptor.75, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_rename2, %land.lhs.true132)) #15
          to label %do.end144 [label %land.lhs.true132], !srcloc !352

land.lhs.true132:                                 ; preds = %do.body120
  %call133 = call i32 @___ratelimit(ptr noundef nonnull @cifs_rename2._rs.74, ptr noundef nonnull @.str.73) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.lhs.true132.do.end144_crit_edge, label %if.then135

land.lhs.true132.do.end144_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end144

if.then135:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_rename2.descriptor.75, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73, i32 noundef %call14, i32 noundef %rc.3) #15
  br label %do.end144

do.end144:                                        ; preds = %if.then135, %land.lhs.true132.do.end144_crit_edge, %do.body120, %free_dentry_path.exit248.do.end144_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool145.not = icmp eq i32 %rc.3, 0
  br i1 %tobool145.not, label %if.else147, label %if.then146

if.then146:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_err(i32 noundef %call14, ptr noundef nonnull @.str.73, i32 noundef %rc.3)
  br label %do.end150

if.else147:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_done(i32 noundef %call14, ptr noundef nonnull @.str.73)
  br label %do.end150

do.end150:                                        ; preds = %if.else147, %if.then146
  call void @cifs_put_tlink(ptr noundef %call6) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end150, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then8 ], [ %rc.3, %do.end150 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_do_rename(i32 noundef %xid, ptr noundef %from_dentry, ptr noundef %from_path, ptr noundef %to_dentry, ptr noundef %to_path) unnamed_addr #0 align 64 {
entry:
  %fid = alloca %struct.cifs_fid, align 8
  %oparms = alloca %struct.cifs_open_parms, align 4
  %oplock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %from_dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fid) #15
  %4 = call ptr @memset(ptr %fid, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %oparms) #15
  %5 = call ptr @memset(ptr %oparms, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oplock) #15
  %6 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %oplock, align 4, !annotation !363
  %call1 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #15
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %call1, i32 0, i32 5
  %8 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ses, align 8
  %server5 = getelementptr inbounds %struct.cifs_ses, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %server5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %server5, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %rename = getelementptr inbounds %struct.smb_version_operations, ptr %15, i32 0, i32 51
  %16 = ptrtoint ptr %rename to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rename, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call10 = tail call i32 %17(i32 noundef %xid, ptr noundef %9, ptr noundef %from_path, ptr noundef %to_path, ptr noundef %3) #15
  %18 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %call10, label %if.end7.do_rename_exit_crit_edge [
    i32 0, label %if.end7.if.then40_crit_edge
    i32 -16, label %if.end13
  ]

if.end7.if.then40_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

if.end7.do_rename_exit_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_rename_exit

if.end13:                                         ; preds = %if.end7
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 6
  %19 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vals, align 8
  %protocol_id = getelementptr inbounds %struct.smb_version_values, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp14.not = icmp eq i16 %22, 0
  br i1 %cmp14.not, label %if.end17, label %if.end13.if.end41_crit_edge

if.end13.if.end41_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.end17:                                         ; preds = %if.end13
  %d_parent = getelementptr inbounds %struct.dentry, ptr %to_dentry, i32 0, i32 3
  %23 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_parent, align 8
  %d_parent18 = getelementptr inbounds %struct.dentry, ptr %from_dentry, i32 0, i32 3
  %25 = ptrtoint ptr %d_parent18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_parent18, align 8
  %cmp19.not = icmp eq ptr %24, %26
  br i1 %cmp19.not, label %if.end22, label %if.end17.if.end41_crit_edge

if.end17.if.end41_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.end22:                                         ; preds = %if.end17
  %27 = ptrtoint ptr %oparms to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %9, ptr %oparms, align 4
  %cifs_sb24 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 1
  %28 = ptrtoint ptr %cifs_sb24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %cifs_sb24, align 4
  %desired_access = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 3
  %29 = ptrtoint ptr %desired_access to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 65536, ptr %desired_access, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end22.if.else.i_crit_edge, label %land.lhs.true.i

if.end22.if.else.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end22
  %call.i = tail call zeroext i1 @backup_cred(ptr noundef nonnull %3) #15
  br i1 %call.i, label %land.lhs.true.i.cifs_create_options.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i.cifs_create_options.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_options.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end22.if.else.i_crit_edge
  br label %cifs_create_options.exit

cifs_create_options.exit:                         ; preds = %if.else.i, %land.lhs.true.i.cifs_create_options.exit_crit_edge
  %retval.0.i = phi i32 [ 64, %if.else.i ], [ 16448, %land.lhs.true.i.cifs_create_options.exit_crit_edge ]
  %create_options = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 4
  %30 = ptrtoint ptr %create_options to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i, ptr %create_options, align 4
  %disposition = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 2
  %31 = ptrtoint ptr %disposition to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %disposition, align 4
  %path = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 5
  %32 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %from_path, ptr %path, align 4
  %fid26 = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 6
  %33 = ptrtoint ptr %fid26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %fid, ptr %fid26, align 4
  %reconnect = getelementptr inbounds %struct.cifs_open_parms, ptr %oparms, i32 0, i32 8
  %34 = ptrtoint ptr %reconnect to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %reconnect, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %reconnect, align 2
  %call27 = call i32 @CIFS_open(i32 noundef %xid, ptr noundef nonnull %oparms, ptr noundef nonnull %oplock, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %cifs_create_options.exit.if.end41_crit_edge

cifs_create_options.exit.if.end41_crit_edge:      ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then30:                                        ; preds = %cifs_create_options.exit
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fid, align 8
  %conv31 = zext i16 %36 to i32
  %name = getelementptr inbounds %struct.dentry, ptr %to_dentry, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name, align 8
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %local_nls, align 4
  %call32 = call i32 @cifs_remap(ptr noundef %3) #15
  %call33 = call i32 @CIFSSMBRenameOpenFile(i32 noundef %xid, ptr noundef %9, i32 noundef %conv31, ptr noundef %38, ptr noundef %40, i32 noundef %call32) #15
  %41 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fid, align 8
  %conv35 = zext i16 %42 to i32
  %call36 = call i32 @CIFSSMBClose(i32 noundef %xid, ptr noundef %9, i32 noundef %conv35) #15
  br label %do_rename_exit

do_rename_exit:                                   ; preds = %if.then30, %if.end7.do_rename_exit_crit_edge
  %rc.0 = phi i32 [ %call33, %if.then30 ], [ %call10, %if.end7.do_rename_exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp38 = icmp eq i32 %rc.0, 0
  br i1 %cmp38, label %do_rename_exit.if.then40_crit_edge, label %do_rename_exit.if.end41_crit_edge

do_rename_exit.if.end41_crit_edge:                ; preds = %do_rename_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

do_rename_exit.if.then40_crit_edge:               ; preds = %do_rename_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then40

if.then40:                                        ; preds = %do_rename_exit.if.then40_crit_edge, %if.end7.if.then40_crit_edge
  call void @d_move(ptr noundef %from_dentry, ptr noundef %to_dentry) #15
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %do_rename_exit.if.end41_crit_edge, %cifs_create_options.exit.if.end41_crit_edge, %if.end17.if.end41_crit_edge, %if.end13.if.end41_crit_edge
  %rc.077 = phi i32 [ 0, %if.then40 ], [ %rc.0, %do_rename_exit.if.end41_crit_edge ], [ %call27, %cifs_create_options.exit.if.end41_crit_edge ], [ -16, %if.end17.if.end41_crit_edge ], [ -16, %if.end13.if.end41_crit_edge ]
  call void @cifs_put_tlink(ptr noundef %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %rc.077, %if.end41 ], [ -38, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oplock) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %oparms) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fid) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_close_all_deferred_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_invalidate_mapping(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %nrpages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end16_crit_edge, label %if.then

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @invalidate_inode_pages2(ptr noundef nonnull %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end16_crit_edge, label %do.body5

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

do.body5:                                         ; preds = %if.then
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_invalidate_mapping._rs, ptr noundef nonnull @__func__.cifs_invalidate_mapping) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body5.if.end16_crit_edge, label %do.end

do.body5.if.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

do.end:                                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.cifs_invalidate_mapping, ptr noundef %inode) #20
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body5.if.end16_crit_edge, %if.then.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %rc.0 = phi i32 [ %call, %do.end ], [ %call, %do.body5.if.end16_crit_edge ], [ 0, %if.then.if.end16_crit_edge ], [ 0, %land.lhs.true.if.end16_crit_edge ], [ 0, %entry.if.end16_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_revalidate_mapping(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr i8, ptr %inode, i32 -108
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.141, i32 noundef 232) #15
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %wait_on_bit_lock_action.exit

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

wait_on_bit_lock_action.exit:                     ; preds = %if.end
  %call3.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %flags1, i32 noundef 5, ptr noundef nonnull @cifs_wait_bit_killable, i32 noundef 258) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not, label %wait_on_bit_lock_action.exit.if.end6_crit_edge, label %wait_on_bit_lock_action.exit.cleanup_crit_edge

wait_on_bit_lock_action.exit.cleanup_crit_edge:   ; preds = %wait_on_bit_lock_action.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

wait_on_bit_lock_action.exit.if.end6_crit_edge:   ; preds = %wait_on_bit_lock_action.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6:                                          ; preds = %wait_on_bit_lock_action.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.skip_invalidate_crit_edge, label %if.then9

if.end6.skip_invalidate_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_invalidate

if.then9:                                         ; preds = %if.end6
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mnt_cifs_flags, align 4
  %and10 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then9.skip_invalidate_crit_edge

if.then9.skip_invalidate_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_invalidate

if.end13:                                         ; preds = %if.then9
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping.i, align 8
  %tobool.not.i34 = icmp eq ptr %9, null
  br i1 %tobool.not.i34, label %if.end13.skip_invalidate_crit_edge, label %land.lhs.true.i

if.end13.skip_invalidate_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_invalidate

land.lhs.true.i:                                  ; preds = %if.end13
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nrpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.skip_invalidate_crit_edge, label %if.then.i

land.lhs.true.i.skip_invalidate_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_invalidate

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i35 = tail call i32 @invalidate_inode_pages2(ptr noundef nonnull %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool3.not.i = icmp eq i32 %call.i35, 0
  br i1 %tobool3.not.i, label %if.then.i.skip_invalidate_crit_edge, label %do.body5.i

if.then.i.skip_invalidate_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_invalidate

do.body5.i:                                       ; preds = %if.then.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_invalidate_mapping._rs, ptr noundef nonnull @__func__.cifs_invalidate_mapping) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body5.i.if.then16_crit_edge, label %do.end.i

do.body5.i.if.then16_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16

do.end.i:                                         ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.cifs_invalidate_mapping, ptr noundef %inode) #20
  br label %if.then16

if.then16:                                        ; preds = %do.end.i, %do.body5.i.if.then16_crit_edge
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags1) #15
  br label %skip_invalidate

skip_invalidate:                                  ; preds = %if.then16, %if.then.i.skip_invalidate_crit_edge, %land.lhs.true.i.skip_invalidate_crit_edge, %if.end13.skip_invalidate_crit_edge, %if.then9.skip_invalidate_crit_edge, %if.end6.skip_invalidate_crit_edge
  %rc.0 = phi i32 [ 0, %if.then9.skip_invalidate_crit_edge ], [ %call.i35, %if.then16 ], [ 0, %if.end6.skip_invalidate_crit_edge ], [ 0, %if.then.i.skip_invalidate_crit_edge ], [ 0, %land.lhs.true.i.skip_invalidate_crit_edge ], [ 0, %if.end13.skip_invalidate_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags1, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !372
  tail call void @llvm.prefetch.p0(ptr %flags1, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags1, ptr %flags1, i32 32, ptr elementtype(i32) %flags1) #15, !srcloc !373
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !374
  tail call void @wake_up_bit(ptr noundef %flags1, i32 noundef 5) #15
  br label %cleanup

cleanup:                                          ; preds = %skip_invalidate, %wait_on_bit_lock_action.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %skip_invalidate ], [ 0, %entry.cleanup_crit_edge ], [ %call3.i, %wait_on_bit_lock_action.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_wait_bit_killable(ptr nocapture noundef readnone %key, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %5, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  tail call void @schedule() #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i1.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %11, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !375
  tail call void @__might_sleep(ptr noundef nonnull @.str.142, i32 noundef 57) #15
  %12 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %16 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i.i, label %entry.freezable_schedule_unsafe.exit_crit_edge, label %freezing.exit.i.i.i, !prof !358

entry.freezable_schedule_unsafe.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %freezable_schedule_unsafe.exit

freezing.exit.i.i.i:                              ; preds = %entry
  %call4.i.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %15) #15
  br i1 %call4.i.i.i.i, label %if.end.i.i.i, label %freezing.exit.i.i.i.freezable_schedule_unsafe.exit_crit_edge, !prof !351

freezing.exit.i.i.i.freezable_schedule_unsafe.exit_crit_edge: ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %freezable_schedule_unsafe.exit

if.end.i.i.i:                                     ; preds = %freezing.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #15
  br label %freezable_schedule_unsafe.exit

freezable_schedule_unsafe.exit:                   ; preds = %if.end.i.i.i, %freezing.exit.i.i.i.freezable_schedule_unsafe.exit_crit_edge, %entry.freezable_schedule_unsafe.exit_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %and.i2 = and i32 %mode, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i, label %freezable_schedule_unsafe.exit.signal_pending_state.exit.thread_crit_edge, label %if.end.i

freezable_schedule_unsafe.exit.signal_pending_state.exit.thread_crit_edge: ; preds = %freezable_schedule_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %signal_pending_state.exit.thread

if.end.i:                                         ; preds = %freezable_schedule_unsafe.exit
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end.i.if.end3.i_crit_edge, !prof !358

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

signal_pending.exit.i:                            ; preds = %if.end.i
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %signal_pending.exit.i.signal_pending_state.exit.thread_crit_edge, label %signal_pending.exit.i.if.end3.i_crit_edge

signal_pending.exit.i.if.end3.i_crit_edge:        ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

signal_pending.exit.i.signal_pending_state.exit.thread_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %signal_pending_state.exit.thread

if.end3.i:                                        ; preds = %signal_pending.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %and4.i = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %if.end3.i.signal_pending_state.exit.thread5_crit_edge

if.end3.i.signal_pending_state.exit.thread5_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %signal_pending_state.exit.thread5

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 116, i32 1
  %28 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %signal.i.i, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %signal_pending_state.exit.signal_pending_state.exit.thread_crit_edge, label %signal_pending_state.exit.signal_pending_state.exit.thread5_crit_edge

signal_pending_state.exit.signal_pending_state.exit.thread5_crit_edge: ; preds = %signal_pending_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %signal_pending_state.exit.thread5

signal_pending_state.exit.signal_pending_state.exit.thread_crit_edge: ; preds = %signal_pending_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %signal_pending_state.exit.thread

signal_pending_state.exit.thread:                 ; preds = %signal_pending_state.exit.signal_pending_state.exit.thread_crit_edge, %signal_pending.exit.i.signal_pending_state.exit.thread_crit_edge, %freezable_schedule_unsafe.exit.signal_pending_state.exit.thread_crit_edge
  br label %signal_pending_state.exit.thread5

signal_pending_state.exit.thread5:                ; preds = %signal_pending_state.exit.thread, %signal_pending_state.exit.signal_pending_state.exit.thread5_crit_edge, %if.end3.i.signal_pending_state.exit.thread5_crit_edge
  %31 = phi i32 [ 0, %signal_pending_state.exit.thread ], [ -512, %signal_pending_state.exit.signal_pending_state.exit.thread5_crit_edge ], [ -512, %if.end3.i.signal_pending_state.exit.thread5_crit_edge ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_zap_mapping(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %inode, i32 -108
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #15
  %call1 = tail call i32 @cifs_revalidate_mapping(ptr noundef %inode)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_revalidate_file_attr(ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !358

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #15
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %call1 = tail call fastcc zeroext i1 @cifs_dentry_needs_reval(ptr noundef %retval.0.i.i)
  br i1 %call1, label %if.end, label %file_dentry.exit.cleanup_crit_edge

file_dentry.exit.cleanup_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %file_dentry.exit
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tl_tcon.i, align 4
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %unix_ext, align 8
  %17 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %bf.cast.not = icmp eq i16 %17, 0
  br i1 %bf.cast.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call fastcc i32 @cifs_get_file_info_unix(ptr noundef %filp)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call fastcc i32 @cifs_get_file_info(ptr noundef %filp)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %file_dentry.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %file_dentry.exit.cleanup_crit_edge ], [ %call4, %if.then3 ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cifs_dentry_needs_reval(ptr nocapture noundef readonly %dentry) unnamed_addr #0 align 64 {
entry:
  %cfid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call3 = tail call ptr @cifs_sb_master_tcon(ptr noundef %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfid) #15
  %6 = ptrtoint ptr %cfid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cfid, align 4
  %time = getelementptr i8, ptr %1, i32 -56
  %7 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %oplock = getelementptr i8, ptr %1, i32 -116
  %9 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oplock, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i99 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i99 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i99, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mnt_cifs_flags, align 4
  %and6 = and i32 %16, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @lookupCacheEnabled to i32))
  %17 = load i8, ptr @lookupCacheEnabled, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %18 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_parent, align 8
  %call13 = call i32 @open_cached_dir_by_dentry(ptr noundef %call3, ptr noundef %19, ptr noundef nonnull %cfid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end25_crit_edge

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then15:                                        ; preds = %if.end12
  %20 = ptrtoint ptr %cfid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfid, align 4
  %fid_mutex = getelementptr inbounds %struct.cached_fid, ptr %21, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %fid_mutex, i32 noundef 0) #15
  %22 = ptrtoint ptr %cfid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfid, align 4
  %time16 = getelementptr inbounds %struct.cached_fid, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %time16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %time16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not = icmp eq i32 %25, 0
  br i1 %tobool17.not, label %if.then15.if.end23_crit_edge, label %land.lhs.true

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then15
  %26 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %time, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp20 = icmp ugt i32 %27, %25
  br i1 %cmp20, label %if.then21, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %fid_mutex22 = getelementptr inbounds %struct.cached_fid, ptr %23, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %fid_mutex22) #15
  %28 = ptrtoint ptr %cfid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfid, align 4
  call void @close_cached_dir(ptr noundef %29) #15
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.then15.if.end23_crit_edge
  %fid_mutex24 = getelementptr inbounds %struct.cached_fid, ptr %23, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %fid_mutex24) #15
  %30 = ptrtoint ptr %cfid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfid, align 4
  call void @close_cached_dir(ptr noundef %31) #15
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end12.if.end25_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 8
  %34 = and i16 %33, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %34)
  %cmp27 = icmp eq i16 %34, 16384
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 4
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  %acdirmax = getelementptr inbounds %struct.smb3_fs_context, ptr %36, i32 0, i32 45
  %37 = ptrtoint ptr %acdirmax to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %acdirmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool30.not = icmp eq i32 %38, 0
  br i1 %tobool30.not, label %if.then29.cleanup_crit_edge, label %if.end32

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end32:                                         ; preds = %if.then29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %40 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %time, align 8
  %sub = sub i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp34 = icmp sgt i32 %sub, -1
  br i1 %cmp34, label %land.lhs.true36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true36:                                  ; preds = %if.end32
  %add = add i32 %41, %38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub40 = sub i32 %add, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub40)
  %cmp41 = icmp sgt i32 %sub40, -1
  br i1 %cmp41, label %land.lhs.true36.if.end77_crit_edge, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true36.if.end77_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.else:                                          ; preds = %if.end25
  %acregmax = getelementptr inbounds %struct.smb3_fs_context, ptr %36, i32 0, i32 44
  %43 = ptrtoint ptr %acregmax to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %acregmax, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool46.not = icmp eq i32 %44, 0
  br i1 %tobool46.not, label %if.else.cleanup_crit_edge, label %if.end48

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %46 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %time, align 8
  %sub50 = sub i32 %45, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub50)
  %cmp51 = icmp sgt i32 %sub50, -1
  br i1 %cmp51, label %land.lhs.true53, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end48
  %add57 = add i32 %47, %44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub58 = sub i32 %add57, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub58)
  %cmp59 = icmp sgt i32 %sub58, -1
  br i1 %cmp59, label %if.end63, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true53
  %mnt_cifs_flags64 = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 6
  %49 = ptrtoint ptr %mnt_cifs_flags64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mnt_cifs_flags64, align 4
  %and65 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %34)
  %cmp71 = icmp eq i16 %34, -32768
  %or.cond = select i1 %tobool66.not, i1 %cmp71, i1 false
  br i1 %or.cond, label %land.lhs.true73, label %if.end63.if.end77_crit_edge

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

land.lhs.true73:                                  ; preds = %if.end63
  %51 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp74.not = icmp eq i32 %53, 1
  br i1 %cmp74.not, label %land.lhs.true73.if.end77_crit_edge, label %land.lhs.true73.cleanup_crit_edge

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true73.if.end77_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.end77:                                         ; preds = %land.lhs.true73.if.end77_crit_edge, %if.end63.if.end77_crit_edge, %land.lhs.true36.if.end77_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %land.lhs.true73.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then21, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end77 ], [ false, %if.then21 ], [ true, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end9.cleanup_crit_edge ], [ true, %if.then29.cleanup_crit_edge ], [ true, %land.lhs.true36.cleanup_crit_edge ], [ true, %if.end32.cleanup_crit_edge ], [ true, %if.else.cleanup_crit_edge ], [ true, %land.lhs.true53.cleanup_crit_edge ], [ true, %if.end48.cleanup_crit_edge ], [ true, %land.lhs.true73.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfid) #15
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_get_file_info_unix(ptr nocapture noundef readonly %filp) unnamed_addr #0 align 64 {
entry:
  %find_data = alloca %struct.FILE_UNIX_BASIC_INFO, align 1
  %fattr = alloca %struct.cifs_fattr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %find_data) #15
  %0 = call ptr @memset(ptr %find_data, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fattr) #15
  %1 = call ptr @memset(ptr %fattr, i32 255, i32 120)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tl_tcon.i, align 4
  %call3 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end23_crit_edge, label %do.body5

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end23

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_file_info_unix.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_file_info_unix, %land.lhs.true)) #15
          to label %do.end23 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body5
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_file_info_unix._rs, ptr noundef nonnull @.str.143) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end23_crit_edge, label %if.then12

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end23

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %15 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 99
  %19 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %21)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call16 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_file_info_unix.descriptor, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef %call3, i32 noundef %call16) #15
  br label %do.end23

do.end23:                                         ; preds = %if.then12, %land.lhs.true.do.end23_crit_edge, %do.body5, %entry.do.end23_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call3, ptr noundef nonnull @.str.143)
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %9, i32 0, i32 5
  %22 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %fid, align 8
  %call25 = call i32 @CIFSSMBUnixQFileInfo(i32 noundef %call3, ptr noundef %13, i16 noundef zeroext %23, ptr noundef nonnull %find_data) #15
  %24 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %call25, label %do.end23.do.body35_crit_edge [
    i32 0, label %if.then27
    i32 -66, label %if.then29
  ]

do.end23.do.body35_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body35

if.then27:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #17
  call void @cifs_unix_basic_to_fattr(ptr noundef nonnull %fattr, ptr noundef nonnull %find_data, ptr noundef %7)
  br label %if.end33

if.then29:                                        ; preds = %do.end23
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %29 = load i32, ptr @cifsFYI, align 4
  %and.i90 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i, label %if.then29.cifs_create_dfs_fattr.exit_crit_edge, label %do.body2.i

if.then29.cifs_create_dfs_fattr.exit_crit_edge:   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

do.body2.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_create_dfs_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_file_info_unix, %land.lhs.true.i)) #15
          to label %cifs_create_dfs_fattr.exit [label %land.lhs.true.i], !srcloc !352

land.lhs.true.i:                                  ; preds = %do.body2.i
  %call7.i = call i32 @___ratelimit(ptr noundef nonnull @cifs_create_dfs_fattr._rs, ptr noundef nonnull @.str.99) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge, label %if.then9.i

land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_create_dfs_fattr.descriptor, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.3) #15
  br label %cifs_create_dfs_fattr.exit

cifs_create_dfs_fattr.exit:                       ; preds = %if.then9.i, %land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge, %do.body2.i, %if.then29.cifs_create_dfs_fattr.exit_crit_edge
  %30 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %cf_mode.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %31 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16841, ptr %cf_mode.i, align 8
  %cf_uid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx.i = getelementptr inbounds %struct.cifs_sb_info, ptr %28, i32 0, i32 4
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx.i, align 4
  %linux_uid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %linux_uid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %linux_uid.i, align 4
  %36 = ptrtoint ptr %cf_uid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cf_uid.i, align 8
  %cf_gid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %linux_gid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %33, i32 0, i32 24
  %37 = ptrtoint ptr %linux_gid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %linux_gid.i, align 8
  %39 = ptrtoint ptr %cf_gid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cf_gid.i, align 4
  %cf_mtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @ktime_get_coarse_real_ts64(ptr noundef %cf_mtime.i) #15
  %cf_atime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  %cf_ctime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  %40 = call ptr @memcpy(ptr %cf_ctime.i, ptr %cf_mtime.i, i32 16)
  %41 = call ptr @memcpy(ptr %cf_atime.i, ptr %cf_mtime.i, i32 16)
  %cf_nlink.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %42 = ptrtoint ptr %cf_nlink.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %cf_nlink.i, align 8
  %43 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %fattr, align 8
  br label %if.end33

if.end33:                                         ; preds = %cifs_create_dfs_fattr.exit, %if.then27
  %call34 = call i32 @cifs_fattr_to_inode(ptr noundef %3, ptr noundef nonnull %fattr)
  br label %do.body35

do.body35:                                        ; preds = %if.end33, %do.end23.do.body35_crit_edge
  %rc.0 = phi i32 [ %call34, %if.end33 ], [ %call25, %do.end23.do.body35_crit_edge ]
  call void @_free_xid(i32 noundef %call3) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %44 = load i32, ptr @cifsFYI, align 4
  %and38 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body35.do.end65_crit_edge, label %do.body41

do.body35.do.end65_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

do.body41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_file_info_unix.descriptor.145, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_file_info_unix, %land.lhs.true53)) #15
          to label %do.end65 [label %land.lhs.true53], !srcloc !352

land.lhs.true53:                                  ; preds = %do.body41
  %call54 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_file_info_unix._rs.144, ptr noundef nonnull @.str.143) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end65_crit_edge, label %if.then56

land.lhs.true53.do.end65_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end65

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_file_info_unix.descriptor.145, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef %call3, i32 noundef %rc.0) #15
  br label %do.end65

do.end65:                                         ; preds = %if.then56, %land.lhs.true53.do.end65_crit_edge, %do.body41, %do.body35.do.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool66.not = icmp eq i32 %rc.0, 0
  br i1 %tobool66.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_err(i32 noundef %call3, ptr noundef nonnull @.str.143, i32 noundef %rc.0)
  br label %do.end71

if.else68:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_done(i32 noundef %call3, ptr noundef nonnull @.str.143)
  br label %do.end71

do.end71:                                         ; preds = %if.else68, %if.then67
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %find_data) #15
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_get_file_info(ptr nocapture noundef readonly %filp) unnamed_addr #0 align 64 {
entry:
  %find_data = alloca %struct.FILE_ALL_INFO, align 1
  %fattr = alloca %struct.cifs_fattr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 109, ptr nonnull %find_data) #15
  %0 = call ptr @memset(ptr %find_data, i32 255, i32 109)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %fattr) #15
  %1 = call ptr @memset(ptr %fattr, i32 255, i32 120)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ses, align 8
  %server2 = getelementptr inbounds %struct.cifs_ses, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %server2, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %query_file_info = getelementptr inbounds %struct.smb_version_operations, ptr %15, i32 0, i32 36
  %16 = ptrtoint ptr %query_file_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %query_file_info, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %18 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.do.end26_crit_edge, label %do.body7

if.end.do.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_file_info.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_file_info, %land.lhs.true)) #15
          to label %do.end26 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body7
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_file_info._rs, ptr noundef nonnull @.str.146) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end26_crit_edge, label %if.then14

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %19 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 99
  %23 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %25)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call18 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_file_info.descriptor, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.146, i32 noundef %call3, i32 noundef %call18) #15
  br label %do.end26

do.end26:                                         ; preds = %if.then14, %land.lhs.true.do.end26_crit_edge, %do.body7, %if.end.do.end26_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call3, ptr noundef nonnull @.str.146)
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %query_file_info29 = getelementptr inbounds %struct.smb_version_operations, ptr %27, i32 0, i32 36
  %28 = ptrtoint ptr %query_file_info29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %query_file_info29, align 4
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %5, i32 0, i32 5
  %call30 = call i32 %29(i32 noundef %call3, ptr noundef %9, ptr noundef %fid, ptr noundef nonnull %find_data) #15
  %30 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %call30, label %do.end26.do.body37_crit_edge [
    i32 0, label %sw.bb
    i32 -66, label %sw.bb31
    i32 -95, label %do.end26.sw.bb33_crit_edge
    i32 -22, label %do.end26.sw.bb33_crit_edge106
  ]

do.end26.sw.bb33_crit_edge106:                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb33

do.end26.sw.bb33_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb33

do.end26.do.body37_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body37

sw.bb:                                            ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  call fastcc void @cifs_all_info_to_fattr(ptr noundef nonnull %fattr, ptr noundef nonnull %find_data, ptr noundef %32, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0)
  br label %sw.epilog

sw.bb31:                                          ; preds = %do.end26
  %i_sb32 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb32, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %37 = load i32, ptr @cifsFYI, align 4
  %and.i102 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i, label %sw.bb31.cifs_create_dfs_fattr.exit_crit_edge, label %do.body2.i

sw.bb31.cifs_create_dfs_fattr.exit_crit_edge:     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

do.body2.i:                                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_create_dfs_fattr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_file_info, %land.lhs.true.i)) #15
          to label %cifs_create_dfs_fattr.exit [label %land.lhs.true.i], !srcloc !352

land.lhs.true.i:                                  ; preds = %do.body2.i
  %call7.i = call i32 @___ratelimit(ptr noundef nonnull @cifs_create_dfs_fattr._rs, ptr noundef nonnull @.str.99) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge, label %if.then9.i

land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cifs_create_dfs_fattr.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_create_dfs_fattr.descriptor, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.3) #15
  br label %cifs_create_dfs_fattr.exit

cifs_create_dfs_fattr.exit:                       ; preds = %if.then9.i, %land.lhs.true.i.cifs_create_dfs_fattr.exit_crit_edge, %do.body2.i, %sw.bb31.cifs_create_dfs_fattr.exit_crit_edge
  %38 = call ptr @memset(ptr %fattr, i32 0, i32 120)
  %cf_mode.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 8
  %39 = ptrtoint ptr %cf_mode.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 16841, ptr %cf_mode.i, align 8
  %cf_uid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 6
  %ctx.i = getelementptr inbounds %struct.cifs_sb_info, ptr %36, i32 0, i32 4
  %40 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx.i, align 4
  %linux_uid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %41, i32 0, i32 23
  %42 = ptrtoint ptr %linux_uid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %linux_uid.i, align 4
  %44 = ptrtoint ptr %cf_uid.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %cf_uid.i, align 8
  %cf_gid.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 7
  %linux_gid.i = getelementptr inbounds %struct.smb3_fs_context, ptr %41, i32 0, i32 24
  %45 = ptrtoint ptr %linux_gid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %linux_gid.i, align 8
  %47 = ptrtoint ptr %cf_gid.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %cf_gid.i, align 4
  %cf_mtime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 13
  call void @ktime_get_coarse_real_ts64(ptr noundef %cf_mtime.i) #15
  %cf_atime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 12
  %cf_ctime.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 14
  %48 = call ptr @memcpy(ptr %cf_ctime.i, ptr %cf_mtime.i, i32 16)
  %49 = call ptr @memcpy(ptr %cf_atime.i, ptr %cf_mtime.i, i32 16)
  %cf_nlink.i = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 10
  %50 = ptrtoint ptr %cf_nlink.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %cf_nlink.i, align 8
  %51 = ptrtoint ptr %fattr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %fattr, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.end26.sw.bb33_crit_edge, %do.end26.sw.bb33_crit_edge106
  %time = getelementptr i8, ptr %3, i32 -56
  %52 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %time, align 8
  br label %do.body37

sw.epilog:                                        ; preds = %cifs_create_dfs_fattr.exit, %sw.bb
  %uniqueid = getelementptr i8, ptr %3, i32 -40
  %53 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %uniqueid, align 8
  %cf_uniqueid = getelementptr inbounds %struct.cifs_fattr, ptr %fattr, i32 0, i32 2
  %55 = ptrtoint ptr %cf_uniqueid to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %cf_uniqueid, align 8
  %56 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fattr, align 8
  %or = or i32 %57, 4
  store i32 %or, ptr %fattr, align 8
  %call36 = call i32 @cifs_fattr_to_inode(ptr noundef %3, ptr noundef nonnull %fattr)
  br label %do.body37

do.body37:                                        ; preds = %sw.epilog, %sw.bb33, %do.end26.do.body37_crit_edge
  %rc.0 = phi i32 [ %call30, %do.end26.do.body37_crit_edge ], [ 0, %sw.bb33 ], [ %call36, %sw.epilog ]
  call void @_free_xid(i32 noundef %call3) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %58 = load i32, ptr @cifsFYI, align 4
  %and40 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body37.do.end67_crit_edge, label %do.body43

do.body37.do.end67_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

do.body43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_file_info.descriptor.148, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_file_info, %land.lhs.true55)) #15
          to label %do.end67 [label %land.lhs.true55], !srcloc !352

land.lhs.true55:                                  ; preds = %do.body43
  %call56 = call i32 @___ratelimit(ptr noundef nonnull @cifs_get_file_info._rs.147, ptr noundef nonnull @.str.146) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.do.end67_crit_edge, label %if.then58

land.lhs.true55.do.end67_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then58:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_file_info.descriptor.148, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.146, i32 noundef %call3, i32 noundef %rc.0) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then58, %land.lhs.true55.do.end67_crit_edge, %do.body43, %do.body37.do.end67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool68.not = icmp eq i32 %rc.0, 0
  br i1 %tobool68.not, label %if.else70, label %if.then69

if.then69:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_err(i32 noundef %call3, ptr noundef nonnull @.str.146, i32 noundef %rc.0)
  br label %cleanup

if.else70:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_done(i32 noundef %call3, ptr noundef nonnull @.str.146)
  br label %cleanup

cleanup:                                          ; preds = %if.else70, %if.then69, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ 0, %if.else70 ], [ %rc.0, %if.then69 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %fattr) #15
  call void @llvm.lifetime.end.p0(i64 109, ptr nonnull %find_data) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_revalidate_dentry_attr(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %inode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inode) #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %inode, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %3 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_sb, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i1 @cifs_dentry_needs_reval(ptr noundef %dentry)
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3.do.end26_crit_edge, label %do.body7

if.end3.do.end26_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26

do.body7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_revalidate_dentry_attr.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_revalidate_dentry_attr, %land.lhs.true)) #15
          to label %do.end26 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body7
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_revalidate_dentry_attr._rs, ptr noundef nonnull @.str.77) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end26_crit_edge, label %if.then14

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %6 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  %call18 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_revalidate_dentry_attr.descriptor, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.77, i32 noundef %call4, i32 noundef %call18) #15
  br label %do.end26

do.end26:                                         ; preds = %if.then14, %land.lhs.true.do.end26_crit_edge, %do.body7, %if.end3.do.end26_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call4, ptr noundef nonnull @.str.77)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %13 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3264) #15
  %call29 = tail call ptr @build_path_from_dentry(ptr noundef %dentry, ptr noundef %call.i) #15
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %do.body35

if.then31:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %call29 to i32
  br label %out

do.body35:                                        ; preds = %do.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %15 = load i32, ptr @cifsFYI, align 4
  %and36 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.do.end64_crit_edge, label %do.body39

do.body35.do.end64_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end64

do.body39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_revalidate_dentry_attr.descriptor.79, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_revalidate_dentry_attr, %land.lhs.true51)) #15
          to label %do.end64 [label %land.lhs.true51], !srcloc !352

land.lhs.true51:                                  ; preds = %do.body39
  %call52 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_revalidate_dentry_attr._rs.78, ptr noundef nonnull @.str.77) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true51.do.end64_crit_edge, label %if.then54

land.lhs.true51.do.end64_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end64

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  %i_count = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 40
  %16 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_count, align 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %18 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_fsdata.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_revalidate_dentry_attr.descriptor.79, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.3, ptr noundef %call29, ptr noundef nonnull %1, i32 noundef %17, ptr noundef %dentry, i32 noundef %20, i32 noundef %21) #15
  br label %do.end64

do.end64:                                         ; preds = %if.then54, %land.lhs.true51.do.end64_crit_edge, %do.body39, %do.body35.do.end64_crit_edge
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  br label %again

again:                                            ; preds = %land.lhs.true80.again_crit_edge, %do.end64
  %count.0 = phi i32 [ 0, %do.end64 ], [ %inc, %land.lhs.true80.again_crit_edge ]
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %call66 = tail call ptr @cifs_sb_master_tcon(ptr noundef %23) #15
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %call66, i32 0, i32 23
  %24 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %posix_extensions, align 2, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool67.not = icmp eq i8 %25, 0
  br i1 %tobool67.not, label %if.else70, label %if.then68

if.then68:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #17
  %call69 = call i32 @smb311_posix_get_inode_info(ptr noundef nonnull %inode, ptr noundef %call29, ptr noundef %4, i32 noundef %call4)
  br label %if.end78

if.else70:                                        ; preds = %again
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %call72 = tail call ptr @cifs_sb_master_tcon(ptr noundef %27) #15
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %call72, i32 0, i32 22
  %28 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %unix_ext, align 8
  %29 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast.not = icmp eq i16 %29, 0
  br i1 %bf.cast.not, label %if.else75, label %if.then73

if.then73:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #17
  %call74 = call i32 @cifs_get_inode_info_unix(ptr noundef nonnull %inode, ptr noundef %call29, ptr noundef %4, i32 noundef %call4)
  br label %if.end78

if.else75:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #17
  %call76 = call i32 @cifs_get_inode_info(ptr noundef nonnull %inode, ptr noundef %call29, ptr noundef null, ptr noundef %4, i32 noundef %call4, ptr noundef null)
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %if.then73, %if.then68
  %rc.0 = phi i32 [ %call69, %if.then68 ], [ %call74, %if.then73 ], [ %call76, %if.else75 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.0)
  %cmp79 = icmp eq i32 %rc.0, -11
  br i1 %cmp79, label %land.lhs.true80, label %if.end78.out_crit_edge

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true80:                                  ; preds = %if.end78
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %land.lhs.true80.out_crit_edge, label %land.lhs.true80.again_crit_edge

land.lhs.true80.again_crit_edge:                  ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %again

land.lhs.true80.out_crit_edge:                    ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %land.lhs.true80.out_crit_edge, %if.end78.out_crit_edge, %if.then31
  %rc.1 = phi i32 [ %14, %if.then31 ], [ %rc.0, %if.end78.out_crit_edge ], [ -11, %land.lhs.true80.out_crit_edge ]
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %out.free_dentry_path.exit_crit_edge, label %if.then.i

out.free_dentry_path.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %30 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef nonnull %call.i) #15
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %out.free_dentry_path.exit_crit_edge
  tail call void @_free_xid(i32 noundef %call4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %31 = load i32, ptr @cifsFYI, align 4
  %and87 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %free_dentry_path.exit.do.end114_crit_edge, label %do.body90

free_dentry_path.exit.do.end114_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end114

do.body90:                                        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_revalidate_dentry_attr.descriptor.82, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_revalidate_dentry_attr, %land.lhs.true102)) #15
          to label %do.end114 [label %land.lhs.true102], !srcloc !352

land.lhs.true102:                                 ; preds = %do.body90
  %call103 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_revalidate_dentry_attr._rs.81, ptr noundef nonnull @.str.77) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %land.lhs.true102.do.end114_crit_edge, label %if.then105

land.lhs.true102.do.end114_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end114

if.then105:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_revalidate_dentry_attr.descriptor.82, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.77, i32 noundef %call4, i32 noundef %rc.1) #15
  br label %do.end114

do.end114:                                        ; preds = %if.then105, %land.lhs.true102.do.end114_crit_edge, %do.body90, %free_dentry_path.exit.do.end114_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool115.not = icmp eq i32 %rc.1, 0
  br i1 %tobool115.not, label %if.else117, label %if.then116

if.then116:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call4, ptr noundef nonnull @.str.77, i32 noundef %rc.1)
  br label %cleanup

if.else117:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call4, ptr noundef nonnull @.str.77)
  br label %cleanup

cleanup:                                          ; preds = %if.else117, %if.then116, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else117 ], [ %rc.1, %if.then116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_revalidate_file(ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i.i.i = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.file_dentry.exit.i_crit_edge, label %if.then.i.i.i, !prof !358

entry.file_dentry.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %file_dentry.exit.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %d_op.i.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i.i, align 8
  %d_real.i.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i.i, align 16
  %call.i.i.i = tail call ptr %9(ptr noundef %3, ptr noundef %1) #15
  br label %file_dentry.exit.i

file_dentry.exit.i:                               ; preds = %if.then.i.i.i, %entry.file_dentry.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i.i ], [ %3, %entry.file_dentry.exit.i_crit_edge ]
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 4
  %call1.i = tail call fastcc zeroext i1 @cifs_dentry_needs_reval(ptr noundef %retval.0.i.i.i) #15
  br i1 %call1.i, label %if.end.i, label %file_dentry.exit.i.if.end_crit_edge

file_dentry.exit.i.if.end_crit_edge:              ; preds = %file_dentry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %file_dentry.exit.i
  %tlink.i = getelementptr inbounds %struct.cifsFileInfo, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %tlink.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tlink.i, align 4
  %tl_tcon.i.i = getelementptr inbounds %struct.tcon_link, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %tl_tcon.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tl_tcon.i.i, align 4
  %unix_ext.i = getelementptr inbounds %struct.cifs_tcon, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %unix_ext.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %unix_ext.i, align 8
  %17 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %bf.cast.not.i = icmp eq i16 %17, 0
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = tail call fastcc i32 @cifs_get_file_info_unix(ptr noundef %filp) #15
  br label %cifs_revalidate_file_attr.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call fastcc i32 @cifs_get_file_info(ptr noundef %filp) #15
  br label %cifs_revalidate_file_attr.exit

cifs_revalidate_file_attr.exit:                   ; preds = %if.else.i, %if.then3.i
  %retval.0.i = phi i32 [ %call4.i, %if.then3.i ], [ %call5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %cifs_revalidate_file_attr.exit.if.end_crit_edge, label %cifs_revalidate_file_attr.exit.cleanup_crit_edge

cifs_revalidate_file_attr.exit.cleanup_crit_edge: ; preds = %cifs_revalidate_file_attr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cifs_revalidate_file_attr.exit.if.end_crit_edge:  ; preds = %cifs_revalidate_file_attr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %cifs_revalidate_file_attr.exit.if.end_crit_edge, %file_dentry.exit.i.if.end_crit_edge
  %call2 = tail call i32 @cifs_revalidate_mapping(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cifs_revalidate_file_attr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %retval.0.i, %cifs_revalidate_file_attr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_revalidate_dentry(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @cifs_revalidate_dentry_attr(ptr noundef %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @cifs_revalidate_mapping(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @cifs_sb_master_tcon(ptr noundef %5) #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i135 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i135 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i135, align 16
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp slt i32 %13, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !351

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %request_mask, 1728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end27_crit_edge, label %land.lhs.true

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %oplock = getelementptr i8, ptr %7, i32 -116
  %14 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oplock, align 4
  %and9 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i137 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i137 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i137, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mnt_cifs_flags, align 4
  %and14 = and i32 %21, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping, align 8
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %land.lhs.true16.if.end27_crit_edge, label %land.lhs.true18

land.lhs.true16.if.end27_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %nrpages = getelementptr inbounds %struct.address_space, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not = icmp eq i32 %25, 0
  br i1 %cmp.not, label %land.lhs.true18.if.end27_crit_edge, label %if.then20

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then20:                                        ; preds = %land.lhs.true18
  %call.i = tail call i32 @filemap_fdatawait_range(ptr noundef nonnull %23, i64 noundef 0, i64 noundef 9223372036854775807) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.then20.if.end27_crit_edge, label %if.end.i

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end.i:                                         ; preds = %if.then20
  %26 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping, align 8
  tail call void @__filemap_set_wb_err(ptr noundef %27, i32 noundef %call.i) #15
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool4.not.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i, label %if.end.i.mapping_set_error.exit_crit_edge, label %if.then5.i

if.end.i.mapping_set_error.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 50
  %call.i139 = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call.i) #15
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.end.i.mapping_set_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %27, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #15
  br label %cleanup

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %land.lhs.true18.if.end27_crit_edge, %land.lhs.true16.if.end27_crit_edge, %lor.lhs.false.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %and28 = and i32 %flags, 24576
  %32 = zext i32 %and28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %and28, label %if.end27.if.then39_crit_edge [
    i32 8192, label %if.then30
    i32 16384, label %lor.lhs.false35
  ]

if.end27.if.then39_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then39

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %time = getelementptr i8, ptr %7, i32 -56
  %33 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %time, align 8
  br label %if.then39

lor.lhs.false35:                                  ; preds = %if.end27
  %time37 = getelementptr i8, ptr %7, i32 -56
  %34 = ptrtoint ptr %time37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %time37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp38 = icmp eq i32 %35, 0
  br i1 %cmp38, label %lor.lhs.false35.if.then39_crit_edge, label %lor.lhs.false35.if.end44_crit_edge

lor.lhs.false35.if.end44_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

lor.lhs.false35.if.then39_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false35.if.then39_crit_edge, %if.then30, %if.end27.if.then39_crit_edge
  %call40 = tail call i32 @cifs_revalidate_dentry_attr(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.if.end44_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then39.if.end44_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.end44:                                         ; preds = %if.then39.if.end44_crit_edge, %lor.lhs.false35.if.end44_crit_edge
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %7, ptr noundef %stat) #15
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 4
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %bsize = getelementptr inbounds %struct.smb3_fs_context, ptr %37, i32 0, i32 37
  %38 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bsize, align 8
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %40 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %blksize, align 4
  %uniqueid = getelementptr i8, ptr %7, i32 -40
  %41 = ptrtoint ptr %uniqueid to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %uniqueid, align 8
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %43 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %ino, align 8
  %createtime = getelementptr i8, ptr %7, i32 -32
  %44 = ptrtoint ptr %createtime to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %createtime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool47.not = icmp eq i64 %45, 0
  br i1 %tobool47.not, label %if.end44.if.end51_crit_edge, label %if.then48

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stat, align 8
  %or = or i32 %47, 2048
  store i32 %or, ptr %stat, align 8
  %btime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  %48 = ptrtoint ptr %createtime to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %createtime, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %49)
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %50) #15
  %51 = call ptr @memcpy(ptr %btime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end44.if.end51_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %52 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %attributes_mask, align 8
  %or52 = or i64 %53, 2052
  store i64 %or52, ptr %attributes_mask, align 8
  %cifsAttrs = getelementptr i8, ptr %7, i32 -120
  %54 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cifsAttrs, align 8
  %and54 = and i32 %55, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end51.if.end58_crit_edge, label %if.then56

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %56 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %attributes, align 8
  %or57 = or i64 %57, 4
  store i64 %or57, ptr %attributes, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end51.if.end58_crit_edge
  %58 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cifsAttrs, align 8
  %and61 = and i32 %59, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end58.if.end66_crit_edge, label %if.then63

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %attributes64 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %60 = ptrtoint ptr %attributes64 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %attributes64, align 8
  %or65 = or i64 %61, 2048
  store i64 %or65, ptr %attributes64, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end58.if.end66_crit_edge
  %mnt_cifs_flags67 = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 6
  %62 = ptrtoint ptr %mnt_cifs_flags67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mnt_cifs_flags67, align 4
  %64 = and i32 %63, 131584
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %64)
  %65 = icmp eq i32 %64, 131072
  br i1 %65, label %land.lhs.true74, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true74:                                  ; preds = %if.end66
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 22
  %66 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load = load i16, ptr %unix_ext, align 8
  %67 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %bf.cast.not = icmp eq i16 %67, 0
  br i1 %bf.cast.not, label %if.then75, label %land.lhs.true74.cleanup_crit_edge

land.lhs.true74.cleanup_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then75:                                        ; preds = %land.lhs.true74
  %and77 = and i32 %63, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.then79, label %if.then75.if.end82_crit_edge

if.then75.if.end82_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.then79:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #17
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %68 = call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 99
  %72 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fsuid, align 4
  %76 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %uid, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.then75.if.end82_crit_edge
  %77 = ptrtoint ptr %mnt_cifs_flags67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mnt_cifs_flags67, align 4
  %and84 = and i32 %78, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %79 = call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i147 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i147 to ptr
  %task92 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task92 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task92, align 8
  %cred93 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 99
  %83 = ptrtoint ptr %cred93 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cred93, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fsgid, align 4
  %87 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %gid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end82.cleanup_crit_edge, %land.lhs.true74.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %mapping_set_error.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %mapping_set_error.exit ], [ -5, %entry.cleanup_crit_edge ], [ %call40, %if.then39.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %if.then86 ], [ 0, %land.lhs.true74.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_fiemap(ptr noundef %inode, ptr noundef %fei, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -280
  %i_sb = getelementptr i8, ptr %inode, i32 28
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @cifs_sb_master_tcon(ptr noundef %3) #15
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 7
  %4 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ses, align 8
  %server3 = getelementptr inbounds %struct.cifs_ses, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %server3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server3, align 8
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp slt i32 %9, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !351

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %oplock = getelementptr i8, ptr %inode, i32 -116
  %10 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oplock, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i59 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i59, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mnt_cifs_flags, align 4
  %and12 = and i32 %17, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true:                                    ; preds = %lor.lhs.false
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true15

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true15:                                  ; preds = %land.lhs.true
  %nrpages = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %land.lhs.true15.if.end24_crit_edge, label %if.then17

land.lhs.true15.if.end24_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then17:                                        ; preds = %land.lhs.true15
  %call.i = tail call i32 @filemap_fdatawait_range(ptr noundef nonnull %19, i64 noundef 0, i64 noundef 9223372036854775807) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.then17.if.end24_crit_edge, label %if.end.i

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.end.i:                                         ; preds = %if.then17
  %22 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping, align 8
  tail call void @__filemap_set_wb_err(ptr noundef %23, i32 noundef %call.i) #15
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool4.not.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i, label %if.end.i.mapping_set_error.exit_crit_edge, label %if.then5.i

if.end.i.mapping_set_error.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 50
  %call.i61 = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call.i) #15
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.end.i.mapping_set_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %23, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #15
  br label %cleanup

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %land.lhs.true15.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %call25 = tail call ptr @find_readable_file(ptr noundef %add.ptr.i, i1 noundef zeroext false) #15
  %cmp26 = icmp eq ptr %call25, null
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 5
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %fiemap = getelementptr inbounds %struct.smb_version_operations, ptr %29, i32 0, i32 108
  %30 = ptrtoint ptr %fiemap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fiemap, align 4
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %call33 = tail call i32 %31(ptr noundef %call2, ptr noundef nonnull %call25, ptr noundef %fei, i64 noundef %start, i64 noundef %len) #15
  tail call void @cifsFileInfo_put(ptr noundef nonnull %call25) #15
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cifsFileInfo_put(ptr noundef nonnull %call25) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then30, %if.end24.cleanup_crit_edge, %mapping_set_error.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.then30 ], [ -524, %if.end34 ], [ %call.i, %mapping_set_error.exit ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_readable_file(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifsFileInfo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_truncate_page(ptr noundef %mapping, i64 noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %from, 12
  %conv = trunc i64 %0 to i32
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %1 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %conv, i32 noundef 7, i32 noundef %2) #15
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = trunc i64 %from to i32
  %conv1 = and i32 %3, 4095
  tail call void @zero_user_segments(ptr noundef nonnull %call.i.i, i32 noundef %conv1, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #15
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #15
  %4 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !358

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !351

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.149) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !376
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !377
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !378
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !379
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cifs_truncate_page, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !352

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %8) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_setsize(ptr noundef %inode, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #15
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %offset)
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #15
  %time = getelementptr i8, ptr %inode, i32 -56
  %0 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %time, align 8
  tail call void @truncate_pagecache(ptr noundef %inode, i64 noundef %offset) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %direntry, ptr noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %3) #15
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_cifs_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp slt i32 %5, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %do.body.preheader, !prof !351

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 22
  %6 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.peel = load i16, ptr %unix_ext, align 8
  %7 = and i16 %bf.load.peel, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %bf.cast.not.peel = icmp eq i16 %7, 0
  br i1 %bf.cast.not.peel, label %if.else.peel, label %if.then4.peel

if.then4.peel:                                    ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %call5.peel = tail call fastcc i32 @cifs_setattr_unix(ptr noundef %direntry, ptr noundef %attrs)
  br label %if.end7.peel

if.else.peel:                                     ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %call6.peel = tail call fastcc i32 @cifs_setattr_nounix(ptr noundef %direntry, ptr noundef %attrs)
  br label %if.end7.peel

if.end7.peel:                                     ; preds = %if.else.peel, %if.then4.peel
  %rc.0.peel = phi i32 [ %call5.peel, %if.then4.peel ], [ %call6.peel, %if.else.peel ]
  %8 = zext i32 %rc.0.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %rc.0.peel, label %if.end7.peel.cleanup_crit_edge [
    i32 -4, label %if.end7.peel.do.body_crit_edge
    i32 -512, label %if.end7.peel.do.body_crit_edge22
    i32 -514, label %if.end7.peel.do.body_crit_edge23
    i32 -513, label %if.end7.peel.do.body_crit_edge24
    i32 -11, label %if.end7.peel.do.body_crit_edge25
  ]

if.end7.peel.do.body_crit_edge25:                 ; preds = %if.end7.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end7.peel.do.body_crit_edge24:                 ; preds = %if.end7.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end7.peel.do.body_crit_edge23:                 ; preds = %if.end7.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end7.peel.do.body_crit_edge22:                 ; preds = %if.end7.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end7.peel.do.body_crit_edge:                   ; preds = %if.end7.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end7.peel.cleanup_crit_edge:                   ; preds = %if.end7.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end7.peel.do.body_crit_edge, %if.end7.peel.do.body_crit_edge22, %if.end7.peel.do.body_crit_edge23, %if.end7.peel.do.body_crit_edge24, %if.end7.peel.do.body_crit_edge25
  %9 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %unix_ext, align 8
  %10 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %bf.cast.not = icmp eq i16 %10, 0
  br i1 %bf.cast.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call fastcc i32 @cifs_setattr_unix(ptr noundef %direntry, ptr noundef %attrs)
  br label %cleanup

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call fastcc i32 @cifs_setattr_nounix(ptr noundef %direntry, ptr noundef %attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %if.end7.peel.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call5, %if.then4 ], [ %call6, %if.else ], [ %rc.0.peel, %if.end7.peel.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_setattr_unix(ptr noundef %direntry, ptr noundef %attrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %0 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -280
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end17_crit_edge, label %do.body5

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_setattr_unix.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_setattr_unix, %land.lhs.true)) #15
          to label %do.end17 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body5
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_setattr_unix._rs, ptr noundef nonnull @.str.150) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %if.then12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end17

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attrs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_setattr_unix.descriptor, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.3, ptr noundef %direntry, i32 noundef %9) #15
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %land.lhs.true.do.end17_crit_edge, %do.body5, %entry.do.end17_crit_edge
  %call18 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and21 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.end17.do.end54_crit_edge, label %do.body24

do.end17.do.end54_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54

do.body24:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_setattr_unix.descriptor.153, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_setattr_unix, %land.lhs.true36)) #15
          to label %do.end54 [label %land.lhs.true36], !srcloc !352

land.lhs.true36:                                  ; preds = %do.body24
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_setattr_unix._rs.152, ptr noundef nonnull @.str.150) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end54_crit_edge, label %if.then39

land.lhs.true36.do.end54_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #17
  %11 = tail call i32 @llvm.read_register.i32(metadata !341) #15
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %17)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call45 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_setattr_unix.descriptor.153, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.150, i32 noundef %call18, i32 noundef %call45) #15
  br label %do.end54

do.end54:                                         ; preds = %if.then39, %land.lhs.true36.do.end54_crit_edge, %do.body24, %do.end17.do.end54_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call18, ptr noundef nonnull @.str.150)
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %6, i32 0, i32 6
  %18 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mnt_cifs_flags, align 4
  %and56 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.end54.if.end60_crit_edge, label %if.then58

do.end54.if.end60_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then58:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attrs, align 8
  %or = or i32 %21, 512
  store i32 %or, ptr %attrs, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %do.end54.if.end60_crit_edge
  %call61 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %direntry, ptr noundef %attrs) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp = icmp slt i32 %call61, 0
  br i1 %cmp, label %if.end60.out_crit_edge, label %if.end63

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end63:                                         ; preds = %if.end60
  %call64 = tail call ptr @build_path_from_dentry(ptr noundef %direntry, ptr noundef %call.i) #15
  %cmp.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %call64 to i32
  br label %out

if.end68:                                         ; preds = %if.end63
  %i_mapping = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 9
  %23 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_mapping, align 8
  %call.i312 = tail call i32 @filemap_write_and_wait_range(ptr noundef %24, i64 noundef 0, i64 noundef 9223372036854775807) #15
  %25 = zext i32 %call.i312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %call.i312, label %if.end72 [
    i32 -4, label %if.end68.out_crit_edge
    i32 -512, label %if.end68.out_crit_edge329
    i32 -514, label %if.end68.out_crit_edge330
    i32 -513, label %if.end68.out_crit_edge331
  ]

if.end68.out_crit_edge331:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end68.out_crit_edge330:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end68.out_crit_edge329:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end72:                                         ; preds = %if.end68
  %26 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312)
  %tobool.not.i = icmp eq i32 %call.i312, 0
  br i1 %tobool.not.i, label %if.end72.mapping_set_error.exit_crit_edge, label %if.end.i, !prof !358

if.end72.mapping_set_error.exit_crit_edge:        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %mapping_set_error.exit

if.end.i:                                         ; preds = %if.end72
  tail call void @__filemap_set_wb_err(ptr noundef %27, i32 noundef %call.i312) #15
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool4.not.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 50
  %call.i314 = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call.i312) #15
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i312)
  %cmp.i315 = icmp eq i32 %call.i312, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %27, i32 0, i32 10
  %..i = zext i1 %cmp.i315 to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #15
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.end7.i, %if.end72.mapping_set_error.exit_crit_edge
  %32 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %attrs, align 8
  %and75 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %mapping_set_error.exit.if.end82_crit_edge, label %if.then77

mapping_set_error.exit.if.end82_crit_edge:        ; preds = %mapping_set_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.then77:                                        ; preds = %mapping_set_error.exit
  %call78 = tail call fastcc i32 @cifs_set_file_size(ptr noundef %2, ptr noundef %attrs, i32 noundef %call18, ptr noundef %call64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79.not = icmp eq i32 %call78, 0
  br i1 %cmp79.not, label %if.then77.if.end82_crit_edge, label %if.then77.out_crit_edge

if.then77.out_crit_edge:                          ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then77.if.end82_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.end82:                                         ; preds = %if.then77.if.end82_crit_edge, %mapping_set_error.exit.if.end82_crit_edge
  %34 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %attrs, align 8
  %and84 = and i32 %35, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.if.end89_crit_edge, label %if.then86

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  %and88 = and i32 %35, -2
  %36 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and88, ptr %attrs, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end82.if.end89_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 48) #18
  %cmp91 = icmp eq ptr %call7.i, null
  br i1 %cmp91, label %if.end89.out_crit_edge, label %if.end93

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end93:                                         ; preds = %if.end89
  %38 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %attrs, align 8
  %and95 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end93.if.end100_crit_edge, label %if.then97

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 1
  %40 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ia_mode, align 4
  %conv = zext i16 %41 to i64
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end93.if.end100_crit_edge
  %conv.sink = phi i64 [ %conv, %if.then97 ], [ -1, %if.end93.if.end100_crit_edge ]
  %42 = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %call7.i, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv.sink, ptr %42, align 8
  %and102 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.if.end107_crit_edge, label %if.then104

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 2
  %44 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ia_uid, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end100.if.end107_crit_edge
  %.sink = phi i32 [ %45, %if.then104 ], [ -1, %if.end100.if.end107_crit_edge ]
  %46 = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %call7.i, i32 0, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %46, align 8
  %and109 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end116_crit_edge, label %if.then111

if.end107.if.end116_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end116

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 3
  %48 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ia_gid, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %if.end107.if.end116_crit_edge
  %.sink328 = phi i32 [ %49, %if.then111 ], [ -1, %if.end107.if.end116_crit_edge ]
  %50 = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %call7.i, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink328, ptr %50, align 4
  %and118 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end116.if.end124_crit_edge, label %if.then120

if.end116.if.end124_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #17
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 5
  %52 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %52)
  %.unpack303 = load i64, ptr %ia_atime, align 8
  %53 = insertvalue [2 x i64] undef, i64 %.unpack303, 0
  %.elt304 = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %.elt304 to i32
  call void @__asan_load8_noabort(i32 %54)
  %.unpack305 = load i64, ptr %.elt304, align 8
  %55 = insertvalue [2 x i64] %53, i64 %.unpack305, 1
  %call121 = tail call i64 @cifs_UnixTimeToNT([2 x i64] %55) #15
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.end116.if.end124_crit_edge
  %call121.sink = phi i64 [ %call121, %if.then120 ], [ -1, %if.end116.if.end124_crit_edge ]
  %56 = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %call7.i, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %call121.sink, ptr %56, align 8
  %58 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %attrs, align 8
  %and126 = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end124.if.end132_crit_edge, label %if.then128

if.end124.if.end132_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end132

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 6
  %60 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %60)
  %.unpack300 = load i64, ptr %ia_mtime, align 8
  %61 = insertvalue [2 x i64] undef, i64 %.unpack300, 0
  %.elt301 = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %.elt301 to i32
  call void @__asan_load8_noabort(i32 %62)
  %.unpack302 = load i64, ptr %.elt301, align 8
  %63 = insertvalue [2 x i64] %61, i64 %.unpack302, 1
  %call129 = tail call i64 @cifs_UnixTimeToNT([2 x i64] %63) #15
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.end124.if.end132_crit_edge
  %call129.sink = phi i64 [ %call129, %if.then128 ], [ -1, %if.end124.if.end132_crit_edge ]
  %64 = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %call7.i, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %call129.sink, ptr %64, align 8
  %66 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %attrs, align 8
  %and134 = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end132.if.end140_crit_edge, label %if.then136

if.end132.if.end140_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end140

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 7
  %68 = ptrtoint ptr %ia_ctime to i32
  call void @__asan_load8_noabort(i32 %68)
  %.unpack = load i64, ptr %ia_ctime, align 8
  %69 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt298 = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %.elt298 to i32
  call void @__asan_load8_noabort(i32 %70)
  %.unpack299 = load i64, ptr %.elt298, align 8
  %71 = insertvalue [2 x i64] %69, i64 %.unpack299, 1
  %call137 = tail call i64 @cifs_UnixTimeToNT([2 x i64] %71) #15
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.end132.if.end140_crit_edge
  %storemerge = phi i64 [ %call137, %if.then136 ], [ -1, %if.end132.if.end140_crit_edge ]
  %72 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %storemerge, ptr %call7.i, align 8
  %device = getelementptr inbounds %struct.cifs_unix_set_info_args, ptr %call7.i, i32 0, i32 6
  %73 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %device, align 8
  %call141 = tail call ptr @find_writable_file(ptr noundef %add.ptr.i, i32 noundef 1) #15
  %tobool142.not = icmp eq ptr %call141, null
  br i1 %tobool142.not, label %if.else147, label %if.then143

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %call141, i32 0, i32 5
  %74 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %fid, align 8
  %pid = getelementptr inbounds %struct.cifsFileInfo, ptr %call141, i32 0, i32 4
  %76 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid, align 8
  %tlink144 = getelementptr inbounds %struct.cifsFileInfo, ptr %call141, i32 0, i32 8
  %78 = ptrtoint ptr %tlink144 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tlink144, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tl_tcon.i, align 4
  %call146 = tail call i32 @CIFSSMBUnixSetFileInfo(i32 noundef %call18, ptr noundef %81, ptr noundef nonnull %call7.i, i16 noundef zeroext %75, i32 noundef %77) #15
  tail call void @cifsFileInfo_put(ptr noundef nonnull %call141) #15
  br label %if.end156

if.else147:                                       ; preds = %if.end140
  %call148 = tail call ptr @cifs_sb_tlink(ptr noundef %6) #15
  %cmp.i316 = icmp ugt ptr %call148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i316, label %if.then150, label %if.end152

if.then150:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %call148 to i32
  br label %out

if.end152:                                        ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #17
  %tl_tcon.i317 = getelementptr inbounds %struct.tcon_link, ptr %call148, i32 0, i32 5
  %83 = ptrtoint ptr %tl_tcon.i317 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tl_tcon.i317, align 4
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %6, i32 0, i32 3
  %85 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %local_nls, align 4
  %call154 = tail call i32 @cifs_remap(ptr noundef %6) #15
  %call155 = tail call i32 @CIFSSMBUnixSetPathInfo(i32 noundef %call18, ptr noundef %84, ptr noundef %call64, ptr noundef nonnull %call7.i, ptr noundef %86, i32 noundef %call154) #15
  tail call void @cifs_put_tlink(ptr noundef %call148) #15
  br label %if.end156

if.end156:                                        ; preds = %if.end152, %if.then143
  %rc.0 = phi i32 [ %call146, %if.then143 ], [ %call155, %if.end152 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool157.not = icmp eq i32 %rc.0, 0
  br i1 %tobool157.not, label %if.end159, label %if.end156.out_crit_edge

if.end156.out_crit_edge:                          ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end159:                                        ; preds = %if.end156
  %87 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %attrs, align 8
  %and161 = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end159.if.end171_crit_edge, label %land.lhs.true163

if.end159.if.end171_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end171

land.lhs.true163:                                 ; preds = %if.end159
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 4
  %89 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ia_size, align 8
  %call164 = tail call fastcc i64 @i_size_read(ptr noundef %2)
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %call164)
  %cmp165.not = icmp eq i64 %90, %call164
  br i1 %cmp165.not, label %land.lhs.true163.if.end171_crit_edge, label %if.then167

land.lhs.true163.if.end171_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end171

if.then167:                                       ; preds = %land.lhs.true163
  %91 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %ia_size, align 8
  tail call void @truncate_setsize(ptr noundef %2, i64 noundef %92) #15
  %fscache.i = getelementptr i8, ptr %2, i32 -8
  %93 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fscache.i, align 8
  %95 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ia_size, align 8
  %tobool.not.i318 = icmp eq ptr %94, null
  br i1 %tobool.not.i318, label %if.then167.if.end171_crit_edge, label %land.lhs.true.i

if.then167.if.end171_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end171

land.lhs.true.i:                                  ; preds = %if.then167
  %flags.i319 = getelementptr inbounds %struct.fscache_cookie, ptr %94, i32 0, i32 14
  %97 = ptrtoint ptr %flags.i319 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %flags.i319, align 4
  %99 = and i32 %98, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool1.not.i = icmp eq i32 %99, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end171_crit_edge

land.lhs.true.i.if.end171_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end171

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__fscache_resize_cookie(ptr noundef nonnull %94, i64 noundef %96) #15
  br label %if.end171

if.end171:                                        ; preds = %if.then.i, %land.lhs.true.i.if.end171_crit_edge, %if.then167.if.end171_crit_edge, %land.lhs.true163.if.end171_crit_edge, %if.end159.if.end171_crit_edge
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %2, ptr noundef %attrs) #15
  tail call void @__mark_inode_dirty(ptr noundef %2, i32 noundef 7) #15
  %100 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %attrs, align 8
  %and173 = and i32 %101, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end171.out_crit_edge, label %if.then175

if.end171.out_crit_edge:                          ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #17
  %time = getelementptr i8, ptr %2, i32 -56
  %102 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %time, align 8
  br label %out

out:                                              ; preds = %if.then175, %if.end171.out_crit_edge, %if.end156.out_crit_edge, %if.then150, %if.end89.out_crit_edge, %if.then77.out_crit_edge, %if.end68.out_crit_edge, %if.end68.out_crit_edge329, %if.end68.out_crit_edge330, %if.end68.out_crit_edge331, %if.then66, %if.end60.out_crit_edge
  %args.0 = phi ptr [ null, %if.end60.out_crit_edge ], [ null, %if.then66 ], [ null, %if.then77.out_crit_edge ], [ %call7.i, %if.end156.out_crit_edge ], [ %call7.i, %if.then175 ], [ %call7.i, %if.end171.out_crit_edge ], [ %call7.i, %if.then150 ], [ null, %if.end89.out_crit_edge ], [ null, %if.end68.out_crit_edge ], [ null, %if.end68.out_crit_edge329 ], [ null, %if.end68.out_crit_edge330 ], [ null, %if.end68.out_crit_edge331 ]
  %rc.1 = phi i32 [ %call61, %if.end60.out_crit_edge ], [ %22, %if.then66 ], [ %call78, %if.then77.out_crit_edge ], [ %rc.0, %if.end156.out_crit_edge ], [ 0, %if.then175 ], [ 0, %if.end171.out_crit_edge ], [ %82, %if.then150 ], [ -12, %if.end89.out_crit_edge ], [ -512, %if.end68.out_crit_edge ], [ -512, %if.end68.out_crit_edge329 ], [ -512, %if.end68.out_crit_edge330 ], [ -512, %if.end68.out_crit_edge331 ]
  tail call void @kfree(ptr noundef %args.0) #15
  %tobool.not.i321 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i321, label %out.free_dentry_path.exit_crit_edge, label %if.then.i322

out.free_dentry_path.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dentry_path.exit

if.then.i322:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %103 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %103, ptr noundef nonnull %call.i) #15
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i322, %out.free_dentry_path.exit_crit_edge
  tail call void @_free_xid(i32 noundef %call18) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %104 = load i32, ptr @cifsFYI, align 4
  %and180 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %free_dentry_path.exit.do.end207_crit_edge, label %do.body183

free_dentry_path.exit.do.end207_crit_edge:        ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end207

do.body183:                                       ; preds = %free_dentry_path.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_setattr_unix.descriptor.155, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_setattr_unix, %land.lhs.true195)) #15
          to label %do.end207 [label %land.lhs.true195], !srcloc !352

land.lhs.true195:                                 ; preds = %do.body183
  %call196 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_setattr_unix._rs.154, ptr noundef nonnull @.str.150) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %land.lhs.true195.do.end207_crit_edge, label %if.then198

land.lhs.true195.do.end207_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end207

if.then198:                                       ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_setattr_unix.descriptor.155, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.150, i32 noundef %call18, i32 noundef %rc.1) #15
  br label %do.end207

do.end207:                                        ; preds = %if.then198, %land.lhs.true195.do.end207_crit_edge, %do.body183, %free_dentry_path.exit.do.end207_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool208.not = icmp eq i32 %rc.1, 0
  br i1 %tobool208.not, label %if.else210, label %if.then209

if.then209:                                       ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call18, ptr noundef nonnull @.str.150, i32 noundef %rc.1)
  br label %do.end213

if.else210:                                       ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call18, ptr noundef nonnull @.str.150)
  br label %do.end213

do.end213:                                        ; preds = %if.else210, %if.then209
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_setattr_nounix(ptr noundef %direntry, ptr noundef %attrs) unnamed_addr #0 align 64 {
entry:
  %wfile = alloca ptr, align 4
  %mode = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %direntry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 -280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wfile) #15
  %6 = ptrtoint ptr %wfile to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %wfile, align 4, !annotation !363
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %7 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3264) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mode) #15
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %mode, align 8
  %call4 = tail call i32 @_get_xid() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %9 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end24_crit_edge, label %do.body6

entry.do.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end24

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_setattr_nounix.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_setattr_nounix, %land.lhs.true)) #15
          to label %do.end24 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_setattr_nounix._rs, ptr noundef nonnull @.str.161) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end24_crit_edge, label %if.then13

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end24

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call i32 @llvm.read_register.i32(metadata !341) #15
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
  %.fca.0.insert393 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call17 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert393) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_setattr_nounix.descriptor, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef %call4, i32 noundef %call17) #15
  br label %do.end24

do.end24:                                         ; preds = %if.then13, %land.lhs.true.do.end24_crit_edge, %do.body6, %entry.do.end24_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call4, ptr noundef nonnull @.str.161)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %17 = load i32, ptr @cifsFYI, align 4
  %and28 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end24.do.end55_crit_edge, label %do.body31

do.end24.do.end55_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55

do.body31:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_setattr_nounix.descriptor.163, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_setattr_nounix, %land.lhs.true43)) #15
          to label %do.end55 [label %land.lhs.true43], !srcloc !352

land.lhs.true43:                                  ; preds = %do.body31
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_setattr_nounix._rs.162, ptr noundef nonnull @.str.161) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.do.end55_crit_edge, label %if.then46

land.lhs.true43.do.end55_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attrs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_setattr_nounix.descriptor.163, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.3, ptr noundef %direntry, i32 noundef %19) #15
  br label %do.end55

do.end55:                                         ; preds = %if.then46, %land.lhs.true43.do.end55_crit_edge, %do.body31, %do.end24.do.end55_crit_edge
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mnt_cifs_flags, align 4
  %and56 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.end55.if.end60_crit_edge, label %if.then58

do.end55.if.end60_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.then58:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attrs, align 8
  %or = or i32 %23, 512
  store i32 %or, ptr %attrs, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %do.end55.if.end60_crit_edge
  %call61 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %direntry, ptr noundef %attrs) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp = icmp slt i32 %call61, 0
  br i1 %cmp, label %if.end60.do.body355_crit_edge, label %if.end63

if.end60.do.body355_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.end63:                                         ; preds = %if.end60
  %call64 = tail call ptr @build_path_from_dentry(ptr noundef %direntry, ptr noundef %call.i) #15
  %cmp.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %call64 to i32
  br label %do.body355

if.end68:                                         ; preds = %if.end63
  %25 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %attrs, align 8
  %and70 = and i32 %26, 104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end78_crit_edge, label %if.then72

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.then72:                                        ; preds = %if.end68
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_mapping, align 8
  %call.i520 = tail call i32 @filemap_write_and_wait_range(ptr noundef %28, i64 noundef 0, i64 noundef 9223372036854775807) #15
  %29 = zext i32 %call.i520 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %call.i520, label %if.end76 [
    i32 -4, label %if.then72.do.body355_crit_edge
    i32 -512, label %if.then72.do.body355_crit_edge541
    i32 -514, label %if.then72.do.body355_crit_edge542
    i32 -513, label %if.then72.do.body355_crit_edge543
  ]

if.then72.do.body355_crit_edge543:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.then72.do.body355_crit_edge542:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.then72.do.body355_crit_edge541:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.then72.do.body355_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.end76:                                         ; preds = %if.then72
  %30 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i520)
  %tobool.not.i = icmp eq i32 %call.i520, 0
  br i1 %tobool.not.i, label %if.end76.if.end78_crit_edge, label %if.end.i, !prof !358

if.end76.if.end78_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end78

if.end.i:                                         ; preds = %if.end76
  tail call void @__filemap_set_wb_err(ptr noundef %31, i32 noundef %call.i520) #15
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 50
  %call.i522 = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call.i520) #15
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i520)
  %cmp.i523 = icmp eq i32 %call.i520, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %31, i32 0, i32 10
  %..i = zext i1 %cmp.i523 to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #15
  br label %if.end78

if.end78:                                         ; preds = %if.end7.i, %if.end76.if.end78_crit_edge, %if.end68.if.end78_crit_edge
  %36 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attrs, align 8
  %and80 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end78.if.end101_crit_edge, label %land.lhs.true82

if.end78.if.end101_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

land.lhs.true82:                                  ; preds = %if.end78
  %38 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mnt_cifs_flags, align 4
  %and84 = and i32 %39, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then86, label %land.lhs.true82.if.end101_crit_edge

land.lhs.true82.if.end101_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.then86:                                        ; preds = %land.lhs.true82
  %call87 = call i32 @cifs_get_writable_file(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %wfile) #15
  %40 = zext i32 %call87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %call87, label %if.then86.do.body355_crit_edge [
    i32 0, label %if.then89
    i32 -9, label %if.then86.if.end101_crit_edge
  ]

if.then86.if.end101_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.then86.do.body355_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.then89:                                        ; preds = %if.then86
  %41 = ptrtoint ptr %wfile to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wfile, align 4
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 4
  %flush = getelementptr inbounds %struct.smb_version_operations, ptr %52, i32 0, i32 58
  %53 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %flush, align 4
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %42, i32 0, i32 5
  %call91 = call i32 %54(i32 noundef %call4, ptr noundef %46, ptr noundef %fid) #15
  %55 = ptrtoint ptr %wfile to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wfile, align 4
  call void @cifsFileInfo_put(ptr noundef %56) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then89.if.end101_crit_edge, label %if.then89.do.body355_crit_edge

if.then89.do.body355_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.then89.if.end101_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.end101:                                        ; preds = %if.then89.if.end101_crit_edge, %if.then86.if.end101_crit_edge, %land.lhs.true82.if.end101_crit_edge, %if.end78.if.end101_crit_edge
  %57 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %attrs, align 8
  %and103 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end110_crit_edge, label %if.then105

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.then105:                                       ; preds = %if.end101
  %call106 = call fastcc i32 @cifs_set_file_size(ptr noundef %1, ptr noundef %attrs, i32 noundef %call4, ptr noundef %call64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107.not = icmp eq i32 %call106, 0
  br i1 %cmp107.not, label %if.then105.if.end110_crit_edge, label %if.then105.do.body355_crit_edge

if.then105.do.body355_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.then105.if.end110_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.end110:                                        ; preds = %if.then105.if.end110_crit_edge, %if.end101.if.end110_crit_edge
  %59 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %attrs, align 8
  %and112 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end110.if.end115_crit_edge, label %if.then114

if.end110.if.end115_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 2
  %61 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %61)
  %uid.sroa.0.0.copyload461 = load i32, ptr %ia_uid, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end110.if.end115_crit_edge
  %uid.sroa.0.0 = phi i32 [ %uid.sroa.0.0.copyload461, %if.then114 ], [ -1, %if.end110.if.end115_crit_edge ]
  %and117 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.if.end120_crit_edge, label %if.then119

if.end115.if.end120_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end120

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 3
  %62 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %62)
  %gid.sroa.0.0.copyload455 = load i32, ptr %ia_gid, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end115.if.end120_crit_edge
  %gid.sroa.0.0 = phi i32 [ %gid.sroa.0.0.copyload455, %if.then119 ], [ -1, %if.end115.if.end120_crit_edge ]
  %63 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mnt_cifs_flags, align 4
  %65 = and i32 %64, 268435968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %if.else171, label %if.then127

if.then127:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.sroa.0.0)
  %cmp.i524 = icmp ne i32 %uid.sroa.0.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.sroa.0.0)
  %cmp.i525 = icmp ne i32 %gid.sroa.0.0, -1
  %or.cond540 = select i1 %cmp.i524, i1 true, i1 %cmp.i525
  br i1 %or.cond540, label %if.then133, label %if.then127.if.end179_crit_edge

if.then127.if.end179_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end179

if.then133:                                       ; preds = %if.then127
  %.fca.0.insert457 = insertvalue [1 x i32] poison, i32 %uid.sroa.0.0, 0
  %67 = ptrtoint ptr %mode to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 -1, ptr %mode, align 8
  %.fca.0.insert454 = insertvalue [1 x i32] poison, i32 %gid.sroa.0.0, 0
  %call136 = call i32 @id_mode_to_cifs_acl(ptr noundef %1, ptr noundef %call64, ptr noundef nonnull %mode, [1 x i32] %.fca.0.insert457, [1 x i32] %.fca.0.insert454) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then133.if.end179_crit_edge, label %do.body140

if.then133.if.end179_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end179

do.body140:                                       ; preds = %if.then133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %68 = load i32, ptr @cifsFYI, align 4
  %and141 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %do.body140.do.body355_crit_edge, label %do.body144

do.body140.do.body355_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

do.body144:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_setattr_nounix.descriptor.166, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_setattr_nounix, %land.lhs.true156)) #15
          to label %do.body355 [label %land.lhs.true156], !srcloc !352

land.lhs.true156:                                 ; preds = %do.body144
  %call157 = call i32 @___ratelimit(ptr noundef nonnull @cifs_setattr_nounix._rs.165, ptr noundef nonnull @.str.161) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %land.lhs.true156.do.body355_crit_edge, label %if.then159

land.lhs.true156.do.body355_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.then159:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_setattr_nounix.descriptor.166, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef %call136) #15
  br label %do.body355

if.else171:                                       ; preds = %if.end120
  %and173 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.then175, label %if.else171.if.end179_crit_edge

if.else171.if.end179_crit_edge:                   ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end179

if.then175:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #17
  %and177 = and i32 %60, -7
  %69 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and177, ptr %attrs, align 8
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %if.else171.if.end179_crit_edge, %if.then133.if.end179_crit_edge, %if.then127.if.end179_crit_edge
  %70 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %attrs, align 8
  %and181 = and i32 %71, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end179.if.end186_crit_edge, label %if.then183

if.end179.if.end186_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

if.then183:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #17
  %and185 = and i32 %71, -2
  %72 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and185, ptr %attrs, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %if.end179.if.end186_crit_edge
  %73 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %attrs, align 8
  %and188 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.end186.if.end320_crit_edge, label %if.then190

if.end186.if.end320_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end320

if.then190:                                       ; preds = %if.end186
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 1
  %75 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ia_mode, align 4
  %conv = zext i16 %76 to i64
  %77 = ptrtoint ptr %mode to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv, ptr %mode, align 8
  %78 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mnt_cifs_flags, align 4
  %80 = and i32 %79, 268435968
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %if.else245, label %if.then198

if.then198:                                       ; preds = %if.then190
  %call203 = call i32 @id_mode_to_cifs_acl(ptr noundef %1, ptr noundef %call64, ptr noundef nonnull %mode, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end236, label %do.body207

do.body207:                                       ; preds = %if.then198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %82 = load i32, ptr @cifsFYI, align 4
  %and208 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %do.body207.do.body355_crit_edge, label %do.body211

do.body207.do.body355_crit_edge:                  ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

do.body211:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_setattr_nounix.descriptor.169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_setattr_nounix, %land.lhs.true223)) #15
          to label %do.body355 [label %land.lhs.true223], !srcloc !352

land.lhs.true223:                                 ; preds = %do.body211
  %call224 = call i32 @___ratelimit(ptr noundef nonnull @cifs_setattr_nounix._rs.168, ptr noundef nonnull @.str.161) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %land.lhs.true223.do.body355_crit_edge, label %if.then226

land.lhs.true223.do.body355_crit_edge:            ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.then226:                                       ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_setattr_nounix.descriptor.169, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef %call203) #15
  br label %do.body355

if.end236:                                        ; preds = %if.then198
  %83 = ptrtoint ptr %mode to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %mode, align 8
  %85 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ia_mode, align 4
  %conv238 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %conv238)
  %cmp239.not = icmp eq i64 %84, %conv238
  br i1 %cmp239.not, label %if.end236.if.end320_crit_edge, label %if.then241

if.end236.if.end320_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end320

if.then241:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #17
  %conv242 = trunc i64 %84 to i16
  %87 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv242, ptr %ia_mode, align 4
  br label %if.end320

if.else245:                                       ; preds = %if.then190
  %and246 = and i64 %conv, 146
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and246)
  %cmp247 = icmp eq i64 %and246, 0
  %cifsAttrs = getelementptr i8, ptr %1, i32 -120
  %88 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cifsAttrs, align 8
  %and250 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %cmp251 = icmp eq i32 %and250, 0
  br i1 %cmp247, label %land.lhs.true249, label %land.lhs.true269

land.lhs.true249:                                 ; preds = %if.else245
  br i1 %cmp251, label %if.then253, label %land.lhs.true249.if.else309_crit_edge

land.lhs.true249.if.else309_crit_edge:            ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else309

if.then253:                                       ; preds = %land.lhs.true249
  %or255 = or i32 %89, 1
  %and257 = and i32 %79, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %cmp258 = icmp eq i32 %and257, 0
  br i1 %cmp258, label %if.then260, label %if.then253.if.end320_crit_edge

if.then253.if.end320_crit_edge:                   ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end320

if.then260:                                       ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %1, align 8
  %92 = and i16 %91, -147
  %93 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %ia_mode, align 4
  br label %if.end320

land.lhs.true269:                                 ; preds = %if.else245
  br i1 %cmp251, label %land.lhs.true269.if.else309_crit_edge, label %if.then273

land.lhs.true269.if.else309_crit_edge:            ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else309

if.then273:                                       ; preds = %land.lhs.true269
  %and275 = and i32 %89, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %cmp276 = icmp eq i32 %and275, 0
  %spec.select = select i1 %cmp276, i32 128, i32 %and275
  %and282 = and i32 %79, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %if.then284, label %if.then273.if.end320_crit_edge

if.then273.if.end320_crit_edge:                   ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end320

if.then284:                                       ; preds = %if.then273
  %94 = and i16 %76, -4096
  %95 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %ia_mode, align 4
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %1, align 8
  %98 = and i16 %97, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %98)
  %cmp292 = icmp eq i16 %98, 16384
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %5, i32 0, i32 4
  %99 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ctx, align 4
  br i1 %cmp292, label %if.then294, label %if.else300

if.then294:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #17
  %dir_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %100, i32 0, i32 28
  %101 = ptrtoint ptr %dir_mode to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %dir_mode, align 2
  %or298504 = or i16 %102, %94
  %103 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %or298504, ptr %ia_mode, align 4
  br label %if.end320

if.else300:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #17
  %file_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %100, i32 0, i32 27
  %104 = ptrtoint ptr %file_mode to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %file_mode, align 4
  %or305503 = or i16 %105, %94
  %106 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %or305503, ptr %ia_mode, align 4
  br label %if.end320

if.else309:                                       ; preds = %land.lhs.true269.if.else309_crit_edge, %land.lhs.true249.if.else309_crit_edge
  %and311 = and i32 %79, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311)
  %tobool312.not = icmp eq i32 %and311, 0
  br i1 %tobool312.not, label %if.then313, label %if.else309.if.end320_crit_edge

if.else309.if.end320_crit_edge:                   ; preds = %if.else309
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end320

if.then313:                                       ; preds = %if.else309
  call void @__sanitizer_cov_trace_pc() #17
  %and315 = and i32 %74, -2
  %107 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and315, ptr %attrs, align 8
  br label %if.end320

if.end320:                                        ; preds = %if.then313, %if.else309.if.end320_crit_edge, %if.else300, %if.then294, %if.then273.if.end320_crit_edge, %if.then260, %if.then253.if.end320_crit_edge, %if.then241, %if.end236.if.end320_crit_edge, %if.end186.if.end320_crit_edge
  %dosattr.1 = phi i32 [ 0, %if.then241 ], [ 0, %if.end236.if.end320_crit_edge ], [ %or255, %if.then260 ], [ %or255, %if.then253.if.end320_crit_edge ], [ %spec.select, %if.then273.if.end320_crit_edge ], [ %spec.select, %if.then294 ], [ %spec.select, %if.else300 ], [ 0, %if.else309.if.end320_crit_edge ], [ 0, %if.then313 ], [ 0, %if.end186.if.end320_crit_edge ]
  %108 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %attrs, align 8
  %and322 = and i32 %109, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and322)
  %tobool323.not = icmp eq i32 %and322, 0
  br i1 %tobool323.not, label %lor.lhs.false324, label %if.end320.if.then330_crit_edge

if.end320.if.then330_crit_edge:                   ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then330

lor.lhs.false324:                                 ; preds = %if.end320
  %and326 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326)
  %tobool327.not = icmp eq i32 %and326, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dosattr.1)
  %tobool329.not = icmp eq i32 %dosattr.1, 0
  %or.cond506 = select i1 %tobool327.not, i1 true, i1 %tobool329.not
  br i1 %or.cond506, label %lor.lhs.false324.if.end342_crit_edge, label %lor.lhs.false324.if.then330_crit_edge

lor.lhs.false324.if.then330_crit_edge:            ; preds = %lor.lhs.false324
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then330

lor.lhs.false324.if.end342_crit_edge:             ; preds = %lor.lhs.false324
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end342

if.then330:                                       ; preds = %lor.lhs.false324.if.then330_crit_edge, %if.end320.if.then330_crit_edge
  %call331 = call i32 @cifs_set_file_info(ptr noundef %1, ptr noundef %attrs, i32 noundef %call4, ptr noundef %call64, i32 noundef %dosattr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %if.then330.if.end342_crit_edge, label %land.lhs.true333

if.then330.if.end342_crit_edge:                   ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end342

land.lhs.true333:                                 ; preds = %if.then330
  %110 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %attrs, align 8
  %and335 = and i32 %111, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  br i1 %tobool336.not, label %land.lhs.true333.do.body355_crit_edge, label %land.lhs.true333.if.end342_crit_edge

land.lhs.true333.if.end342_crit_edge:             ; preds = %land.lhs.true333
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end342

land.lhs.true333.do.body355_crit_edge:            ; preds = %land.lhs.true333
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body355

if.end342:                                        ; preds = %land.lhs.true333.if.end342_crit_edge, %if.then330.if.end342_crit_edge, %lor.lhs.false324.if.end342_crit_edge
  %112 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %attrs, align 8
  %and344 = and i32 %113, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and344)
  %tobool345.not = icmp eq i32 %and344, 0
  br i1 %tobool345.not, label %if.end342.if.end354_crit_edge, label %land.lhs.true346

if.end342.if.end354_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end354

land.lhs.true346:                                 ; preds = %if.end342
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 4
  %114 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ia_size, align 8
  %call347 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %115, i64 %call347)
  %cmp348.not = icmp eq i64 %115, %call347
  br i1 %cmp348.not, label %land.lhs.true346.if.end354_crit_edge, label %if.then350

land.lhs.true346.if.end354_crit_edge:             ; preds = %land.lhs.true346
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end354

if.then350:                                       ; preds = %land.lhs.true346
  %116 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %ia_size, align 8
  call void @truncate_setsize(ptr noundef %1, i64 noundef %117) #15
  %fscache.i = getelementptr i8, ptr %1, i32 -8
  %118 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fscache.i, align 8
  %120 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %ia_size, align 8
  %tobool.not.i526 = icmp eq ptr %119, null
  br i1 %tobool.not.i526, label %if.then350.if.end354_crit_edge, label %land.lhs.true.i

if.then350.if.end354_crit_edge:                   ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end354

land.lhs.true.i:                                  ; preds = %if.then350
  %flags.i527 = getelementptr inbounds %struct.fscache_cookie, ptr %119, i32 0, i32 14
  %122 = ptrtoint ptr %flags.i527 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %flags.i527, align 4
  %124 = and i32 %123, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool1.not.i = icmp eq i32 %124, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end354_crit_edge

land.lhs.true.i.if.end354_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end354

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__fscache_resize_cookie(ptr noundef nonnull %119, i64 noundef %121) #15
  br label %if.end354

if.end354:                                        ; preds = %if.then.i, %land.lhs.true.i.if.end354_crit_edge, %if.then350.if.end354_crit_edge, %land.lhs.true346.if.end354_crit_edge, %if.end342.if.end354_crit_edge
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attrs) #15
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #15
  br label %do.body355

do.body355:                                       ; preds = %if.end354, %land.lhs.true333.do.body355_crit_edge, %if.then226, %land.lhs.true223.do.body355_crit_edge, %do.body211, %do.body207.do.body355_crit_edge, %if.then159, %land.lhs.true156.do.body355_crit_edge, %do.body144, %do.body140.do.body355_crit_edge, %if.then105.do.body355_crit_edge, %if.then89.do.body355_crit_edge, %if.then86.do.body355_crit_edge, %if.then72.do.body355_crit_edge, %if.then72.do.body355_crit_edge541, %if.then72.do.body355_crit_edge542, %if.then72.do.body355_crit_edge543, %if.then66, %if.end60.do.body355_crit_edge
  %rc.5 = phi i32 [ %call61, %if.end60.do.body355_crit_edge ], [ %24, %if.then66 ], [ %call106, %if.then105.do.body355_crit_edge ], [ %call136, %if.then159 ], [ %call136, %land.lhs.true156.do.body355_crit_edge ], [ %call136, %do.body140.do.body355_crit_edge ], [ %call203, %if.then226 ], [ %call203, %land.lhs.true223.do.body355_crit_edge ], [ %call203, %do.body207.do.body355_crit_edge ], [ 0, %if.end354 ], [ %call91, %if.then89.do.body355_crit_edge ], [ %call87, %if.then86.do.body355_crit_edge ], [ %call136, %do.body144 ], [ %call203, %do.body211 ], [ %call331, %land.lhs.true333.do.body355_crit_edge ], [ -512, %if.then72.do.body355_crit_edge ], [ -512, %if.then72.do.body355_crit_edge541 ], [ -512, %if.then72.do.body355_crit_edge542 ], [ -512, %if.then72.do.body355_crit_edge543 ]
  call void @_free_xid(i32 noundef %call4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %125 = load i32, ptr @cifsFYI, align 4
  %and358 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  br i1 %tobool359.not, label %do.body355.do.end385_crit_edge, label %do.body361

do.body355.do.end385_crit_edge:                   ; preds = %do.body355
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end385

do.body361:                                       ; preds = %do.body355
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_setattr_nounix.descriptor.172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_setattr_nounix, %land.lhs.true373)) #15
          to label %do.end385 [label %land.lhs.true373], !srcloc !352

land.lhs.true373:                                 ; preds = %do.body361
  %call374 = call i32 @___ratelimit(ptr noundef nonnull @cifs_setattr_nounix._rs.171, ptr noundef nonnull @.str.161) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %land.lhs.true373.do.end385_crit_edge, label %if.then376

land.lhs.true373.do.end385_crit_edge:             ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end385

if.then376:                                       ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_setattr_nounix.descriptor.172, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.161, i32 noundef %call4, i32 noundef %rc.5) #15
  br label %do.end385

do.end385:                                        ; preds = %if.then376, %land.lhs.true373.do.end385_crit_edge, %do.body361, %do.body355.do.end385_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.5)
  %tobool386.not = icmp eq i32 %rc.5, 0
  br i1 %tobool386.not, label %if.else388, label %if.then387

if.then387:                                       ; preds = %do.end385
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_err(i32 noundef %call4, ptr noundef nonnull @.str.161, i32 noundef %rc.5)
  br label %do.end391

if.else388:                                       ; preds = %do.end385
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @trace_smb3_exit_done(i32 noundef %call4, ptr noundef nonnull @.str.161)
  br label %do.end391

do.end391:                                        ; preds = %if.else388, %if.then387
  %tobool.not.i529 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i529, label %do.end391.free_dentry_path.exit_crit_edge, label %if.then.i530

do.end391.free_dentry_path.exit_crit_edge:        ; preds = %do.end391
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_dentry_path.exit

if.then.i530:                                     ; preds = %do.end391
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %126 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %126, ptr noundef nonnull %call.i) #15
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i530, %do.end391.free_dentry_path.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mode) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wfile) #15
  ret i32 %rc.5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !380
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %1 = tail call ptr @llvm.returnaddress(i32 0) #15
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %3 = tail call ptr @llvm.returnaddress(i32 0) #15
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #15
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !381
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !351

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !382
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !383
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !384
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !385
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !386
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_invalidate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSFindFirst(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_enter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_err(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_smb3_exit_done(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSPOSIXCreate(i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBUnixSetPathInfo(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_cached_dir_by_dentry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_cached_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBUnixQFileInfo(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_set_file_size(ptr noundef %inode, ptr nocapture noundef %attrs, i32 noundef %xid, ptr noundef %full_path) unnamed_addr #0 align 64 {
entry:
  %tmp91 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -280
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @find_writable_file(ptr noundef %add.ptr.i, i32 noundef 1) #15
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.then34_crit_edge, label %if.then

entry.if.then34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34

if.then:                                          ; preds = %entry
  %tlink3 = getelementptr inbounds %struct.cifsFileInfo, ptr %call2, i32 0, i32 8
  %4 = ptrtoint ptr %tlink3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tlink3, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ses, align 8
  %server5 = getelementptr inbounds %struct.cifs_ses, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %server5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %server5, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %set_file_size = getelementptr inbounds %struct.smb_version_operations, ptr %13, i32 0, i32 40
  %14 = ptrtoint ptr %set_file_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_file_size, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 4
  %16 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ia_size, align 8
  %call10 = tail call i32 %15(i32 noundef %xid, ptr noundef %7, ptr noundef nonnull %call2, i64 noundef %17, i1 noundef zeroext false) #15
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %rc.0 = phi i32 [ %call10, %if.then7 ], [ -38, %if.then.if.end_crit_edge ]
  tail call void @cifsFileInfo_put(ptr noundef nonnull %call2) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %18 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.if.end30_crit_edge, label %do.body14

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_set_file_size.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_set_file_size, %land.lhs.true)) #15
          to label %if.end30 [label %land.lhs.true], !srcloc !352

land.lhs.true:                                    ; preds = %do.body14
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_set_file_size._rs, ptr noundef nonnull @.str.156) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end30_crit_edge, label %if.then21

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_set_file_size.descriptor, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.3, i32 noundef %rc.0) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %land.lhs.true.if.end30_crit_edge, %do.body14, %if.end.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool31.not = icmp eq i32 %rc.0, 0
  br i1 %tobool31.not, label %if.end30.if.then87_crit_edge, label %if.end33

if.end30.if.then87_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then87

if.end33:                                         ; preds = %if.end30
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.end33.if.then34_crit_edge, label %if.end33.if.end43_crit_edge

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.end33.if.then34_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34

if.then34:                                        ; preds = %if.end33.if.then34_crit_edge, %entry.if.then34_crit_edge
  %call35 = tail call ptr @cifs_sb_tlink(ptr noundef %3) #15
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  %tl_tcon.i138 = getelementptr inbounds %struct.tcon_link, ptr %call35, i32 0, i32 5
  %20 = ptrtoint ptr %tl_tcon.i138 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tl_tcon.i138, align 4
  %ses41 = getelementptr inbounds %struct.cifs_tcon, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %ses41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ses41, align 8
  %server42 = getelementptr inbounds %struct.cifs_ses, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %server42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %server42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end39, %if.end33.if.end43_crit_edge
  %tlink.0 = phi ptr [ %call35, %if.end39 ], [ null, %if.end33.if.end43_crit_edge ]
  %tcon.1 = phi ptr [ %21, %if.end39 ], [ %7, %if.end33.if.end43_crit_edge ]
  %server.1 = phi ptr [ %25, %if.end39 ], [ %11, %if.end33.if.end43_crit_edge ]
  %ops44 = getelementptr inbounds %struct.TCP_Server_Info, ptr %server.1, i32 0, i32 5
  %26 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops44, align 4
  %set_path_size = getelementptr inbounds %struct.smb_version_operations, ptr %27, i32 0, i32 39
  %28 = ptrtoint ptr %set_path_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_path_size, align 4
  %tobool45.not = icmp eq ptr %29, null
  br i1 %tobool45.not, label %if.end43.do.body54_crit_edge, label %if.then46

if.end43.do.body54_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body54

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %ia_size49 = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 4
  %30 = ptrtoint ptr %ia_size49 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ia_size49, align 8
  %call50 = tail call i32 %29(i32 noundef %xid, ptr noundef %tcon.1, ptr noundef %full_path, i64 noundef %31, ptr noundef %3, i1 noundef zeroext false) #15
  br label %do.body54

do.body54:                                        ; preds = %if.then46, %if.end43.do.body54_crit_edge
  %rc.2 = phi i32 [ %call50, %if.then46 ], [ -38, %if.end43.do.body54_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %32 = load i32, ptr @cifsFYI, align 4
  %and55 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end82_crit_edge, label %do.body58

do.body54.do.end82_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end82

do.body58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_set_file_size.descriptor.159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_set_file_size, %land.lhs.true70)) #15
          to label %do.end82 [label %land.lhs.true70], !srcloc !352

land.lhs.true70:                                  ; preds = %do.body58
  %call71 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_set_file_size._rs.158, ptr noundef nonnull @.str.156) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true70.do.end82_crit_edge, label %if.then73

land.lhs.true70.do.end82_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end82

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_set_file_size.descriptor.159, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.3, i32 noundef %rc.2) #15
  br label %do.end82

do.end82:                                         ; preds = %if.then73, %land.lhs.true70.do.end82_crit_edge, %do.body58, %do.body54.do.end82_crit_edge
  %tobool83.not = icmp eq ptr %tlink.0, null
  br i1 %tobool83.not, label %do.end82.set_size_out_crit_edge, label %if.then84

do.end82.set_size_out_crit_edge:                  ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_size_out

if.then84:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @cifs_put_tlink(ptr noundef nonnull %tlink.0) #15
  br label %set_size_out

set_size_out:                                     ; preds = %if.then84, %do.end82.set_size_out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp86 = icmp eq i32 %rc.2, 0
  br i1 %cmp86, label %set_size_out.if.then87_crit_edge, label %set_size_out.cleanup_crit_edge

set_size_out.cleanup_crit_edge:                   ; preds = %set_size_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

set_size_out.if.then87_crit_edge:                 ; preds = %set_size_out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then87

if.then87:                                        ; preds = %set_size_out.if.then87_crit_edge, %if.end30.if.then87_crit_edge
  %ia_size88 = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 4
  %33 = ptrtoint ptr %ia_size88 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ia_size88, align 8
  %server_eof = getelementptr i8, ptr %inode, i32 -48
  %35 = ptrtoint ptr %server_eof to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %server_eof, align 8
  %36 = load i64, ptr %ia_size88, align 8
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #15
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %36) #15
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #15
  %time.i = getelementptr i8, ptr %inode, i32 -56
  %37 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %time.i, align 8
  tail call void @truncate_pagecache(ptr noundef %inode, i64 noundef %36) #15
  %38 = ptrtoint ptr %ia_size88 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ia_size88, align 8
  %add = add i64 %39, 511
  %shr = ashr i64 %add, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %40 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %shr, ptr %i_blocks, align 8
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 7
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attrs, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp91) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp91, ptr noundef %inode) #15
  %41 = call ptr @memcpy(ptr %ia_mtime, ptr %tmp91, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp91) #15
  %42 = call ptr @memcpy(ptr %ia_ctime, ptr %ia_mtime, i32 16)
  %43 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %attrs, align 8
  %or = or i32 %44, 96
  store i32 %or, ptr %attrs, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %45 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_mapping, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %47 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_size, align 8
  %call92 = call i32 @cifs_truncate_page(ptr noundef %46, i64 noundef %48)
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %set_size_out.cleanup_crit_edge, %if.then37
  %retval.0 = phi i32 [ %19, %if.then37 ], [ 0, %if.then87 ], [ %rc.2, %set_size_out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_writable_file(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @CIFSSMBUnixSetFileInfo(i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_resize_cookie(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_get_writable_file(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @id_mode_to_cifs_acl(ptr noundef, ptr noundef, ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !135, !137, !138, !140, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !195, !197, !199, !200, !201, !202, !204, !205, !206, !207, !209, !211, !212, !213, !215, !217, !218, !219, !221, !223, !224, !225, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !251, !253, !254, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284, !285, !286, !287, !289, !290, !292, !293, !294, !295, !297, !298, !300, !302, !303, !304, !305, !307, !308, !309, !311, !312, !314, !315, !316, !317, !319, !320, !321, !323, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340}
!llvm.named.register.sp = !{!341}
!llvm.module.flags = !{!342, !343, !344, !345, !346, !347, !348, !349}
!llvm.ident = !{!350}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/inode.c", i32 291, i32 3}
!2 = !{ptr @cifs_unix_basic_to_fattr._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cifs_unix_basic_to_fattr.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @cifs_get_inode_info_unix._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/inode.c", i32 382, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cifs_get_inode_info_unix.descriptor, !9, !"descriptor", i1 false, i1 false}
!13 = !{ptr @cifs_get_inode_info_unix._rs.7, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../fs/cifs/inode.c", i32 408, i32 4}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cifs_get_inode_info_unix.descriptor.8, !14, !"descriptor", i1 false, i1 false}
!17 = !{ptr @cifs_get_inode_info._rs, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../fs/cifs/inode.c", i32 948, i32 4}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cifs_get_inode_info.descriptor, !18, !"descriptor", i1 false, i1 false}
!22 = !{ptr @cifs_get_inode_info._rs.12, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../fs/cifs/inode.c", i32 983, i32 4}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cifs_get_inode_info.descriptor.13, !23, !"descriptor", i1 false, i1 false}
!26 = !{ptr @cifs_get_inode_info._rs.15, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../fs/cifs/inode.c", i32 1027, i32 3}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cifs_get_inode_info.descriptor.16, !27, !"descriptor", i1 false, i1 false}
!30 = !{ptr @cifs_get_inode_info._rs.18, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../fs/cifs/inode.c", i32 1047, i32 4}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cifs_get_inode_info.descriptor.19, !31, !"descriptor", i1 false, i1 false}
!34 = !{ptr @cifs_get_inode_info._rs.21, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../fs/cifs/inode.c", i32 1057, i32 4}
!36 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cifs_get_inode_info.descriptor.22, !35, !"descriptor", i1 false, i1 false}
!38 = !{ptr @cifs_get_inode_info._rs.24, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../fs/cifs/inode.c", i32 1067, i32 4}
!40 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cifs_get_inode_info.descriptor.25, !39, !"descriptor", i1 false, i1 false}
!42 = !{ptr @cifs_get_inode_info._rs.27, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../fs/cifs/inode.c", i32 1082, i32 4}
!44 = !{ptr @cifs_get_inode_info.descriptor.28, !43, !"descriptor", i1 false, i1 false}
!45 = !{ptr @smb311_posix_get_inode_info._rs, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../fs/cifs/inode.c", i32 1138, i32 3}
!47 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @smb311_posix_get_inode_info.descriptor, !46, !"descriptor", i1 false, i1 false}
!49 = !{ptr @smb311_posix_get_inode_info._rs.30, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../fs/cifs/inode.c", i32 1173, i32 3}
!51 = !{ptr @smb311_posix_get_inode_info.descriptor.31, !50, !"descriptor", i1 false, i1 false}
!52 = !{ptr @smb311_posix_get_inode_info._rs.32, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../fs/cifs/inode.c", i32 1187, i32 4}
!54 = !{ptr @smb311_posix_get_inode_info.descriptor.33, !53, !"descriptor", i1 false, i1 false}
!55 = !{ptr @cifs_iget._rs, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../fs/cifs/inode.c", i32 1286, i32 2}
!57 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cifs_iget.descriptor, !56, !"descriptor", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/cifs/inode.c", i32 1339, i32 18}
!62 = !{ptr @cifs_root_iget._rs, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../fs/cifs/inode.c", i32 1344, i32 8}
!64 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cifs_root_iget.descriptor, !63, !"descriptor", i1 false, i1 false}
!67 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!68 = !{ptr @cifs_root_iget._rs.39, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../fs/cifs/inode.c", i32 1350, i32 3}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cifs_root_iget._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cifs_root_iget._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @cifs_root_iget._rs.41, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../fs/cifs/inode.c", i32 1367, i32 3}
!75 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cifs_root_iget.descriptor.42, !74, !"descriptor", i1 false, i1 false}
!77 = !{ptr @cifs_root_iget._rs.44, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../fs/cifs/inode.c", i32 1383, i32 2}
!79 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cifs_root_iget.descriptor.45, !78, !"descriptor", i1 false, i1 false}
!81 = !{ptr @cifs_set_file_info._rs, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../fs/cifs/inode.c", i32 1426, i32 3}
!83 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cifs_set_file_info.descriptor, !82, !"descriptor", i1 false, i1 false}
!86 = !{ptr @cifs_unlink._rs, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../fs/cifs/inode.c", i32 1602, i32 2}
!88 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cifs_unlink.descriptor, !87, !"descriptor", i1 false, i1 false}
!91 = !{ptr @cifs_unlink._rs.51, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../fs/cifs/inode.c", i32 1613, i32 8}
!93 = !{ptr @cifs_unlink.descriptor.52, !92, !"descriptor", i1 false, i1 false}
!94 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!95 = !{ptr @cifs_unlink._rs.53, !96, !"_rs", i1 false, i1 false}
!96 = !{!"../fs/cifs/inode.c", i32 1635, i32 3}
!97 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cifs_unlink.descriptor.54, !96, !"descriptor", i1 false, i1 false}
!99 = !{ptr @cifs_unlink._rs.56, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../fs/cifs/inode.c", i32 1702, i32 2}
!101 = !{ptr @cifs_unlink.descriptor.57, !100, !"descriptor", i1 false, i1 false}
!102 = !{ptr @cifs_mkdir._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../fs/cifs/inode.c", i32 1866, i32 2}
!104 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cifs_mkdir.descriptor, !103, !"descriptor", i1 false, i1 false}
!107 = !{ptr @cifs_mkdir._rs.60, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../fs/cifs/inode.c", i32 1877, i32 8}
!109 = !{ptr @cifs_mkdir.descriptor.61, !108, !"descriptor", i1 false, i1 false}
!110 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!111 = !{ptr @cifs_mkdir._rs.62, !112, !"_rs", i1 false, i1 false}
!112 = !{!"../fs/cifs/inode.c", i32 1911, i32 3}
!113 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cifs_mkdir.descriptor.63, !112, !"descriptor", i1 false, i1 false}
!115 = !{ptr @cifs_mkdir._rs.65, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../fs/cifs/inode.c", i32 1926, i32 2}
!117 = !{ptr @cifs_mkdir.descriptor.66, !116, !"descriptor", i1 false, i1 false}
!118 = !{ptr @cifs_rmdir._rs, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../fs/cifs/inode.c", i32 1943, i32 2}
!120 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cifs_rmdir.descriptor, !119, !"descriptor", i1 false, i1 false}
!123 = !{ptr @cifs_rmdir._rs.69, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../fs/cifs/inode.c", i32 1945, i32 8}
!125 = !{ptr @cifs_rmdir.descriptor.70, !124, !"descriptor", i1 false, i1 false}
!126 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!127 = !{ptr @cifs_rmdir._rs.71, !128, !"_rs", i1 false, i1 false}
!128 = !{!"../fs/cifs/inode.c", i32 2005, i32 2}
!129 = !{ptr @cifs_rmdir.descriptor.72, !128, !"descriptor", i1 false, i1 false}
!130 = !{ptr @cifs_rename2._rs, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../fs/cifs/inode.c", i32 2104, i32 8}
!132 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @cifs_rename2.descriptor, !131, !"descriptor", i1 false, i1 false}
!134 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!135 = !{ptr @cifs_rename2._rs.74, !136, !"_rs", i1 false, i1 false}
!136 = !{!"../fs/cifs/inode.c", i32 2203, i32 2}
!137 = !{ptr @cifs_rename2.descriptor.75, !136, !"descriptor", i1 false, i1 false}
!138 = !{ptr @cifs_invalidate_mapping._rs, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../fs/cifs/inode.c", i32 2273, i32 4}
!140 = !{ptr @__func__.cifs_invalidate_mapping, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cifs_invalidate_mapping._entry, !139, !"_entry", i1 false, i1 false}
!143 = !{ptr @cifs_invalidate_mapping._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @cifs_revalidate_dentry_attr._rs, !145, !"_rs", i1 false, i1 false}
!145 = !{!"../fs/cifs/inode.c", i32 2369, i32 8}
!146 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @cifs_revalidate_dentry_attr.descriptor, !145, !"descriptor", i1 false, i1 false}
!148 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!149 = !{ptr @cifs_revalidate_dentry_attr._rs.78, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../fs/cifs/inode.c", i32 2378, i32 2}
!151 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @cifs_revalidate_dentry_attr.descriptor.79, !150, !"descriptor", i1 false, i1 false}
!153 = !{ptr @cifs_revalidate_dentry_attr._rs.81, !154, !"_rs", i1 false, i1 false}
!154 = !{!"../fs/cifs/inode.c", i32 2394, i32 2}
!155 = !{ptr @cifs_revalidate_dentry_attr.descriptor.82, !154, !"descriptor", i1 false, i1 false}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../fs/cifs/inode.c", i32 2491, i32 16}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../fs/cifs/inode.c", i32 2493, i32 16}
!160 = !{ptr @cifs_revalidate_cache._rs, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../fs/cifs/inode.c", i32 89, i32 2}
!162 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @cifs_revalidate_cache.descriptor, !161, !"descriptor", i1 false, i1 false}
!165 = !{ptr @cifs_revalidate_cache._rs.86, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../fs/cifs/inode.c", i32 93, i32 3}
!167 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @cifs_revalidate_cache.descriptor.87, !166, !"descriptor", i1 false, i1 false}
!169 = !{ptr @cifs_revalidate_cache._rs.89, !170, !"_rs", i1 false, i1 false}
!170 = !{!"../fs/cifs/inode.c", i32 100, i32 3}
!171 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cifs_revalidate_cache.descriptor.90, !170, !"descriptor", i1 false, i1 false}
!173 = !{ptr @cifs_revalidate_cache._rs.92, !174, !"_rs", i1 false, i1 false}
!174 = !{!"../fs/cifs/inode.c", i32 109, i32 3}
!175 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @cifs_revalidate_cache.descriptor.93, !174, !"descriptor", i1 false, i1 false}
!177 = !{ptr @cifs_revalidate_cache._rs.95, !178, !"_rs", i1 false, i1 false}
!178 = !{!"../fs/cifs/inode.c", i32 114, i32 2}
!179 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @cifs_revalidate_cache.descriptor.96, !178, !"descriptor", i1 false, i1 false}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!183 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @cifs_create_dfs_fattr._rs, !185, !"_rs", i1 false, i1 false}
!185 = !{!"../fs/cifs/inode.c", i32 330, i32 2}
!186 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @cifs_create_dfs_fattr.descriptor, !185, !"descriptor", i1 false, i1 false}
!189 = !{ptr @cifs_all_info_to_fattr._rs, !190, !"_rs", i1 false, i1 false}
!190 = !{!"../fs/cifs/inode.c", i32 722, i32 4}
!191 = !{ptr @__func__.cifs_all_info_to_fattr, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @cifs_all_info_to_fattr._entry, !190, !"_entry", i1 false, i1 false}
!194 = !{ptr @cifs_all_info_to_fattr._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/cifs/cifsglob.h", i32 1950, i32 46}
!197 = !{ptr @cifs_set_fattr_ino._rs, !198, !"_rs", i1 false, i1 false}
!198 = !{!"../fs/cifs/inode.c", i32 897, i32 3}
!199 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.104, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @cifs_set_fattr_ino.descriptor, !198, !"descriptor", i1 false, i1 false}
!202 = !{ptr @cifs_sfu_type._rs, !203, !"_rs", i1 false, i1 false}
!203 = !{!"../fs/cifs/inode.c", i32 486, i32 3}
!204 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.106, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @cifs_sfu_type.descriptor, !203, !"descriptor", i1 false, i1 false}
!207 = !{ptr @.str.107, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/cifs/inode.c", i32 501, i32 14}
!209 = !{ptr @cifs_sfu_type._rs.108, !210, !"_rs", i1 false, i1 false}
!210 = !{!"../fs/cifs/inode.c", i32 502, i32 4}
!211 = !{ptr @.str.110, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @cifs_sfu_type.descriptor.109, !210, !"descriptor", i1 false, i1 false}
!213 = !{ptr @.str.111, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/cifs/inode.c", i32 513, i32 21}
!215 = !{ptr @cifs_sfu_type._rs.112, !216, !"_rs", i1 false, i1 false}
!216 = !{!"../fs/cifs/inode.c", i32 514, i32 4}
!217 = !{ptr @.str.114, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @cifs_sfu_type.descriptor.113, !216, !"descriptor", i1 false, i1 false}
!219 = !{ptr @.str.115, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/cifs/inode.c", i32 525, i32 21}
!221 = !{ptr @cifs_sfu_type._rs.116, !222, !"_rs", i1 false, i1 false}
!222 = !{!"../fs/cifs/inode.c", i32 526, i32 4}
!223 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @cifs_sfu_type.descriptor.117, !222, !"descriptor", i1 false, i1 false}
!225 = !{ptr @.str.119, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/cifs/inode.c", i32 573, i32 4}
!227 = !{ptr @cifs_sfu_mode._rs, !228, !"_rs", i1 false, i1 false}
!228 = !{!"../fs/cifs/inode.c", i32 581, i32 3}
!229 = !{ptr @.str.120, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.121, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @cifs_sfu_mode.descriptor, !228, !"descriptor", i1 false, i1 false}
!232 = !{ptr @cifs_sfu_mode._rs.122, !233, !"_rs", i1 false, i1 false}
!233 = !{!"../fs/cifs/inode.c", i32 584, i32 3}
!234 = !{ptr @.str.124, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @cifs_sfu_mode.descriptor.123, !233, !"descriptor", i1 false, i1 false}
!236 = !{ptr @smb311_posix_info_to_fattr._rs, !237, !"_rs", i1 false, i1 false}
!237 = !{!"../fs/cifs/inode.c", i32 644, i32 2}
!238 = !{ptr @.str.125, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.126, !237, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @smb311_posix_info_to_fattr.descriptor, !237, !"descriptor", i1 false, i1 false}
!241 = distinct !{null, !242, !"__already_done", i1 false, i1 false}
!242 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!243 = !{ptr @.str.127, !242, !"<string literal>", i1 false, i1 false}
!244 = distinct !{null, !242, !"__warned", i1 false, i1 false}
!245 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!248 = !{ptr @.str.129, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @cifs_ipc_inode_ops, !250, !"cifs_ipc_inode_ops", i1 false, i1 false}
!250 = !{!"../fs/cifs/inode.c", i32 1219, i32 38}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!253 = distinct !{null, !252, !"__warned", i1 false, i1 false}
!254 = distinct !{null, !255, !"__already_done", i1 false, i1 false}
!255 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!256 = distinct !{null, !255, !"__warned", i1 false, i1 false}
!257 = !{ptr @cifs_posix_mkdir._rs, !258, !"_rs", i1 false, i1 false}
!258 = !{!"../fs/cifs/inode.c", i32 1815, i32 3}
!259 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.131, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @cifs_posix_mkdir.descriptor, !258, !"descriptor", i1 false, i1 false}
!262 = !{ptr @cifs_posix_mkdir._rs.132, !263, !"_rs", i1 false, i1 false}
!263 = !{!"../fs/cifs/inode.c", i32 1837, i32 2}
!264 = !{ptr @.str.134, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @cifs_posix_mkdir.descriptor.133, !263, !"descriptor", i1 false, i1 false}
!266 = !{ptr @cifs_posix_mkdir._rs.135, !267, !"_rs", i1 false, i1 false}
!267 = !{!"../fs/cifs/inode.c", i32 1841, i32 3}
!268 = !{ptr @.str.137, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @cifs_posix_mkdir.descriptor.136, !267, !"descriptor", i1 false, i1 false}
!270 = distinct !{null, !271, !"__warned", i1 false, i1 false}
!271 = !{!"../fs/cifs/inode.c", i32 1758, i32 15}
!272 = distinct !{null, !273, !"__warned", i1 false, i1 false}
!273 = !{!"../fs/cifs/inode.c", i32 1762, i32 16}
!274 = distinct !{null, !275, !"__warned", i1 false, i1 false}
!275 = !{!"../fs/cifs/inode.c", i32 1780, i32 19}
!276 = distinct !{null, !277, !"__warned", i1 false, i1 false}
!277 = !{!"../fs/cifs/inode.c", i32 1784, i32 20}
!278 = !{ptr @.str.141, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../include/linux/wait_bit.h", i32 232, i32 2}
!280 = !{ptr @.str.142, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!282 = !{ptr @cifs_get_file_info_unix._rs, !283, !"_rs", i1 false, i1 false}
!283 = !{!"../fs/cifs/inode.c", i32 354, i32 8}
!284 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @cifs_get_file_info_unix.descriptor, !283, !"descriptor", i1 false, i1 false}
!286 = distinct !{null, !283, !"__warned", i1 false, i1 false}
!287 = !{ptr @cifs_get_file_info_unix._rs.144, !288, !"_rs", i1 false, i1 false}
!288 = !{!"../fs/cifs/inode.c", i32 367, i32 2}
!289 = !{ptr @cifs_get_file_info_unix.descriptor.145, !288, !"descriptor", i1 false, i1 false}
!290 = !{ptr @cifs_get_file_info._rs, !291, !"_rs", i1 false, i1 false}
!291 = !{!"../fs/cifs/inode.c", i32 747, i32 8}
!292 = !{ptr @.str.146, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @cifs_get_file_info.descriptor, !291, !"descriptor", i1 false, i1 false}
!294 = distinct !{null, !291, !"__warned", i1 false, i1 false}
!295 = !{ptr @cifs_get_file_info._rs.147, !296, !"_rs", i1 false, i1 false}
!296 = !{!"../fs/cifs/inode.c", i32 782, i32 2}
!297 = !{ptr @cifs_get_file_info.descriptor.148, !296, !"descriptor", i1 false, i1 false}
!298 = !{ptr @.str.149, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../include/linux/mm.h", i32 717, i32 2}
!300 = !{ptr @cifs_setattr_unix._rs, !301, !"_rs", i1 false, i1 false}
!301 = !{!"../fs/cifs/inode.c", i32 2671, i32 2}
!302 = !{ptr @.str.150, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.151, !301, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @cifs_setattr_unix.descriptor, !301, !"descriptor", i1 false, i1 false}
!305 = !{ptr @cifs_setattr_unix._rs.152, !306, !"_rs", i1 false, i1 false}
!306 = !{!"../fs/cifs/inode.c", i32 2674, i32 8}
!307 = !{ptr @cifs_setattr_unix.descriptor.153, !306, !"descriptor", i1 false, i1 false}
!308 = distinct !{null, !306, !"__warned", i1 false, i1 false}
!309 = !{ptr @cifs_setattr_unix._rs.154, !310, !"_rs", i1 false, i1 false}
!310 = !{!"../fs/cifs/inode.c", i32 2800, i32 2}
!311 = !{ptr @cifs_setattr_unix.descriptor.155, !310, !"descriptor", i1 false, i1 false}
!312 = !{ptr @cifs_set_file_size._rs, !313, !"_rs", i1 false, i1 false}
!313 = !{!"../fs/cifs/inode.c", i32 2599, i32 3}
!314 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.157, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @cifs_set_file_size.descriptor, !313, !"descriptor", i1 false, i1 false}
!317 = !{ptr @cifs_set_file_size._rs.158, !318, !"_rs", i1 false, i1 false}
!318 = !{!"../fs/cifs/inode.c", i32 2624, i32 2}
!319 = !{ptr @.str.160, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @cifs_set_file_size.descriptor.159, !318, !"descriptor", i1 false, i1 false}
!321 = !{ptr @cifs_setattr_nounix._rs, !322, !"_rs", i1 false, i1 false}
!322 = !{!"../fs/cifs/inode.c", i32 2821, i32 8}
!323 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @cifs_setattr_nounix.descriptor, !322, !"descriptor", i1 false, i1 false}
!325 = distinct !{null, !322, !"__warned", i1 false, i1 false}
!326 = !{ptr @cifs_setattr_nounix._rs.162, !327, !"_rs", i1 false, i1 false}
!327 = !{!"../fs/cifs/inode.c", i32 2823, i32 2}
!328 = !{ptr @.str.164, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @cifs_setattr_nounix.descriptor.163, !327, !"descriptor", i1 false, i1 false}
!330 = !{ptr @cifs_setattr_nounix._rs.165, !331, !"_rs", i1 false, i1 false}
!331 = !{!"../fs/cifs/inode.c", i32 2893, i32 5}
!332 = !{ptr @.str.167, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @cifs_setattr_nounix.descriptor.166, !331, !"descriptor", i1 false, i1 false}
!334 = !{ptr @cifs_setattr_nounix._rs.168, !335, !"_rs", i1 false, i1 false}
!335 = !{!"../fs/cifs/inode.c", i32 2914, i32 5}
!336 = !{ptr @.str.170, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @cifs_setattr_nounix.descriptor.169, !335, !"descriptor", i1 false, i1 false}
!338 = !{ptr @cifs_setattr_nounix._rs.171, !339, !"_rs", i1 false, i1 false}
!339 = !{!"../fs/cifs/inode.c", i32 2988, i32 2}
!340 = !{ptr @cifs_setattr_nounix.descriptor.172, !339, !"descriptor", i1 false, i1 false}
!341 = !{!"sp"}
!342 = !{i32 1, !"wchar_size", i32 2}
!343 = !{i32 1, !"min_enum_size", i32 4}
!344 = !{i32 8, !"branch-target-enforcement", i32 0}
!345 = !{i32 8, !"sign-return-address", i32 0}
!346 = !{i32 8, !"sign-return-address-all", i32 0}
!347 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!348 = !{i32 7, !"uwtable", i32 1}
!349 = !{i32 7, !"frame-pointer", i32 2}
!350 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!351 = !{!"branch_weights", i32 1, i32 2000}
!352 = !{i64 2148555475, i64 2148555480, i64 2148555493, i64 2148555537, i64 2148555571, i64 2148555592}
!353 = !{i64 2152575639}
!354 = !{i64 2150051944}
!355 = !{i64 2150056878}
!356 = !{i64 2150078596}
!357 = !{i64 2150083490}
!358 = !{!"branch_weights", i32 2000, i32 1}
!359 = !{i64 2150160017}
!360 = !{i64 2150160342}
!361 = !{i64 2152587501}
!362 = !{i8 0, i8 2}
!363 = !{!"auto-init"}
!364 = !{i64 2158735113}
!365 = !{i64 2158735324}
!366 = !{i64 2149551882}
!367 = !{i64 2149552918}
!368 = !{i64 2158686171}
!369 = !{i64 2158686396}
!370 = !{i64 2158755566}
!371 = !{i64 2158755785}
!372 = !{i64 2148827727}
!373 = !{i64 2148738122, i64 2148738154, i64 2148738183, i64 2148738217, i64 2148738248, i64 2148738271}
!374 = !{i64 2160289235}
!375 = !{i64 2153841797}
!376 = !{i64 2153274242, i64 2153274725, i64 2153274279, i64 2153274335, i64 2153274369, i64 2153274393, i64 2153274434, i64 2153274455, i64 2153274483, i64 2153274517}
!377 = !{i64 2148819353}
!378 = !{i64 2148734062, i64 2148734094, i64 2148734123, i64 2148734157, i64 2148734188, i64 2148734211}
!379 = !{i64 2148819582}
!380 = !{i64 1135557, i64 1135618}
!381 = !{i64 1138289}
!382 = !{i64 1138574}
!383 = !{i64 2152573708}
!384 = !{i64 2152573550}
!385 = !{i64 2152573878}
!386 = !{i64 2150159692}
