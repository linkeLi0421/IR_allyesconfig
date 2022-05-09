; ModuleID = '/llk/IR_all_yes/fs/cifs/misc.c_pt.bc'
source_filename = "../fs/cifs/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.4, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.smb_hdr = type <{ i32, [4 x i8], i8, %union.anon.157, i8, i16, i16, %union.anon.159, [2 x i8], i16, i16, i16, i16, i8 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.__kernel_sockaddr_storage = type { %union.anon.150 }
%union.anon.150 = type { ptr, [124 x i8] }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smb_com_transaction_change_notify_rsp = type <{ %struct.smb_hdr, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8, i16 }>
%struct.file_notify_information = type { i32, i32, i32, [0 x i8] }
%struct.anon.158 = type { i8, i8, i16 }
%struct.smb_com_lock_req = type <{ %struct.smb_hdr, i8, i8, i16, i16, i8, i8, i32, i16, i16, i16, [1 x %struct.locking_andx_range] }>
%struct.locking_andx_range = type { i16, i16, i32, i32, i32, i32 }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.148, %struct.list_head, %struct.list_head, %union.anon.149 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.7, ptr }
%union.anon.7 = type { i64 }
%struct.lockref = type { %union.anon.146 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { %struct.spinlock, i32 }
%union.anon.148 = type { %struct.list_head }
%union.anon.149 = type { %struct.hlist_node }
%struct.cifs_sb_info = type { %struct.rb_root, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, i32, %struct.delayed_work, %struct.callback_head, ptr, %struct.uuid_t, i8, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.cifsInodeInfo = type { i8, %struct.list_head, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, %struct.spinlock, i32, i32, i64, i64, i64, [16 x i8], ptr, %struct.inode, %struct.list_head, %struct.spinlock, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.142, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.143, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.144, ptr, %struct.address_space, %struct.list_head, %union.anon.145, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.142 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.143 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.144 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.145 = type { ptr }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.44 = type { %struct.callback_head }
%struct.cifs_pending_open = type { %struct.list_head, ptr, [16 x i8], i32 }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.cifs_deferred_close = type { %struct.list_head, ptr, i16, i64, i64 }
%struct.file_list = type { %struct.list_head, ptr }
%struct.get_dfs_referral_rsp = type <{ i16, i16, i32, [1 x %struct.dfs_referral_level_3] }>
%struct.dfs_referral_level_3 = type <{ i16, i16, i16, i16, i32, i16, i16, i16, [16 x i8] }>
%struct.dfs_info3_param = type { i32, i32, i32, i32, ptr, ptr, i32 }
%struct.cifs_aio_ctx = type { %struct.kref, %struct.list_head, %struct.mutex, %struct.completion, %struct.iov_iter, ptr, ptr, ptr, i64, i32, i32, i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.29, %union.anon.77 }
%union.anon.29 = type { ptr }
%union.anon.77 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.30, %union.anon.76, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.smb_rqst = type { ptr, i32, ptr, i32, i32, i32, i32 }
%struct.super_cb_data = type { ptr, ptr }
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
%struct.sockaddr = type { i16, [14 x i8] }

@GlobalMid_Lock = external dso_local global %struct.spinlock, align 4
@GlobalTotalActiveXid = external dso_local local_unnamed_addr global i32, align 4
@GlobalMaxActiveXid = external dso_local local_unnamed_addr global i32, align 4
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@_get_xid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@_get_xid.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_get_xid\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/cifs/misc.c\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CIFS: %s: warning: more than 65000 requests active\0A\00", [44 x i8] zeroinitializer }, align 32
@GlobalCurrentXid = external dso_local local_unnamed_addr global i32, align 4
@sesInfoAllocCount = external dso_local global %struct.atomic_t, align 4
@sesInfoAlloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ret_buf->session_mutex\00", [40 x i8] zeroinitializer }, align 32
@sesInfoAlloc.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ret_buf->iface_lock\00", [43 x i8] zeroinitializer }, align 32
@sesInfoAlloc.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ret_buf->chan_lock\00", [44 x i8] zeroinitializer }, align 32
@sesInfoFree._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sesInfoFree.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sesInfoFree\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: Null buffer passed to sesInfoFree\0A\00", [51 x i8] zeroinitializer }, align 32
@tconInfoAllocCount = external dso_local global %struct.atomic_t, align 4
@tconInfoAlloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ret_buf->open_file_lock\00", [39 x i8] zeroinitializer }, align 32
@tconInfoAlloc.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ret_buf->crfid.fid_mutex\00", [38 x i8] zeroinitializer }, align 32
@tconInfoAlloc.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ret_buf->stat_lock\00", [44 x i8] zeroinitializer }, align 32
@tconInfoFree._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tconInfoFree.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tconInfoFree\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: Null buffer passed to tconInfoFree\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_req_poolp = external dso_local local_unnamed_addr global ptr, align 4
@bufAllocCount = external dso_local global %struct.atomic_t, align 4
@totBufAllocCount = external dso_local global %struct.atomic_t, align 4
@cifs_sm_req_poolp = external dso_local local_unnamed_addr global ptr, align 4
@smBufAllocCount = external dso_local global %struct.atomic_t, align 4
@totSmBufAllocCount = external dso_local global %struct.atomic_t, align 4
@cifs_small_buf_release._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_small_buf_release.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cifs_small_buf_release\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CIFS: %s: Null buffer passed to cifs_small_buf_release\0A\00", [40 x i8] zeroinitializer }, align 32
@checkSMB._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkSMB.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"checkSMB\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CIFS: %s: checkSMB Length: 0x%x, smb_buf_length: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@checkSMB._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkSMB._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: rcvd invalid byte count (bcc)\0A\00", [52 x i8] zeroinitializer }, align 32
@checkSMB._entry_ptr = internal global ptr @checkSMB._entry, section ".printk_index", align 4
@checkSMB._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkSMB._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: Length less than smb header size\0A\00", [49 x i8] zeroinitializer }, align 32
@checkSMB._entry_ptr.28 = internal global ptr @checkSMB._entry.26, section ".printk_index", align 4
@checkSMB._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkSMB._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.3, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013CIFS: VFS: Length read does not match RFC1001 length %d\0A\00", [37 x i8] zeroinitializer }, align 32
@checkSMB._entry_ptr.32 = internal global ptr @checkSMB._entry.30, section ".printk_index", align 4
@checkSMB._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkSMB.descriptor.34 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.35, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"CIFS: %s: Calculated size %u vs length %u mismatch for mid=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@checkSMB._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkSMB._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.21, ptr @.str.3, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CIFS: VFS: RFC1001 size %u smaller than SMB for mid=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@checkSMB._entry_ptr.39 = internal global ptr @checkSMB._entry.37, section ".printk_index", align 4
@checkSMB._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkSMB._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.21, ptr @.str.3, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013CIFS: VFS: RFC1001 size %u more than 512 bytes larger than SMB for mid=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@checkSMB._entry_ptr.43 = internal global ptr @checkSMB._entry.41, section ".printk_index", align 4
@is_valid_oplock_break._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"is_valid_oplock_break\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: Checking for oplock break or dnotify response\0A\00", [39 x i8] zeroinitializer }, align 32
@is_valid_oplock_break._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor.47 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.48, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIFS: %s: Invalid data_offset %u\0A\00", [62 x i8] zeroinitializer }, align 32
@is_valid_oplock_break._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor.50 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.51, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: dnotify on %s Action: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@is_valid_oplock_break._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor.53 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.54, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: notify err 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@is_valid_oplock_break._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor.56 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.57, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: Invalid handle on oplock break\0A\00", [54 x i8] zeroinitializer }, align 32
@is_valid_oplock_break._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor.59 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.60, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: oplock type 0x%x level 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@cifs_tcp_ses_lock = external dso_local global %struct.spinlock, align 4
@is_valid_oplock_break._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor.62 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.63, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CIFS: %s: file id match, oplock break\0A\00", [57 x i8] zeroinitializer }, align 32
@is_valid_oplock_break._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor.65 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.66, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: No matching file for oplock break\0A\00", [51 x i8] zeroinitializer }, align 32
@is_valid_oplock_break._rs.67 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_oplock_break.descriptor.68 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.69, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"CIFS: %s: Can not process oplock break for non-existent connection\0A\00", [60 x i8] zeroinitializer }, align 32
@traceSMB = external dso_local local_unnamed_addr global i8, align 1
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cifs_autodisable_serverino._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_autodisable_serverino = private unnamed_addr constant [27 x i8] c"cifs_autodisable_serverino\00", align 1
@cifs_autodisable_serverino._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.cifs_autodisable_serverino, ptr @.str.3, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013CIFS: VFS: Autodisabling the use of server inode numbers on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@cifs_autodisable_serverino._entry_ptr = internal global ptr @cifs_autodisable_serverino._entry, section ".printk_index", align 4
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"new server\00", [21 x i8] zeroinitializer }, align 32
@cifs_autodisable_serverino._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_autodisable_serverino._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.cifs_autodisable_serverino, ptr @.str.3, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\013CIFS: VFS: The server doesn't seem to support them properly or the files might be on different servers (DFS)\0A\00", [48 x i8] zeroinitializer }, align 32
@cifs_autodisable_serverino._entry_ptr.77 = internal global ptr @cifs_autodisable_serverino._entry.75, section ".printk_index", align 4
@cifs_autodisable_serverino._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_autodisable_serverino._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.cifs_autodisable_serverino, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"\013CIFS: VFS: Hardlinks will not be recognized on this mount. Consider mounting with the \22noserverino\22 option to silence this message.\0A\00", [57 x i8] zeroinitializer }, align 32
@cifs_autodisable_serverino._entry_ptr.81 = internal global ptr @cifs_autodisable_serverino._entry.79, section ".printk_index", align 4
@cifs_set_oplock_level._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_set_oplock_level.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_set_oplock_level\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: Exclusive Oplock granted on inode %p\0A\00", [48 x i8] zeroinitializer }, align 32
@cifs_set_oplock_level._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_set_oplock_level.descriptor.85 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.3, ptr @.str.86, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CIFS: %s: Level II Oplock granted on inode %p\0A\00", [49 x i8] zeroinitializer }, align 32
@cifsoplockd_wq = external dso_local local_unnamed_addr global ptr, align 4
@parse_dfs_referrals._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.parse_dfs_referrals = private unnamed_addr constant [20 x i8] c"parse_dfs_referrals\00", align 1
@parse_dfs_referrals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.parse_dfs_referrals, ptr @.str.3, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013CIFS: VFS: num_referrals: must be at least > 0, but we get num_referrals = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@parse_dfs_referrals._entry_ptr = internal global ptr @parse_dfs_referrals._entry, section ".printk_index", align 4
@parse_dfs_referrals._rs.88 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_dfs_referrals._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.parse_dfs_referrals, ptr @.str.3, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013CIFS: VFS: Referrals of V%d version are not supported, should be V3\0A\00", [57 x i8] zeroinitializer }, align 32
@parse_dfs_referrals._entry_ptr.91 = internal global ptr @parse_dfs_referrals._entry.89, section ".printk_index", align 4
@parse_dfs_referrals._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@parse_dfs_referrals.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.parse_dfs_referrals, ptr @.str.3, ptr @.str.93, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: num_referrals: %d dfs flags: 0x%x ...\0A\00", [47 x i8] zeroinitializer }, align 32
@cifs_aio_ctx_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctx->aio_mutex\00", [16 x i8] zeroinitializer }, align 32
@setup_aio_ctx_iter._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.setup_aio_ctx_iter = private unnamed_addr constant [19 x i8] c"setup_aio_ctx_iter\00", align 1
@setup_aio_ctx_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @__func__.setup_aio_ctx_iter, ptr @.str.3, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: Couldn't get user pages (rc=%zd)\0A\00", [49 x i8] zeroinitializer }, align 32
@setup_aio_ctx_iter._entry_ptr = internal global ptr @setup_aio_ctx_iter._entry, section ".printk_index", align 4
@setup_aio_ctx_iter._rs.96 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_aio_ctx_iter._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @__func__.setup_aio_ctx_iter, ptr @.str.3, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: get pages rc=%zd more than %zu\0A\00", [51 x i8] zeroinitializer }, align 32
@setup_aio_ctx_iter._entry_ptr.99 = internal global ptr @setup_aio_ctx_iter._entry.97, section ".printk_index", align 4
@setup_aio_ctx_iter._rs.100 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@setup_aio_ctx_iter._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @__func__.setup_aio_ctx_iter, ptr @.str.3, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: out of vec array capacity (%u vs %u)\0A\00", [45 x i8] zeroinitializer }, align 32
@setup_aio_ctx_iter._entry_ptr.103 = internal global ptr @setup_aio_ctx_iter._entry.101, section ".printk_index", align 4
@cifs_alloc_hash._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_alloc_hash = private unnamed_addr constant [16 x i8] c"cifs_alloc_hash\00", align 1
@cifs_alloc_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.cifs_alloc_hash, ptr @.str.3, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: Could not allocate crypto %s\0A\00", [53 x i8] zeroinitializer }, align 32
@cifs_alloc_hash._entry_ptr = internal global ptr @cifs_alloc_hash._entry, section ".printk_index", align 4
@cifs_alloc_hash._rs.105 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_alloc_hash._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @__func__.cifs_alloc_hash, ptr @.str.3, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: no memory left to allocate crypto %s\0A\00", [45 x i8] zeroinitializer }, align 32
@cifs_alloc_hash._entry_ptr.108 = internal global ptr @cifs_alloc_hash._entry.106, section ".printk_index", align 4
@copy_path_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\\\\%.*s\00", [25 x i8] zeroinitializer }, align 32
@match_target_ip._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@match_target_ip.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.110, ptr @.str.3, ptr @.str.111, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"match_target_ip\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CIFS: %s: %s: target name: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@match_target_ip._rs.112 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@match_target_ip.descriptor.113 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.110, ptr @.str.3, ptr @.str.114, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CIFS: %s: %s: target ip: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@match_target_ip._rs.115 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@match_target_ip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.110, ptr @.str.3, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: %s: failed to convert target ip address\0A\00", [42 x i8] zeroinitializer }, align 32
@match_target_ip._entry_ptr = internal global ptr @match_target_ip._entry, section ".printk_index", align 4
@match_target_ip._rs.117 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@match_target_ip.descriptor.118 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.110, ptr @.str.3, ptr @.str.119, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIFS: %s: %s: ip addresses match: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@cifs_dfs_query_info_nonascii_quirk._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_query_info_nonascii_quirk.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cifs_dfs_query_info_nonascii_quirk\00", [61 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CIFS: %s: DFS ref '%s' is found, emulate -EREMOTE\0A\00", [45 x i8] zeroinitializer }, align 32
@cifs_dfs_query_info_nonascii_quirk._rs.122 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_query_info_nonascii_quirk.descriptor.123 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.3, ptr @.str.124, i8 1, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"CIFS: %s: DFS ref '%s' is not found, emulate -ENOENT\0A\00", [42 x i8] zeroinitializer }, align 32
@cifs_dfs_query_info_nonascii_quirk._rs.125 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dfs_query_info_nonascii_quirk.descriptor.126 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.3, ptr @.str.127, i8 1, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CIFS: %s: %s: dfs_cache_find returned %d\0A\00", [54 x i8] zeroinitializer }, align 32
@check_smb_hdr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_smb_hdr = private unnamed_addr constant [14 x i8] c"check_smb_hdr\00", align 1
@check_smb_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @__func__.check_smb_hdr, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CIFS: VFS: Bad protocol string signature header 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@check_smb_hdr._entry_ptr = internal global ptr @check_smb_hdr._entry, section ".printk_index", align 4
@check_smb_hdr._rs.129 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_smb_hdr._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @__func__.check_smb_hdr, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CIFS: VFS: Server sent request, not response. mid=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@check_smb_hdr._entry_ptr.132 = internal global ptr @check_smb_hdr._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@cifs_fs_type = external dso_local global %struct.file_system_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 36, i64 160]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 47, i64 92]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 47, i64 92]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 48, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 76, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 77, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 78, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 87, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 123, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 124, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 125, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 136, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 213, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 312, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 339, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 341, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 352, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 365, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 369, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 382, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 401, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 415, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 421, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 428, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 443, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 455, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 477, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 494, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 499, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 509, i32 17 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 509, i32 29 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 524, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 526, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 527, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 538, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 542, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 842, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 850, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 859, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 944, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1026, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1031, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1042, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1088, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1098, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1260, i32 35 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1262, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1268, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1271, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1279, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1341, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1345, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1349, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 288, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.535 = private constant [18 x i8] c"../fs/cifs/misc.c\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 301, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 73, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 87, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.547 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 717, i32 2 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @checkSMB._entry, ptr @checkSMB._entry.26, ptr @checkSMB._entry.30, ptr @checkSMB._entry.37, ptr @checkSMB._entry.41, ptr @checkSMB._entry_ptr, ptr @checkSMB._entry_ptr.28, ptr @checkSMB._entry_ptr.32, ptr @checkSMB._entry_ptr.39, ptr @checkSMB._entry_ptr.43, ptr @check_smb_hdr._entry, ptr @check_smb_hdr._entry.130, ptr @check_smb_hdr._entry_ptr, ptr @check_smb_hdr._entry_ptr.132, ptr @cifs_alloc_hash._entry, ptr @cifs_alloc_hash._entry.106, ptr @cifs_alloc_hash._entry_ptr, ptr @cifs_alloc_hash._entry_ptr.108, ptr @cifs_autodisable_serverino._entry, ptr @cifs_autodisable_serverino._entry.75, ptr @cifs_autodisable_serverino._entry.79, ptr @cifs_autodisable_serverino._entry_ptr, ptr @cifs_autodisable_serverino._entry_ptr.77, ptr @cifs_autodisable_serverino._entry_ptr.81, ptr @match_target_ip._entry, ptr @match_target_ip._entry_ptr, ptr @parse_dfs_referrals._entry, ptr @parse_dfs_referrals._entry.89, ptr @parse_dfs_referrals._entry_ptr, ptr @parse_dfs_referrals._entry_ptr.91, ptr @setup_aio_ctx_iter._entry, ptr @setup_aio_ctx_iter._entry.101, ptr @setup_aio_ctx_iter._entry.97, ptr @setup_aio_ctx_iter._entry_ptr, ptr @setup_aio_ctx_iter._entry_ptr.103, ptr @setup_aio_ctx_iter._entry_ptr.99, ptr @_get_xid._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sesInfoAlloc.__key, ptr @.str.5, ptr @sesInfoAlloc.__key.6, ptr @.str.7, ptr @sesInfoAlloc.__key.8, ptr @.str.9, ptr @sesInfoFree._rs, ptr @.str.10, ptr @.str.11, ptr @tconInfoAlloc.__key, ptr @.str.12, ptr @tconInfoAlloc.__key.13, ptr @.str.14, ptr @tconInfoAlloc.__key.15, ptr @.str.16, ptr @tconInfoFree._rs, ptr @.str.17, ptr @.str.18, ptr @cifs_small_buf_release._rs, ptr @.str.19, ptr @.str.20, ptr @checkSMB._rs, ptr @.str.21, ptr @.str.22, ptr @checkSMB._rs.23, ptr @.str.24, ptr @checkSMB._rs.25, ptr @.str.27, ptr @checkSMB._rs.29, ptr @.str.31, ptr @checkSMB._rs.33, ptr @.str.35, ptr @checkSMB._rs.36, ptr @.str.38, ptr @checkSMB._rs.40, ptr @.str.42, ptr @is_valid_oplock_break._rs, ptr @.str.44, ptr @.str.45, ptr @is_valid_oplock_break._rs.46, ptr @.str.48, ptr @is_valid_oplock_break._rs.49, ptr @.str.51, ptr @is_valid_oplock_break._rs.52, ptr @.str.54, ptr @is_valid_oplock_break._rs.55, ptr @.str.57, ptr @is_valid_oplock_break._rs.58, ptr @.str.60, ptr @is_valid_oplock_break._rs.61, ptr @.str.63, ptr @is_valid_oplock_break._rs.64, ptr @.str.66, ptr @is_valid_oplock_break._rs.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @cifs_autodisable_serverino._rs, ptr @.str.72, ptr @.str.73, ptr @cifs_autodisable_serverino._rs.74, ptr @.str.76, ptr @cifs_autodisable_serverino._rs.78, ptr @.str.80, ptr @cifs_set_oplock_level._rs, ptr @.str.82, ptr @.str.83, ptr @cifs_set_oplock_level._rs.84, ptr @.str.86, ptr @parse_dfs_referrals._rs, ptr @.str.87, ptr @parse_dfs_referrals._rs.88, ptr @.str.90, ptr @parse_dfs_referrals._rs.92, ptr @.str.93, ptr @cifs_aio_ctx_alloc.__key, ptr @.str.94, ptr @setup_aio_ctx_iter._rs, ptr @.str.95, ptr @setup_aio_ctx_iter._rs.96, ptr @.str.98, ptr @setup_aio_ctx_iter._rs.100, ptr @.str.102, ptr @cifs_alloc_hash._rs, ptr @.str.104, ptr @cifs_alloc_hash._rs.105, ptr @.str.107, ptr @.str.109, ptr @match_target_ip._rs, ptr @.str.110, ptr @.str.111, ptr @match_target_ip._rs.112, ptr @.str.114, ptr @match_target_ip._rs.115, ptr @.str.116, ptr @match_target_ip._rs.117, ptr @.str.119, ptr @cifs_dfs_query_info_nonascii_quirk._rs, ptr @.str.120, ptr @.str.121, ptr @cifs_dfs_query_info_nonascii_quirk._rs.122, ptr @.str.124, ptr @cifs_dfs_query_info_nonascii_quirk._rs.125, ptr @.str.127, ptr @check_smb_hdr._rs, ptr @.str.128, ptr @check_smb_hdr._rs.129, ptr @.str.131, ptr @.str.133, ptr @init_completion.__key, ptr @.str.134, ptr @.str.135], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_get_xid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sesInfoAlloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sesInfoAlloc.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sesInfoAlloc.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sesInfoFree._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tconInfoAlloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tconInfoAlloc.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tconInfoAlloc.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tconInfoFree._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_small_buf_release._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkSMB._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_oplock_break._rs.67 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_autodisable_serverino._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_autodisable_serverino._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_autodisable_serverino._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_autodisable_serverino._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_autodisable_serverino._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_autodisable_serverino._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_set_oplock_level._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_set_oplock_level._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dfs_referrals._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dfs_referrals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dfs_referrals._rs.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dfs_referrals._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dfs_referrals._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_aio_ctx_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_aio_ctx_iter._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_aio_ctx_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_aio_ctx_iter._rs.96 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_aio_ctx_iter._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_aio_ctx_iter._rs.100 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_aio_ctx_iter._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_alloc_hash._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_alloc_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_alloc_hash._rs.105 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_alloc_hash._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_target_ip._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_target_ip._rs.112 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_target_ip._rs.115 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_target_ip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_target_ip._rs.117 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_query_info_nonascii_quirk._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_query_info_nonascii_quirk._rs.122 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dfs_query_info_nonascii_quirk._rs.125 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb_hdr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb_hdr._rs.129 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_smb_hdr._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_get_xid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalTotalActiveXid to i32))
  %0 = load i32, ptr @GlobalTotalActiveXid, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @GlobalTotalActiveXid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalMaxActiveXid to i32))
  %1 = load i32, ptr @GlobalMaxActiveXid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp = icmp ugt i32 %inc, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @GlobalMaxActiveXid to i32))
  store i32 %inc, ptr @GlobalMaxActiveXid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %inc)
  %cmp1 = icmp ugt i32 %inc, 65000
  br i1 %cmp1, label %do.body3, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.body3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body3.if.end18_crit_edge, label %do.body5

do.body3.if.end18_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.body5:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_get_xid.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_get_xid, %land.lhs.true)) #12
          to label %if.end18 [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body5
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @_get_xid._rs, ptr noundef nonnull @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end18_crit_edge, label %if.then11

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_get_xid.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %land.lhs.true.if.end18_crit_edge, %do.body5, %do.body3.if.end18_crit_edge, %if.end.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalCurrentXid to i32))
  %3 = load i32, ptr @GlobalCurrentXid, align 4
  %inc19 = add i32 %3, 1
  store i32 %inc19, ptr @GlobalCurrentXid, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_free_xid(i32 noundef %xid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @GlobalMid_Lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalTotalActiveXid to i32))
  %0 = load i32, ptr @GlobalTotalActiveXid, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @GlobalTotalActiveXid, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @GlobalMid_Lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sesInfoAlloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 840) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sesInfoAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @sesInfoAllocCount, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sesInfoAllocCount, ptr nonnull @sesInfoAllocCount, i32 1, ptr nonnull elementtype(i32) @sesInfoAllocCount) #12, !srcloc !253
  %status = getelementptr inbounds %struct.cifs_ses, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 8
  %ses_count = getelementptr inbounds %struct.cifs_ses, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %ses_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ses_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %ses_count, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %tcon_list = getelementptr inbounds %struct.cifs_ses, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %tcon_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %tcon_list, ptr %tcon_list, align 8
  %prev.i17 = getelementptr inbounds %struct.cifs_ses, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tcon_list, ptr %prev.i17, align 4
  %session_mutex = getelementptr inbounds %struct.cifs_ses, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %session_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @sesInfoAlloc.__key) #12
  %iface_lock = getelementptr inbounds %struct.cifs_ses, ptr %call7.i.i, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %iface_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @sesInfoAlloc.__key.6, i16 noundef signext 3) #12
  %chan_lock = getelementptr inbounds %struct.cifs_ses, ptr %call7.i.i, i32 0, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %chan_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @sesInfoAlloc.__key.8, i16 noundef signext 3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sesInfoFree(ptr noundef %buf_to_free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf_to_free, null
  br i1 %cmp, label %do.body1, label %if.end13

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1.return_crit_edge, label %do.body3

do.body1.return_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body3:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sesInfoFree.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sesInfoFree, %land.lhs.true)) #12
          to label %return [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body3
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @sesInfoFree._rs, ptr noundef nonnull @.str.10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.return_crit_edge, label %if.then9

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sesInfoFree.descriptor, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #12
  br label %return

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sesInfoAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @sesInfoAllocCount, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sesInfoAllocCount, ptr nonnull @sesInfoAllocCount, i32 1, ptr nonnull elementtype(i32) @sesInfoAllocCount) #12, !srcloc !254
  %serverOS = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 9
  %2 = ptrtoint ptr %serverOS to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serverOS, align 8
  tail call void @kfree(ptr noundef %3) #12
  %serverDomain = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 11
  %4 = ptrtoint ptr %serverDomain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serverDomain, align 8
  tail call void @kfree(ptr noundef %5) #12
  %serverNOS = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 10
  %6 = ptrtoint ptr %serverNOS to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serverNOS, align 4
  tail call void @kfree(ptr noundef %7) #12
  %password = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 19
  %8 = ptrtoint ptr %password to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %password, align 8
  tail call void @kfree_sensitive(ptr noundef %9) #12
  %user_name = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 17
  %10 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_name, align 8
  tail call void @kfree(ptr noundef %11) #12
  %domainName = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 18
  %12 = ptrtoint ptr %domainName to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %domainName, align 4
  tail call void @kfree(ptr noundef %13) #12
  %workstation_name = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 20
  %14 = ptrtoint ptr %workstation_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %workstation_name, align 4
  tail call void @kfree(ptr noundef %15) #12
  %response = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 21, i32 1
  %16 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %response, align 4
  tail call void @kfree_sensitive(ptr noundef %17) #12
  %iface_list = getelementptr inbounds %struct.cifs_ses, ptr %buf_to_free, i32 0, i32 32
  %18 = ptrtoint ptr %iface_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iface_list, align 8
  tail call void @kfree(ptr noundef %19) #12
  tail call void @kfree_sensitive(ptr noundef nonnull %buf_to_free) #12
  br label %return

return:                                           ; preds = %if.end13, %if.then9, %land.lhs.true.return_crit_edge, %do.body3, %do.body1.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tconInfoAlloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2056) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 88) #15
  %fid = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 43, i32 3
  %2 = ptrtoint ptr %fid to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i31, ptr %fid, align 8
  %tobool4.not = icmp eq ptr %call7.i.i31, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tconInfoAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @tconInfoAllocCount, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @tconInfoAllocCount, ptr nonnull @tconInfoAllocCount, i32 1, ptr nonnull elementtype(i32) @tconInfoAllocCount) #12, !srcloc !253
  %tidStatus = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %tidStatus to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tidStatus, align 4
  %tc_count = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %tc_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tc_count, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %tc_count, align 8
  %openFileList = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %openFileList to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %openFileList, ptr %openFileList, align 4
  %prev.i = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %openFileList, ptr %prev.i, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i32 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i32, align 4
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %open_file_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @tconInfoAlloc.__key, i16 noundef signext 3) #12
  %fid_mutex = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 43, i32 4
  tail call void @__mutex_init(ptr noundef %fid_mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @tconInfoAlloc.__key.13) #12
  %stat_lock = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %stat_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @tconInfoAlloc.__key.15, i16 noundef signext 3) #12
  %num_local_opens = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 3
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_local_opens, i32 noundef 4) #12
  %11 = ptrtoint ptr %num_local_opens to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %num_local_opens, align 4
  %num_remote_opens = getelementptr inbounds %struct.cifs_tcon, ptr %call7.i.i, i32 0, i32 4
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_remote_opens, i32 noundef 4) #12
  %12 = ptrtoint ptr %num_remote_opens to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %num_remote_opens, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end6 ], [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tconInfoFree(ptr noundef %buf_to_free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf_to_free, null
  br i1 %cmp, label %do.body1, label %if.end13

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1.return_crit_edge, label %do.body3

do.body1.return_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body3:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tconInfoFree.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tconInfoFree, %land.lhs.true)) #12
          to label %return [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body3
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @tconInfoFree._rs, ptr noundef nonnull @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.return_crit_edge, label %if.then9

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tconInfoFree.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3) #12
  br label %return

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tconInfoAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @tconInfoAllocCount, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @tconInfoAllocCount, ptr nonnull @tconInfoAllocCount, i32 1, ptr nonnull elementtype(i32) @tconInfoAllocCount) #12, !srcloc !254
  %nativeFileSystem = getelementptr inbounds %struct.cifs_tcon, ptr %buf_to_free, i32 0, i32 9
  %2 = ptrtoint ptr %nativeFileSystem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nativeFileSystem, align 4
  tail call void @kfree(ptr noundef %3) #12
  %password = getelementptr inbounds %struct.cifs_tcon, ptr %buf_to_free, i32 0, i32 10
  %4 = ptrtoint ptr %password to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %password, align 8
  tail call void @kfree_sensitive(ptr noundef %5) #12
  %fid = getelementptr inbounds %struct.cifs_tcon, ptr %buf_to_free, i32 0, i32 43, i32 3
  %6 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fid, align 4
  tail call void @kfree(ptr noundef %7) #12
  tail call void @kfree(ptr noundef nonnull %buf_to_free) #12
  br label %return

return:                                           ; preds = %if.end13, %if.then9, %land.lhs.true.return_crit_edge, %do.body3, %do.body1.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_buf_get() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_req_poolp to i32))
  %0 = load ptr, ptr @cifs_req_poolp, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef 3136) #12
  %1 = call ptr @memset(ptr %call, i32 0, i32 67)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bufAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @bufAllocCount, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bufAllocCount, ptr nonnull @bufAllocCount, i32 1, ptr nonnull elementtype(i32) @bufAllocCount) #12, !srcloc !253
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @totBufAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @totBufAllocCount, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @totBufAllocCount, ptr nonnull @totBufAllocCount, i32 1, ptr nonnull elementtype(i32) @totBufAllocCount) #12, !srcloc !253
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_buf_release(ptr noundef %buf_to_free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf_to_free, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_req_poolp to i32))
  %0 = load ptr, ptr @cifs_req_poolp, align 4
  tail call void @mempool_free(ptr noundef nonnull %buf_to_free, ptr noundef %0) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bufAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @bufAllocCount, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bufAllocCount, ptr nonnull @bufAllocCount, i32 1, ptr nonnull elementtype(i32) @bufAllocCount) #12, !srcloc !254
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_small_buf_get() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_sm_req_poolp to i32))
  %0 = load ptr, ptr @cifs_sm_req_poolp, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef 3136) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @smBufAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @smBufAllocCount, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @smBufAllocCount, ptr nonnull @smBufAllocCount, i32 1, ptr nonnull elementtype(i32) @smBufAllocCount) #12, !srcloc !253
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @totSmBufAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @totSmBufAllocCount, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @totSmBufAllocCount, ptr nonnull @totSmBufAllocCount, i32 1, ptr nonnull elementtype(i32) @totSmBufAllocCount) #12, !srcloc !253
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_small_buf_release(ptr noundef %buf_to_free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf_to_free, null
  br i1 %cmp, label %do.body1, label %if.end13

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1.return_crit_edge, label %do.body3

do.body1.return_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body3:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_small_buf_release.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_small_buf_release, %land.lhs.true)) #12
          to label %return [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body3
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_small_buf_release._rs, ptr noundef nonnull @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.return_crit_edge, label %if.then9

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_small_buf_release.descriptor, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3) #12
  br label %return

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_sm_req_poolp to i32))
  %1 = load ptr, ptr @cifs_sm_req_poolp, align 4
  tail call void @mempool_free(ptr noundef nonnull %buf_to_free, ptr noundef %1) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @smBufAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @smBufAllocCount, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @smBufAllocCount, ptr nonnull @smBufAllocCount, i32 1, ptr nonnull elementtype(i32) @smBufAllocCount) #12, !srcloc !254
  br label %return

return:                                           ; preds = %if.end13, %if.then9, %land.lhs.true.return_crit_edge, %do.body3, %do.body1.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_rsp_buf(i32 noundef %resp_buftype, ptr noundef %rsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %resp_buftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %resp_buftype, label %entry.if.end3_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %cmp.i = icmp eq ptr %rsp, null
  br i1 %cmp.i, label %do.body1.i, label %if.end13.i

do.body1.i:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body1.i.if.end3_crit_edge, label %do.body3.i

do.body1.i.if.end3_crit_edge:                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

do.body3.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_small_buf_release.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@free_rsp_buf, %land.lhs.true.i)) #12
          to label %if.end3 [label %land.lhs.true.i], !srcloc !252

land.lhs.true.i:                                  ; preds = %do.body3.i
  %call7.i = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_small_buf_release._rs, ptr noundef nonnull @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end3_crit_edge, label %if.then9.i

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_small_buf_release.descriptor, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3) #12
  br label %if.end3

if.end13.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_sm_req_poolp to i32))
  %2 = load ptr, ptr @cifs_sm_req_poolp, align 4
  tail call void @mempool_free(ptr noundef nonnull %rsp, ptr noundef %2) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @smBufAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @smBufAllocCount, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @smBufAllocCount, ptr nonnull @smBufAllocCount, i32 1, ptr nonnull elementtype(i32) @smBufAllocCount) #12, !srcloc !254
  br label %if.end3

if.then2:                                         ; preds = %entry
  %cmp.i6 = icmp eq ptr %rsp, null
  br i1 %cmp.i6, label %if.then2.if.end3_crit_edge, label %if.end.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifs_req_poolp to i32))
  %4 = load ptr, ptr @cifs_req_poolp, align 4
  tail call void @mempool_free(ptr noundef nonnull %rsp, ptr noundef %4) #12
  %call.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bufAllocCount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @bufAllocCount, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bufAllocCount, ptr nonnull @bufAllocCount, i32 1, ptr nonnull elementtype(i32) @bufAllocCount) #12, !srcloc !254
  br label %if.end3

if.end3:                                          ; preds = %if.end.i, %if.then2.if.end3_crit_edge, %if.end13.i, %if.then9.i, %land.lhs.true.i.if.end3_crit_edge, %do.body3.i, %do.body1.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @header_assemble(ptr nocapture noundef %buffer, i8 noundef zeroext %smb_command, ptr noundef readonly %treeCon, i32 noundef %word_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %buffer, i32 9
  %1 = call ptr @memset(ptr %0, i32 0, i32 247)
  %mul = shl i32 %word_count, 1
  %add1 = add i32 %mul, 35
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %add1, ptr %buffer, align 1
  %Protocol = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 1
  %3 = ptrtoint ptr %Protocol to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %Protocol, align 1
  %arrayidx3 = getelementptr %struct.smb_hdr, ptr %buffer, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 83, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr %struct.smb_hdr, ptr %buffer, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 77, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.smb_hdr, ptr %buffer, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 66, ptr %arrayidx7, align 1
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 2
  %7 = ptrtoint ptr %Command to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %smb_command, ptr %Command, align 1
  %Flags = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 4
  %Flags2 = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 5
  %8 = ptrtoint ptr %Flags2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 256, ptr %Flags2, align 1
  %9 = tail call i32 @llvm.read_register.i32(metadata !242) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 69
  %13 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tgid, align 4
  %conv = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %Pid = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 10
  %16 = ptrtoint ptr %Pid to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %Pid, align 1
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %tgid10 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 69
  %19 = ptrtoint ptr %tgid10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tgid10, align 4
  %21 = lshr i32 %20, 16
  %conv11 = trunc i32 %21 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %PidHigh = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 6
  %23 = ptrtoint ptr %PidHigh to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %PidHigh, align 1
  %tobool.not = icmp eq ptr %treeCon, null
  br i1 %tobool.not, label %entry.if.end73_crit_edge, label %if.then

entry.if.end73_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then:                                          ; preds = %entry
  %tid = getelementptr inbounds %struct.cifs_tcon, ptr %treeCon, i32 0, i32 11
  %24 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tid, align 4
  %conv12 = trunc i32 %25 to i16
  %Tid = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 9
  %26 = ptrtoint ptr %Tid to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %conv12, ptr %Tid, align 1
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %treeCon, i32 0, i32 7
  %27 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ses, align 8
  %tobool13.not = icmp eq ptr %28, null
  br i1 %tobool13.not, label %if.then.if.end40_crit_edge, label %if.then14

if.then.if.end40_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then14:                                        ; preds = %if.then
  %capabilities = getelementptr inbounds %struct.cifs_ses, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %capabilities, align 8
  %and = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then14.if.end_crit_edge, label %if.then17

if.then14.if.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %Flags2 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 384, ptr %Flags2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then14.if.end_crit_edge
  %32 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ses, align 8
  %capabilities22 = getelementptr inbounds %struct.cifs_ses, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %capabilities22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %capabilities22, align 8
  %and23 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end.if.end30_crit_edge, label %if.then25

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %Flags2, align 1
  %38 = or i16 %37, 64
  store i16 %38, ptr %Flags2, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end.if.end30_crit_edge
  %39 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ses, align 8
  %Suid = getelementptr inbounds %struct.cifs_ses, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %Suid to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %Suid, align 8
  %conv32 = trunc i64 %42 to i16
  %Uid = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 11
  %43 = ptrtoint ptr %Uid to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %conv32, ptr %Uid, align 1
  %44 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %server, align 8
  %tobool34.not = icmp eq ptr %46, null
  br i1 %tobool34.not, label %if.end30.if.end40_crit_edge, label %if.then35

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %get_next_mid.i = getelementptr inbounds %struct.smb_version_operations, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %get_next_mid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %get_next_mid.i, align 4
  %call.i = tail call i64 %50(ptr noundef nonnull %46) #12
  %conv.i = trunc i64 %call.i to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %Mid = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 12
  %52 = ptrtoint ptr %Mid to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %Mid, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end30.if.end40_crit_edge, %if.then.if.end40_crit_edge
  %Flags41 = getelementptr inbounds %struct.cifs_tcon, ptr %treeCon, i32 0, i32 12
  %53 = ptrtoint ptr %Flags41 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %Flags41, align 8
  %55 = and i16 %54, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool44.not = icmp eq i16 %55, 0
  br i1 %tobool44.not, label %if.end40.if.end50_crit_edge, label %if.then45

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %Flags2, align 1
  %58 = or i16 %57, 16
  store i16 %58, ptr %Flags2, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end40.if.end50_crit_edge
  %nocase = getelementptr inbounds %struct.cifs_tcon, ptr %treeCon, i32 0, i32 22
  %59 = ptrtoint ptr %nocase to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load = load i16, ptr %nocase, align 8
  %60 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %bf.cast.not = icmp eq i16 %60, 0
  br i1 %bf.cast.not, label %if.end50.if.end56_crit_edge, label %if.then51

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then51:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %Flags to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %Flags, align 1
  %63 = or i8 %62, 8
  store i8 %63, ptr %Flags, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end50.if.end56_crit_edge
  %64 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ses, align 8
  %tobool58.not = icmp eq ptr %65, null
  br i1 %tobool58.not, label %if.end56.if.end73_crit_edge, label %land.lhs.true

if.end56.if.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end56
  %server60 = getelementptr inbounds %struct.cifs_ses, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %server60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %server60, align 8
  %tobool61.not = icmp eq ptr %67, null
  br i1 %tobool61.not, label %land.lhs.true.if.end73_crit_edge, label %if.then62

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then62:                                        ; preds = %land.lhs.true
  %sign = getelementptr inbounds %struct.TCP_Server_Info, ptr %67, i32 0, i32 29
  %68 = ptrtoint ptr %sign to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sign, align 2, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool65.not = icmp eq i8 %69, 0
  br i1 %tobool65.not, label %if.then62.if.end73_crit_edge, label %if.then66

if.then62.if.end73_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %Flags2 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %Flags2, align 1
  %72 = or i16 %71, 1024
  store i16 %72, ptr %Flags2, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %if.then62.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge, %if.end56.if.end73_crit_edge, %entry.if.end73_crit_edge
  %conv74 = trunc i32 %word_count to i8
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 13
  %73 = ptrtoint ptr %WordCount to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv74, ptr %WordCount, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @checkSMB(ptr noundef %buf, i32 noundef %total_read, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buf, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body2

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @checkSMB.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@checkSMB, %land.lhs.true)) #12
          to label %do.end13 [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @checkSMB._rs, ptr noundef nonnull @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %if.then8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @checkSMB.descriptor, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef %total_read, i32 noundef %1) #12
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %land.lhs.true.do.end13_crit_edge, %do.body2, %entry.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %total_read)
  %cmp = icmp ult i32 %total_read, 39
  br i1 %cmp, label %if.then14, label %if.end66

if.then14:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %total_read)
  %cmp15 = icmp ugt i32 %total_read, 35
  br i1 %cmp15, label %land.lhs.true16, label %if.then14.do.body50_crit_edge

if.then14.do.body50_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50

land.lhs.true16:                                  ; preds = %if.then14
  %Status = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 3
  %3 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %Status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp17.not = icmp eq i32 %4, 0
  br i1 %cmp17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 13
  %5 = ptrtoint ptr %WordCount to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %WordCount, align 1
  br label %cleanup189

if.else19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %total_read)
  %cmp20 = icmp eq i32 %total_read, 38
  br i1 %cmp20, label %land.lhs.true21, label %if.else19.do.body50_crit_edge

if.else19.do.body50_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50

land.lhs.true21:                                  ; preds = %if.else19
  %WordCount22 = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 13
  %6 = ptrtoint ptr %WordCount22 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %WordCount22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp23 = icmp eq i8 %7, 0
  br i1 %cmp23, label %if.then25, label %land.lhs.true21.do.body50_crit_edge

land.lhs.true21.do.body50_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50

if.then25:                                        ; preds = %land.lhs.true21
  %arrayidx = getelementptr i8, ptr %buf, i32 37
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp28 = icmp eq i8 %9, 0
  br i1 %cmp28, label %if.then30, label %do.body34

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx31 = getelementptr i8, ptr %buf, i32 38
  %10 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx31, align 1
  br label %cleanup189

do.body34:                                        ; preds = %if.then25
  %call35 = tail call i32 @___ratelimit(ptr noundef nonnull @checkSMB._rs.23, ptr noundef nonnull @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body34.cleanup189_crit_edge, label %do.end40

do.body34.cleanup189_crit_edge:                   ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %cleanup189

do.body50:                                        ; preds = %land.lhs.true21.do.body50_crit_edge, %if.else19.do.body50_crit_edge, %if.then14.do.body50_crit_edge
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @checkSMB._rs.25, ptr noundef nonnull @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body50.cleanup189_crit_edge, label %do.end56

do.body50.cleanup189_crit_edge:                   ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #16
  br label %cleanup189

if.end66:                                         ; preds = %do.end13
  %Protocol.i = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %Protocol.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %Protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11317950, i32 %12)
  %cmp.not.i = icmp eq i32 %12, -11317950
  br i1 %cmp.not.i, label %if.end9.i, label %do.body1.i

do.body1.i:                                       ; preds = %if.end66
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @check_smb_hdr._rs, ptr noundef nonnull @__func__.check_smb_hdr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body1.i.cleanup189_crit_edge, label %do.end.i

do.body1.i.cleanup189_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.end.i:                                         ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %Protocol.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %Protocol.i, align 1
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %14) #16
  br label %cleanup189

if.end9.i:                                        ; preds = %if.end66
  %Flags.i = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 4
  %15 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %Flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool10.not.i = icmp sgt i8 %16, -1
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end9.i.if.end70_crit_edge

if.end9.i.if.end70_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end12.i:                                       ; preds = %if.end9.i
  %Command.i = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %Command.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Command.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %18)
  %cmp14.i = icmp eq i8 %18, 36
  br i1 %cmp14.i, label %if.end12.i.if.end70_crit_edge, label %do.body19.i

if.end12.i.if.end70_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.body19.i:                                      ; preds = %if.end12.i
  %call20.i = tail call i32 @___ratelimit(ptr noundef nonnull @check_smb_hdr._rs.129, ptr noundef nonnull @__func__.check_smb_hdr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.cleanup189_crit_edge, label %do.end24.i

do.body19.i.cleanup189_crit_edge:                 ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.end24.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  %Mid.i.i = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 12
  %19 = ptrtoint ptr %Mid.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %Mid.i.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #12
  %conv27.i = zext i16 %21 to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %conv27.i) #16
  br label %cleanup189

if.end70:                                         ; preds = %if.end12.i.if.end70_crit_edge, %if.end9.i.if.end70_crit_edge
  %call71 = tail call i32 @smbCalcSize(ptr noundef %buf, ptr noundef %server) #12
  %add = add i32 %1, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %total_read)
  %cmp72.not = icmp eq i32 %add, %total_read
  br i1 %cmp72.not, label %if.end90, label %do.body76

do.body76:                                        ; preds = %if.end70
  %call77 = tail call i32 @___ratelimit(ptr noundef nonnull @checkSMB._rs.29, ptr noundef nonnull @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.body76.cleanup189_crit_edge, label %do.end82

do.body76.cleanup189_crit_edge:                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %1) #16
  br label %cleanup189

if.end90:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_cmp4(i32 %call71, i32 %total_read)
  %cmp92.not = icmp eq i32 %call71, %total_read
  br i1 %cmp92.not, label %if.end90.cleanup189_crit_edge, label %if.then94

if.end90.cleanup189_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

if.then94:                                        ; preds = %if.end90
  %Mid.i = getelementptr inbounds %struct.smb_hdr, ptr %buf, i32 0, i32 12
  %22 = ptrtoint ptr %Mid.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %Mid.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %cmp96 = icmp ugt i32 %1, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call71)
  %cmp99 = icmp ugt i32 %1, %call71
  %or.cond = select i1 %cmp96, i1 %cmp99, i1 false
  br i1 %or.cond, label %if.then101, label %if.then94.do.body111_crit_edge

if.then94.do.body111_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body111

if.then101:                                       ; preds = %if.then94
  %25 = xor i32 %call71, %total_read
  %26 = and i32 %25, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp105 = icmp eq i32 %26, 0
  br i1 %cmp105, label %if.then101.cleanup189_crit_edge, label %if.then101.do.body111_crit_edge

if.then101.do.body111_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body111

if.then101.cleanup189_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.body111:                                       ; preds = %if.then101.do.body111_crit_edge, %if.then94.do.body111_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %27 = load i32, ptr @cifsFYI, align 4
  %and112 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body111.do.end141_crit_edge, label %do.body115

do.body111.do.end141_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end141

do.body115:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @checkSMB.descriptor.34, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@checkSMB, %land.lhs.true127)) #12
          to label %do.end141 [label %land.lhs.true127], !srcloc !252

land.lhs.true127:                                 ; preds = %do.body115
  %call128 = tail call i32 @___ratelimit(ptr noundef nonnull @checkSMB._rs.33, ptr noundef nonnull @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %land.lhs.true127.do.end141_crit_edge, label %if.then130

land.lhs.true127.do.end141_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end141

if.then130:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  %conv132 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @checkSMB.descriptor.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %call71, i32 noundef %total_read, i32 noundef %conv132) #12
  br label %do.end141

do.end141:                                        ; preds = %if.then130, %land.lhs.true127.do.end141_crit_edge, %do.body115, %do.body111.do.end141_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call71, i32 %total_read)
  %cmp143 = icmp ugt i32 %call71, %total_read
  br i1 %cmp143, label %do.body147, label %if.else162

do.body147:                                       ; preds = %do.end141
  %call148 = tail call i32 @___ratelimit(ptr noundef nonnull @checkSMB._rs.36, ptr noundef nonnull @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %do.body147.cleanup189_crit_edge, label %do.end153

do.body147.cleanup189_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.end153:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  %conv155 = zext i16 %24 to i32
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %1, i32 noundef %conv155) #16
  br label %cleanup189

if.else162:                                       ; preds = %do.end141
  %add163 = add i32 %call71, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add163)
  %cmp164 = icmp ugt i32 %1, %add163
  br i1 %cmp164, label %do.body168, label %if.else162.cleanup189_crit_edge

if.else162.cleanup189_crit_edge:                  ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.body168:                                       ; preds = %if.else162
  %call169 = tail call i32 @___ratelimit(ptr noundef nonnull @checkSMB._rs.40, ptr noundef nonnull @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %do.body168.cleanup189_crit_edge, label %do.end174

do.body168.cleanup189_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup189

do.end174:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #14
  %conv176 = zext i16 %24 to i32
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %conv176) #16
  br label %cleanup189

cleanup189:                                       ; preds = %do.end174, %do.body168.cleanup189_crit_edge, %if.else162.cleanup189_crit_edge, %do.end153, %do.body147.cleanup189_crit_edge, %if.then101.cleanup189_crit_edge, %if.end90.cleanup189_crit_edge, %do.end82, %do.body76.cleanup189_crit_edge, %do.end24.i, %do.body19.i.cleanup189_crit_edge, %do.end.i, %do.body1.i.cleanup189_crit_edge, %do.end56, %do.body50.cleanup189_crit_edge, %do.end40, %do.body34.cleanup189_crit_edge, %if.then30, %if.then18
  %retval.2 = phi i32 [ 0, %if.then18 ], [ 0, %if.then30 ], [ -5, %do.body34.cleanup189_crit_edge ], [ -5, %do.end40 ], [ -5, %do.end56 ], [ -5, %do.body50.cleanup189_crit_edge ], [ -5, %do.end82 ], [ -5, %do.body76.cleanup189_crit_edge ], [ 0, %if.else162.cleanup189_crit_edge ], [ 0, %if.end90.cleanup189_crit_edge ], [ -5, %do.end.i ], [ -5, %do.body1.i.cleanup189_crit_edge ], [ -5, %do.end24.i ], [ -5, %do.body19.i.cleanup189_crit_edge ], [ -5, %do.body168.cleanup189_crit_edge ], [ -5, %do.end174 ], [ -5, %do.body147.cleanup189_crit_edge ], [ -5, %do.end153 ], [ 0, %if.then101.cleanup189_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smbCalcSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_valid_oplock_break(ptr noundef %buffer, ptr noundef readonly %srv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body2

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true)) #12
          to label %do.end14 [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %if.then9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %land.lhs.true.do.end14_crit_edge, %do.body2, %entry.do.end14_crit_edge
  %Command = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 2
  %1 = ptrtoint ptr %Command to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %Command, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %2, label %do.end14.cleanup378_crit_edge [
    i8 -96, label %land.lhs.true16
    i8 36, label %if.end140
  ]

do.end14.cleanup378_crit_edge:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

land.lhs.true16:                                  ; preds = %do.end14
  %Flags = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 4
  %4 = ptrtoint ptr %Flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %Flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool20.not = icmp sgt i8 %5, -1
  br i1 %tobool20.not, label %land.lhs.true16.cleanup378_crit_edge, label %if.then21

land.lhs.true16.cleanup378_crit_edge:             ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.then21:                                        ; preds = %land.lhs.true16
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 37
  %WordCount.i.i = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 13
  %6 = ptrtoint ptr %WordCount.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %WordCount.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %8 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr1.i.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %10)
  %cmp24 = icmp ugt i16 %10, 12
  br i1 %cmp24, label %if.then26, label %if.end93

if.then26:                                        ; preds = %if.then21
  %total_read = getelementptr inbounds %struct.TCP_Server_Info, ptr %srv, i32 0, i32 64
  %11 = ptrtoint ptr %total_read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_read, align 4
  %DataOffset = getelementptr inbounds %struct.smb_com_transaction_change_notify_rsp, ptr %buffer, i32 0, i32 8
  %13 = ptrtoint ptr %DataOffset to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %DataOffset, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %sub27 = add i32 %12, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub27)
  %cmp28 = icmp ugt i32 %15, %sub27
  br i1 %cmp28, label %do.body32, label %if.end61

do.body32:                                        ; preds = %if.then26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %16 = load i32, ptr @cifsFYI, align 4
  %and33 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.cleanup378_crit_edge, label %do.body36

do.body32.cleanup378_crit_edge:                   ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

do.body36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor.47, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true48)) #12
          to label %cleanup378 [label %land.lhs.true48], !srcloc !252

land.lhs.true48:                                  ; preds = %do.body36
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs.46, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.cleanup378_crit_edge, label %if.then51

land.lhs.true48.cleanup378_crit_edge:             ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, i32 noundef %15) #12
  br label %cleanup378

if.end61:                                         ; preds = %if.then26
  %Protocol = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %Protocol, i32 %15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %17 = load i32, ptr @cifsFYI, align 4
  %and65 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end61.cleanup378_crit_edge, label %do.body68

if.end61.cleanup378_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

do.body68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor.50, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true80)) #12
          to label %cleanup378 [label %land.lhs.true80], !srcloc !252

land.lhs.true80:                                  ; preds = %do.body68
  %call81 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs.49, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true80.cleanup378_crit_edge, label %if.then83

land.lhs.true80.cleanup378_crit_edge:             ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.then83:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  %FileName = getelementptr inbounds %struct.file_notify_information, ptr %add.ptr, i32 0, i32 3
  %Action = getelementptr inbounds %struct.file_notify_information, ptr %add.ptr, i32 0, i32 1
  %18 = ptrtoint ptr %Action to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %Action, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.3, ptr noundef %FileName, i32 noundef %19) #12
  br label %cleanup378

if.end93:                                         ; preds = %if.then21
  %Status = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 3
  %20 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %Status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool95.not = icmp eq i32 %21, 0
  br i1 %tobool95.not, label %if.end93.cleanup378_crit_edge, label %do.body98

if.end93.cleanup378_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

do.body98:                                        ; preds = %if.end93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %22 = load i32, ptr @cifsFYI, align 4
  %and99 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body98.cleanup378_crit_edge, label %do.body102

do.body98.cleanup378_crit_edge:                   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

do.body102:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor.53, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true114)) #12
          to label %cleanup378 [label %land.lhs.true114], !srcloc !252

land.lhs.true114:                                 ; preds = %do.body102
  %call115 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs.52, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %land.lhs.true114.cleanup378_crit_edge, label %if.then117

land.lhs.true114.cleanup378_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.then117:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %Status to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %Status, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, i32 noundef %24) #12
  br label %cleanup378

if.end140:                                        ; preds = %do.end14
  %Flags142 = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 4
  %25 = ptrtoint ptr %Flags142 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %Flags142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool145.not = icmp sgt i8 %26, -1
  br i1 %tobool145.not, label %if.end190, label %if.then146

if.then146:                                       ; preds = %if.end140
  %Status148 = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 3
  %27 = ptrtoint ptr %Status148 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %Status148, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217920, i32 %28)
  %cmp149 = icmp eq i32 %28, 134217920
  br i1 %cmp149, label %do.body153, label %if.else182

do.body153:                                       ; preds = %if.then146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %29 = load i32, ptr @cifsFYI, align 4
  %and154 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %do.body153.cleanup378_crit_edge, label %do.body157

do.body153.cleanup378_crit_edge:                  ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

do.body157:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor.56, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true169)) #12
          to label %cleanup378 [label %land.lhs.true169], !srcloc !252

land.lhs.true169:                                 ; preds = %do.body157
  %call170 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs.55, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %land.lhs.true169.cleanup378_crit_edge, label %if.then172

land.lhs.true169.cleanup378_crit_edge:            ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.then172:                                       ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.3) #12
  br label %cleanup378

if.else182:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  %Error = getelementptr inbounds %struct.anon.158, ptr %Status148, i32 0, i32 2
  %30 = ptrtoint ptr %Error to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %Error, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %31)
  %cmp186 = icmp eq i16 %31, 1536
  br label %cleanup378

if.end190:                                        ; preds = %if.end140
  %WordCount = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 13
  %32 = ptrtoint ptr %WordCount to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %WordCount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %cmp193.not = icmp eq i8 %33, 8
  br i1 %cmp193.not, label %do.body198, label %if.end190.cleanup378_crit_edge

if.end190.cleanup378_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

do.body198:                                       ; preds = %if.end190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %34 = load i32, ptr @cifsFYI, align 4
  %and199 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %do.body198.do.end228_crit_edge, label %do.body202

do.body198.do.end228_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

do.body202:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor.59, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true214)) #12
          to label %do.end228 [label %land.lhs.true214], !srcloc !252

land.lhs.true214:                                 ; preds = %do.body202
  %call215 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs.58, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %land.lhs.true214.do.end228_crit_edge, label %if.then217

land.lhs.true214.do.end228_crit_edge:             ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

if.then217:                                       ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #14
  %LockType = getelementptr inbounds %struct.smb_com_lock_req, ptr %buffer, i32 0, i32 5
  %35 = ptrtoint ptr %LockType to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %LockType, align 1
  %conv218 = zext i8 %36 to i32
  %OplockLevel = getelementptr inbounds %struct.smb_com_lock_req, ptr %buffer, i32 0, i32 6
  %37 = ptrtoint ptr %OplockLevel to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %OplockLevel, align 1
  %conv219 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor.59, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.3, i32 noundef %conv218, i32 noundef %conv219) #12
  br label %do.end228

do.end228:                                        ; preds = %if.then217, %land.lhs.true214.do.end228_crit_edge, %do.body202, %do.body198.do.end228_crit_edge
  %LockType229 = getelementptr inbounds %struct.smb_com_lock_req, ptr %buffer, i32 0, i32 5
  %39 = ptrtoint ptr %LockType229 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %LockType229, align 1
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool232.not = icmp eq i8 %41, 0
  br i1 %tobool232.not, label %do.end228.cleanup378_crit_edge, label %if.end234

do.end228.cleanup378_crit_edge:                   ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.end234:                                        ; preds = %do.end228
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  %smb_ses_list = getelementptr inbounds %struct.TCP_Server_Info, ptr %srv, i32 0, i32 1
  %42 = ptrtoint ptr %smb_ses_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp.0468 = load ptr, ptr %smb_ses_list, align 4
  %cmp.i.not469 = icmp eq ptr %tmp.0468, %smb_ses_list
  br i1 %cmp.i.not469, label %if.end234.for.end347_crit_edge, label %for.body.lr.ph

if.end234.for.end347_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end347

for.body.lr.ph:                                   ; preds = %if.end234
  %Tid = getelementptr inbounds %struct.smb_hdr, ptr %buffer, i32 0, i32 9
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond243
  %43 = ptrtoint ptr %tmp.0470 to i32
  call void @__asan_load4_noabort(i32 %43)
  %tmp.0 = load ptr, ptr %tmp.0470, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %smb_ses_list
  br i1 %cmp.i.not, label %for.cond.loopexit.for.end347_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.loopexit.for.end347_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end347

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %tmp.0470 = phi ptr [ %tmp.0468, %for.body.lr.ph ], [ %tmp.0, %for.cond.loopexit.for.body_crit_edge ]
  %tcon_list = getelementptr inbounds %struct.cifs_ses, ptr %tmp.0470, i32 0, i32 2
  br label %for.cond243

for.cond243:                                      ; preds = %for.body249.for.cond243_crit_edge, %for.body
  %tmp1.0.in = phi ptr [ %tcon_list, %for.body ], [ %tmp1.0, %for.body249.for.cond243_crit_edge ]
  %44 = ptrtoint ptr %tmp1.0.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %tmp1.0 = load ptr, ptr %tmp1.0.in, align 4
  %cmp.i451.not = icmp eq ptr %tmp1.0, %tcon_list
  br i1 %cmp.i451.not, label %for.cond.loopexit, label %for.body249

for.body249:                                      ; preds = %for.cond243
  %tid = getelementptr inbounds %struct.cifs_tcon, ptr %tmp1.0, i32 0, i32 11
  %45 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tid, align 4
  %47 = ptrtoint ptr %Tid to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %Tid, align 1
  %conv253 = zext i16 %48 to i32
  %cmp254.not = icmp eq i32 %46, %conv253
  br i1 %cmp254.not, label %if.end257, label %for.body249.for.cond243_crit_edge

for.body249.for.cond243_crit_edge:                ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond243

if.end257:                                        ; preds = %for.body249
  %num_oplock_brks = getelementptr inbounds %struct.cifs_tcon, ptr %tmp1.0, i32 0, i32 15, i32 0, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_oplock_brks, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %num_oplock_brks, i32 1, i32 3, i32 1) #12
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_oplock_brks, ptr %num_oplock_brks, i32 1, ptr elementtype(i32) %num_oplock_brks) #12, !srcloc !253
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %tmp1.0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %open_file_lock) #12
  %openFileList = getelementptr inbounds %struct.cifs_tcon, ptr %tmp1.0, i32 0, i32 5
  %Fid = getelementptr inbounds %struct.smb_com_lock_req, ptr %buffer, i32 0, i32 4
  br label %for.cond259

for.cond259:                                      ; preds = %for.body265.for.cond259_crit_edge, %if.end257
  %tmp2.0.in = phi ptr [ %openFileList, %if.end257 ], [ %tmp2.0, %for.body265.for.cond259_crit_edge ]
  %50 = ptrtoint ptr %tmp2.0.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %tmp2.0 = load ptr, ptr %tmp2.0.in, align 4
  %cmp.i453.not = icmp eq ptr %tmp2.0, %openFileList
  br i1 %cmp.i453.not, label %for.end, label %for.body265

for.body265:                                      ; preds = %for.cond259
  %51 = ptrtoint ptr %Fid to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %Fid, align 1
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.0, i32 0, i32 5
  %53 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %fid, align 8
  %cmp271.not = icmp eq i16 %52, %54
  br i1 %cmp271.not, label %do.body276, label %for.body265.for.cond259_crit_edge

for.body265.for.cond259_crit_edge:                ; preds = %for.body265
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond259

do.body276:                                       ; preds = %for.body265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %55 = load i32, ptr @cifsFYI, align 4
  %and277 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %do.body276.do.end304_crit_edge, label %do.body280

do.body276.do.end304_crit_edge:                   ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end304

do.body280:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor.62, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true292)) #12
          to label %do.end304 [label %land.lhs.true292], !srcloc !252

land.lhs.true292:                                 ; preds = %do.body280
  %call293 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs.61, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %land.lhs.true292.do.end304_crit_edge, label %if.then295

land.lhs.true292.do.end304_crit_edge:             ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end304

if.then295:                                       ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.3) #12
  br label %do.end304

do.end304:                                        ; preds = %if.then295, %land.lhs.true292.do.end304_crit_edge, %do.body280, %do.body276.do.end304_crit_edge
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.0, i32 0, i32 7
  %56 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d_inode.i, align 8
  %flags = getelementptr i8, ptr %59, i32 -108
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #12
  %oplock_epoch = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.0, i32 0, i32 11
  %60 = ptrtoint ptr %oplock_epoch to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %oplock_epoch, align 8
  %OplockLevel307 = getelementptr inbounds %struct.smb_com_lock_req, ptr %buffer, i32 0, i32 6
  %61 = ptrtoint ptr %OplockLevel307 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %OplockLevel307, align 1
  %conv308 = zext i8 %62 to i32
  %oplock_level = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.0, i32 0, i32 12
  %63 = ptrtoint ptr %oplock_level to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv308, ptr %oplock_level, align 4
  %oplock_break_cancelled = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.0, i32 0, i32 10
  %64 = ptrtoint ptr %oplock_break_cancelled to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %oplock_break_cancelled, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %oplock_break_cancelled, align 4
  %call.i = tail call ptr @cifsFileInfo_get(ptr noundef %tmp2.0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsoplockd_wq to i32))
  %65 = load ptr, ptr @cifsoplockd_wq, align 4
  %oplock_break.i = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp2.0, i32 0, i32 17
  %call.i.i455 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %oplock_break.i) #12
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  br label %cleanup378

for.end:                                          ; preds = %for.cond259
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %66 = load i32, ptr @cifsFYI, align 4
  %and314 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %for.end.cleanup378_crit_edge, label %do.body317

for.end.cleanup378_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

do.body317:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor.65, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true329)) #12
          to label %cleanup378 [label %land.lhs.true329], !srcloc !252

land.lhs.true329:                                 ; preds = %do.body317
  %call330 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs.64, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %land.lhs.true329.cleanup378_crit_edge, label %if.then332

land.lhs.true329.cleanup378_crit_edge:            ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.then332:                                       ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.3) #12
  br label %cleanup378

for.end347:                                       ; preds = %for.cond.loopexit.for.end347_crit_edge, %if.end234.for.end347_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %67 = load i32, ptr @cifsFYI, align 4
  %and350 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and350)
  %tobool351.not = icmp eq i32 %and350, 0
  br i1 %tobool351.not, label %for.end347.cleanup378_crit_edge, label %do.body353

for.end347.cleanup378_crit_edge:                  ; preds = %for.end347
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

do.body353:                                       ; preds = %for.end347
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_valid_oplock_break.descriptor.68, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_valid_oplock_break, %land.lhs.true365)) #12
          to label %cleanup378 [label %land.lhs.true365], !srcloc !252

land.lhs.true365:                                 ; preds = %do.body353
  %call366 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_oplock_break._rs.67, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %tobool367.not = icmp eq i32 %call366, 0
  br i1 %tobool367.not, label %land.lhs.true365.cleanup378_crit_edge, label %if.then368

land.lhs.true365.cleanup378_crit_edge:            ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.then368:                                       ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_valid_oplock_break.descriptor.68, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.3) #12
  br label %cleanup378

cleanup378:                                       ; preds = %if.then368, %land.lhs.true365.cleanup378_crit_edge, %do.body353, %for.end347.cleanup378_crit_edge, %if.then332, %land.lhs.true329.cleanup378_crit_edge, %do.body317, %for.end.cleanup378_crit_edge, %do.end304, %do.end228.cleanup378_crit_edge, %if.end190.cleanup378_crit_edge, %if.else182, %if.then172, %land.lhs.true169.cleanup378_crit_edge, %do.body157, %do.body153.cleanup378_crit_edge, %if.then117, %land.lhs.true114.cleanup378_crit_edge, %do.body102, %do.body98.cleanup378_crit_edge, %if.end93.cleanup378_crit_edge, %if.then83, %land.lhs.true80.cleanup378_crit_edge, %do.body68, %if.end61.cleanup378_crit_edge, %if.then51, %land.lhs.true48.cleanup378_crit_edge, %do.body36, %do.body32.cleanup378_crit_edge, %land.lhs.true16.cleanup378_crit_edge, %do.end14.cleanup378_crit_edge
  %retval.1 = phi i1 [ true, %do.end304 ], [ true, %do.body32.cleanup378_crit_edge ], [ true, %land.lhs.true48.cleanup378_crit_edge ], [ true, %if.then51 ], [ true, %if.end61.cleanup378_crit_edge ], [ true, %land.lhs.true80.cleanup378_crit_edge ], [ true, %if.then83 ], [ true, %do.body98.cleanup378_crit_edge ], [ true, %land.lhs.true114.cleanup378_crit_edge ], [ true, %if.then117 ], [ false, %if.end93.cleanup378_crit_edge ], [ true, %do.body153.cleanup378_crit_edge ], [ true, %land.lhs.true169.cleanup378_crit_edge ], [ true, %if.then172 ], [ %cmp186, %if.else182 ], [ false, %if.end190.cleanup378_crit_edge ], [ false, %do.end228.cleanup378_crit_edge ], [ true, %for.end.cleanup378_crit_edge ], [ true, %land.lhs.true329.cleanup378_crit_edge ], [ true, %if.then332 ], [ true, %for.end347.cleanup378_crit_edge ], [ true, %land.lhs.true365.cleanup378_crit_edge ], [ true, %if.then368 ], [ true, %do.body36 ], [ true, %do.body68 ], [ true, %do.body102 ], [ true, %do.body157 ], [ true, %do.body317 ], [ true, %do.body353 ], [ false, %land.lhs.true16.cleanup378_crit_edge ], [ false, %do.end14.cleanup378_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_queue_oplock_break(ptr noundef %cfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cifsFileInfo_get(ptr noundef %cfile) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsoplockd_wq to i32))
  %0 = load ptr, ptr @cifsoplockd_wq, align 4
  %oplock_break = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 17
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %oplock_break) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_smb(ptr noundef %buf, i32 noundef %smb_buf_length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @traceSMB to i32))
  %0 = load i8, ptr @traceSMB, align 1, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 8, i32 noundef 2, ptr noundef %buf, i32 noundef %smb_buf_length, i1 noundef zeroext true) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_autodisable_serverino(ptr noundef %cifs_sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %0 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end47_crit_edge, label %if.then

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then:                                          ; preds = %entry
  %master_tlink = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 2
  %2 = ptrtoint ptr %master_tlink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_tlink, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @cifs_sb_master_tcon(ptr noundef %cifs_sb) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %tcon.0 = phi ptr [ %call, %if.then2 ], [ null, %if.then.if.end_crit_edge ]
  %4 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_cifs_flags, align 4
  %and4 = and i32 %5, -5
  store i32 %and4, ptr %mnt_cifs_flags, align 4
  %mnt_cifs_serverino_autodisabled = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 11
  %6 = ptrtoint ptr %mnt_cifs_serverino_autodisabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mnt_cifs_serverino_autodisabled, align 4
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_autodisable_serverino._rs, ptr noundef nonnull @__func__.cifs_autodisable_serverino) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.do.body18_crit_edge, label %do.end

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tobool10.not = icmp eq ptr %tcon.0, null
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon.0, i32 0, i32 8
  %spec.select = select i1 %tobool10.not, ptr @.str.73, ptr %treeName
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %spec.select) #16
  br label %do.body18

do.body18:                                        ; preds = %do.end, %if.end.do.body18_crit_edge
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_autodisable_serverino._rs.74, ptr noundef nonnull @__func__.cifs_autodisable_serverino) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.do.body33_crit_edge, label %do.end24

do.body18.do.body33_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #16
  br label %do.body33

do.body33:                                        ; preds = %do.end24, %do.body18.do.body33_crit_edge
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_autodisable_serverino._rs.78, ptr noundef nonnull @__func__.cifs_autodisable_serverino) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.if.end47_crit_edge, label %do.end39

do.body33.if.end47_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #16
  br label %if.end47

if.end47:                                         ; preds = %do.end39, %do.body33.if.end47_crit_edge, %entry.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_set_oplock_level(ptr noundef %cinode, i32 noundef %oplock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %oplock, 15
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %and, label %if.else47 [
    i32 1, label %if.then
    i32 3, label %if.then17
  ]

if.then:                                          ; preds = %entry
  %oplock1 = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 6
  %1 = ptrtoint ptr %oplock1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %oplock1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %2 = load i32, ptr @cifsFYI, align 4
  %and3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.then.if.end50_crit_edge, label %do.body5

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_set_oplock_level.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_set_oplock_level, %land.lhs.true)) #12
          to label %if.end50 [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body5
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_set_oplock_level._rs, ptr noundef nonnull @.str.82) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end50_crit_edge, label %if.then11

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %vfs_inode = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_set_oplock_level.descriptor, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.3, ptr noundef %vfs_inode) #12
  br label %if.end50

if.then17:                                        ; preds = %entry
  %oplock18 = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 6
  %3 = ptrtoint ptr %oplock18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %oplock18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and21 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then17.if.end50_crit_edge, label %do.body24

if.then17.if.end50_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.body24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_set_oplock_level.descriptor.85, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_set_oplock_level, %land.lhs.true36)) #12
          to label %if.end50 [label %land.lhs.true36], !srcloc !252

land.lhs.true36:                                  ; preds = %do.body24
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_set_oplock_level._rs.84, ptr noundef nonnull @.str.82) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.if.end50_crit_edge, label %if.then39

land.lhs.true36.if.end50_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  %vfs_inode40 = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_set_oplock_level.descriptor.85, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, ptr noundef %vfs_inode40) #12
  br label %if.end50

if.else47:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %oplock48 = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 6
  %5 = ptrtoint ptr %oplock48 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %oplock48, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then39, %land.lhs.true36.if.end50_crit_edge, %do.body24, %if.then17.if.end50_crit_edge, %if.then11, %land.lhs.true.if.end50_crit_edge, %do.body5, %if.then.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_get_writer(ptr noundef %cinode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 8
  %writers_lock = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 9
  %writers = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 10
  br label %start

start:                                            ; preds = %if.end15, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.133, i32 noundef 73) #12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %start.if.end_crit_edge, label %wait_on_bit.exit

start.if.end_crit_edge:                           ; preds = %start
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

wait_on_bit.exit:                                 ; preds = %start
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 258) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %wait_on_bit.exit.if.end_crit_edge, label %wait_on_bit.exit.cleanup_crit_edge

wait_on_bit.exit.cleanup_crit_edge:               ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

wait_on_bit.exit.if.end_crit_edge:                ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %wait_on_bit.exit.if.end_crit_edge, %start.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %writers_lock) #12
  %2 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  %4 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %writers, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %5 = phi i32 [ %.pr, %if.then2 ], [ %3, %if.end.if.end4_crit_edge ]
  %inc = add i32 %5, 1
  %6 = ptrtoint ptr %writers to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %writers, align 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  br i1 %tobool8.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %writers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then12, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 1) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writers_lock) #12
  br label %start

if.end17:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %writers_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %wait_on_bit.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call3.i, %wait_on_bit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_put_writer(ptr noundef %cinode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %writers_lock = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %writers_lock) #12
  %writers = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 10
  %0 = ptrtoint ptr %writers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writers, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %writers_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifsFileInfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_done_oplock_break(ptr noundef %cinode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cifsInodeInfo, ptr %cinode, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #12
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @backup_cred(ptr nocapture noundef readonly %cifs_sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %0 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %backupuid = getelementptr inbounds %struct.smb3_fs_context, ptr %3, i32 0, i32 25
  %4 = tail call i32 @llvm.read_register.i32(metadata !242) #12
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
  %11 = ptrtoint ptr %backupuid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack19 = load i32, ptr %backupuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack19, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack19, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %if.then.return_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %and6 = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end15_crit_edge, label %if.then8

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then8:                                         ; preds = %if.end4
  %ctx9 = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 4
  %12 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx9, align 4
  %backupgid = getelementptr inbounds %struct.smb3_fs_context, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %backupgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %backupgid, align 8
  %15 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call11 = tail call i32 @in_group_p([1 x i32] %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then8.if.end15_crit_edge, label %if.then8.return_crit_edge

if.then8.return_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  br label %return

return:                                           ; preds = %if.end15, %if.then8.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end15 ], [ true, %if.then.return_crit_edge ], [ true, %if.then8.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_del_pending_open(ptr noundef %open) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tlink = getelementptr inbounds %struct.cifs_pending_open, ptr %open, i32 0, i32 1
  %0 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl_tcon.i, align 4
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %open_file_lock) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %open) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %open, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %open, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %open, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tlink, align 4
  %tl_tcon.i6 = getelementptr inbounds %struct.tcon_link, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %tl_tcon.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tl_tcon.i6, align 4
  %open_file_lock3 = getelementptr inbounds %struct.cifs_tcon, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_add_pending_open_locked(ptr nocapture noundef %fid, ptr noundef %tlink, ptr noundef %open) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lease_key = getelementptr inbounds %struct.cifs_pending_open, ptr %open, i32 0, i32 2
  %lease_key1 = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %lease_key, ptr %lease_key1, i32 16)
  %oplock = getelementptr inbounds %struct.cifs_pending_open, ptr %open, i32 0, i32 3
  %1 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 254, ptr %oplock, align 4
  %tlink3 = getelementptr inbounds %struct.cifs_pending_open, ptr %open, i32 0, i32 1
  %2 = ptrtoint ptr %tlink3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tlink, ptr %tlink3, align 4
  %pending_open = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 6
  %3 = ptrtoint ptr %pending_open to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %open, ptr %pending_open, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %tlink, i32 0, i32 5
  %4 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tl_tcon.i, align 4
  %pending_opens = getelementptr inbounds %struct.cifs_tcon, ptr %5, i32 0, i32 42
  %prev.i = getelementptr inbounds %struct.cifs_tcon, ptr %5, i32 0, i32 42, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %open, ptr noundef %7, ptr noundef %pending_opens) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %open, ptr %prev.i, align 4
  %9 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pending_opens, ptr %open, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %open, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %open, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_add_pending_open(ptr nocapture noundef %fid, ptr noundef %tlink, ptr noundef %open) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %tlink, i32 0, i32 5
  %0 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_tcon.i, align 4
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %open_file_lock) #12
  %lease_key.i = getelementptr inbounds %struct.cifs_pending_open, ptr %open, i32 0, i32 2
  %lease_key1.i = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %lease_key.i, ptr %lease_key1.i, i32 16)
  %oplock.i = getelementptr inbounds %struct.cifs_pending_open, ptr %open, i32 0, i32 3
  %3 = ptrtoint ptr %oplock.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 254, ptr %oplock.i, align 4
  %tlink3.i = getelementptr inbounds %struct.cifs_pending_open, ptr %open, i32 0, i32 1
  %4 = ptrtoint ptr %tlink3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tlink, ptr %tlink3.i, align 4
  %pending_open.i = getelementptr inbounds %struct.cifs_fid, ptr %fid, i32 0, i32 6
  %5 = ptrtoint ptr %pending_open.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %open, ptr %pending_open.i, align 4
  %6 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tl_tcon.i, align 4
  %pending_opens.i = getelementptr inbounds %struct.cifs_tcon, ptr %7, i32 0, i32 42
  %prev.i.i = getelementptr inbounds %struct.cifs_tcon, ptr %7, i32 0, i32 42, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %open, ptr noundef %9, ptr noundef %pending_opens.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.cifs_add_pending_open_locked.exit_crit_edge

entry.cifs_add_pending_open_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cifs_add_pending_open_locked.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %open, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pending_opens.i, ptr %open, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %open, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %open, ptr %9, align 4
  br label %cifs_add_pending_open_locked.exit

cifs_add_pending_open_locked.exit:                ; preds = %if.end.i.i.i, %entry.cifs_add_pending_open_locked.exit_crit_edge
  %14 = ptrtoint ptr %tlink3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tlink3.i, align 4
  %tl_tcon.i6 = getelementptr inbounds %struct.tcon_link, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %tl_tcon.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tl_tcon.i6, align 4
  %open_file_lock3 = getelementptr inbounds %struct.cifs_tcon, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %open_file_lock3) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cifs_is_deferred_close(ptr nocapture noundef readonly %cfile, ptr nocapture noundef writeonly %pdclose) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 7
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %deferred_closes = getelementptr i8, ptr %3, i32 784
  %4 = ptrtoint ptr %deferred_closes to i32
  call void @__asan_load4_noabort(i32 %4)
  %dclose.038 = load ptr, ptr %deferred_closes, align 8
  %cmp.not39 = icmp eq ptr %dclose.038, %deferred_closes
  br i1 %cmp.not39, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5
  %5 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fid, align 8
  %persistent_fid11 = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 1
  %volatile_fid16 = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dclose.040 = phi ptr [ %dclose.038, %for.body.lr.ph ], [ %dclose.0, %for.inc.for.body_crit_edge ]
  %netfid = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040, i32 0, i32 2
  %7 = ptrtoint ptr %netfid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %netfid, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %6)
  %cmp8 = icmp eq i16 %8, %6
  br i1 %cmp8, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %persistent_fid = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040, i32 0, i32 3
  %9 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %persistent_fid, align 8
  %11 = ptrtoint ptr %persistent_fid11 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %persistent_fid11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp12 = icmp eq i64 %10, %12
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true
  %volatile_fid = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040, i32 0, i32 4
  %13 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %volatile_fid, align 8
  %15 = ptrtoint ptr %volatile_fid16 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %volatile_fid16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp17 = icmp eq i64 %14, %16
  br i1 %cmp17, label %if.then, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %pdclose to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dclose.040, ptr %pdclose, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %dclose.040 to i32
  call void @__asan_load4_noabort(i32 %18)
  %dclose.0 = load ptr, ptr %dclose.040, align 8
  %cmp.not = icmp eq ptr %dclose.0, %deferred_closes
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %cmp.not36 = phi i1 [ true, %if.then ], [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %cmp.not36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_add_deferred_close(ptr nocapture noundef readonly %cfile, ptr noundef %dclose) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 7
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %deferred_closes.i = getelementptr i8, ptr %3, i32 784
  %4 = ptrtoint ptr %deferred_closes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %dclose.038.i = load ptr, ptr %deferred_closes.i, align 8
  %cmp.not39.i = icmp eq ptr %dclose.038.i, %deferred_closes.i
  br i1 %cmp.not39.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %fid.i = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5
  %5 = ptrtoint ptr %fid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fid.i, align 8
  %persistent_fid11.i = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 1
  %volatile_fid16.i = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dclose.040.i = phi ptr [ %dclose.038.i, %for.body.lr.ph.i ], [ %dclose.0.i, %for.inc.i.for.body.i_crit_edge ]
  %netfid.i = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040.i, i32 0, i32 2
  %7 = ptrtoint ptr %netfid.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %netfid.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %6)
  %cmp8.i = icmp eq i16 %8, %6
  br i1 %cmp8.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %persistent_fid.i = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040.i, i32 0, i32 3
  %9 = ptrtoint ptr %persistent_fid.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %persistent_fid.i, align 8
  %11 = ptrtoint ptr %persistent_fid11.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %persistent_fid11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp12.i = icmp eq i64 %10, %12
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %volatile_fid.i = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040.i, i32 0, i32 4
  %13 = ptrtoint ptr %volatile_fid.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %volatile_fid.i, align 8
  %15 = ptrtoint ptr %volatile_fid16.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %volatile_fid16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp17.i = icmp eq i64 %14, %16
  br i1 %cmp17.i, label %if.then, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %dclose.040.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %dclose.0.i = load ptr, ptr %dclose.040.i, align 8
  %cmp.not.i = icmp eq ptr %dclose.0.i, %deferred_closes.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %dclose) #12
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 8
  %18 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tlink, align 4
  %tlink1 = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose, i32 0, i32 1
  %20 = ptrtoint ptr %tlink1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %tlink1, align 8
  %fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5
  %21 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fid, align 8
  %netfid2 = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose, i32 0, i32 2
  %23 = ptrtoint ptr %netfid2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %netfid2, align 4
  %persistent_fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %persistent_fid to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %persistent_fid, align 8
  %persistent_fid4 = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose, i32 0, i32 3
  %26 = ptrtoint ptr %persistent_fid4 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %persistent_fid4, align 8
  %volatile_fid = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %volatile_fid to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %volatile_fid, align 8
  %volatile_fid6 = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose, i32 0, i32 4
  %29 = ptrtoint ptr %volatile_fid6 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %volatile_fid6, align 8
  %30 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dentry.i, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i, align 8
  %deferred_closes = getelementptr i8, ptr %33, i32 784
  %prev.i = getelementptr i8, ptr %33, i32 788
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dclose, ptr noundef %35, ptr noundef %deferred_closes) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dclose, ptr %prev.i, align 4
  %37 = ptrtoint ptr %dclose to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %deferred_closes, ptr %dclose, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %dclose, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %dclose, ptr %35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_del_deferred_close(ptr nocapture noundef readonly %cfile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 7
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %deferred_closes.i = getelementptr i8, ptr %3, i32 784
  %4 = ptrtoint ptr %deferred_closes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %dclose.038.i = load ptr, ptr %deferred_closes.i, align 8
  %cmp.not39.i = icmp eq ptr %dclose.038.i, %deferred_closes.i
  br i1 %cmp.not39.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %fid.i = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5
  %5 = ptrtoint ptr %fid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fid.i, align 8
  %persistent_fid11.i = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 1
  %volatile_fid16.i = getelementptr inbounds %struct.cifsFileInfo, ptr %cfile, i32 0, i32 5, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dclose.040.i = phi ptr [ %dclose.038.i, %for.body.lr.ph.i ], [ %dclose.0.i, %for.inc.i.for.body.i_crit_edge ]
  %netfid.i = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040.i, i32 0, i32 2
  %7 = ptrtoint ptr %netfid.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %netfid.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %6)
  %cmp8.i = icmp eq i16 %8, %6
  br i1 %cmp8.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %persistent_fid.i = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040.i, i32 0, i32 3
  %9 = ptrtoint ptr %persistent_fid.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %persistent_fid.i, align 8
  %11 = ptrtoint ptr %persistent_fid11.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %persistent_fid11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp12.i = icmp eq i64 %10, %12
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %volatile_fid.i = getelementptr inbounds %struct.cifs_deferred_close, ptr %dclose.040.i, i32 0, i32 4
  %13 = ptrtoint ptr %volatile_fid.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %volatile_fid.i, align 8
  %15 = ptrtoint ptr %volatile_fid16.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %volatile_fid16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp17.i = icmp eq i64 %14, %16
  br i1 %cmp17.i, label %if.end, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %dclose.040.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %dclose.0.i = load ptr, ptr %dclose.040.i, align 8
  %cmp.not.i = icmp eq ptr %dclose.0.i, %deferred_closes.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true14.i
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dclose.040.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dclose.040.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %dclose.040.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dclose.040.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %24 = ptrtoint ptr %dclose.040.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %dclose.040.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dclose.040.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %dclose.040.i) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_close_deferred_file(ptr noundef %cifs_inode) local_unnamed_addr #0 align 64 {
entry:
  %file_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file_head) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %file_head, i32 0, i32 1
  %cmp = icmp eq ptr %cifs_inode, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %file_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %file_head, ptr %file_head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %file_head, ptr %0, align 4
  %open_file_lock = getelementptr inbounds %struct.cifsInodeInfo, ptr %cifs_inode, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %open_file_lock) #12
  %openFileList = getelementptr inbounds %struct.cifsInodeInfo, ptr %cifs_inode, i32 0, i32 3
  %3 = ptrtoint ptr %openFileList to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn66 = load ptr, ptr %openFileList, align 4
  %cmp2.not68 = icmp eq ptr %.pn66, %openFileList
  br i1 %cmp2.not68, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn69 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn66, %if.end.for.body_crit_edge ]
  %cfile.070 = getelementptr i8, ptr %.pn69, i32 -8
  %deferred = getelementptr i8, ptr %.pn69, i32 416
  %4 = ptrtoint ptr %deferred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %deferred, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %call5 = call zeroext i1 @cancel_delayed_work(ptr noundef %deferred) #12
  br i1 %call5, label %if.then6, label %if.then3.for.inc_crit_edge

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then6:                                         ; preds = %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 12) #15
  %cmp8 = icmp eq ptr %call7.i, null
  br i1 %cmp8, label %if.then6.for.end_crit_edge, label %if.end10

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end10:                                         ; preds = %if.then6
  %cfile11 = getelementptr inbounds %struct.file_list, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %cfile11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cfile.070, ptr %cfile11, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %9, ptr noundef nonnull %file_head) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %0, align 4
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %file_head, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i, ptr %9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end10.for.inc_crit_edge, %if.then3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn69, align 4
  %cmp2.not = icmp eq ptr %.pn, %openFileList
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %open_file_lock) #12
  %15 = ptrtoint ptr %file_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file_head, align 4
  %cmp31.not71 = icmp eq ptr %16, %file_head
  br i1 %cmp31.not71, label %for.end.cleanup_crit_edge, label %for.end.for.body33_crit_edge

for.end.for.body33_crit_edge:                     ; preds = %for.end
  br label %for.body33

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body33:                                       ; preds = %list_del.exit.for.body33_crit_edge, %for.end.for.body33_crit_edge
  %tmp_list.072 = phi ptr [ %tmp_next_list.0, %list_del.exit.for.body33_crit_edge ], [ %16, %for.end.for.body33_crit_edge ]
  %17 = ptrtoint ptr %tmp_list.072 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp_next_list.0 = load ptr, ptr %tmp_list.072, align 4
  %cfile34 = getelementptr inbounds %struct.file_list, ptr %tmp_list.072, i32 0, i32 1
  %18 = ptrtoint ptr %cfile34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfile34, align 4
  call void @_cifsFileInfo_put(ptr noundef %19, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %call.i.i63 = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp_list.072) #12
  br i1 %call.i.i63, label %if.end.i.i64, label %for.body33.list_del.exit_crit_edge

for.body33.list_del.exit_crit_edge:               ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i64:                                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp_list.072, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %tmp_list.072 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmp_list.072, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i64, %for.body33.list_del.exit_crit_edge
  %26 = ptrtoint ptr %tmp_list.072 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_list.072, align 4
  %prev.i65 = getelementptr inbounds %struct.list_head, ptr %tmp_list.072, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i65, align 4
  call void @kfree(ptr noundef %tmp_list.072) #12
  %cmp31.not = icmp eq ptr %tmp_next_list.0, %file_head
  br i1 %cmp31.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body33_crit_edge

list_del.exit.for.body33_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file_head) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_cifsFileInfo_put(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_close_all_deferred_files(ptr noundef %tcon) local_unnamed_addr #0 align 64 {
entry:
  %file_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file_head) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %file_head, i32 0, i32 1
  %1 = ptrtoint ptr %file_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %file_head, ptr %file_head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %file_head, ptr %0, align 4
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %open_file_lock) #12
  %openFileList = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 5
  %3 = ptrtoint ptr %openFileList to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.057 = load ptr, ptr %openFileList, align 4
  %cmp.i.not58 = icmp eq ptr %tmp.057, %openFileList
  br i1 %cmp.i.not58, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.059 = phi ptr [ %tmp.0, %for.inc.for.body_crit_edge ], [ %tmp.057, %entry.for.body_crit_edge ]
  %deferred = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp.059, i32 0, i32 19
  %4 = ptrtoint ptr %deferred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %deferred, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call6 = call zeroext i1 @cancel_delayed_work(ptr noundef %deferred) #12
  br i1 %call6, label %if.then7, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then7:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 12) #15
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.then7.for.end_crit_edge, label %if.end

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %if.then7
  %cfile10 = getelementptr inbounds %struct.file_list, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %cfile10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tmp.059, ptr %cfile10, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %9, ptr noundef nonnull %file_head) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %0, align 4
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %file_head, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i, ptr %9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %tmp.059 to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0 = load ptr, ptr %tmp.059, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %openFileList
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then7.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %open_file_lock) #12
  %15 = ptrtoint ptr %file_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file_head, align 4
  %cmp26.not60 = icmp eq ptr %16, %file_head
  br i1 %cmp26.not60, label %for.end.for.end37_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37

for.body28:                                       ; preds = %list_del.exit.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %tmp_list.061 = phi ptr [ %tmp_next_list.0, %list_del.exit.for.body28_crit_edge ], [ %16, %for.end.for.body28_crit_edge ]
  %17 = ptrtoint ptr %tmp_list.061 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp_next_list.0 = load ptr, ptr %tmp_list.061, align 4
  %cfile29 = getelementptr inbounds %struct.file_list, ptr %tmp_list.061, i32 0, i32 1
  %18 = ptrtoint ptr %cfile29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfile29, align 4
  call void @_cifsFileInfo_put(ptr noundef %19, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %call.i.i54 = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp_list.061) #12
  br i1 %call.i.i54, label %if.end.i.i55, label %for.body28.list_del.exit_crit_edge

for.body28.list_del.exit_crit_edge:               ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i55:                                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp_list.061, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %tmp_list.061 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmp_list.061, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i55, %for.body28.list_del.exit_crit_edge
  %26 = ptrtoint ptr %tmp_list.061 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_list.061, align 4
  %prev.i56 = getelementptr inbounds %struct.list_head, ptr %tmp_list.061, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i56, align 4
  call void @kfree(ptr noundef %tmp_list.061) #12
  %cmp26.not = icmp eq ptr %tmp_next_list.0, %file_head
  br i1 %cmp26.not, label %list_del.exit.for.end37_crit_edge, label %list_del.exit.for.body28_crit_edge

list_del.exit.for.body28_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28

list_del.exit.for.end37_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37

for.end37:                                        ; preds = %list_del.exit.for.end37_crit_edge, %for.end.for.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file_head) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_close_deferred_file_under_dentry(ptr noundef %tcon, ptr nocapture noundef readonly %path) local_unnamed_addr #0 align 64 {
entry:
  %file_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %file_head) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %file_head, i32 0, i32 1
  %1 = ptrtoint ptr %file_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %file_head, ptr %file_head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %file_head, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %3 = load ptr, ptr @names_cachep, align 4
  %call.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3264) #12
  %open_file_lock = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %open_file_lock) #12
  %openFileList = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 5
  %4 = ptrtoint ptr %openFileList to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.065 = load ptr, ptr %openFileList, align 4
  %cmp.i.not66 = icmp eq ptr %tmp.065, %openFileList
  br i1 %cmp.i.not66, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.067 = phi ptr [ %tmp.0, %for.inc.for.body_crit_edge ], [ %tmp.065, %entry.for.body_crit_edge ]
  %dentry = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp.067, i32 0, i32 7
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry, align 8
  %call4 = call ptr @build_path_from_dentry(ptr noundef %6, ptr noundef %call.i) #12
  %call5 = call ptr @strstr(ptr noundef %call4, ptr noundef %path)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %deferred = getelementptr inbounds %struct.cifsFileInfo, ptr %tmp.067, i32 0, i32 19
  %7 = ptrtoint ptr %deferred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %deferred, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  br i1 %tobool8.not, label %if.then.for.inc_crit_edge, label %if.then9

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then9:                                         ; preds = %if.then
  %call11 = call zeroext i1 @cancel_delayed_work(ptr noundef %deferred) #12
  br i1 %call11, label %if.then12, label %if.then9.for.inc_crit_edge

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then12:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2592, i32 noundef 12) #15
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.then12.for.end_crit_edge, label %if.end

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %if.then12
  %cfile15 = getelementptr inbounds %struct.file_list, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %cfile15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tmp.067, ptr %cfile15, align 8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %12, ptr noundef nonnull %file_head) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %0, align 4
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %file_head, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i, ptr %12, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end.for.inc_crit_edge, %if.then9.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %tmp.067 to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp.0 = load ptr, ptr %tmp.067, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %openFileList
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then12.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %open_file_lock) #12
  %18 = ptrtoint ptr %file_head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %file_head, align 4
  %cmp32.not68 = icmp eq ptr %19, %file_head
  br i1 %cmp32.not68, label %for.end.for.end43_crit_edge, label %for.end.for.body34_crit_edge

for.end.for.body34_crit_edge:                     ; preds = %for.end
  br label %for.body34

for.end.for.end43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end43

for.body34:                                       ; preds = %list_del.exit.for.body34_crit_edge, %for.end.for.body34_crit_edge
  %tmp_list.069 = phi ptr [ %tmp_next_list.0, %list_del.exit.for.body34_crit_edge ], [ %19, %for.end.for.body34_crit_edge ]
  %20 = ptrtoint ptr %tmp_list.069 to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp_next_list.0 = load ptr, ptr %tmp_list.069, align 4
  %cfile35 = getelementptr inbounds %struct.file_list, ptr %tmp_list.069, i32 0, i32 1
  %21 = ptrtoint ptr %cfile35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfile35, align 4
  call void @_cifsFileInfo_put(ptr noundef %22, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %call.i.i62 = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp_list.069) #12
  br i1 %call.i.i62, label %if.end.i.i63, label %for.body34.list_del.exit_crit_edge

for.body34.list_del.exit_crit_edge:               ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i63:                                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp_list.069, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %tmp_list.069 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tmp_list.069, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i63, %for.body34.list_del.exit_crit_edge
  %29 = ptrtoint ptr %tmp_list.069 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_list.069, align 4
  %prev.i64 = getelementptr inbounds %struct.list_head, ptr %tmp_list.069, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i64, align 4
  call void @kfree(ptr noundef %tmp_list.069) #12
  %cmp32.not = icmp eq ptr %tmp_next_list.0, %file_head
  br i1 %cmp32.not, label %list_del.exit.for.end43_crit_edge, label %list_del.exit.for.body34_crit_edge

list_del.exit.for.body34_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34

list_del.exit.for.end43_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end43

for.end43:                                        ; preds = %list_del.exit.for.end43_crit_edge, %for.end.for.end43_crit_edge
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.end43.free_dentry_path.exit_crit_edge, label %if.then.i

for.end43.free_dentry_path.exit_crit_edge:        ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_dentry_path.exit

if.then.i:                                        ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %31 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %31, ptr noundef nonnull %call.i) #12
  br label %free_dentry_path.exit

free_dentry_path.exit:                            ; preds = %if.then.i, %for.end43.free_dentry_path.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %file_head) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_path_from_dentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_dfs_referrals(ptr noundef %rsp, i32 noundef %rsp_size, ptr nocapture noundef %num_of_nodes, ptr nocapture noundef %target_nodes, ptr noundef %nls_codepage, i32 noundef %remap, ptr noundef %searchName, i1 noundef zeroext %is_unicode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %NumberOfReferrals = getelementptr inbounds %struct.get_dfs_referral_rsp, ptr %rsp, i32 0, i32 1
  %0 = ptrtoint ptr %NumberOfReferrals to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %NumberOfReferrals, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %num_of_nodes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %num_of_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %do.body2, label %if.end10

do.body2:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @parse_dfs_referrals._rs, ptr noundef nonnull @__func__.parse_dfs_referrals) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2.parse_DFS_referrals_exit.thread_crit_edge, label %do.end

do.body2.parse_DFS_referrals_exit.thread_crit_edge: ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_DFS_referrals_exit.thread

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %num_of_nodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_of_nodes, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %5) #16
  br label %parse_DFS_referrals_exit.thread

if.end10:                                         ; preds = %entry
  %referrals = getelementptr inbounds %struct.get_dfs_referral_rsp, ptr %rsp, i32 0, i32 3
  %6 = ptrtoint ptr %referrals to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %referrals, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %7)
  %cmp12.not = icmp eq i16 %7, 768
  br i1 %cmp12.not, label %if.end32, label %do.body16

do.body16:                                        ; preds = %if.end10
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_dfs_referrals._rs.88, ptr noundef nonnull @__func__.parse_dfs_referrals) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body16.parse_DFS_referrals_exit.thread_crit_edge, label %do.end22

do.body16.parse_DFS_referrals_exit.thread_crit_edge: ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_DFS_referrals_exit.thread

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %referrals to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %referrals, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv25 = zext i16 %10 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv25) #16
  br label %parse_DFS_referrals_exit.thread

if.end32:                                         ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %rsp, i32 %rsp_size
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %11 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end32.do.end54_crit_edge, label %do.body37

if.end32.do.end54_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

do.body37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_dfs_referrals.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_dfs_referrals, %land.lhs.true)) #12
          to label %do.end54 [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body37
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @parse_dfs_referrals._rs.92, ptr noundef nonnull @__func__.parse_dfs_referrals) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true.do.end54_crit_edge, label %if.then46

land.lhs.true.do.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %num_of_nodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_of_nodes, align 4
  %DFSFlags = getelementptr inbounds %struct.get_dfs_referral_rsp, ptr %rsp, i32 0, i32 2
  %14 = ptrtoint ptr %DFSFlags to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %DFSFlags, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_dfs_referrals.descriptor, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %16) #12
  br label %do.end54

do.end54:                                         ; preds = %if.then46, %land.lhs.true.do.end54_crit_edge, %do.body37, %if.end32.do.end54_crit_edge
  %17 = ptrtoint ptr %num_of_nodes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_of_nodes, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 28) #12
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !256

kcalloc.exit.thread:                              ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %target_nodes to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %target_nodes, align 4
  br label %parse_DFS_referrals_exit.thread

if.end7.i.i:                                      ; preds = %do.end54
  %22 = extractvalue { i32, i1 } %19, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #17
  %23 = ptrtoint ptr %target_nodes to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i, ptr %target_nodes, align 4
  %cmp56 = icmp eq ptr %call8.i.i, null
  br i1 %cmp56, label %if.end7.i.i.parse_DFS_referrals_exit.thread_crit_edge, label %for.cond.preheader

if.end7.i.i.parse_DFS_referrals_exit.thread_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_DFS_referrals_exit.thread

for.cond.preheader:                               ; preds = %if.end7.i.i
  %24 = ptrtoint ptr %num_of_nodes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_of_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp60187.not = icmp eq i32 %25, 0
  br i1 %cmp60187.not, label %for.cond.preheader.cleanup110_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup110_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %DFSFlags63 = getelementptr inbounds %struct.get_dfs_referral_rsp, ptr %rsp, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ref.0188 = phi ptr [ %referrals, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %target_nodes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %target_nodes, align 4
  %add.ptr62 = getelementptr %struct.dfs_info3_param, ptr %27, i32 %i.0189
  %28 = ptrtoint ptr %DFSFlags63 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %DFSFlags63, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr62, align 4
  br i1 %is_unicode, label %if.end8.i, label %if.else76

if.end8.i:                                        ; preds = %for.body
  %call67 = tail call i32 @strlen(ptr noundef %searchName) #18
  %mul = shl i32 %call67, 1
  %add = add i32 %mul, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %cmp69 = icmp eq ptr %call9.i, null
  br i1 %cmp69, label %if.end8.i.parse_DFS_referrals_exit.thread_crit_edge, label %cleanup

if.end8.i.parse_DFS_referrals_exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_DFS_referrals_exit.thread

cleanup:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %call73 = tail call i32 @cifsConvertToUTF16(ptr noundef nonnull %call9.i, ptr noundef %searchName, i32 noundef 4096, ptr noundef %nls_codepage, i32 noundef %remap) #12
  %32 = ptrtoint ptr %rsp to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %rsp, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv74 = zext i16 %34 to i32
  %call75 = tail call i32 @cifs_utf16_bytes(ptr noundef nonnull %call9.i, i32 noundef %conv74, ptr noundef %nls_codepage) #12
  %path_consumed = getelementptr %struct.dfs_info3_param, ptr %27, i32 %i.0189, i32 1
  %35 = ptrtoint ptr %path_consumed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call75, ptr %path_consumed, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %if.end80

if.else76:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %rsp to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %rsp, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv78 = zext i16 %38 to i32
  %path_consumed79 = getelementptr %struct.dfs_info3_param, ptr %27, i32 %i.0189, i32 1
  %39 = ptrtoint ptr %path_consumed79 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv78, ptr %path_consumed79, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %cleanup
  %ServerType = getelementptr inbounds %struct.dfs_referral_level_3, ptr %ref.0188, i32 0, i32 2
  %40 = ptrtoint ptr %ServerType to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %ServerType, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv81 = zext i16 %42 to i32
  %server_type = getelementptr %struct.dfs_info3_param, ptr %27, i32 %i.0189, i32 2
  %43 = ptrtoint ptr %server_type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv81, ptr %server_type, align 4
  %ReferralEntryFlags = getelementptr inbounds %struct.dfs_referral_level_3, ptr %ref.0188, i32 0, i32 3
  %44 = ptrtoint ptr %ReferralEntryFlags to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %ReferralEntryFlags, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv82 = zext i16 %46 to i32
  %ref_flag = getelementptr %struct.dfs_info3_param, ptr %27, i32 %i.0189, i32 3
  %47 = ptrtoint ptr %ref_flag to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv82, ptr %ref_flag, align 4
  %DfsPathOffset = getelementptr inbounds %struct.dfs_referral_level_3, ptr %ref.0188, i32 0, i32 5
  %48 = ptrtoint ptr %DfsPathOffset to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %DfsPathOffset, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv83 = zext i16 %50 to i32
  %add.ptr84 = getelementptr i8, ptr %ref.0188, i32 %conv83
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr84 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call86 = tail call ptr @cifs_strndup_from_utf16(ptr noundef %add.ptr84, i32 noundef %sub.ptr.sub, i1 noundef zeroext %is_unicode, ptr noundef %nls_codepage) #12
  %path_name = getelementptr %struct.dfs_info3_param, ptr %27, i32 %i.0189, i32 4
  %51 = ptrtoint ptr %path_name to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call86, ptr %path_name, align 4
  %tobool88.not = icmp eq ptr %call86, null
  br i1 %tobool88.not, label %if.end80.parse_DFS_referrals_exit.thread_crit_edge, label %if.end90

if.end80.parse_DFS_referrals_exit.thread_crit_edge: ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_DFS_referrals_exit.thread

if.end90:                                         ; preds = %if.end80
  %NetworkAddressOffset = getelementptr inbounds %struct.dfs_referral_level_3, ptr %ref.0188, i32 0, i32 7
  %52 = ptrtoint ptr %NetworkAddressOffset to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %NetworkAddressOffset, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %conv91 = zext i16 %54 to i32
  %add.ptr92 = getelementptr i8, ptr %ref.0188, i32 %conv91
  %sub.ptr.rhs.cast94 = ptrtoint ptr %add.ptr92 to i32
  %sub.ptr.sub95 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast94
  %call97 = tail call ptr @cifs_strndup_from_utf16(ptr noundef %add.ptr92, i32 noundef %sub.ptr.sub95, i1 noundef zeroext %is_unicode, ptr noundef %nls_codepage) #12
  %node_name = getelementptr %struct.dfs_info3_param, ptr %27, i32 %i.0189, i32 5
  %55 = ptrtoint ptr %node_name to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call97, ptr %node_name, align 4
  %tobool99.not = icmp eq ptr %call97, null
  br i1 %tobool99.not, label %if.end90.parse_DFS_referrals_exit.thread_crit_edge, label %for.inc

if.end90.parse_DFS_referrals_exit.thread_crit_edge: ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %parse_DFS_referrals_exit.thread

for.inc:                                          ; preds = %if.end90
  %TimeToLive = getelementptr inbounds %struct.dfs_referral_level_3, ptr %ref.0188, i32 0, i32 4
  %56 = ptrtoint ptr %TimeToLive to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %TimeToLive, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %ttl = getelementptr %struct.dfs_info3_param, ptr %27, i32 %i.0189, i32 6
  %59 = ptrtoint ptr %ttl to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %ttl, align 4
  %incdec.ptr = getelementptr %struct.dfs_referral_level_3, ptr %ref.0188, i32 1
  %inc = add nuw i32 %i.0189, 1
  %60 = ptrtoint ptr %num_of_nodes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_of_nodes, align 4
  %cmp60 = icmp ult i32 %inc, %61
  br i1 %cmp60, label %for.inc.for.body_crit_edge, label %for.inc.cleanup110_crit_edge

for.inc.cleanup110_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

parse_DFS_referrals_exit.thread:                  ; preds = %if.end90.parse_DFS_referrals_exit.thread_crit_edge, %if.end80.parse_DFS_referrals_exit.thread_crit_edge, %if.end8.i.parse_DFS_referrals_exit.thread_crit_edge, %if.end7.i.i.parse_DFS_referrals_exit.thread_crit_edge, %kcalloc.exit.thread, %do.end22, %do.body16.parse_DFS_referrals_exit.thread_crit_edge, %do.end, %do.body2.parse_DFS_referrals_exit.thread_crit_edge
  %rc.4.ph = phi i32 [ -12, %kcalloc.exit.thread ], [ -12, %if.end7.i.i.parse_DFS_referrals_exit.thread_crit_edge ], [ -22, %do.body16.parse_DFS_referrals_exit.thread_crit_edge ], [ -22, %do.end22 ], [ -22, %do.body2.parse_DFS_referrals_exit.thread_crit_edge ], [ -22, %do.end ], [ -12, %if.end8.i.parse_DFS_referrals_exit.thread_crit_edge ], [ -12, %if.end90.parse_DFS_referrals_exit.thread_crit_edge ], [ -12, %if.end80.parse_DFS_referrals_exit.thread_crit_edge ]
  %62 = ptrtoint ptr %num_of_nodes to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load i32, ptr %num_of_nodes, align 4
  %63 = ptrtoint ptr %target_nodes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %target_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i168 = icmp eq i32 %.pr, 0
  %cmp1.i = icmp eq ptr %64, null
  %or.cond.i = or i1 %cmp.i168, %cmp1.i
  br i1 %or.cond.i, label %parse_DFS_referrals_exit.thread.free_dfs_info_array.exit_crit_edge, label %for.cond.preheader.i

parse_DFS_referrals_exit.thread.free_dfs_info_array.exit_crit_edge: ; preds = %parse_DFS_referrals_exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_dfs_info_array.exit

for.cond.preheader.i:                             ; preds = %parse_DFS_referrals_exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp211.i = icmp sgt i32 %.pr, 0
  br i1 %cmp211.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %path_name.i = getelementptr %struct.dfs_info3_param, ptr %64, i32 %i.012.i, i32 4
  %65 = ptrtoint ptr %path_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %path_name.i, align 4
  tail call void @kfree(ptr noundef %66) #12
  %node_name.i = getelementptr %struct.dfs_info3_param, ptr %64, i32 %i.012.i, i32 5
  %67 = ptrtoint ptr %node_name.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %node_name.i, align 4
  tail call void @kfree(ptr noundef %68) #12
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %.pr
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %64) #12
  br label %free_dfs_info_array.exit

free_dfs_info_array.exit:                         ; preds = %for.end.i, %parse_DFS_referrals_exit.thread.free_dfs_info_array.exit_crit_edge
  %69 = ptrtoint ptr %target_nodes to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %target_nodes, align 4
  %70 = ptrtoint ptr %num_of_nodes to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %num_of_nodes, align 4
  br label %cleanup110

cleanup110:                                       ; preds = %free_dfs_info_array.exit, %for.inc.cleanup110_crit_edge, %for.cond.preheader.cleanup110_crit_edge
  %rc.4186 = phi i32 [ %rc.4.ph, %free_dfs_info_array.exit ], [ 0, %for.cond.preheader.cleanup110_crit_edge ], [ 0, %for.inc.cleanup110_crit_edge ]
  ret i32 %rc.4186
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifsConvertToUTF16(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_utf16_bytes(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_strndup_from_utf16(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_aio_ctx_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 232) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %list = getelementptr inbounds %struct.cifs_aio_ctx, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cifs_aio_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 8
  %aio_mutex = getelementptr inbounds %struct.cifs_aio_ctx, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %aio_mutex, ptr noundef nonnull @.str.94, ptr noundef nonnull @cifs_aio_ctx_alloc.__key) #12
  %done = getelementptr inbounds %struct.cifs_aio_ctx, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 8
  %wait.i = getelementptr inbounds %struct.cifs_aio_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.134, ptr noundef nonnull @init_completion.__key) #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_aio_ctx_release(ptr noundef %refcount) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cfile = getelementptr inbounds %struct.cifs_aio_ctx, ptr %refcount, i32 0, i32 6
  %0 = ptrtoint ptr %cfile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfile, align 4
  tail call void @cifsFileInfo_put(ptr noundef %1) #12
  %bv = getelementptr inbounds %struct.cifs_aio_ctx, ptr %refcount, i32 0, i32 7
  %2 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bv, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %for.cond.preheader

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.cond.preheader:                               ; preds = %entry
  %npages = getelementptr inbounds %struct.cifs_aio_ctx, ptr %refcount, i32 0, i32 9
  %4 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19.not = icmp eq i32 %5, 0
  br i1 %cmp19.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %should_dirty = getelementptr inbounds %struct.cifs_aio_ctx, ptr %refcount, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %should_dirty to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %should_dirty, align 8, !range !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %for.body.if.end_crit_edge, label %if.then2

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bv, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %9, i32 %i.020
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call = tail call zeroext i1 @set_page_dirty(ptr noundef %11) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body.if.end_crit_edge
  %12 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bv, align 8
  %arrayidx5 = getelementptr %struct.bio_vec, ptr %13, i32 %i.020
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !257

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %15 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !256

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.135) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !258
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !260
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cifs_aio_ctx_release, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !252

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %20, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %20) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.020, 1
  %25 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npages, align 8
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %27 = ptrtoint ptr %bv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bv, align 8
  tail call void @kvfree(ptr noundef %28) #12
  br label %if.end8

if.end8:                                          ; preds = %for.end, %entry.if.end8_crit_edge
  tail call void @kfree(ptr noundef %refcount) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifsFileInfo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @setup_aio_ctx_iter(ptr noundef %ctx, ptr noundef %iter, i32 noundef %rw) local_unnamed_addr #0 align 64 {
entry:
  %start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #12
  %2 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %start, align 4, !annotation !262
  %call1 = tail call i32 @iov_iter_npages(ptr noundef %iter, i32 noundef 2147483647) #12
  %3 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.i = icmp eq i8 %4, 1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %iter3 = getelementptr inbounds %struct.cifs_aio_ctx, ptr %ctx, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %iter3, ptr %iter, i32 24)
  %len4 = getelementptr inbounds %struct.cifs_aio_ctx, ptr %ctx, i32 0, i32 11
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %len4, align 8
  tail call void @iov_iter_advance(ptr noundef %iter, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call1, i32 12) #12
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %retval.0.i = select i1 %8, i32 -1, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %retval.0.i)
  %cmp = icmp ugt i32 %retval.0.i, 1048576
  %brmerge = or i1 %8, %cmp
  br i1 %brmerge, label %if.end.if.then9_crit_edge, label %if.end7.i, !prof !263

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end7.i:                                        ; preds = %if.end
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #17
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.if.then9_crit_edge, label %if.end7.i.if.end15_crit_edge

if.end7.i.if.end15_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end7.i.if.then9_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %if.end7.i.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %call11 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #17
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then9.cleanup_crit_edge, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end7.i.if.end15_crit_edge
  %bv.1 = phi ptr [ %call8.i, %if.end7.i.if.end15_crit_edge ], [ %call11, %if.then9.if.end15_crit_edge ]
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call1, i32 4) #12
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %retval.0.i184 = select i1 %11, i32 -1, i32 %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %retval.0.i184)
  %cmp17 = icmp ugt i32 %retval.0.i184, 1048576
  %brmerge229 = or i1 %11, %cmp17
  br i1 %brmerge229, label %if.end15.if.then22_crit_edge, label %if.end7.i215, !prof !263

if.end15.if.then22_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end7.i215:                                     ; preds = %if.end15
  %call8.i214 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #17
  %tobool21.not = icmp eq ptr %call8.i214, null
  br i1 %tobool21.not, label %if.end7.i215.if.then22_crit_edge, label %if.end7.i215.if.end28_crit_edge

if.end7.i215.if.end28_crit_edge:                  ; preds = %if.end7.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end7.i215.if.then22_crit_edge:                 ; preds = %if.end7.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %if.end7.i215.if.then22_crit_edge, %if.end15.if.then22_crit_edge
  %call24 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i184) #17
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then26, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree(ptr noundef %bv.1) #12
  br label %cleanup

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end7.i215.if.end28_crit_edge
  %pages.1 = phi ptr [ %call8.i214, %if.end7.i215.if.end28_crit_edge ], [ %call24, %if.then22.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool29.not242 = icmp eq i32 %1, 0
  br i1 %tobool29.not242, label %if.end28.while.end_crit_edge, label %if.end28.land.rhs_crit_edge

if.end28.land.rhs_crit_edge:                      ; preds = %if.end28
  br label %land.rhs

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.loopexit.loopexit:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %start, align 4
  br label %while.cond.loopexit

while.cond.loopexit:                              ; preds = %for.cond.preheader.while.cond.loopexit_crit_edge, %while.cond.loopexit.loopexit
  %tobool29.not = icmp eq i32 %sub, 0
  br i1 %tobool29.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.land.rhs_crit_edge

while.cond.loopexit.land.rhs_crit_edge:           ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs:                                         ; preds = %while.cond.loopexit.land.rhs_crit_edge, %if.end28.land.rhs_crit_edge
  %count.0244 = phi i32 [ %sub, %while.cond.loopexit.land.rhs_crit_edge ], [ %1, %if.end28.land.rhs_crit_edge ]
  %npages.0243 = phi i32 [ %add66, %while.cond.loopexit.land.rhs_crit_edge ], [ 0, %if.end28.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %npages.0243, i32 %call1)
  %cmp30 = icmp ult i32 %npages.0243, %call1
  br i1 %cmp30, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call31 = call i32 @iov_iter_get_pages(ptr noundef %iter, ptr noundef %pages.1, i32 noundef %count.0244, i32 noundef %call1, ptr noundef nonnull %start) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.body34, label %if.end45

do.body34:                                        ; preds = %while.body
  %call35 = call i32 @___ratelimit(ptr noundef nonnull @setup_aio_ctx_iter._rs, ptr noundef nonnull @__func__.setup_aio_ctx_iter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body34.while.end_crit_edge, label %do.end

do.body34.while.end_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %call31) #16
  br label %while.end

if.end45:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0244, i32 %call31)
  %cmp46 = icmp ult i32 %count.0244, %call31
  br i1 %cmp46, label %do.body49, label %if.end63

do.body49:                                        ; preds = %if.end45
  %call50 = call i32 @___ratelimit(ptr noundef nonnull @setup_aio_ctx_iter._rs.96, ptr noundef nonnull @__func__.setup_aio_ctx_iter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body49.while.end_crit_edge, label %do.end55

do.body49.while.end_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %call31, i32 noundef %count.0244) #16
  br label %while.end

if.end63:                                         ; preds = %if.end45
  call void @iov_iter_advance(ptr noundef %iter, i32 noundef %call31) #12
  %sub = sub i32 %count.0244, %call31
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start, align 4
  %add = add i32 %15, %call31
  %sub65 = add i32 %add, 4095
  %div181 = lshr i32 %sub65, 12
  %add66 = add i32 %div181, %npages.0243
  call void @__sanitizer_cov_trace_cmp4(i32 %add66, i32 %call1)
  %cmp67 = icmp ugt i32 %add66, %call1
  br i1 %cmp67, label %do.body70, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub65)
  %cmp86239.not = icmp ult i32 %sub65, 4096
  br i1 %cmp86239.not, label %for.cond.preheader.while.cond.loopexit_crit_edge, label %for.body.preheader

for.cond.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div181, i32 1)
  %16 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %16)
  %start.promoted = load i32, ptr %start, align 4
  br label %for.body

do.body70:                                        ; preds = %if.end63
  %call71 = call i32 @___ratelimit(ptr noundef nonnull @setup_aio_ctx_iter._rs.100, ptr noundef nonnull @__func__.setup_aio_ctx_iter) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body70.while.end_crit_edge, label %do.end76

do.body70.while.end_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %add66, i32 noundef %call1) #16
  br label %while.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %17 = phi i32 [ 0, %for.body.for.body_crit_edge ], [ %start.promoted, %for.body.preheader ]
  %rc.0241 = phi i32 [ %sub95, %for.body.for.body_crit_edge ], [ %add, %for.body.preheader ]
  %i.0240 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %18 = call i32 @llvm.umin.i32(i32 %rc.0241, i32 4096)
  %arrayidx = getelementptr ptr, ptr %pages.1, i32 %i.0240
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %add88 = add i32 %i.0240, %npages.0243
  %arrayidx89 = getelementptr %struct.bio_vec, ptr %bv.1, i32 %add88
  %21 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx89, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %bv.1, i32 %add88, i32 2
  %22 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %bv_offset, align 4
  %sub92 = sub i32 %18, %17
  %bv_len = getelementptr %struct.bio_vec, ptr %bv.1, i32 %add88, i32 1
  %23 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub92, ptr %bv_len, align 4
  %sub95 = sub i32 %rc.0241, %18
  %inc = add nuw nsw i32 %i.0240, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %while.cond.loopexit.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

while.end:                                        ; preds = %do.end76, %do.body70.while.end_crit_edge, %do.end55, %do.body49.while.end_crit_edge, %do.end, %do.body34.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.loopexit.while.end_crit_edge, %if.end28.while.end_crit_edge
  %npages.0236 = phi i32 [ %npages.0243, %do.end ], [ %npages.0243, %do.body34.while.end_crit_edge ], [ %npages.0243, %do.end55 ], [ %npages.0243, %do.body49.while.end_crit_edge ], [ %npages.0243, %do.end76 ], [ %npages.0243, %do.body70.while.end_crit_edge ], [ 0, %if.end28.while.end_crit_edge ], [ %npages.0243, %land.rhs.while.end_crit_edge ], [ %add66, %while.cond.loopexit.while.end_crit_edge ]
  %count.1 = phi i32 [ %count.0244, %do.end ], [ %count.0244, %do.body34.while.end_crit_edge ], [ %count.0244, %do.end55 ], [ %count.0244, %do.body49.while.end_crit_edge ], [ %sub, %do.end76 ], [ %sub, %do.body70.while.end_crit_edge ], [ 0, %if.end28.while.end_crit_edge ], [ %count.0244, %land.rhs.while.end_crit_edge ], [ 0, %while.cond.loopexit.while.end_crit_edge ]
  call void @kvfree(ptr noundef %pages.1) #12
  %bv97 = getelementptr inbounds %struct.cifs_aio_ctx, ptr %ctx, i32 0, i32 7
  %24 = ptrtoint ptr %bv97 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bv.1, ptr %bv97, align 8
  %sub98 = sub i32 %1, %count.1
  %len99 = getelementptr inbounds %struct.cifs_aio_ctx, ptr %ctx, i32 0, i32 11
  %25 = ptrtoint ptr %len99 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub98, ptr %len99, align 8
  %npages100 = getelementptr inbounds %struct.cifs_aio_ctx, ptr %ctx, i32 0, i32 9
  %26 = ptrtoint ptr %npages100 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %npages.0236, ptr %npages100, align 8
  %iter101 = getelementptr inbounds %struct.cifs_aio_ctx, ptr %ctx, i32 0, i32 4
  call void @iov_iter_bvec(ptr noundef %iter101, i32 noundef %rw, ptr noundef %bv.1, i32 noundef %npages.0236, i32 noundef %sub98) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then26, %if.then9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %while.end ], [ -12, %if.then26 ], [ -12, %if.then9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_alloc_hash(ptr noundef %name, ptr nocapture noundef %shash, ptr nocapture noundef %sdesc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdesc, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @crypto_alloc_shash(ptr noundef %name, i32 noundef 0, i32 noundef 0) #12
  %2 = ptrtoint ptr %shash to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %shash, align 4
  %cmp.i50 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %do.body3, label %if.end8.i

do.body3:                                         ; preds = %if.end
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_alloc_hash._rs, ptr noundef nonnull @__func__.cifs_alloc_hash) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.body3.do.end12_crit_edge, label %do.end

do.body3.do.end12_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

do.end:                                           ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name) #16
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body3.do.end12_crit_edge
  %3 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shash, align 4
  %5 = ptrtoint ptr %4 to i32
  store ptr null, ptr %shash, align 4
  %6 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sdesc, align 4
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 128
  %add = add i32 %8, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %9 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i, ptr %sdesc, align 4
  %cmp17 = icmp eq ptr %call9.i, null
  br i1 %cmp17, label %do.body20, label %if.end34

do.body20:                                        ; preds = %if.end8.i
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_alloc_hash._rs.105, ptr noundef nonnull @__func__.cifs_alloc_hash) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.do.end33_crit_edge, label %do.end26

do.body20.do.end33_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name) #16
  br label %do.end33

do.end33:                                         ; preds = %do.end26, %do.body20.do.end33_crit_edge
  %10 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shash, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %11, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %11, ptr noundef %base.i.i) #12
  %12 = ptrtoint ptr %shash to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %shash, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shash, align 4
  %15 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call9.i, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end33, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end12 ], [ -12, %do.end33 ], [ 0, %if.end34 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_free_hash(ptr nocapture noundef %shash, ptr nocapture noundef %sdesc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdesc, align 4
  tail call void @kfree(ptr noundef %1) #12
  %2 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sdesc, align 4
  %3 = ptrtoint ptr %shash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shash, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %4, ptr noundef %base.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %shash to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %shash, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rqst_page_get_length(ptr nocapture noundef readonly %rqst, i32 noundef %page, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %offset) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_pagesz = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 5
  %0 = ptrtoint ptr %rq_pagesz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_pagesz, align 4
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp eq i32 %page, 0
  br i1 %cmp, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %entry
  %rq_offset = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 3
  %3 = ptrtoint ptr %rq_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq_offset, align 4
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %offset, align 4
  %rq_npages = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 4
  %6 = ptrtoint ptr %rq_npages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %cond.end.if.then_crit_edge, label %if.then5

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cond.end.thread:                                  ; preds = %entry
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset, align 4
  %rq_npages21 = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 4
  %9 = ptrtoint ptr %rq_npages21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_npages21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp122 = icmp eq i32 %10, 1
  %sub23 = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %page)
  %cmp324 = icmp eq i32 %sub23, %page
  %or.cond25 = or i1 %cmp122, %cmp324
  br i1 %or.cond25, label %cond.end.thread.if.then_crit_edge, label %cond.end.thread.if.end9_crit_edge

cond.end.thread.if.end9_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

cond.end.thread.if.then_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %cond.end.thread.if.then_crit_edge, %cond.end.if.then_crit_edge
  %rq_tailsz = getelementptr inbounds %struct.smb_rqst, ptr %rqst, i32 0, i32 6
  %11 = ptrtoint ptr %rq_tailsz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq_tailsz, align 4
  br label %if.end9.sink.split

if.then5:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %rq_pagesz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_pagesz, align 4
  %15 = ptrtoint ptr %rq_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rq_offset, align 4
  %sub8 = sub i32 %14, %16
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.then5, %if.then
  %sub8.sink = phi i32 [ %sub8, %if.then5 ], [ %12, %if.then ]
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub8.sink, ptr %len, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %cond.end.thread.if.end9_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @extract_unc_hostname(ptr noundef %unc, ptr nocapture noundef writeonly %h, ptr nocapture noundef writeonly %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %unc.addr.0 = phi ptr [ %unc, %entry ], [ %incdec.ptr, %while.body ]
  %0 = ptrtoint ptr %unc.addr.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %unc.addr.0, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %1, label %while.cond.while.cond6_crit_edge [
    i8 47, label %while.cond.while.body_crit_edge
    i8 92, label %while.cond.while.body_crit_edge32
  ]

while.cond.while.body_crit_edge32:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.cond6_crit_edge:                 ; preds = %while.cond
  br label %while.cond6

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge32
  %incdec.ptr = getelementptr i8, ptr %unc.addr.0, i32 1
  br label %while.cond

while.cond6:                                      ; preds = %while.body19.critedge, %while.cond.while.cond6_crit_edge
  %3 = phi i8 [ %.pr, %while.body19.critedge ], [ %1, %while.cond.while.cond6_crit_edge ]
  %end.0 = phi ptr [ %incdec.ptr20, %while.body19.critedge ], [ %unc.addr.0, %while.cond.while.cond6_crit_edge ]
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %3, label %while.body19.critedge [
    i8 0, label %while.cond6.while.end21_crit_edge
    i8 92, label %while.cond6.while.end21_crit_edge33
    i8 47, label %while.cond6.while.end21_crit_edge34
  ]

while.cond6.while.end21_crit_edge34:              ; preds = %while.cond6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end21

while.cond6.while.end21_crit_edge33:              ; preds = %while.cond6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end21

while.cond6.while.end21_crit_edge:                ; preds = %while.cond6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end21

while.body19.critedge:                            ; preds = %while.cond6
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr20 = getelementptr i8, ptr %end.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %incdec.ptr20, align 1
  br label %while.cond6

while.end21:                                      ; preds = %while.cond6.while.end21_crit_edge, %while.cond6.while.end21_crit_edge33, %while.cond6.while.end21_crit_edge34
  %6 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %unc.addr.0, ptr %h, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %end.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %unc.addr.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.ptr.sub, ptr %len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_path_name(ptr noundef %dst, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %dst, ptr noundef %src, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @copy_path_name.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !257

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @copy_path_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1177, i32 noundef 9, ptr noundef null) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %spec.select = phi i32 [ %call, %entry.if.end27_crit_edge ], [ 4095, %if.then ], [ 4095, %land.rhs.if.end27_crit_edge ]
  %inc = add nuw i32 %spec.select, 1
  ret i32 %inc
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_get_tcp_super(ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  %sd.i = alloca %struct.super_cb_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sd.i) #12
  %0 = getelementptr inbounds %struct.super_cb_data, ptr %sd.i, i32 0, i32 1
  %1 = ptrtoint ptr %sd.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %server, ptr %sd.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %0, align 4
  call void @iterate_supers_type(ptr noundef nonnull @cifs_fs_type, ptr noundef nonnull @tcp_super_cb, ptr noundef nonnull %sd.i) #12
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.__cifs_get_super.exit_crit_edge, label %if.end.i

entry.__cifs_get_super.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cifs_get_super.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @cifs_sb_active(ptr noundef nonnull %4) #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  br label %__cifs_get_super.exit

__cifs_get_super.exit:                            ; preds = %if.end.i, %entry.__cifs_get_super.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ inttoptr (i32 -22 to ptr), %entry.__cifs_get_super.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sd.i) #12
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_super_cb(ptr noundef %sb, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.super_cb_data, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @cifs_sb_master_tcon(ptr noundef %5) #12
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call2, i32 0, i32 7
  %6 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ses, align 8
  %server3 = getelementptr inbounds %struct.cifs_ses, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %server3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %server3, align 8
  %cmp = icmp eq ptr %9, %3
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %sb1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sb, ptr %sb1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_put_tcp_super(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %sb, null
  %cmp.i.i = icmp ugt ptr %sb, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.__cifs_put_super.exit_crit_edge, label %if.then.i

entry.__cifs_put_super.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cifs_put_super.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cifs_sb_deactive(ptr noundef nonnull %sb) #12
  br label %__cifs_put_super.exit

__cifs_put_super.exit:                            ; preds = %if.then.i, %entry.__cifs_put_super.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_target_ip(ptr noundef %server, ptr noundef %share, i32 noundef %share_len, ptr nocapture noundef %result) local_unnamed_addr #0 align 64 {
entry:
  %tip = alloca ptr, align 4
  %tipaddr = alloca %struct.sockaddr, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tip) #12
  %0 = ptrtoint ptr %tip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tip, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tipaddr) #12
  %1 = call ptr @memset(ptr %tipaddr, i32 255, i32 16)
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %result, align 1
  %add = add i32 %share_len, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add, ptr noundef nonnull @.str.109, i32 noundef %share_len, ptr noundef %share) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.do.end19_crit_edge, label %do.body6

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @match_target_ip.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@match_target_ip, %land.lhs.true)) #12
          to label %do.end19 [label %land.lhs.true], !srcloc !252

land.lhs.true:                                    ; preds = %do.body6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @match_target_ip._rs, ptr noundef nonnull @.str.110) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end19_crit_edge, label %if.then13

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @match_target_ip.descriptor, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.110, ptr noundef %add.ptr) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %land.lhs.true.do.end19_crit_edge, %do.body6, %if.end.do.end19_crit_edge
  %call20 = call i32 @dns_resolve_server_name_to_ip(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %tip, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end19.out_crit_edge, label %do.body24

do.end19.out_crit_edge:                           ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body24:                                        ; preds = %do.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and25 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end52_crit_edge, label %do.body28

do.body24.do.end52_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @match_target_ip.descriptor.113, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@match_target_ip, %land.lhs.true40)) #12
          to label %do.end52 [label %land.lhs.true40], !srcloc !252

land.lhs.true40:                                  ; preds = %do.body28
  %call41 = call i32 @___ratelimit(ptr noundef nonnull @match_target_ip._rs.112, ptr noundef nonnull @.str.110) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end52_crit_edge, label %if.then43

land.lhs.true40.do.end52_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tip, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @match_target_ip.descriptor.113, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.110, ptr noundef %6) #12
  br label %do.end52

do.end52:                                         ; preds = %if.then43, %land.lhs.true40.do.end52_crit_edge, %do.body28, %do.body24.do.end52_crit_edge
  %7 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tip, align 4
  %call53 = call i32 @strlen(ptr noundef %8) #18
  %call54 = call i32 @cifs_convert_address(ptr noundef nonnull %tipaddr, ptr noundef %8, i32 noundef %call53) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body58, label %if.end72

do.body58:                                        ; preds = %do.end52
  %call59 = call i32 @___ratelimit(ptr noundef nonnull @match_target_ip._rs.115, ptr noundef nonnull @.str.110) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.body58.out_crit_edge, label %do.end64

do.body58.out_crit_edge:                          ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.110) #16
  br label %out

if.end72:                                         ; preds = %do.end52
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10
  %call73 = call zeroext i1 @cifs_match_ipaddr(ptr noundef %dstaddr, ptr noundef nonnull %tipaddr) #12
  %frombool74 = zext i1 %call73 to i8
  %9 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool74, ptr %result, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %10 = load i32, ptr @cifsFYI, align 4
  %and77 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end72.out_crit_edge, label %do.body80

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body80:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @match_target_ip.descriptor.118, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@match_target_ip, %land.lhs.true92)) #12
          to label %out [label %land.lhs.true92], !srcloc !252

land.lhs.true92:                                  ; preds = %do.body80
  %call93 = call i32 @___ratelimit(ptr noundef nonnull @match_target_ip._rs.117, ptr noundef nonnull @.str.110) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.out_crit_edge, label %if.then95

land.lhs.true92.out_crit_edge:                    ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then95:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %result, align 1, !range !255
  %13 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @match_target_ip.descriptor.118, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.110, i32 noundef %13) #12
  br label %out

out:                                              ; preds = %if.then95, %land.lhs.true92.out_crit_edge, %do.body80, %if.end72.out_crit_edge, %do.end64, %do.body58.out_crit_edge, %do.end19.out_crit_edge, %entry.out_crit_edge
  %retval.1.i.i124 = phi ptr [ %call9.i.i, %do.end19.out_crit_edge ], [ null, %entry.out_crit_edge ], [ %call9.i.i, %do.end64 ], [ %call9.i.i, %do.body58.out_crit_edge ], [ %call9.i.i, %if.end72.out_crit_edge ], [ %call9.i.i, %land.lhs.true92.out_crit_edge ], [ %call9.i.i, %if.then95 ], [ %call9.i.i, %do.body80 ]
  %rc.0 = phi i32 [ %call20, %do.end19.out_crit_edge ], [ -12, %entry.out_crit_edge ], [ -22, %do.end64 ], [ -22, %do.body58.out_crit_edge ], [ 0, %if.end72.out_crit_edge ], [ 0, %land.lhs.true92.out_crit_edge ], [ 0, %if.then95 ], [ 0, %do.body80 ]
  call void @kfree(ptr noundef %retval.1.i.i124) #12
  %14 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tip, align 4
  call void @kfree(ptr noundef %15) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tipaddr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tip) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dns_resolve_server_name_to_ip(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_convert_address(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cifs_match_ipaddr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_update_super_prepath(ptr nocapture noundef %cifs_sb, ptr noundef %prefix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prepath = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 9
  %0 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prepath, align 4
  tail call void @kfree(ptr noundef %1) #12
  %tobool.not = icmp eq ptr %prefix, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %prefix to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prefix, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = tail call noalias ptr @kstrdup(ptr noundef nonnull %prefix, i32 noundef 2592) #12
  %4 = ptrtoint ptr %prepath to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %prepath, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %if.then
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %5 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 92, i8 47
  %..i18 = select i1 %tobool.not.i, i32 47, i32 92
  %call5.i = tail call ptr @strchr(ptr noundef nonnull %call, i32 noundef %..i18) #12
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %if.end.if.end9_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %if.end.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %..i, ptr %call7.i, align 1
  %call.i = tail call ptr @strchr(ptr noundef nonnull %call7.i, i32 noundef %..i18) #12
  %tobool.not.i19 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i19, label %while.body.i.if.end9_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.if.end9_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %8 = ptrtoint ptr %prepath to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %prepath, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %while.body.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %9 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mnt_cifs_flags, align 4
  %or = or i32 %10, 16777216
  store i32 %or, ptr %mnt_cifs_flags, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_dfs_query_info_nonascii_quirk(i32 noundef %xid, ptr nocapture noundef readonly %tcon, ptr noundef %cifs_sb, ptr nocapture noundef readonly %linkpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 6
  %0 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 92, i8 47
  %2 = ptrtoint ptr %treeName to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %treeName, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %..i)
  %cmp = icmp eq i8 %3, %..i
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3 = getelementptr %struct.cifs_tcon, ptr %tcon, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %..i)
  %cmp6 = icmp eq i8 %5, %..i
  %spec.select = select i1 %cmp6, ptr %arrayidx3, ptr %treeName
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %treename.0 = phi ptr [ %treeName, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call8 = tail call i32 @strlen(ptr noundef %linkpath) #18
  %call9 = tail call i32 @strnlen(ptr noundef %treename.0, i32 noundef 1285) #18
  %add = add i32 %call9, %call8
  %add10 = add i32 %add, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool14.not = icmp eq i32 %call9, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %6 = call ptr @memcpy(ptr %call9.i.i, ptr %treename.0, i32 %call9)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %call9
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %linkpath, i32 %call8)
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %8 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ses, align 8
  %local_nls = getelementptr inbounds %struct.cifs_sb_info, ptr %cifs_sb, i32 0, i32 3
  %10 = ptrtoint ptr %local_nls to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %local_nls, align 4
  %call17 = tail call i32 @cifs_remap(ptr noundef %cifs_sb) #12
  %call18 = tail call i32 @dfs_cache_find(i32 noundef %xid, ptr noundef %9, ptr noundef %11, i32 noundef %call17, ptr noundef nonnull %call9.i.i, ptr noundef null, ptr noundef null) #12
  %12 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call18, label %do.body76 [
    i32 0, label %do.body22
    i32 -17, label %do.body45
  ]

do.body22:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %13 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.body22.if.end106_crit_edge, label %do.body25

do.body22.if.end106_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

do.body25:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_query_info_nonascii_quirk.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_query_info_nonascii_quirk, %land.lhs.true30)) #12
          to label %if.end106 [label %land.lhs.true30], !srcloc !252

land.lhs.true30:                                  ; preds = %do.body25
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_query_info_nonascii_quirk._rs, ptr noundef nonnull @.str.120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.if.end106_crit_edge, label %if.then33

land.lhs.true30.if.end106_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_query_info_nonascii_quirk.descriptor, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.3, ptr noundef nonnull %call9.i.i) #12
  br label %if.end106

do.body45:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %14 = load i32, ptr @cifsFYI, align 4
  %and46 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.if.end106_crit_edge, label %do.body49

do.body45.if.end106_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

do.body49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_query_info_nonascii_quirk.descriptor.123, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_query_info_nonascii_quirk, %land.lhs.true61)) #12
          to label %if.end106 [label %land.lhs.true61], !srcloc !252

land.lhs.true61:                                  ; preds = %do.body49
  %call62 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_query_info_nonascii_quirk._rs.122, ptr noundef nonnull @.str.120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true61.if.end106_crit_edge, label %if.then64

land.lhs.true61.if.end106_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_query_info_nonascii_quirk.descriptor.123, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.3, ptr noundef nonnull %call9.i.i) #12
  br label %if.end106

do.body76:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %15 = load i32, ptr @cifsFYI, align 4
  %and77 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.if.end106_crit_edge, label %do.body80

do.body76.if.end106_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

do.body80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dfs_query_info_nonascii_quirk.descriptor.126, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dfs_query_info_nonascii_quirk, %land.lhs.true92)) #12
          to label %if.end106 [label %land.lhs.true92], !srcloc !252

land.lhs.true92:                                  ; preds = %do.body80
  %call93 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dfs_query_info_nonascii_quirk._rs.125, ptr noundef nonnull @.str.120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.if.end106_crit_edge, label %if.then95

land.lhs.true92.if.end106_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then95:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dfs_query_info_nonascii_quirk.descriptor.126, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.120, i32 noundef %call18) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then95, %land.lhs.true92.if.end106_crit_edge, %do.body80, %do.body76.if.end106_crit_edge, %if.then64, %land.lhs.true61.if.end106_crit_edge, %do.body49, %do.body45.if.end106_crit_edge, %if.then33, %land.lhs.true30.if.end106_crit_edge, %do.body25, %do.body22.if.end106_crit_edge
  %rc.0 = phi i32 [ %call18, %if.then95 ], [ %call18, %land.lhs.true92.if.end106_crit_edge ], [ %call18, %do.body76.if.end106_crit_edge ], [ -66, %do.body22.if.end106_crit_edge ], [ -66, %land.lhs.true30.if.end106_crit_edge ], [ -66, %if.then33 ], [ -2, %do.body45.if.end106_crit_edge ], [ -2, %land.lhs.true61.if.end106_crit_edge ], [ -2, %if.then64 ], [ -66, %do.body25 ], [ -2, %do.body49 ], [ %call18, %do.body80 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end106 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfs_cache_find(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_remap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iterate_supers_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_sb_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_sb_deactive(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !119, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !184, !186, !187, !188, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !230, !232, !233, !234, !235, !237, !239, !240}
!llvm.named.register.sp = !{!242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/misc.c", i32 48, i32 3}
!2 = !{ptr @_get_xid._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @_get_xid.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @sesInfoAlloc.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/cifs/misc.c", i32 76, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sesInfoAlloc.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../fs/cifs/misc.c", i32 77, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sesInfoAlloc.__key.8, !15, !"__key", i1 false, i1 false}
!15 = !{!"../fs/cifs/misc.c", i32 78, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sesInfoFree._rs, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../fs/cifs/misc.c", i32 87, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sesInfoFree.descriptor, !18, !"descriptor", i1 false, i1 false}
!22 = !{ptr @tconInfoAlloc.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/cifs/misc.c", i32 123, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tconInfoAlloc.__key.13, !26, !"__key", i1 false, i1 false}
!26 = !{!"../fs/cifs/misc.c", i32 124, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tconInfoAlloc.__key.15, !29, !"__key", i1 false, i1 false}
!29 = !{!"../fs/cifs/misc.c", i32 125, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tconInfoFree._rs, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../fs/cifs/misc.c", i32 136, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tconInfoFree.descriptor, !32, !"descriptor", i1 false, i1 false}
!36 = !{ptr @cifs_small_buf_release._rs, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../fs/cifs/misc.c", i32 213, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cifs_small_buf_release.descriptor, !37, !"descriptor", i1 false, i1 false}
!41 = !{ptr @checkSMB._rs, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../fs/cifs/misc.c", i32 312, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @checkSMB.descriptor, !42, !"descriptor", i1 false, i1 false}
!46 = !{ptr @checkSMB._rs.23, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../fs/cifs/misc.c", i32 339, i32 4}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @checkSMB._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @checkSMB._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @checkSMB._rs.25, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../fs/cifs/misc.c", i32 341, i32 4}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @checkSMB._entry.26, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @checkSMB._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @checkSMB._rs.29, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../fs/cifs/misc.c", i32 352, i32 3}
!58 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @checkSMB._entry.30, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @checkSMB._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @checkSMB._rs.33, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../fs/cifs/misc.c", i32 365, i32 3}
!63 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @checkSMB.descriptor.34, !62, !"descriptor", i1 false, i1 false}
!65 = !{ptr @checkSMB._rs.36, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../fs/cifs/misc.c", i32 369, i32 4}
!67 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @checkSMB._entry.37, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @checkSMB._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @checkSMB._rs.40, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../fs/cifs/misc.c", i32 382, i32 4}
!72 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @checkSMB._entry.41, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @checkSMB._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @is_valid_oplock_break._rs, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../fs/cifs/misc.c", i32 401, i32 2}
!77 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @is_valid_oplock_break.descriptor, !76, !"descriptor", i1 false, i1 false}
!80 = !{ptr @is_valid_oplock_break._rs.46, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../fs/cifs/misc.c", i32 415, i32 5}
!82 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @is_valid_oplock_break.descriptor.47, !81, !"descriptor", i1 false, i1 false}
!84 = !{ptr @is_valid_oplock_break._rs.49, !85, !"_rs", i1 false, i1 false}
!85 = !{!"../fs/cifs/misc.c", i32 421, i32 4}
!86 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @is_valid_oplock_break.descriptor.50, !85, !"descriptor", i1 false, i1 false}
!88 = !{ptr @is_valid_oplock_break._rs.52, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../fs/cifs/misc.c", i32 428, i32 4}
!90 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @is_valid_oplock_break.descriptor.53, !89, !"descriptor", i1 false, i1 false}
!92 = !{ptr @is_valid_oplock_break._rs.55, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../fs/cifs/misc.c", i32 443, i32 4}
!94 = !{ptr @.str.57, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @is_valid_oplock_break.descriptor.56, !93, !"descriptor", i1 false, i1 false}
!96 = !{ptr @is_valid_oplock_break._rs.58, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../fs/cifs/misc.c", i32 455, i32 2}
!98 = !{ptr @.str.60, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @is_valid_oplock_break.descriptor.59, !97, !"descriptor", i1 false, i1 false}
!100 = !{ptr @is_valid_oplock_break._rs.61, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../fs/cifs/misc.c", i32 477, i32 5}
!102 = !{ptr @.str.63, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @is_valid_oplock_break.descriptor.62, !101, !"descriptor", i1 false, i1 false}
!104 = !{ptr @is_valid_oplock_break._rs.64, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../fs/cifs/misc.c", i32 494, i32 4}
!106 = !{ptr @.str.66, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @is_valid_oplock_break.descriptor.65, !105, !"descriptor", i1 false, i1 false}
!108 = !{ptr @is_valid_oplock_break._rs.67, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../fs/cifs/misc.c", i32 499, i32 2}
!110 = !{ptr @.str.69, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @is_valid_oplock_break.descriptor.68, !109, !"descriptor", i1 false, i1 false}
!112 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/cifs/misc.c", i32 509, i32 17}
!114 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/cifs/misc.c", i32 509, i32 29}
!116 = !{ptr @cifs_autodisable_serverino._rs, !117, !"_rs", i1 false, i1 false}
!117 = !{!"../fs/cifs/misc.c", i32 524, i32 3}
!118 = !{ptr @__func__.cifs_autodisable_serverino, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.72, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cifs_autodisable_serverino._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @cifs_autodisable_serverino._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @cifs_autodisable_serverino._rs.74, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../fs/cifs/misc.c", i32 526, i32 3}
!125 = !{ptr @.str.76, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @cifs_autodisable_serverino._entry.75, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @cifs_autodisable_serverino._entry_ptr.77, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @cifs_autodisable_serverino._rs.78, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../fs/cifs/misc.c", i32 527, i32 3}
!130 = !{ptr @.str.80, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @cifs_autodisable_serverino._entry.79, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @cifs_autodisable_serverino._entry_ptr.81, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @cifs_set_oplock_level._rs, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../fs/cifs/misc.c", i32 538, i32 3}
!135 = !{ptr @.str.82, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.83, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cifs_set_oplock_level.descriptor, !134, !"descriptor", i1 false, i1 false}
!138 = !{ptr @cifs_set_oplock_level._rs.84, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../fs/cifs/misc.c", i32 542, i32 3}
!140 = !{ptr @.str.86, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @cifs_set_oplock_level.descriptor.85, !139, !"descriptor", i1 false, i1 false}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../fs/cifs/misc.c", i32 624, i32 39}
!144 = !{ptr @parse_dfs_referrals._rs, !145, !"_rs", i1 false, i1 false}
!145 = !{!"../fs/cifs/misc.c", i32 842, i32 3}
!146 = !{ptr @__func__.parse_dfs_referrals, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.87, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @parse_dfs_referrals._entry, !145, !"_entry", i1 false, i1 false}
!149 = !{ptr @parse_dfs_referrals._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @parse_dfs_referrals._rs.88, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../fs/cifs/misc.c", i32 850, i32 3}
!152 = !{ptr @.str.90, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @parse_dfs_referrals._entry.89, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @parse_dfs_referrals._entry_ptr.91, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @parse_dfs_referrals._rs.92, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../fs/cifs/misc.c", i32 859, i32 2}
!157 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @parse_dfs_referrals.descriptor, !156, !"descriptor", i1 false, i1 false}
!159 = !{ptr @cifs_aio_ctx_alloc.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../fs/cifs/misc.c", i32 944, i32 2}
!161 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @setup_aio_ctx_iter._rs, !163, !"_rs", i1 false, i1 false}
!163 = !{!"../fs/cifs/misc.c", i32 1026, i32 4}
!164 = !{ptr @__func__.setup_aio_ctx_iter, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.95, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @setup_aio_ctx_iter._entry, !163, !"_entry", i1 false, i1 false}
!167 = !{ptr @setup_aio_ctx_iter._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @setup_aio_ctx_iter._rs.96, !169, !"_rs", i1 false, i1 false}
!169 = !{!"../fs/cifs/misc.c", i32 1031, i32 4}
!170 = !{ptr @.str.98, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @setup_aio_ctx_iter._entry.97, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @setup_aio_ctx_iter._entry_ptr.99, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @setup_aio_ctx_iter._rs.100, !174, !"_rs", i1 false, i1 false}
!174 = !{!"../fs/cifs/misc.c", i32 1042, i32 4}
!175 = !{ptr @.str.102, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @setup_aio_ctx_iter._entry.101, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @setup_aio_ctx_iter._entry_ptr.103, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @cifs_alloc_hash._rs, !179, !"_rs", i1 false, i1 false}
!179 = !{!"../fs/cifs/misc.c", i32 1088, i32 3}
!180 = !{ptr @__func__.cifs_alloc_hash, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.104, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @cifs_alloc_hash._entry, !179, !"_entry", i1 false, i1 false}
!183 = !{ptr @cifs_alloc_hash._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @cifs_alloc_hash._rs.105, !185, !"_rs", i1 false, i1 false}
!185 = !{!"../fs/cifs/misc.c", i32 1098, i32 3}
!186 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @cifs_alloc_hash._entry.106, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @cifs_alloc_hash._entry_ptr.108, !185, !"_entry_ptr", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../fs/cifs/misc.c", i32 1177, i32 6}
!191 = !{ptr @.str.109, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/cifs/misc.c", i32 1260, i32 35}
!193 = !{ptr @match_target_ip._rs, !194, !"_rs", i1 false, i1 false}
!194 = !{!"../fs/cifs/misc.c", i32 1262, i32 2}
!195 = !{ptr @.str.110, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.111, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @match_target_ip.descriptor, !194, !"descriptor", i1 false, i1 false}
!198 = !{ptr @match_target_ip._rs.112, !199, !"_rs", i1 false, i1 false}
!199 = !{!"../fs/cifs/misc.c", i32 1268, i32 2}
!200 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @match_target_ip.descriptor.113, !199, !"descriptor", i1 false, i1 false}
!202 = !{ptr @match_target_ip._rs.115, !203, !"_rs", i1 false, i1 false}
!203 = !{!"../fs/cifs/misc.c", i32 1271, i32 3}
!204 = !{ptr @.str.116, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @match_target_ip._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @match_target_ip._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @match_target_ip._rs.117, !208, !"_rs", i1 false, i1 false}
!208 = !{!"../fs/cifs/misc.c", i32 1279, i32 2}
!209 = !{ptr @.str.119, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @match_target_ip.descriptor.118, !208, !"descriptor", i1 false, i1 false}
!211 = !{ptr @cifs_dfs_query_info_nonascii_quirk._rs, !212, !"_rs", i1 false, i1 false}
!212 = !{!"../fs/cifs/misc.c", i32 1341, i32 3}
!213 = !{ptr @.str.120, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.121, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @cifs_dfs_query_info_nonascii_quirk.descriptor, !212, !"descriptor", i1 false, i1 false}
!216 = !{ptr @cifs_dfs_query_info_nonascii_quirk._rs.122, !217, !"_rs", i1 false, i1 false}
!217 = !{!"../fs/cifs/misc.c", i32 1345, i32 3}
!218 = !{ptr @.str.124, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @cifs_dfs_query_info_nonascii_quirk.descriptor.123, !217, !"descriptor", i1 false, i1 false}
!220 = !{ptr @cifs_dfs_query_info_nonascii_quirk._rs.125, !221, !"_rs", i1 false, i1 false}
!221 = !{!"../fs/cifs/misc.c", i32 1349, i32 3}
!222 = !{ptr @.str.127, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @cifs_dfs_query_info_nonascii_quirk.descriptor.126, !221, !"descriptor", i1 false, i1 false}
!224 = !{ptr @check_smb_hdr._rs, !225, !"_rs", i1 false, i1 false}
!225 = !{!"../fs/cifs/misc.c", i32 288, i32 3}
!226 = !{ptr @__func__.check_smb_hdr, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.128, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @check_smb_hdr._entry, !225, !"_entry", i1 false, i1 false}
!229 = !{ptr @check_smb_hdr._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @check_smb_hdr._rs.129, !231, !"_rs", i1 false, i1 false}
!231 = !{!"../fs/cifs/misc.c", i32 301, i32 2}
!232 = !{ptr @.str.131, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @check_smb_hdr._entry.130, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @check_smb_hdr._entry_ptr.132, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.133, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!237 = !{ptr @init_completion.__key, !238, !"__key", i1 false, i1 false}
!238 = !{!"../include/linux/completion.h", i32 87, i32 2}
!239 = !{ptr @.str.134, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.135, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../include/linux/mm.h", i32 717, i32 2}
!242 = !{!"sp"}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{i64 2148235272, i64 2148235277, i64 2148235290, i64 2148235334, i64 2148235368, i64 2148235389}
!253 = !{i64 2148614546, i64 2148614572, i64 2148614601, i64 2148614635, i64 2148614666, i64 2148614689}
!254 = !{i64 2148617011, i64 2148617037, i64 2148617066, i64 2148617100, i64 2148617131, i64 2148617154}
!255 = !{i8 0, i8 2}
!256 = !{!"branch_weights", i32 1, i32 2000}
!257 = !{!"branch_weights", i32 2000, i32 1}
!258 = !{i64 2154295387, i64 2154295870, i64 2154295424, i64 2154295480, i64 2154295514, i64 2154295538, i64 2154295579, i64 2154295600, i64 2154295628, i64 2154295662}
!259 = !{i64 2148703022}
!260 = !{i64 2148617731, i64 2148617763, i64 2148617792, i64 2148617826, i64 2148617857, i64 2148617880}
!261 = !{i64 2148703251}
!262 = !{!"auto-init"}
!263 = !{!"branch_weights", i32 2002, i32 2000}
