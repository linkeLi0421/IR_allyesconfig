; ModuleID = '/llk/IR_all_yes/fs/cifs/cifsfs.c_pt.bc'
source_filename = "../fs/cifs/cifsfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.126 }
%union.anon.126 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.21 }
%union.anon.21 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.31, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.127 }
%union.anon.127 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.cifs_mnt_data = type { ptr, ptr, i32 }
%struct.smb3_fs_context = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], [16 x i8], %struct.kuid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i8, i16, i8, i8, [5 x i8], [16 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], i32, i32, ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, [4 x i8], i64, i32, i32, i32, i16, i8, i8, ptr, [4 x i8] }>
%struct.__kernel_sockaddr_storage = type { %union.anon.151 }
%union.anon.151 = type { ptr, [124 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.119, %struct.list_head, %struct.list_head, %union.anon.120 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.119 = type { %struct.list_head }
%union.anon.120 = type { %struct.hlist_node }
%struct.timespec64 = type { i64, i32 }
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
%struct.smb_version_values = type { ptr, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i16, i16, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.86 = type { %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.128 = type { i32 }
%union.anon.129 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.131 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cifsFileInfo = type { %struct.list_head, %struct.list_head, ptr, %struct.kuid_t, i32, %struct.cifs_fid, %struct.list_head, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.cifs_search_info, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8 }
%struct.cifs_fid = type { i16, i64, i64, [16 x i8], [16 x i8], i32, ptr, i32, i64, i8 }
%struct.cifs_search_info = type { i64, i16, i16, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.tcon_link = type { %struct.rb_node, %struct.kuid_t, i32, i32, %struct.atomic_t, ptr }
%struct.smb_version_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.103, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.78 }
%struct.llist_node = type { ptr }
%union.anon.78 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.80 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.103 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.76 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.76 = type { %struct.callback_head }
%struct.cifsInodeInfo = type { i8, %struct.list_head, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, %struct.spinlock, i32, i32, i64, i64, i64, [16 x i8], ptr, %struct.inode, %struct.list_head, %struct.spinlock, i8 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@cifsFYI = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@enable_oplocks = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@linuxExtEnabled = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@lookupCacheEnabled = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@enable_gcm_256 = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@global_secflags = dso_local global { i32, [28 x i8] } { i32 133, [28 x i8] zeroinitializer }, align 32
@sign_CIFS_PDUs = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@CIFSMaxBufSize = dso_local global { i32, [28 x i8] } { i32 16384, [28 x i8] zeroinitializer }, align 32
@__param_str_CIFSMaxBufSize = internal constant [20 x i8] c"cifs.CIFSMaxBufSize\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_CIFSMaxBufSize = internal constant %struct.kernel_param { ptr @__param_str_CIFSMaxBufSize, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.126 { ptr @CIFSMaxBufSize } }, section "__param", align 4
@__UNIQUE_ID_CIFSMaxBufSizetype661 = internal constant [34 x i8] c"cifs.parmtype=CIFSMaxBufSize:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_CIFSMaxBufSize662 = internal constant [124 x i8] c"cifs.parm=CIFSMaxBufSize:Network buffer size (not including header) for CIFS requests. Default: 16384 Range: 8192 to 130048\00", section ".modinfo", align 1
@cifs_min_rcv = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_str_cifs_min_rcv = internal constant [18 x i8] c"cifs.cifs_min_rcv\00", align 1
@__param_cifs_min_rcv = internal constant %struct.kernel_param { ptr @__param_str_cifs_min_rcv, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.126 { ptr @cifs_min_rcv } }, section "__param", align 4
@__UNIQUE_ID_cifs_min_rcvtype663 = internal constant [32 x i8] c"cifs.parmtype=cifs_min_rcv:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cifs_min_rcv664 = internal constant [74 x i8] c"cifs.parm=cifs_min_rcv:Network buffers in pool. Default: 4 Range: 1 to 64\00", section ".modinfo", align 1
@cifs_min_small = dso_local global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_str_cifs_min_small = internal constant [20 x i8] c"cifs.cifs_min_small\00", align 1
@__param_cifs_min_small = internal constant %struct.kernel_param { ptr @__param_str_cifs_min_small, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.126 { ptr @cifs_min_small } }, section "__param", align 4
@__UNIQUE_ID_cifs_min_smalltype665 = internal constant [34 x i8] c"cifs.parmtype=cifs_min_small:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cifs_min_small666 = internal constant [84 x i8] c"cifs.parm=cifs_min_small:Small network buffers in pool. Default: 30 Range: 2 to 256\00", section ".modinfo", align 1
@cifs_max_pending = dso_local global { i32, [28 x i8] } { i32 32767, [28 x i8] zeroinitializer }, align 32
@__param_str_cifs_max_pending = internal constant [22 x i8] c"cifs.cifs_max_pending\00", align 1
@__param_cifs_max_pending = internal constant %struct.kernel_param { ptr @__param_str_cifs_max_pending, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.126 { ptr @cifs_max_pending } }, section "__param", align 4
@__UNIQUE_ID_cifs_max_pendingtype667 = internal constant [36 x i8] c"cifs.parmtype=cifs_max_pending:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cifs_max_pending668 = internal constant [130 x i8] c"cifs.parm=cifs_max_pending:Simultaneous requests to server for CIFS/SMB1 dialect (N/A for SMB3) Default: 32767 Range: 2 to 32767.\00", section ".modinfo", align 1
@slow_rsp_threshold = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_slow_rsp_threshold = internal constant [24 x i8] c"cifs.slow_rsp_threshold\00", align 1
@__param_slow_rsp_threshold = internal constant %struct.kernel_param { ptr @__param_str_slow_rsp_threshold, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @slow_rsp_threshold } }, section "__param", align 4
@__UNIQUE_ID_slow_rsp_thresholdtype669 = internal constant [38 x i8] c"cifs.parmtype=slow_rsp_threshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_slow_rsp_threshold670 = internal constant [147 x i8] c"cifs.parm=slow_rsp_threshold:Amount of time (in seconds) to wait before logging that a response is delayed. Default: 1 (if set to 0 disables msg).\00", section ".modinfo", align 1
@__param_str_enable_oplocks = internal constant [20 x i8] c"cifs.enable_oplocks\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_enable_oplocks = internal constant %struct.kernel_param { ptr @__param_str_enable_oplocks, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @enable_oplocks } }, section "__param", align 4
@__UNIQUE_ID_enable_oplockstype671 = internal constant [34 x i8] c"cifs.parmtype=enable_oplocks:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_oplocks672 = internal constant [67 x i8] c"cifs.parm=enable_oplocks:Enable or disable oplocks. Default: y/Y/1\00", section ".modinfo", align 1
@__param_str_enable_gcm_256 = internal constant [20 x i8] c"cifs.enable_gcm_256\00", align 1
@__param_enable_gcm_256 = internal constant %struct.kernel_param { ptr @__param_str_enable_gcm_256, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @enable_gcm_256 } }, section "__param", align 4
@__UNIQUE_ID_enable_gcm_256type673 = internal constant [34 x i8] c"cifs.parmtype=enable_gcm_256:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_gcm_256674 = internal constant [94 x i8] c"cifs.parm=enable_gcm_256:Enable requesting strongest (256 bit) GCM encryption. Default: n/N/0\00", section ".modinfo", align 1
@__param_str_require_gcm_256 = internal constant [21 x i8] c"cifs.require_gcm_256\00", align 1
@require_gcm_256 = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_require_gcm_256 = internal constant %struct.kernel_param { ptr @__param_str_require_gcm_256, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @require_gcm_256 } }, section "__param", align 4
@__UNIQUE_ID_require_gcm_256type675 = internal constant [35 x i8] c"cifs.parmtype=require_gcm_256:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_require_gcm_256676 = internal constant [85 x i8] c"cifs.parm=require_gcm_256:Require strongest (256 bit) GCM encryption. Default: n/N/0\00", section ".modinfo", align 1
@__param_str_enable_negotiate_signing = internal constant [30 x i8] c"cifs.enable_negotiate_signing\00", align 1
@enable_negotiate_signing = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_negotiate_signing = internal constant %struct.kernel_param { ptr @__param_str_enable_negotiate_signing, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @enable_negotiate_signing } }, section "__param", align 4
@__UNIQUE_ID_enable_negotiate_signingtype677 = internal constant [44 x i8] c"cifs.parmtype=enable_negotiate_signing:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_negotiate_signing678 = internal constant [107 x i8] c"cifs.parm=enable_negotiate_signing:Enable negotiating packet signing algorithm with server. Default: n/N/0\00", section ".modinfo", align 1
@__param_str_disable_legacy_dialects = internal constant [29 x i8] c"cifs.disable_legacy_dialects\00", align 1
@disable_legacy_dialects = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_legacy_dialects = internal constant %struct.kernel_param { ptr @__param_str_disable_legacy_dialects, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @disable_legacy_dialects } }, section "__param", align 4
@__UNIQUE_ID_disable_legacy_dialectstype679 = internal constant [43 x i8] c"cifs.parmtype=disable_legacy_dialects:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_legacy_dialects680 = internal constant [287 x i8] c"cifs.parm=disable_legacy_dialects:To improve security it may be helpful to restrict the ability to override the default dialects (SMB2.1, SMB3 and SMB3.02) on mount with old dialects (CIFS/SMB1 and SMB2) since vers=1.0 (CIFS/SMB1) and vers=2.0 are weaker and less secure. Default: n/N/0\00", section ".modinfo", align 1
@cifs_smb3_do_mount._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cifs_smb3_do_mount\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/cifs/cifsfs.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CIFS: %s: Devname: %s flags: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016CIFS: Attempting to mount %s\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount._entry_ptr = internal global ptr @cifs_smb3_do_mount._entry, section ".printk_index", align 4
@cifs_smb3_do_mount._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: cifs_mount failed w/return code = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount._entry_ptr.10 = internal global ptr @cifs_smb3_do_mount._entry.8, section ".printk_index", align 4
@cifs_smb3_do_mount._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CIFS: %s: Use existing superblock\0A\00", [61 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_smb3_do_mount.descriptor.15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CIFS: %s: dentry root is: %p\0A\00", [34 x i8] zeroinitializer }, align 32
@smb3_fs_parameters = external dso_local constant [0 x %struct.fs_parameter_spec], align 4
@cifs_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.1, i32 32768, ptr @smb3_init_fs_context, ptr @smb3_fs_parameters, ptr null, ptr @cifs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias681 = internal constant [19 x i8] c"cifs.alias=fs-cifs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias682 = internal constant [19 x i8] c"cifs.alias=fs-smb3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias683 = internal constant [16 x i8] c"cifs.alias=smb3\00", section ".modinfo", align 1
@cifs_dir_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @cifs_lookup, ptr null, ptr @cifs_permission, ptr null, ptr null, ptr @cifs_create, ptr @cifs_hardlink, ptr @cifs_unlink, ptr @cifs_symlink, ptr @cifs_mkdir, ptr @cifs_rmdir, ptr @cifs_mknod, ptr @cifs_rename2, ptr @cifs_setattr, ptr @cifs_getattr, ptr @cifs_listxattr, ptr null, ptr null, ptr @cifs_atomic_open, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@cifs_file_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @cifs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cifs_setattr, ptr @cifs_getattr, ptr @cifs_listxattr, ptr @cifs_fiemap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@cifs_symlink_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @cifs_get_link, ptr @cifs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cifs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@cifs_file_copychunk_range._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_file_copychunk_range.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 1, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cifs_file_copychunk_range\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CIFS: %s: copychunk range\0A\00", [37 x i8] zeroinitializer }, align 32
@cifs_file_copychunk_range._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_file_copychunk_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CIFS: VFS: missing cifsFileInfo on copy range src file\0A\00", [38 x i8] zeroinitializer }, align 32
@cifs_file_copychunk_range._entry_ptr = internal global ptr @cifs_file_copychunk_range._entry, section ".printk_index", align 4
@cifs_file_copychunk_range._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_file_copychunk_range._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013CIFS: VFS: source and target of copy not on same server\0A\00", [37 x i8] zeroinitializer }, align 32
@cifs_file_copychunk_range._entry_ptr.24 = internal global ptr @cifs_file_copychunk_range._entry.22, section ".printk_index", align 4
@cifs_file_copychunk_range._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_file_copychunk_range.descriptor.26 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.27, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CIFS: %s: about to flush pages\0A\00", [32 x i8] zeroinitializer }, align 32
@cifs_file_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @cifs_llseek, ptr null, ptr null, ptr @cifs_loose_read_iter, ptr @cifs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @cifs_ioctl, ptr null, ptr @cifs_file_mmap, i32 0, ptr @cifs_open, ptr @cifs_flush, ptr @cifs_close, ptr @cifs_fsync, ptr null, ptr @cifs_lock, ptr null, ptr null, ptr null, ptr @cifs_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @cifs_setlease, ptr @cifs_fallocate, ptr null, ptr @cifs_copy_file_range, ptr @cifs_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@cifs_file_strict_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @cifs_llseek, ptr null, ptr null, ptr @cifs_strict_readv, ptr @cifs_strict_writev, ptr null, ptr null, ptr null, ptr null, ptr @cifs_ioctl, ptr null, ptr @cifs_file_strict_mmap, i32 0, ptr @cifs_open, ptr @cifs_flush, ptr @cifs_close, ptr @cifs_strict_fsync, ptr null, ptr @cifs_lock, ptr null, ptr null, ptr null, ptr @cifs_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @cifs_setlease, ptr @cifs_fallocate, ptr null, ptr @cifs_copy_file_range, ptr @cifs_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@cifs_file_direct_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @cifs_llseek, ptr null, ptr null, ptr @cifs_direct_readv, ptr @cifs_direct_writev, ptr null, ptr null, ptr null, ptr null, ptr @cifs_ioctl, ptr null, ptr @cifs_file_mmap, i32 0, ptr @cifs_open, ptr @cifs_flush, ptr @cifs_close, ptr @cifs_fsync, ptr null, ptr @cifs_lock, ptr null, ptr null, ptr null, ptr @cifs_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @cifs_setlease, ptr @cifs_fallocate, ptr null, ptr @cifs_copy_file_range, ptr @cifs_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@cifs_file_nobrl_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @cifs_llseek, ptr null, ptr null, ptr @cifs_loose_read_iter, ptr @cifs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @cifs_ioctl, ptr null, ptr @cifs_file_mmap, i32 0, ptr @cifs_open, ptr @cifs_flush, ptr @cifs_close, ptr @cifs_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @cifs_setlease, ptr @cifs_fallocate, ptr null, ptr @cifs_copy_file_range, ptr @cifs_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@cifs_file_strict_nobrl_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @cifs_llseek, ptr null, ptr null, ptr @cifs_strict_readv, ptr @cifs_strict_writev, ptr null, ptr null, ptr null, ptr null, ptr @cifs_ioctl, ptr null, ptr @cifs_file_strict_mmap, i32 0, ptr @cifs_open, ptr @cifs_flush, ptr @cifs_close, ptr @cifs_strict_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @cifs_setlease, ptr @cifs_fallocate, ptr null, ptr @cifs_copy_file_range, ptr @cifs_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@cifs_file_direct_nobrl_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @cifs_llseek, ptr null, ptr null, ptr @cifs_direct_readv, ptr @cifs_direct_writev, ptr null, ptr null, ptr null, ptr null, ptr @cifs_ioctl, ptr null, ptr @cifs_file_mmap, i32 0, ptr @cifs_open, ptr @cifs_flush, ptr @cifs_close, ptr @cifs_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @cifs_setlease, ptr @cifs_fallocate, ptr null, ptr @cifs_copy_file_range, ptr @cifs_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@cifs_dir_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cifs_readdir, ptr null, ptr @cifs_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @cifs_closedir, ptr @cifs_dir_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cifs_copy_file_range, ptr @cifs_remap_file_range, ptr null }, [32 x i8] zeroinitializer }, align 32
@exit_cifs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@exit_cifs.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 1, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exit_cifs\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CIFS: exit_smb3\0A\00", [47 x i8] zeroinitializer }, align 32
@smb3_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.157, i32 32768, ptr @smb3_init_fs_context, ptr @smb3_fs_parameters, ptr null, ptr @cifs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@deferredclose_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cifsoplockd_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@decrypt_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@fileinfo_put_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cifsiod_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author684 = internal constant [25 x i8] c"cifs.author=Steve French\00", section ".modinfo", align 1
@__UNIQUE_ID_file685 = internal constant [23 x i8] c"cifs.file=fs/cifs/cifs\00", section ".modinfo", align 1
@__UNIQUE_ID_license686 = internal constant [17 x i8] c"cifs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description687 = internal constant [148 x i8] c"cifs.description=VFS to access SMB3 servers e.g. Samba, Macs, Azure and Windows (and also older servers complying with the SNIA CIFS Specification)\00", section ".modinfo", align 1
@__UNIQUE_ID_version688 = internal constant [18 x i8] c"cifs.version=2.35\00", section ".modinfo", align 1
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.35\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.31 }, section "__modver", align 4
@__UNIQUE_ID_softdep689 = internal constant [17 x i8] c"cifs.softdep=ecb\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep690 = internal constant [18 x i8] c"cifs.softdep=hmac\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep691 = internal constant [17 x i8] c"cifs.softdep=md5\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep692 = internal constant [17 x i8] c"cifs.softdep=nls\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep693 = internal constant [17 x i8] c"cifs.softdep=aes\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep694 = internal constant [18 x i8] c"cifs.softdep=cmac\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep695 = internal constant [20 x i8] c"cifs.softdep=sha256\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep696 = internal constant [20 x i8] c"cifs.softdep=sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep697 = internal constant [19 x i8] c"cifs.softdep=aead2\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep698 = internal constant [17 x i8] c"cifs.softdep=ccm\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep699 = internal constant [17 x i8] c"cifs.softdep=gcm\00", section ".modinfo", align 1
@__initcall__kmod_cifs__700_1763_init_cifs6 = internal global ptr @init_cifs, section ".initcall6.init", align 4
@__exitcall_exit_cifs = internal global ptr @exit_cifs, section ".exitcall.exit", align 4
@cifs_tcp_ses_list = dso_local global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@cifs_tcp_ses_lock = dso_local global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@GlobalCurrentXid = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@GlobalTotalActiveXid = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@GlobalMaxActiveXid = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@GlobalMid_Lock = dso_local global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@sesInfoAllocCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@tconInfoAllocCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@tcpSesNextId = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@tcpSesAllocCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@tcpSesReconnectCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@tconInfoReconnectCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@bufAllocCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@totBufAllocCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@totSmBufAllocCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@smBufAllocCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@midCount = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@traceSMB = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@cifs_lock_secret = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@cifs_sm_req_poolp = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cifs_req_poolp = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cifs_mid_poolp = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cifs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @cifs_alloc_inode, ptr null, ptr @cifs_free_inode, ptr null, ptr @cifs_write_inode, ptr @cifs_drop_inode, ptr @cifs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cifs_statfs, ptr null, ptr @cifs_umount_begin, ptr @cifs_show_options, ptr @cifs_show_devname, ptr null, ptr @cifs_show_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cifs_xattr_handlers = external dso_local global [0 x ptr], align 4
@cifs_ci_dentry_ops = external dso_local constant %struct.dentry_operations, align 128
@cifs_dentry_ops = external dso_local constant %struct.dentry_operations, align 128
@cifs_read_super._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_read_super = private unnamed_addr constant [16 x i8] c"cifs_read_super\00", align 1
@cifs_read_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.cifs_read_super, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CIFS: VFS: %s: get root inode failed\0A\00", [56 x i8] zeroinitializer }, align 32
@cifs_read_super._entry_ptr = internal global ptr @cifs_read_super._entry, section ".printk_index", align 4
@cifs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cifs_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&cifs_inode->writers_lock\00", [38 x i8] zeroinitializer }, align 32
@cifs_alloc_inode.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&cifs_inode->open_file_lock\00", [36 x i8] zeroinitializer }, align 32
@cifs_alloc_inode.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&cifs_inode->deferred_lock\00", [37 x i8] zeroinitializer }, align 32
@cifs_statfs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_statfs.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cifs_statfs\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: in %s as Xid: %u with uid: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cifs_statfs._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_statfs.descriptor.41 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.42, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CIFS: %s: VFS: leaving %s (xid = %u) rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_enter = external dso_local global %struct.tracepoint, align 4
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/cifs/trace.h\00", [16 x i8] zeroinitializer }, align 32
@trace_smb3_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_smb3_exit_err = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_smb3_exit_done = external dso_local global %struct.tracepoint, align 4
@trace_smb3_exit_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cifs_umount_begin._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_umount_begin.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cifs_umount_begin\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"CIFS: %s: wake up tasks now - umount begin not complete\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vers\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",nolease\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",multiuser\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"username\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"domain\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",srcaddr=%pI6c\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",srcaddr=%pI4\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",srcaddr=BAD-AF:%i\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",forceuid\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",noforceuid\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",forcegid\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",noforcegid\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c",file_mode=0%ho,dir_mode=0%ho\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",iocharset=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",seal\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",signloosely\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",nocase\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",nodelete\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",locallease\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",hard\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",soft\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",persistenthandles\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",resilienthandles\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",posix\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",unix\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",nounix\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",nodfs\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",posixpaths\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",setuids\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",idsfromsid\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",serverino\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",rwpidforward\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",forcemand\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",nouser_xattr\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",mapchars\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",mapposix\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",sfu\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",nobrl\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",nohandlecache\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",modefromsid\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",cifsacl\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",dynperm\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",acl\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",mfsymlinks\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",fsc\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",nostrictsync\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",noperm\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",backupuid=%u\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",backupgid=%u\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",rsize=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",wsize=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",bsize=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",rasize=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",esize=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",echo_interval=%lu\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",max_credits=%u\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",snapshot=%llu\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",handletimeout=%u\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",actimeo=%lu\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",acdirmax=%lu\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",acregmax=%lu\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c",multichannel,max_channels=%zu\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",witness\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",sec=none\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",sec=\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ntlmv2\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"krb5\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ntlmssp\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",cruid=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",cache=\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"strict\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"singleclient\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"loose\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",addr=\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI6\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%%%u\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(unknown)\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",rdma\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \09\00", [29 x i8] zeroinitializer }, align 32
@cifs_get_root._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_root.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.136, ptr @.str.3, ptr @.str.137, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cifs_get_root\00", [18 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIFS: %s: Get root dentry for %s\0A\00", [62 x i8] zeroinitializer }, align 32
@cifs_file_write_iter._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_file_write_iter.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.138, ptr @.str.3, ptr @.str.139, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_file_write_iter\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"CIFS: %s: Set no oplock for inode=%p after a write operation\0A\00", [34 x i8] zeroinitializer }, align 32
@cifs_file_write_iter._rs.140 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_file_write_iter.descriptor.141 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.138, ptr @.str.3, ptr @.str.142, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CIFS: %s: cifs_file_write_iter: %d rc on %p inode\0A\00", [45 x i8] zeroinitializer }, align 32
@cifs_copy_file_range._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_copy_file_range.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.143, ptr @.str.3, ptr @.str.39, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_copy_file_range\00", [43 x i8] zeroinitializer }, align 32
@cifs_copy_file_range._rs.144 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_copy_file_range.descriptor.145 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.143, ptr @.str.3, ptr @.str.42, i8 1, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_remap_file_range._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_remap_file_range.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.3, ptr @.str.147, i8 1, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_remap_file_range\00", [42 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CIFS: %s: clone range\0A\00", [41 x i8] zeroinitializer }, align 32
@cifs_remap_file_range._rs.148 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_remap_file_range.descriptor.149 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.3, ptr @.str.39, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_remap_file_range._rs.150 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_remap_file_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.146, ptr @.str.3, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cifs_remap_file_range._entry_ptr = internal global ptr @cifs_remap_file_range._entry, section ".printk_index", align 4
@cifs_remap_file_range._rs.151 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_remap_file_range.descriptor.152 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.3, ptr @.str.27, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_remap_file_range._rs.153 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_remap_file_range.descriptor.154 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.146, ptr @.str.3, ptr @.str.42, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cifs_dir_fsync._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_dir_fsync.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.155, ptr @.str.3, ptr @.str.156, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_dir_fsync\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CIFS: %s: Sync directory - name: %pD datasync: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smb3\00", [27 x i8] zeroinitializer }, align 32
@cifs_req_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cifs_sm_req_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cifs_mid_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_cifs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_cifs.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.158, ptr @.str.3, ptr @.str.159, i8 1, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_cifs\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: slow_response_threshold msgs disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@init_cifs._rs.160 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_cifs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.158, ptr @.str.3, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013CIFS: VFS: slow response threshold set higher than recommended (0 to 32767)\0A\00", [49 x i8] zeroinitializer }, align 32
@init_cifs._entry_ptr = internal global ptr @init_cifs._entry, section ".printk_index", align 4
@init_cifs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cifs_tcp_ses_lock\00", [45 x i8] zeroinitializer }, align 32
@init_cifs.__key.163 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.164 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&GlobalMid_Lock\00", [16 x i8] zeroinitializer }, align 32
@init_cifs._rs.165 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_cifs.descriptor.166 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.158, ptr @.str.3, ptr @.str.167, i8 1, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: cifs_max_pending set to min of 2\0A\00", [52 x i8] zeroinitializer }, align 32
@init_cifs._rs.168 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@init_cifs.descriptor.169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.158, ptr @.str.3, ptr @.str.170, i8 1, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CIFS: %s: cifs_max_pending set to max of %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cifsiod\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smb3decryptd\00", [19 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cifsfileinfoput\00", [16 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cifsoplockd\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"deferredclose\00", [18 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cifs_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@cifs_init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.177 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cifsi->lock_sem\00", [47 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cifs_mpx_ids\00", [19 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cifs_request\00", [19 x i8] zeroinitializer }, align 32
@cifs_init_request_bufs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_init_request_bufs = private unnamed_addr constant [23 x i8] c"cifs_init_request_bufs\00", align 1
@cifs_init_request_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @__func__.cifs_init_request_bufs, ptr @.str.3, i32 1470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: cifs_min_rcv set to maximum (64)\0A\00", [49 x i8] zeroinitializer }, align 32
@cifs_init_request_bufs._entry_ptr = internal global ptr @cifs_init_request_bufs._entry, section ".printk_index", align 4
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cifs_small_rq\00", [18 x i8] zeroinitializer }, align 32
@cifs_init_request_bufs._rs.182 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_init_request_bufs.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.cifs_init_request_bufs, ptr @.str.3, ptr @.str.183, i8 1, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CIFS: %s: cifs_min_small set to maximum (256)\0A\00", [49 x i8] zeroinitializer }, align 32
@switch.table.cifs_show_options = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.117, ptr @.str.119, ptr @.str.118], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967278]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.187 = private unnamed_addr constant [8 x i8] c"cifsFYI\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 59, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"enable_oplocks\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 61, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"linuxExtEnabled\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 62, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"lookupCacheEnabled\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 63, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"enable_gcm_256\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 65, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant [16 x i8] c"global_secflags\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 68, i32 14 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"sign_CIFS_PDUs\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 70, i32 14 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"CIFSMaxBufSize\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 72, i32 14 }
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"cifs_min_rcv\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 77, i32 14 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"cifs_min_small\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 81, i32 14 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"cifs_max_pending\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 85, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant [19 x i8] c"slow_rsp_threshold\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 91, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant [16 x i8] c"require_gcm_256\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 66, i32 6 }
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"enable_negotiate_signing\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 67, i32 6 }
@___asan_gen_.229 = private unnamed_addr constant [24 x i8] c"disable_legacy_dialects\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 64, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 839, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 841, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 875, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 897, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 917, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [13 x i8] c"cifs_fs_type\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1065, i32 25 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1190, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1194, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1205, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1220, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [14 x i8] c"cifs_file_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1277, i32 30 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"cifs_file_strict_ops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1297, i32 30 }
@___asan_gen_.322 = private unnamed_addr constant [21 x i8] c"cifs_file_direct_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1317, i32 30 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"cifs_file_nobrl_ops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1337, i32 30 }
@___asan_gen_.328 = private unnamed_addr constant [27 x i8] c"cifs_file_strict_nobrl_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1355, i32 30 }
@___asan_gen_.331 = private unnamed_addr constant [27 x i8] c"cifs_file_direct_nobrl_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1373, i32 30 }
@___asan_gen_.334 = private unnamed_addr constant [13 x i8] c"cifs_dir_ops\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1391, i32 30 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1721, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [13 x i8] c"smb3_fs_type\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1075, i32 32 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"deferredclose_wq\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 127, i32 26 }
@___asan_gen_.352 = private unnamed_addr constant [15 x i8] c"cifsoplockd_wq\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 126, i32 26 }
@___asan_gen_.355 = private unnamed_addr constant [11 x i8] c"decrypt_wq\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 124, i32 26 }
@___asan_gen_.358 = private unnamed_addr constant [16 x i8] c"fileinfo_put_wq\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 125, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant [11 x i8] c"cifsiod_wq\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 123, i32 26 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1751, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant [18 x i8] c"cifs_tcp_ses_list\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1836, i32 33 }
@___asan_gen_.373 = private unnamed_addr constant [18 x i8] c"cifs_tcp_ses_lock\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1848, i32 27 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"GlobalCurrentXid\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1853, i32 28 }
@___asan_gen_.379 = private unnamed_addr constant [21 x i8] c"GlobalTotalActiveXid\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1854, i32 28 }
@___asan_gen_.382 = private unnamed_addr constant [19 x i8] c"GlobalMaxActiveXid\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1855, i32 28 }
@___asan_gen_.385 = private unnamed_addr constant [15 x i8] c"GlobalMid_Lock\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1856, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant [18 x i8] c"sesInfoAllocCount\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1861, i32 24 }
@___asan_gen_.391 = private unnamed_addr constant [19 x i8] c"tconInfoAllocCount\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1862, i32 24 }
@___asan_gen_.394 = private unnamed_addr constant [13 x i8] c"tcpSesNextId\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1863, i32 24 }
@___asan_gen_.397 = private unnamed_addr constant [17 x i8] c"tcpSesAllocCount\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1864, i32 24 }
@___asan_gen_.400 = private unnamed_addr constant [21 x i8] c"tcpSesReconnectCount\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1865, i32 24 }
@___asan_gen_.403 = private unnamed_addr constant [23 x i8] c"tconInfoReconnectCount\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1866, i32 24 }
@___asan_gen_.406 = private unnamed_addr constant [14 x i8] c"bufAllocCount\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1869, i32 24 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"totBufAllocCount\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1871, i32 24 }
@___asan_gen_.412 = private unnamed_addr constant [19 x i8] c"totSmBufAllocCount\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1872, i32 24 }
@___asan_gen_.415 = private unnamed_addr constant [16 x i8] c"smBufAllocCount\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1875, i32 24 }
@___asan_gen_.418 = private unnamed_addr constant [9 x i8] c"midCount\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [22 x i8] c"../fs/cifs/cifsglob.h\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1876, i32 24 }
@___asan_gen_.421 = private unnamed_addr constant [9 x i8] c"traceSMB\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 60, i32 6 }
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"cifs_lock_secret\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 128, i32 7 }
@___asan_gen_.427 = private unnamed_addr constant [18 x i8] c"cifs_sm_req_poolp\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 349, i32 12 }
@___asan_gen_.430 = private unnamed_addr constant [15 x i8] c"cifs_req_poolp\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 350, i32 12 }
@___asan_gen_.433 = private unnamed_addr constant [15 x i8] c"cifs_mid_poolp\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 351, i32 12 }
@___asan_gen_.436 = private unnamed_addr constant [15 x i8] c"cifs_super_ops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 742, i32 38 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 248, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [18 x i8] c"cifs_inode_cachep\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 345, i32 27 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 368, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 375, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 386, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 292, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 310, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [19 x i8] c"../fs/cifs/trace.h\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 609, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.491, i32 108, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 707, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 515, i32 21 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 520, i32 15 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 522, i32 15 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 524, i32 22 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 527, i32 22 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 535, i32 18 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 538, i32 18 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 541, i32 18 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 545, i32 16 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 548, i32 15 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 550, i32 15 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 552, i32 16 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 555, i32 15 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 557, i32 15 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 562, i32 17 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 566, i32 17 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 568, i32 15 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 570, i32 15 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 572, i32 15 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 574, i32 15 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 576, i32 15 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 578, i32 15 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 580, i32 15 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 582, i32 15 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 584, i32 15 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 586, i32 15 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 588, i32 15 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 590, i32 15 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 592, i32 15 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 594, i32 15 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 596, i32 15 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 598, i32 15 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 600, i32 15 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 602, i32 15 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 604, i32 15 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 606, i32 15 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 608, i32 15 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 610, i32 15 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 612, i32 15 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 614, i32 15 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 616, i32 15 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 618, i32 15 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 620, i32 15 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 622, i32 15 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 624, i32 15 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 626, i32 15 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 628, i32 15 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 630, i32 15 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 632, i32 15 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 634, i32 17 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 638, i32 17 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 642, i32 16 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 643, i32 16 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 644, i32 16 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 646, i32 17 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 648, i32 17 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 649, i32 16 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 654, i32 17 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 657, i32 17 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 659, i32 17 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 667, i32 17 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 669, i32 17 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 670, i32 17 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 674, i32 17 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 678, i32 15 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 242, i32 22 }
@___asan_gen_.701 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.701, i32 245, i32 24 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 435, i32 16 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 439, i32 14 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 443, i32 15 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 446, i32 15 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 449, i32 15 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 453, i32 15 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 458, i32 15 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 461, i32 17 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 468, i32 14 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 471, i32 15 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 473, i32 15 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 475, i32 15 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 477, i32 15 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 479, i32 15 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 412, i32 14 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 416, i32 17 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 419, i32 17 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 421, i32 18 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 424, i32 15 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 427, i32 15 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 496, i32 26 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 783, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 960, i32 4 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 979, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1260, i32 21 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1269, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1132, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1134, i32 8 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1138, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1155, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1173, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1250, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1077, i32 10 }
@___asan_gen_.835 = private unnamed_addr constant [16 x i8] c"cifs_req_cachep\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 346, i32 27 }
@___asan_gen_.838 = private unnamed_addr constant [19 x i8] c"cifs_sm_req_cachep\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 348, i32 27 }
@___asan_gen_.841 = private unnamed_addr constant [16 x i8] c"cifs_mid_cachep\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 347, i32 27 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1574, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1576, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1584, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1585, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1591, i32 3 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1594, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1598, i32 31 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1611, i32 31 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1618, i32 36 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1625, i32 35 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1632, i32 37 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1414, i32 40 }
@___asan_gen_.904 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1408, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1529, i32 38 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1458, i32 47 }
@___asan_gen_.919 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1470, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1488, i32 50 }
@___asan_gen_.928 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.931 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.932 = private constant [20 x i8] c"../fs/cifs/cifsfs.c\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.932, i32 1501, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant [31 x i8] c"switch.table.cifs_show_options\00", align 1
@llvm.compiler.used = appending global [311 x ptr] [ptr @__UNIQUE_ID_CIFSMaxBufSize662, ptr @__UNIQUE_ID_CIFSMaxBufSizetype661, ptr @__UNIQUE_ID_alias681, ptr @__UNIQUE_ID_alias682, ptr @__UNIQUE_ID_alias683, ptr @__UNIQUE_ID_author684, ptr @__UNIQUE_ID_cifs_max_pending668, ptr @__UNIQUE_ID_cifs_max_pendingtype667, ptr @__UNIQUE_ID_cifs_min_rcv664, ptr @__UNIQUE_ID_cifs_min_rcvtype663, ptr @__UNIQUE_ID_cifs_min_small666, ptr @__UNIQUE_ID_cifs_min_smalltype665, ptr @__UNIQUE_ID_description687, ptr @__UNIQUE_ID_disable_legacy_dialects680, ptr @__UNIQUE_ID_disable_legacy_dialectstype679, ptr @__UNIQUE_ID_enable_gcm_256674, ptr @__UNIQUE_ID_enable_gcm_256type673, ptr @__UNIQUE_ID_enable_negotiate_signing678, ptr @__UNIQUE_ID_enable_negotiate_signingtype677, ptr @__UNIQUE_ID_enable_oplocks672, ptr @__UNIQUE_ID_enable_oplockstype671, ptr @__UNIQUE_ID_file685, ptr @__UNIQUE_ID_license686, ptr @__UNIQUE_ID_require_gcm_256676, ptr @__UNIQUE_ID_require_gcm_256type675, ptr @__UNIQUE_ID_slow_rsp_threshold670, ptr @__UNIQUE_ID_slow_rsp_thresholdtype669, ptr @__UNIQUE_ID_softdep689, ptr @__UNIQUE_ID_softdep690, ptr @__UNIQUE_ID_softdep691, ptr @__UNIQUE_ID_softdep692, ptr @__UNIQUE_ID_softdep693, ptr @__UNIQUE_ID_softdep694, ptr @__UNIQUE_ID_softdep695, ptr @__UNIQUE_ID_softdep696, ptr @__UNIQUE_ID_softdep697, ptr @__UNIQUE_ID_softdep698, ptr @__UNIQUE_ID_softdep699, ptr @__UNIQUE_ID_version688, ptr @__exitcall_exit_cifs, ptr @__initcall__kmod_cifs__700_1763_init_cifs6, ptr @__modver_attr, ptr @__param_CIFSMaxBufSize, ptr @__param_cifs_max_pending, ptr @__param_cifs_min_rcv, ptr @__param_cifs_min_small, ptr @__param_disable_legacy_dialects, ptr @__param_enable_gcm_256, ptr @__param_enable_negotiate_signing, ptr @__param_enable_oplocks, ptr @__param_require_gcm_256, ptr @__param_slow_rsp_threshold, ptr @cifs_file_copychunk_range._entry, ptr @cifs_file_copychunk_range._entry.22, ptr @cifs_file_copychunk_range._entry_ptr, ptr @cifs_file_copychunk_range._entry_ptr.24, ptr @cifs_init_request_bufs._entry, ptr @cifs_init_request_bufs._entry_ptr, ptr @cifs_read_super._entry, ptr @cifs_read_super._entry_ptr, ptr @cifs_remap_file_range._entry, ptr @cifs_remap_file_range._entry_ptr, ptr @cifs_smb3_do_mount._entry, ptr @cifs_smb3_do_mount._entry.8, ptr @cifs_smb3_do_mount._entry_ptr, ptr @cifs_smb3_do_mount._entry_ptr.10, ptr @exit_cifs, ptr @init_cifs._entry, ptr @init_cifs._entry_ptr, ptr @cifsFYI, ptr @enable_oplocks, ptr @linuxExtEnabled, ptr @lookupCacheEnabled, ptr @enable_gcm_256, ptr @global_secflags, ptr @sign_CIFS_PDUs, ptr @CIFSMaxBufSize, ptr @cifs_min_rcv, ptr @cifs_min_small, ptr @cifs_max_pending, ptr @slow_rsp_threshold, ptr @require_gcm_256, ptr @enable_negotiate_signing, ptr @disable_legacy_dialects, ptr @cifs_smb3_do_mount._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_smb3_do_mount._rs.5, ptr @.str.6, ptr @cifs_smb3_do_mount._rs.7, ptr @.str.9, ptr @cifs_smb3_do_mount._rs.11, ptr @.str.13, ptr @cifs_smb3_do_mount._rs.14, ptr @.str.16, ptr @cifs_fs_type, ptr @cifs_file_copychunk_range._rs, ptr @.str.17, ptr @.str.18, ptr @cifs_file_copychunk_range._rs.19, ptr @.str.20, ptr @cifs_file_copychunk_range._rs.21, ptr @.str.23, ptr @cifs_file_copychunk_range._rs.25, ptr @.str.27, ptr @cifs_file_ops, ptr @cifs_file_strict_ops, ptr @cifs_file_direct_ops, ptr @cifs_file_nobrl_ops, ptr @cifs_file_strict_nobrl_ops, ptr @cifs_file_direct_nobrl_ops, ptr @cifs_dir_ops, ptr @exit_cifs._rs, ptr @.str.28, ptr @.str.29, ptr @smb3_fs_type, ptr @deferredclose_wq, ptr @cifsoplockd_wq, ptr @decrypt_wq, ptr @fileinfo_put_wq, ptr @cifsiod_wq, ptr @.str.30, ptr @.str.31, ptr @cifs_tcp_ses_list, ptr @cifs_tcp_ses_lock, ptr @GlobalCurrentXid, ptr @GlobalTotalActiveXid, ptr @GlobalMaxActiveXid, ptr @GlobalMid_Lock, ptr @sesInfoAllocCount, ptr @tconInfoAllocCount, ptr @tcpSesNextId, ptr @tcpSesAllocCount, ptr @tcpSesReconnectCount, ptr @tconInfoReconnectCount, ptr @bufAllocCount, ptr @totBufAllocCount, ptr @totSmBufAllocCount, ptr @smBufAllocCount, ptr @midCount, ptr @traceSMB, ptr @cifs_lock_secret, ptr @cifs_sm_req_poolp, ptr @cifs_req_poolp, ptr @cifs_mid_poolp, ptr @cifs_super_ops, ptr @cifs_read_super._rs, ptr @.str.32, ptr @cifs_inode_cachep, ptr @cifs_alloc_inode.__key, ptr @.str.33, ptr @cifs_alloc_inode.__key.34, ptr @.str.35, ptr @cifs_alloc_inode.__key.36, ptr @.str.37, ptr @cifs_statfs._rs, ptr @.str.38, ptr @.str.39, ptr @cifs_statfs._rs.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @cifs_umount_begin._rs, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @cifs_get_root._rs, ptr @.str.136, ptr @.str.137, ptr @cifs_file_write_iter._rs, ptr @.str.138, ptr @.str.139, ptr @cifs_file_write_iter._rs.140, ptr @.str.142, ptr @cifs_copy_file_range._rs, ptr @.str.143, ptr @cifs_copy_file_range._rs.144, ptr @cifs_remap_file_range._rs, ptr @.str.146, ptr @.str.147, ptr @cifs_remap_file_range._rs.148, ptr @cifs_remap_file_range._rs.150, ptr @cifs_remap_file_range._rs.151, ptr @cifs_remap_file_range._rs.153, ptr @cifs_dir_fsync._rs, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @cifs_req_cachep, ptr @cifs_sm_req_cachep, ptr @cifs_mid_cachep, ptr @init_cifs._rs, ptr @.str.158, ptr @.str.159, ptr @init_cifs._rs.160, ptr @.str.161, ptr @init_cifs.__key, ptr @.str.162, ptr @init_cifs.__key.163, ptr @.str.164, ptr @init_cifs._rs.165, ptr @.str.167, ptr @init_cifs._rs.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @cifs_init_once.__key, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @cifs_init_request_bufs._rs, ptr @.str.180, ptr @.str.181, ptr @cifs_init_request_bufs._rs.182, ptr @.str.183, ptr @switch.table.cifs_show_options], section "llvm.metadata"
@0 = internal global [250 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifsFYI to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_oplocks to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linuxExtEnabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookupCacheEnabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_gcm_256 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_secflags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sign_CIFS_PDUs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CIFSMaxBufSize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_min_rcv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_min_small to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_max_pending to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slow_rsp_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @require_gcm_256 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_negotiate_signing to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_legacy_dialects to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smb3_do_mount._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smb3_do_mount._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smb3_do_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smb3_do_mount._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smb3_do_mount._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smb3_do_mount._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_smb3_do_mount._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_copychunk_range._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_copychunk_range._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_copychunk_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_copychunk_range._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_copychunk_range._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_copychunk_range._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_strict_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_direct_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_nobrl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_strict_nobrl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_direct_nobrl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dir_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_cifs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deferredclose_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifsoplockd_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decrypt_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fileinfo_put_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifsiod_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_tcp_ses_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_tcp_ses_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GlobalCurrentXid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GlobalTotalActiveXid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GlobalMaxActiveXid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GlobalMid_Lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sesInfoAllocCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tconInfoAllocCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpSesNextId to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpSesAllocCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpSesReconnectCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tconInfoReconnectCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bufAllocCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @totBufAllocCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @totSmBufAllocCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smBufAllocCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midCount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceSMB to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_lock_secret to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sm_req_poolp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_req_poolp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mid_poolp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_read_super._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_read_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_alloc_inode.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_alloc_inode.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_statfs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_statfs._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_umount_begin._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_root._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_write_iter._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_file_write_iter._rs.140 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_copy_file_range._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_copy_file_range._rs.144 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_remap_file_range._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_remap_file_range._rs.148 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_remap_file_range._rs.150 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_remap_file_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_remap_file_range._rs.151 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_remap_file_range._rs.153 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_dir_fsync._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_req_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_sm_req_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_mid_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs._rs.160 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs.__key.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs._rs.165 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cifs._rs.168 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_init_request_bufs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_init_request_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_init_request_bufs._rs.182 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cifs_show_options to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_sb_active(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %active = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !605
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #13, !srcloc !606
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !607
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %s_active = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 16
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 1, ptr elementtype(i32) %s_active) #13, !srcloc !608
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_sb_deactive(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %active = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !609
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #13, !srcloc !610
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !611
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @deactivate_super(ptr noundef %sb) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cifs_smb3_do_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %old_ctx) local_unnamed_addr #0 align 64 {
entry:
  %mnt_data = alloca %struct.cifs_mnt_data, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mnt_data) #13
  %0 = getelementptr inbounds %struct.cifs_mnt_data, ptr %mnt_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cifs_mnt_data, ptr %mnt_data, i32 0, i32 2
  %2 = load i32, ptr @cifsFYI, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else16, label %do.body1

do.body1:                                         ; preds = %entry
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body1.if.end27_crit_edge, label %do.body4

do.body1.if.end27_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.body4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_smb3_do_mount.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_smb3_do_mount, %land.lhs.true)) #13
          to label %if.end27 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_smb3_do_mount._rs, ptr noundef nonnull @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end27_crit_edge, label %if.then10

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %UNC = getelementptr inbounds %struct.smb3_fs_context, ptr %old_ctx, i32 0, i32 16
  %3 = ptrtoint ptr %UNC to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %UNC, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_smb3_do_mount.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %4, i32 noundef %flags) #13
  br label %if.end27

if.else16:                                        ; preds = %entry
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_smb3_do_mount._rs.5, ptr noundef nonnull @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else16.if.end27_crit_edge, label %do.end22

if.else16.if.end27_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.end22:                                         ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  %UNC24 = getelementptr inbounds %struct.smb3_fs_context, ptr %old_ctx, i32 0, i32 16
  %5 = ptrtoint ptr %UNC24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %UNC24, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %6) #16
  br label %if.end27

if.end27:                                         ; preds = %do.end22, %if.else16.if.end27_crit_edge, %if.then10, %land.lhs.true.if.end27_crit_edge, %do.body4, %do.body1.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 204) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i231 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 480) #17
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i231, ptr %ctx, align 8
  %tobool34.not = icmp eq ptr %call7.i.i231, null
  br i1 %tobool34.not, label %if.end31.if.then171_crit_edge, label %if.end37

if.end31.if.then171_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then171

if.end37:                                         ; preds = %if.end31
  %call39 = tail call i32 @smb3_fs_context_dup(ptr noundef nonnull %call7.i.i231, ptr noundef %old_ctx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %10 = inttoptr i32 %call39 to ptr
  br label %if.then171

if.end43:                                         ; preds = %if.end37
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 8
  %call45 = tail call i32 @cifs_setup_volume_info(ptr noundef %12, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %13 = inttoptr i32 %call45 to ptr
  br label %if.then171

if.end49:                                         ; preds = %if.end43
  %call50 = tail call i32 @cifs_setup_cifs_sb(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %14 = inttoptr i32 %call50 to ptr
  br label %if.then171

if.end54:                                         ; preds = %if.end49
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 8
  %call56 = tail call i32 @cifs_mount(ptr noundef nonnull %call7.i.i, ptr noundef %16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end79, label %if.then58

if.then58:                                        ; preds = %if.end54
  %and59 = and i32 %flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body63, label %if.then58.if.end77_crit_edge

if.then58.if.end77_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

do.body63:                                        ; preds = %if.then58
  %call64 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_smb3_do_mount._rs.7, ptr noundef nonnull @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.body63.if.end77_crit_edge, label %do.end69

do.body63.if.end77_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #15
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call56) #16
  br label %if.end77

if.end77:                                         ; preds = %do.end69, %do.body63.if.end77_crit_edge, %if.then58.if.end77_crit_edge
  %17 = inttoptr i32 %call56 to ptr
  br label %if.then171

if.end79:                                         ; preds = %if.end54
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %0, align 4
  %21 = ptrtoint ptr %mnt_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %mnt_data, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %flags, ptr %1, align 4
  %or = or i32 %flags, 3072
  %call84 = call ptr @sget(ptr noundef %fs_type, ptr noundef nonnull @cifs_match_super, ptr noundef nonnull @cifs_set_super, i32 noundef %or, ptr noundef nonnull %mnt_data) #13
  %cmp.i = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  call void @cifs_umount(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end88:                                         ; preds = %if.end79
  %s_root = getelementptr inbounds %struct.super_block, ptr %call84, i32 0, i32 13
  %23 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_root, align 64
  %tobool89.not = icmp eq ptr %24, null
  br i1 %tobool89.not, label %if.else121, label %do.body92

do.body92:                                        ; preds = %if.end88
  %25 = load i32, ptr @cifsFYI, align 4
  %and93 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.cond.end_crit_edge, label %do.body96

do.body92.cond.end_crit_edge:                     ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

do.body96:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_smb3_do_mount.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_smb3_do_mount, %land.lhs.true108)) #13
          to label %cond.end [label %land.lhs.true108], !srcloc !612

land.lhs.true108:                                 ; preds = %do.body96
  %call109 = call i32 @___ratelimit(ptr noundef nonnull @cifs_smb3_do_mount._rs.11, ptr noundef nonnull @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true108.cond.end_crit_edge, label %if.then111

land.lhs.true108.cond.end_crit_edge:              ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.then111:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_smb3_do_mount.descriptor.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3) #13
  br label %cond.end

if.else121:                                       ; preds = %if.end88
  %call122 = call fastcc i32 @cifs_read_super(ptr noundef %call84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %cond.end.thread, label %if.then124

if.then124:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #15
  %26 = inttoptr i32 %call122 to ptr
  br label %out_super

cond.end:                                         ; preds = %if.then111, %land.lhs.true108.cond.end_crit_edge, %do.body96, %do.body92.cond.end_crit_edge
  call void @cifs_umount(ptr noundef nonnull %call7.i.i) #13
  %call131 = call fastcc ptr @cifs_get_root(ptr noundef %old_ctx, ptr noundef %call84)
  %cmp.i232 = icmp ugt ptr %call131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %cond.end.out_super_crit_edge, label %cond.end.do.body141_crit_edge

cond.end.do.body141_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body141

cond.end.out_super_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_super

cond.end.thread:                                  ; preds = %if.else121
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call84, i32 0, i32 10
  %27 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_flags, align 4
  %or127 = or i32 %28, 1073741824
  store i32 %or127, ptr %s_flags, align 4
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 8
  %call131242 = call fastcc ptr @cifs_get_root(ptr noundef %30, ptr noundef %call84)
  %cmp.i232243 = icmp ugt ptr %call131242, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232243, label %cond.end.thread.out_super_crit_edge, label %if.then136

cond.end.thread.out_super_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_super

if.then136:                                       ; preds = %cond.end.thread
  %tobool.not.i = icmp eq ptr %call131242, null
  br i1 %tobool.not.i, label %if.then136.dget.exit_crit_edge, label %if.then.i

if.then136.dget.exit_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #15
  br label %dget.exit

if.then.i:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call131242, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.then136.dget.exit_crit_edge
  %root138 = getelementptr inbounds %struct.cifs_sb_info, ptr %call7.i.i, i32 0, i32 12
  %31 = ptrtoint ptr %root138 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call131242, ptr %root138, align 8
  br label %do.body141

do.body141:                                       ; preds = %dget.exit, %cond.end.do.body141_crit_edge
  %call131246251 = phi ptr [ %call131242, %dget.exit ], [ %call131, %cond.end.do.body141_crit_edge ]
  %32 = load i32, ptr @cifsFYI, align 4
  %and142 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %do.body141.cleanup_crit_edge, label %do.body145

do.body141.cleanup_crit_edge:                     ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body145:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_smb3_do_mount.descriptor.15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_smb3_do_mount, %land.lhs.true157)) #13
          to label %cleanup [label %land.lhs.true157], !srcloc !612

land.lhs.true157:                                 ; preds = %do.body145
  %call158 = call i32 @___ratelimit(ptr noundef nonnull @cifs_smb3_do_mount._rs.14, ptr noundef nonnull @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %land.lhs.true157.cleanup_crit_edge, label %if.then160

land.lhs.true157.cleanup_crit_edge:               ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then160:                                       ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_smb3_do_mount.descriptor.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef %call131246251) #13
  br label %cleanup

out_super:                                        ; preds = %cond.end.thread.out_super_crit_edge, %cond.end.out_super_crit_edge, %if.then124
  %root.0 = phi ptr [ %call131, %cond.end.out_super_crit_edge ], [ %26, %if.then124 ], [ %call131242, %cond.end.thread.out_super_crit_edge ]
  call void @deactivate_locked_super(ptr noundef %call84) #13
  br label %cleanup

if.then171:                                       ; preds = %if.end77, %if.then52, %if.then47, %if.then41, %if.end31.if.then171_crit_edge
  %root.1.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end31.if.then171_crit_edge ], [ %17, %if.end77 ], [ %14, %if.then52 ], [ %13, %if.then47 ], [ %10, %if.then41 ]
  %prepath = getelementptr inbounds %struct.cifs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %prepath to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prepath, align 8
  tail call void @kfree(ptr noundef %34) #13
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 8
  tail call void @smb3_cleanup_fs_context(ptr noundef %36) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %out_super, %if.then160, %land.lhs.true157.cleanup_crit_edge, %do.body145, %do.body141.cleanup_crit_edge, %if.then86, %if.end27.cleanup_crit_edge
  %retval.0 = phi ptr [ %root.0, %out_super ], [ %call131246251, %do.body141.cleanup_crit_edge ], [ %call131246251, %land.lhs.true157.cleanup_crit_edge ], [ %call131246251, %if.then160 ], [ %root.1.ph, %if.then171 ], [ %call131246251, %do.body145 ], [ %call84, %if.then86 ], [ inttoptr (i32 -12 to ptr), %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mnt_data) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb3_fs_context_dup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_setup_volume_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_setup_cifs_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_mount(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_match_super(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_set_super(ptr noundef %sb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %s_fs_info, align 16
  %call = tail call i32 @set_anon_super(ptr noundef %sb, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_read_super(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp27 = alloca %struct.timespec64, align 8
  %tmp31 = alloca %struct.timespec64, align 8
  %tmp34 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %1) #13
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %or = or i32 %5, 65536
  store i32 %or, ptr %s_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %snapshot_time = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 33
  %6 = ptrtoint ptr %snapshot_time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snapshot_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %s_flags4 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags4, align 4
  %or5 = or i32 %9, 1
  store i32 %or5, ptr %s_flags4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 7
  %10 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ses, align 8
  %capabilities = getelementptr inbounds %struct.cifs_ses, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capabilities, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %server, align 8
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vals, align 8
  %cap_large_files = getelementptr inbounds %struct.smb_version_values, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %cap_large_files to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cap_large_files, align 4
  %and8 = and i32 %19, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select = select i1 %tobool9.not, i64 2147483647, i64 17592186040320
  %20 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %spec.select, ptr %20, align 8
  %22 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ses, align 8
  %server14 = getelementptr inbounds %struct.cifs_ses, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %server14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %server14, align 8
  %vals15 = getelementptr inbounds %struct.TCP_Server_Info, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %vals15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vals15, align 8
  %protocol_id = getelementptr inbounds %struct.smb_version_values, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp = icmp eq i16 %29, 0
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.else29_crit_edge

if.end6.if.else29_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else29

land.lhs.true:                                    ; preds = %if.end6
  %capabilities18 = getelementptr inbounds %struct.cifs_ses, ptr %23, i32 0, i32 15
  %30 = ptrtoint ptr %capabilities18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capabilities18, align 8
  %cap_nt_find = getelementptr inbounds %struct.smb_version_values, ptr %27, i32 0, i32 13
  %32 = ptrtoint ptr %cap_nt_find to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cap_nt_find, align 4
  %and22 = and i32 %33, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 0
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true.if.else29_crit_edge

land.lhs.true.if.else29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else29

land.lhs.true25:                                  ; preds = %land.lhs.true
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 22
  %34 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load = load i16, ptr %unix_ext, align 8
  %35 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %bf.cast.not = icmp eq i16 %35, 0
  br i1 %bf.cast.not, label %if.then26, label %land.lhs.true25.if.else29_crit_edge

land.lhs.true25.if.else29_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else29

if.then26:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %36 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1000000000, ptr %s_time_gran, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  call void @cnvrtDosUnixTm(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i16 noundef zeroext 8448, i16 noundef zeroext 0, i32 noundef 0) #13
  %37 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %37)
  %ts.sroa.0.0.copyload90 = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %38 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %ts.sroa.0.0.copyload90, ptr %s_time_min, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp27) #13
  call void @cnvrtDosUnixTm(ptr nonnull sret(%struct.timespec64) align 8 %tmp27, i16 noundef zeroext -24577, i16 noundef zeroext 32191, i32 noundef 0) #13
  %39 = ptrtoint ptr %tmp27 to i32
  call void @__asan_load8_noabort(i32 %39)
  %ts.sroa.0.0.copyload91 = load i64, ptr %tmp27, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp27) #13
  br label %if.end37

if.else29:                                        ; preds = %land.lhs.true25.if.else29_crit_edge, %land.lhs.true.if.else29_crit_edge, %if.end6.if.else29_crit_edge
  %s_time_gran30 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %40 = ptrtoint ptr %s_time_gran30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 100, ptr %s_time_gran30, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp31) #13
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp31, i64 noundef 0) #13
  %41 = ptrtoint ptr %tmp31 to i32
  call void @__asan_load8_noabort(i32 %41)
  %ts.sroa.0.0.copyload92 = load i64, ptr %tmp31, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp31) #13
  %s_time_min33 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %42 = ptrtoint ptr %s_time_min33 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %ts.sroa.0.0.copyload92, ptr %s_time_min33, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp34) #13
  call void @cifs_NTtimeToUnix(ptr nonnull sret(%struct.timespec64) align 8 %tmp34, i64 noundef -129) #13
  %43 = ptrtoint ptr %tmp34 to i32
  call void @__asan_load8_noabort(i32 %43)
  %ts.sroa.0.0.copyload93 = load i64, ptr %tmp34, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp34) #13
  br label %if.end37

if.end37:                                         ; preds = %if.else29, %if.then26
  %ts.sroa.0.0.copyload93.sink = phi i64 [ %ts.sroa.0.0.copyload93, %if.else29 ], [ %ts.sroa.0.0.copyload91, %if.then26 ]
  %s_time_max36 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %44 = ptrtoint ptr %s_time_max36 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %ts.sroa.0.0.copyload93.sink, ptr %s_time_max36, align 64
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %45 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -11317950, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %46 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @cifs_super_ops, ptr %s_op, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %47 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @cifs_xattr_handlers, ptr %s_xattr, align 16
  %call38 = call i32 @super_setup_bdi(ptr noundef %sb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.do.body70_crit_edge

if.end37.do.body70_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

if.end41:                                         ; preds = %if.end37
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx, align 4
  %rasize = getelementptr inbounds %struct.smb3_fs_context, ptr %49, i32 0, i32 38
  %50 = ptrtoint ptr %rasize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rasize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool42.not = icmp eq i32 %51, 0
  br i1 %tobool42.not, label %if.else46, label %if.end41.if.end51_crit_edge

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.else46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %rsize = getelementptr inbounds %struct.smb3_fs_context, ptr %49, i32 0, i32 39
  %52 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rsize, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else46, %if.end41.if.end51_crit_edge
  %.sink = phi i32 [ %53, %if.else46 ], [ %51, %if.end41.if.end51_crit_edge ]
  %div48130 = lshr i32 %.sink, 12
  %s_bdi49 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 27
  %54 = ptrtoint ptr %s_bdi49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_bdi49, align 8
  %ra_pages50 = getelementptr inbounds %struct.backing_dev_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %ra_pages50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div48130, ptr %ra_pages50, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %57 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 16384, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %58 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 14, ptr %s_blocksize_bits, align 4
  %call52 = call ptr @cifs_root_iget(ptr noundef %sb) #13
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %call52 to i32
  br label %do.body70

if.end56:                                         ; preds = %if.end51
  %nocase = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 22
  %60 = ptrtoint ptr %nocase to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load57 = load i16, ptr %nocase, align 8
  %61 = and i16 %bf.load57, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %bf.cast60.not = icmp eq i16 %61, 0
  %spec.select132 = select i1 %bf.cast60.not, ptr @cifs_dentry_ops, ptr @cifs_ci_dentry_ops
  %62 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %spec.select132, ptr %62, align 8
  %call65 = call ptr @d_make_root(ptr noundef %call52) #13
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %64 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call65, ptr %s_root, align 64
  %tobool67.not = icmp eq ptr %call65, null
  br i1 %tobool67.not, label %if.end56.do.body70_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end56.do.body70_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

do.body70:                                        ; preds = %if.end56.do.body70_crit_edge, %if.then54, %if.end37.do.body70_crit_edge
  %rc.0 = phi i32 [ %call38, %if.end37.do.body70_crit_edge ], [ %59, %if.then54 ], [ -12, %if.end56.do.body70_crit_edge ]
  %call71 = call i32 @___ratelimit(ptr noundef nonnull @cifs_read_super._rs, ptr noundef nonnull @__func__.cifs_read_super) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body70.cleanup_crit_edge, label %do.end

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.cifs_read_super) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body70.cleanup_crit_edge, %if.end56.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56.cleanup_crit_edge ], [ %rc.0, %do.end ], [ %rc.0, %do.body70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cifs_get_root(ptr noundef %ctx, ptr nocapture noundef readonly %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.cleanup61_crit_edge, label %if.then.i

if.then.cleanup61_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %cleanup61

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @cifs_sb_master_tcon(ptr noundef %1) #13
  %call3 = tail call ptr @cifs_build_path_to_root(ptr noundef %ctx, ptr noundef %1, ptr noundef %call2, i32 noundef 0) #13
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.end.cleanup61_crit_edge, label %do.body7

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup61

do.body7:                                         ; preds = %if.end
  %6 = load i32, ptr @cifsFYI, align 4
  %and8 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end24_crit_edge, label %do.body11

do.body7.do.end24_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

do.body11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_root.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_root, %land.lhs.true)) #13
          to label %do.end24 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body11
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_root._rs, ptr noundef nonnull @.str.136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end24_crit_edge, label %if.then18

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_root.descriptor, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.3, ptr noundef nonnull %call3) #13
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %land.lhs.true.do.end24_crit_edge, %do.body11, %do.body7.do.end24_crit_edge
  %7 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mnt_cifs_flags, align 4
  %and.i = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i89 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i89, i8 92, i8 47
  %s_root26 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %9 = ptrtoint ptr %s_root26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_root26, align 64
  %tobool.not.i90 = icmp eq ptr %10, null
  br i1 %tobool.not.i90, label %do.end24.do.body28.preheader_crit_edge, label %if.then.i92

do.end24.do.body28.preheader_crit_edge:           ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body28.preheader

if.then.i92:                                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i91 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i91) #13
  br label %do.body28.preheader

do.body28.preheader:                              ; preds = %if.then.i92, %do.end24.do.body28.preheader_crit_edge
  br label %do.body28

do.body28:                                        ; preds = %do.cond56.do.body28_crit_edge, %do.body28.preheader
  %s.0 = phi ptr [ %s.2, %do.cond56.do.body28_crit_edge ], [ %call3, %do.body28.preheader ]
  %dentry.0 = phi ptr [ %call54, %do.cond56.do.body28_crit_edge ], [ %10, %do.body28.preheader ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry.0, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %15)
  %cmp31 = icmp eq i16 %15, 16384
  br i1 %cmp31, label %do.body28.while.cond_crit_edge, label %if.then33

do.body28.while.cond_crit_edge:                   ; preds = %do.body28
  br label %while.cond

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dput(ptr noundef %dentry.0) #13
  br label %do.end60

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body28.while.cond_crit_edge
  %s.1 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %s.0, %do.body28.while.cond_crit_edge ]
  %16 = ptrtoint ptr %s.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s.1, align 1
  %cmp38 = icmp eq i8 %17, %..i
  %incdec.ptr = getelementptr i8, ptr %s.1, i32 1
  br i1 %cmp38, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not = icmp eq i8 %17, 0
  br i1 %tobool40.not, label %while.end.do.end60_crit_edge, label %while.end.while.cond44_crit_edge

while.end.while.cond44_crit_edge:                 ; preds = %while.end
  br label %while.cond44

while.end.do.end60_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

while.cond44:                                     ; preds = %while.cond44.while.cond44_crit_edge, %while.end.while.cond44_crit_edge
  %s.1.pn = phi ptr [ %s.2, %while.cond44.while.cond44_crit_edge ], [ %s.1, %while.end.while.cond44_crit_edge ]
  %s.2 = getelementptr i8, ptr %s.1.pn, i32 1
  %18 = ptrtoint ptr %s.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %s.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool46.not = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %..i)
  %cmp49.not = icmp eq i8 %19, %..i
  %or.cond = select i1 %tobool46.not, i1 true, i1 %cmp49.not
  br i1 %or.cond, label %do.cond56, label %while.cond44.while.cond44_crit_edge

while.cond44.while.cond44_crit_edge:              ; preds = %while.cond44
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond44

do.cond56:                                        ; preds = %while.cond44
  %sub.ptr.lhs.cast = ptrtoint ptr %s.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %s.1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call54 = tail call ptr @lookup_positive_unlocked(ptr noundef %s.1, ptr noundef %dentry.0, i32 noundef %sub.ptr.sub) #13
  tail call void @dput(ptr noundef %dentry.0) #13
  %cmp.i = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.cond56.do.end60_crit_edge, label %do.cond56.do.body28_crit_edge

do.cond56.do.body28_crit_edge:                    ; preds = %do.cond56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body28

do.cond56.do.end60_crit_edge:                     ; preds = %do.cond56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

do.end60:                                         ; preds = %do.cond56.do.end60_crit_edge, %while.end.do.end60_crit_edge, %if.then33
  %dentry.199 = phi ptr [ inttoptr (i32 -20 to ptr), %if.then33 ], [ %dentry.0, %while.end.do.end60_crit_edge ], [ %call54, %do.cond56.do.end60_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call3) #13
  br label %cleanup61

cleanup61:                                        ; preds = %do.end60, %if.end.cleanup61_crit_edge, %if.then.i, %if.then.cleanup61_crit_edge
  %retval.0 = phi ptr [ %dentry.199, %do.end60 ], [ null, %if.then.cleanup61_crit_edge ], [ %5, %if.then.i ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup61_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smb3_cleanup_fs_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb3_init_fs_context(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %root = getelementptr inbounds %struct.cifs_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dput(ptr noundef nonnull %3) #13
  %4 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %root, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call ptr @cifs_sb_master_tcon(ptr noundef %1) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %fid_mutex = getelementptr inbounds %struct.cifs_tcon, ptr %call3, i32 0, i32 43, i32 4
  tail call void @mutex_lock_nested(ptr noundef %fid_mutex, i32 noundef 0) #13
  %dentry = getelementptr inbounds %struct.cifs_tcon, ptr %call3, i32 0, i32 43, i32 6
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.then5.if.end10_crit_edge, label %if.then7

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dput(ptr noundef nonnull %6) #13
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dentry, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then5.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %fid_mutex) #13
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  tail call void @kill_anon_super(ptr noundef %sb) #13
  tail call void @cifs_umount(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_permission(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %conv.i = zext i16 %7 to i32
  %and.i = and i32 %conv.i, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 16384
  %8 = or i1 %tobool.not.i, %cmp.i
  br i1 %8, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %cleanup

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else5, %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ %call6, %if.else5 ], [ -13, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_hardlink(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_unlink(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_rmdir(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_rename2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_atomic_open(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_get_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_file_copychunk_range(i32 noundef %xid, ptr noundef %src_file, i64 noundef %off, ptr noundef %dst_file, i64 noundef %destoff, i32 noundef %len, i32 %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i123 = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i123 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i123, align 8
  %4 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.body3

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_file_copychunk_range.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_file_copychunk_range, %land.lhs.true)) #13
          to label %do.end15 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body3
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_file_copychunk_range._rs, ptr noundef nonnull @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %if.then10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_file_copychunk_range.descriptor, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3) #13
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %land.lhs.true.do.end15_crit_edge, %do.body3, %entry.do.end15_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %tobool16.not = icmp eq ptr %6, null
  br i1 %tobool16.not, label %do.end15.if.then19_crit_edge, label %lor.lhs.false

do.end15.if.then19_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

lor.lhs.false:                                    ; preds = %do.end15
  %private_data17 = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data17, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %lor.lhs.false.if.then19_crit_edge, label %if.end35

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %do.end15.if.then19_crit_edge
  %call22 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_file_copychunk_range._rs.19, ptr noundef nonnull @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then19.out_crit_edge, label %do.end27

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end27:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  br label %out

if.end35:                                         ; preds = %lor.lhs.false
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tl_tcon.i, align 4
  %tlink39 = getelementptr inbounds %struct.cifsFileInfo, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %tlink39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tlink39, align 4
  %tl_tcon.i124 = getelementptr inbounds %struct.tcon_link, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %tl_tcon.i124 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tl_tcon.i124, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %12, i32 0, i32 7
  %17 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ses, align 8
  %ses41 = getelementptr inbounds %struct.cifs_tcon, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %ses41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ses41, align 8
  %cmp.not = icmp eq ptr %18, %20
  br i1 %cmp.not, label %if.end58, label %do.body44

do.body44:                                        ; preds = %if.end35
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_file_copychunk_range._rs.21, ptr noundef nonnull @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body44.out_crit_edge, label %do.end50

do.body44.out_crit_edge:                          ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #16
  br label %out

if.end58:                                         ; preds = %if.end35
  %server = getelementptr inbounds %struct.cifs_ses, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %copychunk_range = getelementptr inbounds %struct.smb_version_operations, ptr %24, i32 0, i32 88
  %25 = ptrtoint ptr %copychunk_range to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %copychunk_range, align 4
  %tobool60.not = icmp eq ptr %26, null
  br i1 %tobool60.not, label %if.end58.out_crit_edge, label %if.end62

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end62:                                         ; preds = %if.end58
  tail call void @lock_two_nondirectories(ptr noundef %3, ptr noundef %1) #13
  %27 = load i32, ptr @cifsFYI, align 4
  %and65 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end62.do.end92_crit_edge, label %do.body68

if.end62.do.end92_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end92

do.body68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_file_copychunk_range.descriptor.26, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_file_copychunk_range, %land.lhs.true80)) #13
          to label %do.end92 [label %land.lhs.true80], !srcloc !612

land.lhs.true80:                                  ; preds = %do.body68
  %call81 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_file_copychunk_range._rs.25, ptr noundef nonnull @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true80.do.end92_crit_edge, label %if.then83

land.lhs.true80.do.end92_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end92

if.then83:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_file_copychunk_range.descriptor.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3) #13
  br label %do.end92

do.end92:                                         ; preds = %if.then83, %land.lhs.true80.do.end92_crit_edge, %do.body68, %if.end62.do.end92_crit_edge
  %i_data = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 46
  tail call void @truncate_inode_pages(ptr noundef %i_data, i64 noundef 0) #13
  %call93 = tail call i32 @file_modified(ptr noundef %dst_file) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %do.end92.if.end101_crit_edge

do.end92.if.end101_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then95:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %ses41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ses41, align 8
  %server97 = getelementptr inbounds %struct.cifs_ses, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %server97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %server97, align 8
  %ops98 = getelementptr inbounds %struct.TCP_Server_Info, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %ops98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops98, align 4
  %copychunk_range99 = getelementptr inbounds %struct.smb_version_operations, ptr %33, i32 0, i32 88
  %34 = ptrtoint ptr %copychunk_range99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %copychunk_range99, align 4
  %conv = zext i32 %len to i64
  %call100 = tail call i32 %35(i32 noundef %xid, ptr noundef nonnull %6, ptr noundef nonnull %8, i64 noundef %off, i64 noundef %conv, i64 noundef %destoff) #13
  br label %if.end101

if.end101:                                        ; preds = %if.then95, %do.end92.if.end101_crit_edge
  %rc.0 = phi i32 [ %call93, %do.end92.if.end101_crit_edge ], [ %call100, %if.then95 ]
  %f_flags.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 7
  %36 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %37, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end101.file_accessed.exit_crit_edge

if.end101.file_accessed.exit_crit_edge:           ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %file_accessed.exit

if.then.i:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %f_path.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #13
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %if.end101.file_accessed.exit_crit_edge
  %time = getelementptr i8, ptr %3, i32 -56
  %38 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %time, align 8
  tail call void @unlock_two_nondirectories(ptr noundef %1, ptr noundef %3) #13
  br label %out

out:                                              ; preds = %file_accessed.exit, %if.end58.out_crit_edge, %do.end50, %do.body44.out_crit_edge, %do.end27, %if.then19.out_crit_edge
  %rc.1 = phi i32 [ -18, %do.end50 ], [ -18, %do.body44.out_crit_edge ], [ %rc.0, %file_accessed.exit ], [ -95, %if.end58.out_crit_edge ], [ -9, %do.end27 ], [ -9, %if.then19.out_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_modified(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cifs_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whence)
  %switch = icmp ult i32 %whence, 2
  br i1 %switch, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then:                                          ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %oplock = getelementptr i8, ptr %3, i32 -116
  %4 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oplock, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %i_sb = getelementptr i8, ptr %3, i32 28
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mnt_cifs_flags, align 4
  %and5 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true9

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %nrpages = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp11.not = icmp eq i32 %15, 0
  br i1 %cmp11.not, label %land.lhs.true9.cleanup_crit_edge, label %if.then12

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true9
  %call.i = tail call i32 @filemap_fdatawait_range(ptr noundef nonnull %13, i64 noundef 0, i64 noundef 9223372036854775807) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.then16

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.then12
  %16 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping, align 8
  tail call void @__filemap_set_wb_err(ptr noundef %17, i32 noundef %call.i) #13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %if.then16.cleanup.thread_crit_edge, label %if.then5.i

if.then16.cleanup.thread_crit_edge:               ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then5.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 50
  %call.i73 = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call.i) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then5.i, %if.then16.cleanup.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #13
  %conv = sext i32 %call.i to i64
  br label %cleanup44

cleanup:                                          ; preds = %if.then12.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %time = getelementptr i8, ptr %3, i32 -56
  %22 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %time, align 8
  %call20 = tail call i32 @cifs_revalidate_file_attr(ptr noundef %file) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  %conv24 = sext i32 %call20 to i64
  br i1 %cmp21, label %cleanup.cleanup44_crit_edge, label %cleanup.if.end27_crit_edge

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

cleanup.cleanup44_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %entry.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %1, null
  br i1 %tobool28.not, label %if.end27.if.end42_crit_edge, label %land.lhs.true29

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true29:                                  ; preds = %if.end27
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tlink, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %land.lhs.true29.if.end42_crit_edge, label %if.then31

land.lhs.true29.if.end42_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then31:                                        ; preds = %land.lhs.true29
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tl_tcon.i, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %26, i32 0, i32 7
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
  %llseek = getelementptr inbounds %struct.smb_version_operations, ptr %32, i32 0, i32 109
  %33 = ptrtoint ptr %llseek to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %llseek, align 4
  %tobool34.not = icmp eq ptr %34, null
  br i1 %tobool34.not, label %if.then31.if.end42_crit_edge, label %if.then35

if.then31.if.end42_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call i64 %34(ptr noundef %file, ptr noundef %26, i64 noundef %offset, i32 noundef %whence) #13
  br label %cleanup44

if.end42:                                         ; preds = %if.then31.if.end42_crit_edge, %land.lhs.true29.if.end42_crit_edge, %if.end27.if.end42_crit_edge
  %call43 = tail call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #13
  br label %cleanup44

cleanup44:                                        ; preds = %if.end42, %if.then35, %cleanup.cleanup44_crit_edge, %cleanup.thread
  %retval.1 = phi i64 [ %call40, %if.then35 ], [ %call43, %if.end42 ], [ %conv24, %cleanup.cleanup44_crit_edge ], [ %conv, %cleanup.thread ]
  ret i64 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_loose_read_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @cifs_user_readv(ptr noundef %iocb, ptr noundef %iter) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %call3 = tail call i32 @cifs_revalidate_mapping(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %iter) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call7, %if.end6 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -280
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end31, label %if.then

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @cifs_user_writev(ptr noundef %iocb, ptr noundef %from) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %oplock = getelementptr i8, ptr %3, i32 -116
  %6 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oplock, align 4
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %land.lhs.true.if.then9_crit_edge

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

lor.lhs.false:                                    ; preds = %land.lhs.true
  %i_sb = getelementptr i8, ptr %3, i32 28
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mnt_cifs_flags, align 4
  %and7 = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %land.lhs.true.if.then9_crit_edge
  %call10 = tail call i32 @cifs_zap_mapping(ptr noundef %3) #13
  %14 = load i32, ptr @cifsFYI, align 4
  %and12 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then9.do.end28_crit_edge, label %do.body15

if.then9.do.end28_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

do.body15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_file_write_iter.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_file_write_iter, %land.lhs.true20)) #13
          to label %do.end28 [label %land.lhs.true20], !srcloc !612

land.lhs.true20:                                  ; preds = %do.body15
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_file_write_iter._rs, ptr noundef nonnull @.str.138) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %if.then23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_file_write_iter.descriptor, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.3, ptr noundef %3) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %land.lhs.true20.do.end28_crit_edge, %do.body15, %if.then9.do.end28_crit_edge
  %15 = ptrtoint ptr %oplock to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %oplock, align 4
  br label %cleanup

if.end31:                                         ; preds = %entry
  %call32 = tail call i32 @cifs_get_writer(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @generic_file_write_iter(ptr noundef %iocb, ptr noundef %from) #13
  %oplock38 = getelementptr i8, ptr %3, i32 -116
  %16 = ptrtoint ptr %oplock38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oplock38, align 4
  %and39 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false41:                                  ; preds = %if.end35
  %i_sb44 = getelementptr i8, ptr %3, i32 28
  %18 = ptrtoint ptr %i_sb44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb44, align 4
  %s_fs_info.i112 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i112 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i112, align 16
  %mnt_cifs_flags46 = getelementptr inbounds %struct.cifs_sb_info, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %mnt_cifs_flags46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mnt_cifs_flags46, align 4
  %and47 = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end50, label %lor.lhs.false41.out_crit_edge

lor.lhs.false41.out_crit_edge:                    ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end50:                                         ; preds = %lor.lhs.false41
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping, align 8
  %call51 = tail call i32 @filemap_fdatawrite(ptr noundef %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.out_crit_edge, label %do.body55

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body55:                                        ; preds = %if.end50
  %26 = load i32, ptr @cifsFYI, align 4
  %and56 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.out_crit_edge, label %do.body59

do.body55.out_crit_edge:                          ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body59:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_file_write_iter.descriptor.141, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_file_write_iter, %land.lhs.true71)) #13
          to label %out [label %land.lhs.true71], !srcloc !612

land.lhs.true71:                                  ; preds = %do.body59
  %call72 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_file_write_iter._rs.140, ptr noundef nonnull @.str.138) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.out_crit_edge, label %if.then74

land.lhs.true71.out_crit_edge:                    ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then74:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_file_write_iter.descriptor.141, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.3, i32 noundef %call51, ptr noundef %3) #13
  br label %out

out:                                              ; preds = %if.then74, %land.lhs.true71.out_crit_edge, %do.body59, %do.body55.out_crit_edge, %if.end50.out_crit_edge, %lor.lhs.false41.out_crit_edge, %if.end35.out_crit_edge
  tail call void @cifs_put_writer(ptr noundef %add.ptr.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end31.cleanup_crit_edge, %do.end28, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %out ], [ %call3, %do.end28 ], [ %call3, %lor.lhs.false.cleanup_crit_edge ], [ %call3, %if.then.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_file_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_flush(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_close(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_lock(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_flock(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_setlease(ptr noundef %file, i32 noundef %arg, ptr noundef %lease, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp = icmp eq i16 %6, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %arg, label %if.end.if.else_crit_edge [
    i32 2, label %if.end.cleanup.sink.split_crit_edge
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true16
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %oplock = getelementptr i8, ptr %1, i32 -116
  %8 = ptrtoint ptr %oplock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oplock, align 4
  %and7 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %lor.lhs.false8, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %i_sb = getelementptr i8, ptr %1, i32 28
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mnt_cifs_flags, align 4
  %and11 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false8.if.else_crit_edge, label %lor.lhs.false8.cleanup.sink.split_crit_edge

lor.lhs.false8.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false8.if.else_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true16:                                  ; preds = %if.end
  %oplock18 = getelementptr i8, ptr %1, i32 -116
  %16 = ptrtoint ptr %oplock18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oplock18, align 4
  %and19 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %land.lhs.true16.cleanup.sink.split_crit_edge

land.lhs.true16.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false21:                                  ; preds = %land.lhs.true16
  %i_sb24 = getelementptr i8, ptr %1, i32 28
  %18 = ptrtoint ptr %i_sb24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb24, align 4
  %s_fs_info.i68 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i68, align 16
  %mnt_cifs_flags26 = getelementptr inbounds %struct.cifs_sb_info, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %mnt_cifs_flags26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mnt_cifs_flags26, align 4
  %and27 = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %lor.lhs.false21.if.else_crit_edge, label %lor.lhs.false21.cleanup.sink.split_crit_edge

lor.lhs.false21.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false21.if.else_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.else:                                          ; preds = %lor.lhs.false21.if.else_crit_edge, %lor.lhs.false8.if.else_crit_edge, %if.end.if.else_crit_edge
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tl_tcon.i, align 4
  %local_lease = getelementptr inbounds %struct.cifs_tcon, ptr %27, i32 0, i32 24
  %28 = ptrtoint ptr %local_lease to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %local_lease, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else.cleanup_crit_edge, label %land.lhs.true33

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true33:                                  ; preds = %if.else
  %oplock35 = getelementptr i8, ptr %1, i32 -116
  %29 = ptrtoint ptr %oplock35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oplock35, align 4
  %and36 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false38:                                  ; preds = %land.lhs.true33
  %i_sb41 = getelementptr i8, ptr %1, i32 28
  %31 = ptrtoint ptr %i_sb41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb41, align 4
  %s_fs_info.i71 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i71, align 16
  %mnt_cifs_flags43 = getelementptr inbounds %struct.cifs_sb_info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %mnt_cifs_flags43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mnt_cifs_flags43, align 4
  %and44 = and i32 %36, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %lor.lhs.false38.cleanup.sink.split_crit_edge, label %lor.lhs.false38.cleanup_crit_edge

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false38.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false38.cleanup.sink.split_crit_edge, %lor.lhs.false21.cleanup.sink.split_crit_edge, %land.lhs.true16.cleanup.sink.split_crit_edge, %lor.lhs.false8.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %call47 = tail call i32 @generic_setlease(ptr noundef %file, i32 noundef %arg, ptr noundef %lease, ptr noundef %priv) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false38.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -11, %lor.lhs.false38.cleanup_crit_edge ], [ -11, %land.lhs.true33.cleanup_crit_edge ], [ -11, %if.else.cleanup_crit_edge ], [ %call47, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %off, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %5) #13
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ses, align 8
  %server2 = getelementptr inbounds %struct.cifs_ses, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %server2, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %fallocate = getelementptr inbounds %struct.smb_version_operations, ptr %11, i32 0, i32 100
  %12 = ptrtoint ptr %fallocate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fallocate, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 %13(ptr noundef %file, ptr noundef %call1, i32 noundef %mode, i64 noundef %off, i64 noundef %len) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_copy_file_range(ptr noundef %src_file, i64 noundef %off, ptr noundef %dst_file, i64 noundef %destoff, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_get_xid() #13
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end20_crit_edge, label %do.body2

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_copy_file_range.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_copy_file_range, %land.lhs.true)) #13
          to label %do.end20 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body2
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_copy_file_range._rs, ptr noundef nonnull @.str.143) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end20_crit_edge, label %if.then9

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %1 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  %call13 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_copy_file_range.descriptor, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef %call, i32 noundef %call13) #13
  br label %do.end20

do.end20:                                         ; preds = %if.then9, %land.lhs.true.do.end20_crit_edge, %do.body2, %entry.do.end20_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call, ptr noundef nonnull @.str.143)
  %private_data = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %swapfile = getelementptr inbounds %struct.cifsFileInfo, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %swapfile to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %swapfile, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast.not = icmp eq i8 %11, 0
  br i1 %bf.cast.not, label %if.end23, label %do.end20.cleanup_crit_edge

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %do.end20
  %call24 = tail call i32 @cifs_file_copychunk_range(i32 noundef %call, ptr noundef %src_file, i64 noundef %off, ptr noundef %dst_file, i64 noundef %destoff, i32 noundef %len, i32 undef)
  tail call void @_free_xid(i32 noundef %call) #13
  %12 = load i32, ptr @cifsFYI, align 4
  %and28 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end23.do.end55_crit_edge, label %do.body31

if.end23.do.end55_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

do.body31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_copy_file_range.descriptor.145, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_copy_file_range, %land.lhs.true43)) #13
          to label %do.end55 [label %land.lhs.true43], !srcloc !612

land.lhs.true43:                                  ; preds = %do.body31
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_copy_file_range._rs.144, ptr noundef nonnull @.str.143) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.do.end55_crit_edge, label %if.then46

land.lhs.true43.do.end55_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_copy_file_range.descriptor.145, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef %call, i32 noundef %call24) #13
  br label %do.end55

do.end55:                                         ; preds = %if.then46, %land.lhs.true43.do.end55_crit_edge, %do.body31, %if.end23.do.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool56.not = icmp eq i32 %call24, 0
  br i1 %tobool56.not, label %do.end61.thread, label %do.end61

do.end61.thread:                                  ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call, ptr noundef nonnull @.str.143)
  br label %cleanup

do.end61:                                         ; preds = %do.end55
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call, ptr noundef nonnull @.str.143, i32 noundef %call24)
  %13 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %call24, label %do.end61.cleanup_crit_edge [
    i32 -95, label %do.end61.if.then63_crit_edge
    i32 -18, label %do.end61.if.then63_crit_edge91
  ]

do.end61.if.then63_crit_edge91:                   ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then63

do.end61.if.then63_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then63

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then63:                                        ; preds = %do.end61.if.then63_crit_edge, %do.end61.if.then63_crit_edge91
  %call64 = tail call i32 @generic_copy_file_range(ptr noundef %src_file, i64 noundef %off, ptr noundef %dst_file, i64 noundef %destoff, i32 noundef %len, i32 noundef %flags) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.end61.cleanup_crit_edge, %do.end61.thread, %do.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end20.cleanup_crit_edge ], [ %call64, %if.then63 ], [ %call24, %do.end61.cleanup_crit_edge ], [ 0, %do.end61.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @cifs_remap_file_range(ptr nocapture noundef readonly %src_file, i64 noundef %off, ptr nocapture noundef readonly %dst_file, i64 noundef %destoff, i64 noundef %len, i32 noundef %remap_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i207 = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i207 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i207, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remap_flags)
  %tobool.not = icmp ult i32 %remap_flags, 4
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body2:                                         ; preds = %entry
  %6 = load i32, ptr @cifsFYI, align 4
  %and3 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body2.do.end19_crit_edge, label %do.body6

do.body2.do.end19_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

do.body6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_remap_file_range.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_remap_file_range, %land.lhs.true)) #13
          to label %do.end19 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_remap_file_range._rs, ptr noundef nonnull @.str.146) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end19_crit_edge, label %if.then13

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_remap_file_range.descriptor, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.3) #13
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %land.lhs.true.do.end19_crit_edge, %do.body6, %do.body2.do.end19_crit_edge
  %call20 = tail call i32 @_get_xid() #13
  %7 = load i32, ptr @cifsFYI, align 4
  %and23 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end19.do.end56_crit_edge, label %do.body26

do.end19.do.end56_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

do.body26:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_remap_file_range.descriptor.149, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_remap_file_range, %land.lhs.true38)) #13
          to label %do.end56 [label %land.lhs.true38], !srcloc !612

land.lhs.true38:                                  ; preds = %do.body26
  %call39 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_remap_file_range._rs.148, ptr noundef nonnull @.str.146) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true38.do.end56_crit_edge, label %if.then41

land.lhs.true38.do.end56_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  %8 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  %call47 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_remap_file_range.descriptor.149, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.146, i32 noundef %call20, i32 noundef %call47) #13
  br label %do.end56

do.end56:                                         ; preds = %if.then41, %land.lhs.true38.do.end56_crit_edge, %do.body26, %do.end19.do.end56_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call20, ptr noundef nonnull @.str.146)
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data, align 4
  %tobool59.not = icmp eq ptr %16, null
  br i1 %tobool59.not, label %do.end56.if.then62_crit_edge, label %lor.lhs.false

do.end56.if.then62_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

lor.lhs.false:                                    ; preds = %do.end56
  %private_data60 = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data60, align 4
  %tobool61.not = icmp eq ptr %18, null
  br i1 %tobool61.not, label %lor.lhs.false.if.then62_crit_edge, label %if.end78

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %do.end56.if.then62_crit_edge
  %call65 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_remap_file_range._rs.150, ptr noundef nonnull @.str.146) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then62.do.body126_crit_edge, label %do.end70

if.then62.do.body126_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body126

do.end70:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  br label %do.body126

if.end78:                                         ; preds = %lor.lhs.false
  %tlink = getelementptr inbounds %struct.cifsFileInfo, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %tlink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tlink, align 4
  %tl_tcon.i = getelementptr inbounds %struct.tcon_link, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %tl_tcon.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tl_tcon.i, align 4
  tail call void @lock_two_nondirectories(ptr noundef %3, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %if.then81, label %if.end78.do.body84_crit_edge

if.end78.do.body84_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size, align 8
  %sub = sub i64 %24, %off
  br label %do.body84

do.body84:                                        ; preds = %if.then81, %if.end78.do.body84_crit_edge
  %len.addr.0 = phi i64 [ %sub, %if.then81 ], [ %len, %if.end78.do.body84_crit_edge ]
  %25 = load i32, ptr @cifsFYI, align 4
  %and85 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body84.do.end112_crit_edge, label %do.body88

do.body84.do.end112_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end112

do.body88:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_remap_file_range.descriptor.152, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_remap_file_range, %land.lhs.true100)) #13
          to label %do.end112 [label %land.lhs.true100], !srcloc !612

land.lhs.true100:                                 ; preds = %do.body88
  %call101 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_remap_file_range._rs.151, ptr noundef nonnull @.str.146) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true100.do.end112_crit_edge, label %if.then103

land.lhs.true100.do.end112_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end112

if.then103:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_remap_file_range.descriptor.152, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3) #13
  br label %do.end112

do.end112:                                        ; preds = %if.then103, %land.lhs.true100.do.end112_crit_edge, %do.body88, %do.body84.do.end112_crit_edge
  %i_data = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 46
  %add = add i64 %destoff, 4095
  %add113 = add i64 %add, %len.addr.0
  %and114 = and i64 %add113, -4096
  %sub115 = add i64 %and114, -1
  tail call void @truncate_inode_pages_range(ptr noundef %i_data, i64 noundef %destoff, i64 noundef %sub115) #13
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %22, i32 0, i32 7
  %26 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %server, align 8
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %duplicate_extents = getelementptr inbounds %struct.smb_version_operations, ptr %31, i32 0, i32 89
  %32 = ptrtoint ptr %duplicate_extents to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %duplicate_extents, align 4
  %tobool116.not = icmp eq ptr %33, null
  br i1 %tobool116.not, label %do.end112.if.end124_crit_edge, label %if.then117

do.end112.if.end124_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then117:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #15
  %call122 = tail call i32 %33(i32 noundef %call20, ptr noundef %5, ptr noundef nonnull %18, i64 noundef %off, i64 noundef %len.addr.0, i64 noundef %destoff) #13
  br label %if.end124

if.end124:                                        ; preds = %if.then117, %do.end112.if.end124_crit_edge
  %rc.0 = phi i32 [ %call122, %if.then117 ], [ -95, %do.end112.if.end124_crit_edge ]
  %time = getelementptr i8, ptr %3, i32 -56
  %34 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %time, align 8
  tail call void @unlock_two_nondirectories(ptr noundef %1, ptr noundef %3) #13
  br label %do.body126

do.body126:                                       ; preds = %if.end124, %do.end70, %if.then62.do.body126_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end124 ], [ -9, %do.end70 ], [ -9, %if.then62.do.body126_crit_edge ]
  %len.addr.1 = phi i64 [ %len.addr.0, %if.end124 ], [ %len, %do.end70 ], [ %len, %if.then62.do.body126_crit_edge ]
  tail call void @_free_xid(i32 noundef %call20) #13
  %35 = load i32, ptr @cifsFYI, align 4
  %and129 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %do.body126.do.end156_crit_edge, label %do.body132

do.body126.do.end156_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156

do.body132:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_remap_file_range.descriptor.154, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_remap_file_range, %land.lhs.true144)) #13
          to label %do.end156 [label %land.lhs.true144], !srcloc !612

land.lhs.true144:                                 ; preds = %do.body132
  %call145 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_remap_file_range._rs.153, ptr noundef nonnull @.str.146) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %land.lhs.true144.do.end156_crit_edge, label %if.then147

land.lhs.true144.do.end156_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156

if.then147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_remap_file_range.descriptor.154, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.146, i32 noundef %call20, i32 noundef %rc.1) #13
  br label %do.end156

do.end156:                                        ; preds = %if.then147, %land.lhs.true144.do.end156_crit_edge, %do.body132, %do.body126.do.end156_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool157.not = icmp eq i32 %rc.1, 0
  br i1 %tobool157.not, label %if.else159, label %if.then158

if.then158:                                       ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call20, ptr noundef nonnull @.str.146, i32 noundef %rc.1)
  br label %do.end162

if.else159:                                       ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call20, ptr noundef nonnull @.str.146)
  br label %do.end162

do.end162:                                        ; preds = %if.else159, %if.then158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp163 = icmp slt i32 %rc.1, 0
  %conv = sext i32 %rc.1 to i64
  %cond = select i1 %cmp163, i64 %conv, i64 %len.addr.1
  br label %cleanup

cleanup:                                          ; preds = %do.end162, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %cond, %do.end162 ], [ -22, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_strict_readv(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_strict_writev(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_file_strict_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_strict_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_direct_readv(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_direct_writev(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_readdir(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_closedir(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_dir_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_dir_fsync.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_dir_fsync, %land.lhs.true)) #13
          to label %do.end11 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_dir_fsync._rs, ptr noundef nonnull @.str.155) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %if.then8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_dir_fsync.descriptor, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.3, ptr noundef %file, i32 noundef %datasync) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true.do.end11_crit_edge, %do.body2, %entry.do.end11_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_cifs() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exit_cifs.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exit_cifs, %land.lhs.true)) #13
          to label %do.end8 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @exit_cifs._rs, ptr noundef nonnull @.str.28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end8_crit_edge, label %if.then

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exit_cifs.descriptor, ptr noundef nonnull @.str.29) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true.do.end8_crit_edge, %entry
  %call9 = tail call i32 @unregister_filesystem(ptr noundef nonnull @cifs_fs_type) #13
  %call10 = tail call i32 @unregister_filesystem(ptr noundef nonnull @smb3_fs_type) #13
  tail call void @cifs_dfs_release_automount_timer() #13
  tail call void @exit_cifs_idmap() #13
  tail call void @cifs_genl_exit() #13
  tail call void @exit_cifs_spnego() #13
  tail call void @dfs_cache_destroy() #13
  tail call fastcc void @cifs_destroy_request_bufs()
  %0 = load ptr, ptr @cifs_mid_poolp, align 4
  tail call void @mempool_destroy(ptr noundef %0) #13
  %1 = load ptr, ptr @cifs_mid_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #13
  tail call void @rcu_barrier() #13
  %2 = load ptr, ptr @cifs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #13
  %3 = load ptr, ptr @deferredclose_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #13
  %4 = load ptr, ptr @cifsoplockd_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #13
  %5 = load ptr, ptr @decrypt_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #13
  %6 = load ptr, ptr @fileinfo_put_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %6) #13
  %7 = load ptr, ptr @cifsiod_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #13
  tail call void @cifs_proc_clean() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_dfs_release_automount_timer() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_cifs_idmap() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_genl_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_cifs_spnego() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfs_cache_destroy() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_destroy_request_bufs() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cifs_req_poolp, align 4
  tail call void @mempool_destroy(ptr noundef %0) #13
  %1 = load ptr, ptr @cifs_req_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #13
  %2 = load ptr, ptr @cifs_sm_req_poolp, align 4
  tail call void @mempool_destroy(ptr noundef %2) #13
  %3 = load ptr, ptr @cifs_sm_req_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_destroy_mids() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cifs_mid_poolp, align 4
  tail call void @mempool_destroy(ptr noundef %0) #13
  %1 = load ptr, ptr @cifs_mid_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_proc_clean() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_cifs() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cifs_proc_init() #13
  store volatile ptr @cifs_tcp_ses_list, ptr @cifs_tcp_ses_list, align 4
  store ptr @cifs_tcp_ses_list, ptr getelementptr inbounds (%struct.list_head, ptr @cifs_tcp_ses_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @sesInfoAllocCount, i32 noundef 4) #13
  store volatile i32 0, ptr @sesInfoAllocCount, align 4
  %call.i.i178 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tconInfoAllocCount, i32 noundef 4) #13
  store volatile i32 0, ptr @tconInfoAllocCount, align 4
  %call.i.i179 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tcpSesNextId, i32 noundef 4) #13
  store volatile i32 0, ptr @tcpSesNextId, align 4
  %call.i.i180 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tcpSesAllocCount, i32 noundef 4) #13
  store volatile i32 0, ptr @tcpSesAllocCount, align 4
  %call.i.i181 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tcpSesReconnectCount, i32 noundef 4) #13
  store volatile i32 0, ptr @tcpSesReconnectCount, align 4
  %call.i.i182 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @tconInfoReconnectCount, i32 noundef 4) #13
  store volatile i32 0, ptr @tconInfoReconnectCount, align 4
  %call.i.i183 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bufAllocCount, i32 noundef 4) #13
  store volatile i32 0, ptr @bufAllocCount, align 4
  %call.i.i184 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @smBufAllocCount, i32 noundef 4) #13
  store volatile i32 0, ptr @smBufAllocCount, align 4
  %call.i.i185 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @totBufAllocCount, i32 noundef 4) #13
  store volatile i32 0, ptr @totBufAllocCount, align 4
  %call.i.i186 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @totSmBufAllocCount, i32 noundef 4) #13
  store volatile i32 0, ptr @totSmBufAllocCount, align 4
  %0 = load i32, ptr @slow_rsp_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.body1, label %if.else15

do.body1:                                         ; preds = %entry
  %1 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1.if.end34_crit_edge, label %do.body3

do.body1.if.end34_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.body3:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cifs.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cifs, %land.lhs.true)) #13
          to label %if.end34 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body3
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @init_cifs._rs, ptr noundef nonnull @.str.158) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end34_crit_edge, label %if.then9

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cifs.descriptor, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.3) #13
  br label %if.end34

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %0)
  %cmp16 = icmp ugt i32 %0, 32767
  br i1 %cmp16, label %do.body19, label %if.else15.if.end34_crit_edge

if.else15.if.end34_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.body19:                                        ; preds = %if.else15
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @init_cifs._rs.160, ptr noundef nonnull @.str.158) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body19.if.end34_crit_edge, label %do.end25

do.body19.if.end34_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161) #16
  br label %if.end34

if.end34:                                         ; preds = %do.end25, %do.body19.if.end34_crit_edge, %if.else15.if.end34_crit_edge, %if.then9, %land.lhs.true.if.end34_crit_edge, %do.body3, %do.body1.if.end34_crit_edge
  %call.i.i187 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @midCount, i32 noundef 4) #13
  store volatile i32 0, ptr @midCount, align 4
  store i32 0, ptr @GlobalCurrentXid, align 4
  store i32 0, ptr @GlobalTotalActiveXid, align 4
  store i32 0, ptr @GlobalMaxActiveXid, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @cifs_tcp_ses_lock, ptr noundef nonnull @.str.162, ptr noundef nonnull @init_cifs.__key, i16 noundef signext 3) #13
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @GlobalMid_Lock, ptr noundef nonnull @.str.164, ptr noundef nonnull @init_cifs.__key.163, i16 noundef signext 3) #13
  %call43 = tail call i32 @get_random_u32() #13
  store i32 %call43, ptr @cifs_lock_secret, align 4
  %2 = load i32, ptr @cifs_max_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp44 = icmp ult i32 %2, 2
  br i1 %cmp44, label %if.then45, label %if.else76

if.then45:                                        ; preds = %if.end34
  store i32 2, ptr @cifs_max_pending, align 4
  %3 = load i32, ptr @cifsFYI, align 4
  %and48 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then45.if.end110_crit_edge, label %do.body51

if.then45.if.end110_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

do.body51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cifs.descriptor.166, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cifs, %land.lhs.true63)) #13
          to label %if.end110 [label %land.lhs.true63], !srcloc !612

land.lhs.true63:                                  ; preds = %do.body51
  %call64 = tail call i32 @___ratelimit(ptr noundef nonnull @init_cifs._rs.165, ptr noundef nonnull @.str.158) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.if.end110_crit_edge, label %if.then66

land.lhs.true63.if.end110_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.then66:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cifs.descriptor.166, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.3) #13
  br label %if.end110

if.else76:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %2)
  %cmp77 = icmp ugt i32 %2, 32767
  br i1 %cmp77, label %if.then78, label %if.else76.if.end110_crit_edge

if.else76.if.end110_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.then78:                                        ; preds = %if.else76
  store i32 32767, ptr @cifs_max_pending, align 4
  %4 = load i32, ptr @cifsFYI, align 4
  %and81 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then78.if.end110_crit_edge, label %do.body84

if.then78.if.end110_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

do.body84:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_cifs.descriptor.169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_cifs, %land.lhs.true96)) #13
          to label %if.end110 [label %land.lhs.true96], !srcloc !612

land.lhs.true96:                                  ; preds = %do.body84
  %call97 = tail call i32 @___ratelimit(ptr noundef nonnull @init_cifs._rs.168, ptr noundef nonnull @.str.158) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %land.lhs.true96.if.end110_crit_edge, label %if.then99

land.lhs.true96.if.end110_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.then99:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_cifs.descriptor.169, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.3, i32 noundef 32767) #13
  br label %if.end110

if.end110:                                        ; preds = %if.then99, %land.lhs.true96.if.end110_crit_edge, %do.body84, %if.then78.if.end110_crit_edge, %if.else76.if.end110_crit_edge, %if.then66, %land.lhs.true63.if.end110_crit_edge, %do.body51, %if.then45.if.end110_crit_edge
  %call111 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.171, i32 noundef 12, i32 noundef 0) #13
  store ptr %call111, ptr @cifsiod_wq, align 4
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.end110.out_clean_proc_crit_edge, label %if.end114

if.end110.out_clean_proc_crit_edge:               ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_clean_proc

if.end114:                                        ; preds = %if.end110
  %call115 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.172, i32 noundef 14, i32 noundef 0) #13
  store ptr %call115, ptr @decrypt_wq, align 4
  %tobool116.not = icmp eq ptr %call115, null
  br i1 %tobool116.not, label %if.end114.out_destroy_cifsiod_wq_crit_edge, label %if.end118

if.end114.out_destroy_cifsiod_wq_crit_edge:       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_cifsiod_wq

if.end118:                                        ; preds = %if.end114
  %call119 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.173, i32 noundef 14, i32 noundef 0) #13
  store ptr %call119, ptr @fileinfo_put_wq, align 4
  %tobool120.not = icmp eq ptr %call119, null
  br i1 %tobool120.not, label %if.end118.out_destroy_decrypt_wq_crit_edge, label %if.end122

if.end118.out_destroy_decrypt_wq_crit_edge:       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_decrypt_wq

if.end122:                                        ; preds = %if.end118
  %call123 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.174, i32 noundef 12, i32 noundef 0) #13
  store ptr %call123, ptr @cifsoplockd_wq, align 4
  %tobool124.not = icmp eq ptr %call123, null
  br i1 %tobool124.not, label %if.end122.out_destroy_fileinfo_put_wq_crit_edge, label %if.end126

if.end122.out_destroy_fileinfo_put_wq_crit_edge:  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_fileinfo_put_wq

if.end126:                                        ; preds = %if.end122
  %call127 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.175, i32 noundef 12, i32 noundef 0) #13
  store ptr %call127, ptr @deferredclose_wq, align 4
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %if.end126.out_destroy_cifsoplockd_wq_crit_edge, label %if.end130

if.end126.out_destroy_cifsoplockd_wq_crit_edge:   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_cifsoplockd_wq

if.end130:                                        ; preds = %if.end126
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.176, i32 noundef 1120, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @cifs_init_once) #13
  store ptr %call.i, ptr @cifs_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %if.end130.out_destroy_deferredclose_wq_crit_edge, label %if.end134

if.end130.out_destroy_deferredclose_wq_crit_edge: ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_deferredclose_wq

if.end134:                                        ; preds = %if.end130
  %call135 = tail call fastcc i32 @cifs_init_mids()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.end134.out_destroy_inodecache_crit_edge

if.end134.out_destroy_inodecache_crit_edge:       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_inodecache

if.end138:                                        ; preds = %if.end134
  %call139 = tail call fastcc i32 @cifs_init_request_bufs()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end138.out_destroy_mids_crit_edge

if.end138.out_destroy_mids_crit_edge:             ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_mids

if.end142:                                        ; preds = %if.end138
  %call143 = tail call i32 @dfs_cache_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end142.out_destroy_request_bufs_crit_edge

if.end142.out_destroy_request_bufs_crit_edge:     ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_request_bufs

if.end146:                                        ; preds = %if.end142
  %call147 = tail call i32 @init_cifs_spnego() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end146.out_destroy_dfs_cache_crit_edge

if.end146.out_destroy_dfs_cache_crit_edge:        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_dfs_cache

if.end150:                                        ; preds = %if.end146
  %call151 = tail call i32 @cifs_genl_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end150.out_register_key_type_crit_edge

if.end150.out_register_key_type_crit_edge:        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_register_key_type

if.end154:                                        ; preds = %if.end150
  %call155 = tail call i32 @init_cifs_idmap() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end154.out_cifs_swn_init_crit_edge

if.end154.out_cifs_swn_init_crit_edge:            ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_cifs_swn_init

if.end158:                                        ; preds = %if.end154
  %call159 = tail call i32 @register_filesystem(ptr noundef nonnull @cifs_fs_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end162, label %if.end158.out_init_cifs_idmap_crit_edge

if.end158.out_init_cifs_idmap_crit_edge:          ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_init_cifs_idmap

if.end162:                                        ; preds = %if.end158
  %call163 = tail call i32 @register_filesystem(ptr noundef nonnull @smb3_fs_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end162.cleanup_crit_edge, label %if.then165

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  %call166 = tail call i32 @unregister_filesystem(ptr noundef nonnull @cifs_fs_type) #13
  br label %out_init_cifs_idmap

out_init_cifs_idmap:                              ; preds = %if.then165, %if.end158.out_init_cifs_idmap_crit_edge
  %rc.0 = phi i32 [ %call159, %if.end158.out_init_cifs_idmap_crit_edge ], [ %call163, %if.then165 ]
  tail call void @exit_cifs_idmap() #13
  br label %out_cifs_swn_init

out_cifs_swn_init:                                ; preds = %out_init_cifs_idmap, %if.end154.out_cifs_swn_init_crit_edge
  %rc.1 = phi i32 [ %call155, %if.end154.out_cifs_swn_init_crit_edge ], [ %rc.0, %out_init_cifs_idmap ]
  tail call void @cifs_genl_exit() #13
  br label %out_register_key_type

out_register_key_type:                            ; preds = %out_cifs_swn_init, %if.end150.out_register_key_type_crit_edge
  %rc.2 = phi i32 [ %call151, %if.end150.out_register_key_type_crit_edge ], [ %rc.1, %out_cifs_swn_init ]
  tail call void @exit_cifs_spnego() #13
  br label %out_destroy_dfs_cache

out_destroy_dfs_cache:                            ; preds = %out_register_key_type, %if.end146.out_destroy_dfs_cache_crit_edge
  %rc.3 = phi i32 [ %call147, %if.end146.out_destroy_dfs_cache_crit_edge ], [ %rc.2, %out_register_key_type ]
  tail call void @dfs_cache_destroy() #13
  br label %out_destroy_request_bufs

out_destroy_request_bufs:                         ; preds = %out_destroy_dfs_cache, %if.end142.out_destroy_request_bufs_crit_edge
  %rc.4 = phi i32 [ %call143, %if.end142.out_destroy_request_bufs_crit_edge ], [ %rc.3, %out_destroy_dfs_cache ]
  tail call fastcc void @cifs_destroy_request_bufs()
  br label %out_destroy_mids

out_destroy_mids:                                 ; preds = %out_destroy_request_bufs, %if.end138.out_destroy_mids_crit_edge
  %rc.5 = phi i32 [ %call139, %if.end138.out_destroy_mids_crit_edge ], [ %rc.4, %out_destroy_request_bufs ]
  tail call fastcc void @cifs_destroy_mids()
  br label %out_destroy_inodecache

out_destroy_inodecache:                           ; preds = %out_destroy_mids, %if.end134.out_destroy_inodecache_crit_edge
  %rc.6 = phi i32 [ %call135, %if.end134.out_destroy_inodecache_crit_edge ], [ %rc.5, %out_destroy_mids ]
  tail call void @rcu_barrier() #13
  %5 = load ptr, ptr @cifs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #13
  br label %out_destroy_deferredclose_wq

out_destroy_deferredclose_wq:                     ; preds = %out_destroy_inodecache, %if.end130.out_destroy_deferredclose_wq_crit_edge
  %rc.7 = phi i32 [ -12, %if.end130.out_destroy_deferredclose_wq_crit_edge ], [ %rc.6, %out_destroy_inodecache ]
  %6 = load ptr, ptr @deferredclose_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %6) #13
  br label %out_destroy_cifsoplockd_wq

out_destroy_cifsoplockd_wq:                       ; preds = %out_destroy_deferredclose_wq, %if.end126.out_destroy_cifsoplockd_wq_crit_edge
  %rc.8 = phi i32 [ %rc.7, %out_destroy_deferredclose_wq ], [ -12, %if.end126.out_destroy_cifsoplockd_wq_crit_edge ]
  %7 = load ptr, ptr @cifsoplockd_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #13
  br label %out_destroy_fileinfo_put_wq

out_destroy_fileinfo_put_wq:                      ; preds = %out_destroy_cifsoplockd_wq, %if.end122.out_destroy_fileinfo_put_wq_crit_edge
  %rc.9 = phi i32 [ %rc.8, %out_destroy_cifsoplockd_wq ], [ -12, %if.end122.out_destroy_fileinfo_put_wq_crit_edge ]
  %8 = load ptr, ptr @fileinfo_put_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #13
  br label %out_destroy_decrypt_wq

out_destroy_decrypt_wq:                           ; preds = %out_destroy_fileinfo_put_wq, %if.end118.out_destroy_decrypt_wq_crit_edge
  %rc.10 = phi i32 [ %rc.9, %out_destroy_fileinfo_put_wq ], [ -12, %if.end118.out_destroy_decrypt_wq_crit_edge ]
  %9 = load ptr, ptr @decrypt_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #13
  br label %out_destroy_cifsiod_wq

out_destroy_cifsiod_wq:                           ; preds = %out_destroy_decrypt_wq, %if.end114.out_destroy_cifsiod_wq_crit_edge
  %rc.11 = phi i32 [ %rc.10, %out_destroy_decrypt_wq ], [ -12, %if.end114.out_destroy_cifsiod_wq_crit_edge ]
  %10 = load ptr, ptr @cifsiod_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %10) #13
  br label %out_clean_proc

out_clean_proc:                                   ; preds = %out_destroy_cifsiod_wq, %if.end110.out_clean_proc_crit_edge
  %rc.12 = phi i32 [ %rc.11, %out_destroy_cifsiod_wq ], [ -12, %if.end110.out_clean_proc_crit_edge ]
  tail call void @cifs_proc_clean() #13
  br label %cleanup

cleanup:                                          ; preds = %out_clean_proc, %if.end162.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.12, %out_clean_proc ], [ 0, %if.end162.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_sb_master_tcon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnvrtDosUnixTm(ptr sret(%struct.timespec64) align 8, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_NTtimeToUnix(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_root_iget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cifs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cifs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cifsAttrs = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %cifsAttrs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %cifsAttrs, align 8
  %time = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %time, align 8
  tail call void @cifs_set_oplock_level(ptr noundef nonnull %call, i32 noundef 0) #13
  %flags = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags, align 4
  %writers_lock = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %writers_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @cifs_alloc_inode.__key, i16 noundef signext 3) #13
  %writers = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %writers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %writers, align 4
  %vfs_inode = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 17
  %i_blkbits = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 17, i32 20
  %5 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 14, ptr %i_blkbits, align 2
  %server_eof = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 12
  %epoch = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %epoch to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %epoch, align 8
  %open_file_lock = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 4
  %7 = call ptr @memset(ptr %server_eof, i32 0, i32 24)
  tail call void @__raw_spin_lock_init(ptr noundef %open_file_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @cifs_alloc_inode.__key.34, i16 noundef signext 3) #13
  %lease_key = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 15
  tail call void @generate_random_uuid(ptr noundef %lease_key) #13
  %openFileList = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %openFileList to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %openFileList, ptr %openFileList, align 4
  %prev.i = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %openFileList, ptr %prev.i, align 8
  %llist = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %llist to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %llist, ptr %llist, align 4
  %prev.i29 = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %llist, ptr %prev.i29, align 8
  %deferred_closes = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 18
  %12 = ptrtoint ptr %deferred_closes to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %deferred_closes, ptr %deferred_closes, align 8
  %prev.i30 = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %deferred_closes, ptr %prev.i30, align 4
  %deferred_lock = getelementptr inbounds %struct.cifsInodeInfo, ptr %call, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %deferred_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @cifs_alloc_inode.__key.36, i16 noundef signext 3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cifs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -280
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_write_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fscache.i = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache.i, align 8
  %unpinned_fscache_wb.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %2 = ptrtoint ptr %unpinned_fscache_wb.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %unpinned_fscache_wb.i, align 4
  %3 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  %tobool.not.i.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %tobool.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.fscache_unpin_writeback.exit_crit_edge, label %if.then.i.i

entry.fscache_unpin_writeback.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fscache_unpin_writeback.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__fscache_unuse_cookie(ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #13
  br label %fscache_unpin_writeback.exit

fscache_unpin_writeback.exit:                     ; preds = %if.then.i.i, %entry.fscache_unpin_writeback.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_drop_inode(ptr nocapture noundef readonly %inode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mnt_cifs_flags = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mnt_cifs_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_cifs_flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %lor.rhs.lor.end_crit_edge, label %lor.rhs.i

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs.i:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  %phi.cast4 = zext i1 %tobool.not.i.i.i to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.i, %lor.rhs.lor.end_crit_edge, %entry.lor.end_crit_edge
  %11 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ 1, %lor.rhs.lor.end_crit_edge ], [ %phi.cast4, %lor.rhs.i ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #13
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cifs_fscache_unuse_inode_cookie(ptr noundef %inode, i1 noundef zeroext true) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @cifs_fscache_release_inode_cookie(ptr noundef %inode) #13
  tail call void @clear_inode(ptr noundef %inode) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_statfs(ptr nocapture noundef readonly %dentry, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %3) #13
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 7
  %4 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ses, align 8
  %server2 = getelementptr inbounds %struct.cifs_ses, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server2, align 8
  %call3 = tail call i32 @_get_xid() #13
  %8 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end23_crit_edge, label %do.body5

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_statfs.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_statfs, %land.lhs.true)) #13
          to label %do.end23 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body5
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_statfs._rs, ptr noundef nonnull @.str.38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end23_crit_edge, label %if.then12

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  %call16 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_statfs.descriptor, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.38, i32 noundef %call3, i32 noundef %call16) #13
  br label %do.end23

do.end23:                                         ; preds = %if.then12, %land.lhs.true.do.end23_crit_edge, %do.body5, %entry.do.end23_crit_edge
  tail call fastcc void @trace_smb3_enter(i32 noundef %call3, ptr noundef nonnull @.str.38)
  %MaxPathNameComponentLength = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %MaxPathNameComponentLength to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %MaxPathNameComponentLength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %spec.select = select i1 %cmp.not, i32 4096, i32 %18
  %19 = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 8
  %vol_serial_number = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 31
  %21 = ptrtoint ptr %vol_serial_number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vol_serial_number, align 4
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %23 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %f_fsid, align 8
  %vol_create_time = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 32
  %24 = ptrtoint ptr %vol_create_time to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vol_create_time, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %conv = trunc i64 %26 to i32
  %arrayidx33 = getelementptr %struct.kstatfs, ptr %buf, i32 0, i32 7, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %arrayidx33, align 4
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %ops = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 5
  %28 = call ptr @memset(ptr %f_files, i32 0, i32 16)
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %queryfs = getelementptr inbounds %struct.smb_version_operations, ptr %30, i32 0, i32 70
  %31 = ptrtoint ptr %queryfs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queryfs, align 4
  %tobool34.not = icmp eq ptr %32, null
  br i1 %tobool34.not, label %do.end23.do.body40_crit_edge, label %if.then35

do.end23.do.body40_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40

if.then35:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = tail call i32 %32(i32 noundef %call3, ptr noundef %call1, ptr noundef %3, ptr noundef %buf) #13
  br label %do.body40

do.body40:                                        ; preds = %if.then35, %do.end23.do.body40_crit_edge
  %rc.0 = phi i32 [ %call38, %if.then35 ], [ 0, %do.end23.do.body40_crit_edge ]
  tail call void @_free_xid(i32 noundef %call3) #13
  %33 = load i32, ptr @cifsFYI, align 4
  %and43 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body40.do.end70_crit_edge, label %do.body46

do.body40.do.end70_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

do.body46:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_statfs.descriptor.41, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_statfs, %land.lhs.true58)) #13
          to label %do.end70 [label %land.lhs.true58], !srcloc !612

land.lhs.true58:                                  ; preds = %do.body46
  %call59 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_statfs._rs.40, ptr noundef nonnull @.str.38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.do.end70_crit_edge, label %if.then61

land.lhs.true58.do.end70_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_statfs.descriptor.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.38, i32 noundef %call3, i32 noundef %rc.0) #13
  br label %do.end70

do.end70:                                         ; preds = %if.then61, %land.lhs.true58.do.end70_crit_edge, %do.body46, %do.body40.do.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool71.not = icmp eq i32 %rc.0, 0
  br i1 %tobool71.not, label %if.else73, label %if.then72

if.then72:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_smb3_exit_err(i32 noundef %call3, ptr noundef nonnull @.str.38, i32 noundef %rc.0)
  br label %do.end76

if.else73:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_smb3_exit_done(i32 noundef %call3, ptr noundef nonnull @.str.38)
  br label %do.end76

do.end76:                                         ; preds = %if.else73, %if.then72
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_umount_begin(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef nonnull %1) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @cifs_tcp_ses_lock) #13
  %tc_count = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %tc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2 = icmp sgt i32 %3, 1
  br i1 %cmp2, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %tidStatus = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 13
  %4 = ptrtoint ptr %tidStatus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tidStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %if.else

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #13
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp eq i32 %3, 1
  br i1 %cmp6, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %tidStatus to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %tidStatus, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cifs_tcp_ses_lock) #13
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 7
  %7 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ses, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %land.lhs.true

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end10
  %server = getelementptr inbounds %struct.cifs_ses, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %server, align 8
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %do.body14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body14:                                        ; preds = %land.lhs.true
  %11 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body14.do.end32_crit_edge, label %do.body17

do.body14.do.end32_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

do.body17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_umount_begin.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_umount_begin, %land.lhs.true22)) #13
          to label %do.end32 [label %land.lhs.true22], !srcloc !612

land.lhs.true22:                                  ; preds = %do.body17
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_umount_begin._rs, ptr noundef nonnull @.str.46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end32_crit_edge, label %if.then25

land.lhs.true22.do.end32_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_umount_begin.descriptor, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #13
  br label %do.end32

do.end32:                                         ; preds = %if.then25, %land.lhs.true22.do.end32_crit_edge, %do.body17, %do.body14.do.end32_crit_edge
  %12 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ses, align 8
  %server34 = getelementptr inbounds %struct.cifs_ses, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %server34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %server34, align 8
  %request_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %15, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %request_q, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  %16 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ses, align 8
  %server36 = getelementptr inbounds %struct.cifs_ses, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %server36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %server36, align 8
  %response_q = getelementptr inbounds %struct.TCP_Server_Info, ptr %19, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %response_q, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  tail call void @msleep(i32 noundef 1) #13
  %20 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ses, align 8
  %server38 = getelementptr inbounds %struct.cifs_ses, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %server38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %server38, align 8
  %response_q39 = getelementptr inbounds %struct.TCP_Server_Info, ptr %23, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %response_q39, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  tail call void @msleep(i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_show_options(ptr noundef %s, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @cifs_sb_master_tcon(ptr noundef %3) #13
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 7
  %4 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server, align 8
  %srcaddr2 = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 11
  %vals = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vals, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 44) #13
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.113) #13
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.seq_show_option.exit_crit_edge, label %if.then.i

entry.seq_show_option.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %seq_show_option.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 61) #13
  %call.i.i5.i = tail call i32 @strlen(ptr noundef nonnull %11) #18
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull %11, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.114) #13
  br label %seq_show_option.exit

seq_show_option.exit:                             ; preds = %if.then.i, %entry.seq_show_option.exit_crit_edge
  %12 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ses, align 8
  %sectype.i = getelementptr inbounds %struct.cifs_ses, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %sectype.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sectype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then.i491, label %if.end3.i

if.then.i491:                                     ; preds = %seq_show_option.exit
  %user_name.i = getelementptr inbounds %struct.cifs_ses, ptr %13, i32 0, i32 17
  %16 = ptrtoint ptr %user_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_name.i, align 8
  %cmp1.i = icmp eq ptr %17, null
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i491.cifs_show_security.exit_crit_edge

if.then.i491.cifs_show_security.exit_crit_edge:   ; preds = %if.then.i491
  call void @__sanitizer_cov_trace_pc() #15
  br label %cifs_show_security.exit

if.then2.i:                                       ; preds = %if.then.i491
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.115) #13
  br label %cifs_show_security.exit

if.end3.i:                                        ; preds = %seq_show_option.exit
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.116) #13
  %18 = ptrtoint ptr %sectype.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sectype.i, align 4
  %switch.tableidx = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 3
  br i1 %20, label %switch.lookup, label %if.end3.i.sw.epilog.i_crit_edge

if.end3.i.sw.epilog.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cifs_show_options, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end3.i.sw.epilog.i_crit_edge
  %.str.120.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.120, %if.end3.i.sw.epilog.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.120.sink.i) #13
  %sign.i = getelementptr inbounds %struct.cifs_ses, ptr %13, i32 0, i32 24
  %22 = ptrtoint ptr %sign.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sign.i, align 8, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i492 = icmp eq i8 %23, 0
  br i1 %tobool.not.i492, label %sw.epilog.i.if.end8.i_crit_edge, label %if.then7.i

sw.epilog.i.if.end8.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then7.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.121) #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %sw.epilog.i.if.end8.i_crit_edge
  %24 = ptrtoint ptr %sectype.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sectype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp10.i = icmp eq i32 %25, 3
  br i1 %cmp10.i, label %if.then11.i, label %if.end8.i.cifs_show_security.exit_crit_edge

if.end8.i.cifs_show_security.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cifs_show_security.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %cred_uid.i = getelementptr inbounds %struct.cifs_ses, ptr %13, i32 0, i32 14
  %26 = ptrtoint ptr %cred_uid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack.i = load i32, ptr %cred_uid.i, align 4
  %27 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %27) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.122, i32 noundef %call.i) #13
  br label %cifs_show_security.exit

cifs_show_security.exit:                          ; preds = %if.then11.i, %if.end8.i.cifs_show_security.exit_crit_edge, %if.then2.i, %if.then.i491.cifs_show_security.exit_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.123) #13
  %mnt_cifs_flags.i = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and.i = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i493 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i493, label %if.else.i, label %cifs_show_security.exit.cifs_show_cache_flavor.exit_crit_edge

cifs_show_security.exit.cifs_show_cache_flavor.exit_crit_edge: ; preds = %cifs_show_security.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cifs_show_cache_flavor.exit

if.else.i:                                        ; preds = %cifs_show_security.exit
  %and2.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else5.i, label %if.else.i.cifs_show_cache_flavor.exit_crit_edge

if.else.i.cifs_show_cache_flavor.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cifs_show_cache_flavor.exit

if.else5.i:                                       ; preds = %if.else.i
  %and7.i = and i32 %29, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else10.i, label %if.else5.i.cifs_show_cache_flavor.exit_crit_edge

if.else5.i.cifs_show_cache_flavor.exit_crit_edge: ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cifs_show_cache_flavor.exit

if.else10.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #15
  %and12.i = and i32 %29, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %.str.128..str.127.i = select i1 %tobool13.not.i, ptr @.str.128, ptr @.str.127
  br label %cifs_show_cache_flavor.exit

cifs_show_cache_flavor.exit:                      ; preds = %if.else10.i, %if.else5.i.cifs_show_cache_flavor.exit_crit_edge, %if.else.i.cifs_show_cache_flavor.exit_crit_edge, %cifs_show_security.exit.cifs_show_cache_flavor.exit_crit_edge
  %.str.125.sink.i = phi ptr [ @.str.124, %cifs_show_security.exit.cifs_show_cache_flavor.exit_crit_edge ], [ @.str.125, %if.else.i.cifs_show_cache_flavor.exit_crit_edge ], [ @.str.126, %if.else5.i.cifs_show_cache_flavor.exit_crit_edge ], [ %.str.128..str.127.i, %if.else10.i ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.125.sink.i) #13
  %no_lease = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 27
  %30 = ptrtoint ptr %no_lease to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %no_lease, align 2
  %31 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %bf.cast.not = icmp eq i8 %31, 0
  br i1 %bf.cast.not, label %cifs_show_cache_flavor.exit.if.end_crit_edge, label %if.then

cifs_show_cache_flavor.exit.if.end_crit_edge:     ; preds = %cifs_show_cache_flavor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %cifs_show_cache_flavor.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.49) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %cifs_show_cache_flavor.exit.if.end_crit_edge
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 4
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  %multiuser = getelementptr inbounds %struct.smb3_fs_context, ptr %33, i32 0, i32 34
  %34 = ptrtoint ptr %multiuser to i32
  call void @__asan_loadN_noabort(i32 %34, i32 5)
  %bf.load6 = load i40, ptr %multiuser, align 1
  %35 = and i40 %bf.load6, 8192
  %bf.cast9.not = icmp eq i40 %35, 0
  br i1 %bf.cast9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.50) #13
  br label %if.end16

if.else:                                          ; preds = %if.end
  %36 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ses, align 8
  %user_name = getelementptr inbounds %struct.cifs_ses, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %user_name, align 8
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %if.else.if.end16_crit_edge, label %seq_show_option.exit498

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

seq_show_option.exit498:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 44) #13
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull @.str.51, i32 noundef 8, i32 noundef 8, ptr noundef nonnull @.str.113) #13
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 61) #13
  %call.i.i5.i496 = tail call i32 @strlen(ptr noundef nonnull %39) #18
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull %39, i32 noundef %call.i.i5.i496, i32 noundef 8, ptr noundef nonnull @.str.114) #13
  br label %if.end16

if.end16:                                         ; preds = %seq_show_option.exit498, %if.else.if.end16_crit_edge, %if.then10
  %40 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ses, align 8
  %domainName = getelementptr inbounds %struct.cifs_ses, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %domainName to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %domainName, align 4
  %tobool18.not = icmp eq ptr %43, null
  br i1 %tobool18.not, label %if.end16.if.end25_crit_edge, label %land.lhs.true

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end16
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.not = icmp eq i8 %45, 0
  br i1 %cmp.not, label %land.lhs.true.if.end25_crit_edge, label %seq_show_option.exit503

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

seq_show_option.exit503:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 44) #13
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull @.str.52, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.113) #13
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 61) #13
  %call.i.i5.i501 = tail call i32 @strlen(ptr noundef nonnull %43) #18
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull %43, i32 noundef %call.i.i5.i501, i32 noundef 8, ptr noundef nonnull @.str.114) #13
  br label %if.end25

if.end25:                                         ; preds = %seq_show_option.exit503, %land.lhs.true.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %46 = ptrtoint ptr %srcaddr2 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %srcaddr2, align 2
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.185)
  switch i16 %47, label %if.else41 [
    i16 0, label %if.end25.if.end46_crit_edge
    i16 10, label %if.then34
    i16 2, label %if.then40
  ]

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %sin6_addr = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 11, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, ptr noundef %sin6_addr) #13
  br label %if.end46

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %sin_addr = getelementptr inbounds %struct.TCP_Server_Info, ptr %7, i32 0, i32 11, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, ptr noundef %sin_addr) #13
  br label %if.end46

if.else41:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %conv26 = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %conv26) #13
  br label %if.end46

if.end46:                                         ; preds = %if.else41, %if.then40, %if.then34, %if.end25.if.end46_crit_edge
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx, align 4
  %linux_uid = getelementptr inbounds %struct.smb3_fs_context, ptr %50, i32 0, i32 23
  %51 = ptrtoint ptr %linux_uid to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack = load i32, ptr %linux_uid, align 4
  %52 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call48 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %52) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %call48) #13
  %53 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and = and i32 %54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  %.str.58..str.57 = select i1 %tobool49.not, ptr @.str.58, ptr @.str.57
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.58..str.57) #13
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 4
  %linux_gid = getelementptr inbounds %struct.smb3_fs_context, ptr %56, i32 0, i32 24
  %57 = ptrtoint ptr %linux_gid to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack488 = load i32, ptr %linux_gid, align 8
  %58 = insertvalue [1 x i32] undef, i32 %.unpack488, 0
  %call55 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %58) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.59, i32 noundef %call55) #13
  %59 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and57 = and i32 %60, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %.str.61.sink = select i1 %tobool58.not, ptr @.str.61, ptr @.str.60
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.61.sink) #13
  %61 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ses, align 8
  %server63 = getelementptr inbounds %struct.cifs_ses, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %server63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %server63, align 8
  %dstaddr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %64, i32 0, i32 10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.129) #13
  %65 = ptrtoint ptr %dstaddr.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %dstaddr.i, align 8
  %67 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.186)
  switch i16 %66, label %sw.default.i506 [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %sin_addr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %64, i32 0, i32 10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.130, ptr noundef %sin_addr.i) #13
  br label %sw.epilog.i507

sw.bb3.i:                                         ; preds = %if.end46
  %sin6_addr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %64, i32 0, i32 10, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.131, ptr noundef %sin6_addr.i) #13
  %sin6_scope_id.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %64, i32 0, i32 10, i32 0, i32 1, i32 20
  %68 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sin6_scope_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i504 = icmp eq i32 %69, 0
  br i1 %tobool.not.i504, label %sw.bb3.i.sw.epilog.i507_crit_edge, label %if.then.i505

sw.bb3.i.sw.epilog.i507_crit_edge:                ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i507

if.then.i505:                                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.132, i32 noundef %69) #13
  br label %sw.epilog.i507

sw.default.i506:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.133) #13
  br label %sw.epilog.i507

sw.epilog.i507:                                   ; preds = %sw.default.i506, %if.then.i505, %sw.bb3.i.sw.epilog.i507_crit_edge, %sw.bb.i
  %rdma.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %64, i32 0, i32 57
  %70 = ptrtoint ptr %rdma.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rdma.i, align 2, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool5.not.i = icmp eq i8 %71, 0
  br i1 %tobool5.not.i, label %sw.epilog.i507.cifs_show_address.exit_crit_edge, label %if.then6.i

sw.epilog.i507.cifs_show_address.exit_crit_edge:  ; preds = %sw.epilog.i507
  call void @__sanitizer_cov_trace_pc() #15
  br label %cifs_show_address.exit

if.then6.i:                                       ; preds = %sw.epilog.i507
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.134) #13
  br label %cifs_show_address.exit

cifs_show_address.exit:                           ; preds = %if.then6.i, %sw.epilog.i507.cifs_show_address.exit_crit_edge
  %unix_ext = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 22
  %72 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load64 = load i16, ptr %unix_ext, align 8
  %73 = and i16 %bf.load64, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %bf.cast67.not = icmp eq i16 %73, 0
  br i1 %bf.cast67.not, label %if.then68, label %cifs_show_address.exit.if.end73_crit_edge

cifs_show_address.exit.if.end73_crit_edge:        ; preds = %cifs_show_address.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then68:                                        ; preds = %cifs_show_address.exit
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx, align 4
  %file_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %75, i32 0, i32 27
  %76 = ptrtoint ptr %file_mode to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %file_mode, align 4
  %conv70 = zext i16 %77 to i32
  %dir_mode = getelementptr inbounds %struct.smb3_fs_context, ptr %75, i32 0, i32 28
  %78 = ptrtoint ptr %dir_mode to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %dir_mode, align 2
  %conv72 = zext i16 %79 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.62, i32 noundef %conv70, i32 noundef %conv72) #13
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %cifs_show_address.exit.if.end73_crit_edge
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx, align 4
  %iocharset = getelementptr inbounds %struct.smb3_fs_context, ptr %81, i32 0, i32 19
  %82 = ptrtoint ptr %iocharset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iocharset, align 4
  %tobool75.not = icmp eq ptr %83, null
  br i1 %tobool75.not, label %if.end73.if.end79_crit_edge, label %if.then76

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, ptr noundef nonnull %83) #13
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end73.if.end79_crit_edge
  %84 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load80 = load i16, ptr %unix_ext, align 8
  %85 = and i16 %bf.load80, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %bf.cast83.not = icmp eq i16 %85, 0
  br i1 %bf.cast83.not, label %if.else85, label %if.end79.if.end93.sink.split_crit_edge

if.end79.if.end93.sink.split_crit_edge:           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93.sink.split

if.else85:                                        ; preds = %if.end79
  %86 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ses, align 8
  %server87 = getelementptr inbounds %struct.cifs_ses, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %server87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %server87, align 8
  %ignore_signature = getelementptr inbounds %struct.TCP_Server_Info, ptr %89, i32 0, i32 30
  %90 = ptrtoint ptr %ignore_signature to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load88 = load i8, ptr %ignore_signature, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load88)
  %bf.cast90.not = icmp sgt i8 %bf.load88, -1
  br i1 %bf.cast90.not, label %if.else85.if.end93_crit_edge, label %if.else85.if.end93.sink.split_crit_edge

if.else85.if.end93.sink.split_crit_edge:          ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93.sink.split

if.else85.if.end93_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.end93.sink.split:                              ; preds = %if.else85.if.end93.sink.split_crit_edge, %if.end79.if.end93.sink.split_crit_edge
  %.str.65.sink = phi ptr [ @.str.64, %if.end79.if.end93.sink.split_crit_edge ], [ @.str.65, %if.else85.if.end93.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.65.sink) #13
  br label %if.end93

if.end93:                                         ; preds = %if.end93.sink.split, %if.else85.if.end93_crit_edge
  %91 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load94 = load i16, ptr %unix_ext, align 8
  %92 = and i16 %bf.load94, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %bf.cast97.not = icmp eq i16 %92, 0
  br i1 %bf.cast97.not, label %if.end93.if.end99_crit_edge, label %if.then98

if.end93.if.end99_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.66) #13
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end93.if.end99_crit_edge
  %93 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load100 = load i16, ptr %unix_ext, align 8
  %94 = and i16 %bf.load100, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %bf.cast103.not = icmp eq i16 %94, 0
  br i1 %bf.cast103.not, label %if.end99.if.end105_crit_edge, label %if.then104

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.67) #13
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end99.if.end105_crit_edge
  %local_lease = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 24
  %95 = ptrtoint ptr %local_lease to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load106 = load i8, ptr %local_lease, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load106)
  %bf.cast108.not = icmp sgt i8 %bf.load106, -1
  br i1 %bf.cast108.not, label %if.end105.if.end110_crit_edge, label %if.then109

if.end105.if.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.68) #13
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end105.if.end110_crit_edge
  %96 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load111 = load i16, ptr %unix_ext, align 8
  %97 = and i16 %bf.load111, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %bf.cast114.not = icmp eq i16 %97, 0
  %.str.70..str.69 = select i1 %bf.cast114.not, ptr @.str.70, ptr @.str.69
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.70..str.69) #13
  %98 = ptrtoint ptr %no_lease to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load118 = load i8, ptr %no_lease, align 2
  %99 = and i8 %bf.load118, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %bf.cast121.not = icmp eq i8 %99, 0
  br i1 %bf.cast121.not, label %if.else123, label %if.end110.if.end130.sink.split_crit_edge

if.end110.if.end130.sink.split_crit_edge:         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130.sink.split

if.else123:                                       ; preds = %if.end110
  %100 = and i8 %bf.load118, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %bf.cast127.not = icmp eq i8 %100, 0
  br i1 %bf.cast127.not, label %if.else123.if.end130_crit_edge, label %if.else123.if.end130.sink.split_crit_edge

if.else123.if.end130.sink.split_crit_edge:        ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130.sink.split

if.else123.if.end130_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.end130.sink.split:                             ; preds = %if.else123.if.end130.sink.split_crit_edge, %if.end110.if.end130.sink.split_crit_edge
  %.str.72.sink = phi ptr [ @.str.71, %if.end110.if.end130.sink.split_crit_edge ], [ @.str.72, %if.else123.if.end130.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.72.sink) #13
  br label %if.end130

if.end130:                                        ; preds = %if.end130.sink.split, %if.else123.if.end130_crit_edge
  %posix_extensions = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 23
  %101 = ptrtoint ptr %posix_extensions to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %posix_extensions, align 2, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool131.not = icmp eq i8 %102, 0
  br i1 %tobool131.not, label %if.else133, label %if.end130.if.end142_crit_edge

if.end130.if.end142_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

if.else133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %unix_ext to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load135 = load i16, ptr %unix_ext, align 8
  %104 = and i16 %bf.load135, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %bf.cast138.not = icmp eq i16 %104, 0
  %.str.75..str.74 = select i1 %bf.cast138.not, ptr @.str.75, ptr @.str.74
  br label %if.end142

if.end142:                                        ; preds = %if.else133, %if.end130.if.end142_crit_edge
  %.str.74.sink = phi ptr [ @.str.73, %if.end130.if.end142_crit_edge ], [ %.str.75..str.74, %if.else133 ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.74.sink) #13
  %105 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and144 = and i32 %106, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end142.if.end147_crit_edge, label %if.then146

if.end142.if.end147_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.76) #13
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.end142.if.end147_crit_edge
  %107 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and149 = and i32 %108, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end147.if.end152_crit_edge, label %if.then151

if.end147.if.end152_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.77) #13
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end147.if.end152_crit_edge
  %109 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and154 = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end157_crit_edge, label %if.then156

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.78) #13
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end152.if.end157_crit_edge
  %111 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and159 = and i32 %112, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end157.if.end162_crit_edge, label %if.then161

if.end157.if.end162_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end162

if.then161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.79) #13
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end157.if.end162_crit_edge
  %113 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and164 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end162.if.end167_crit_edge, label %if.then166

if.end162.if.end167_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end167

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.80) #13
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end162.if.end167_crit_edge
  %115 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and169 = and i32 %116, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end167.if.end172_crit_edge, label %if.then171

if.end167.if.end172_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end172

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.81) #13
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %if.end167.if.end172_crit_edge
  %117 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and174 = and i32 %118, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end172.if.end177_crit_edge, label %if.then176

if.end172.if.end177_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

if.then176:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.82) #13
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.end172.if.end177_crit_edge
  %119 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and179 = and i32 %120, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end177.if.end182_crit_edge, label %if.then181

if.end177.if.end182_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end182

if.then181:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.83) #13
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end177.if.end182_crit_edge
  %121 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and184 = and i32 %122, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end182.if.end187_crit_edge, label %if.then186

if.end182.if.end187_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

if.then186:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.84) #13
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %if.end182.if.end187_crit_edge
  %123 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and189 = and i32 %124, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end187.if.end192_crit_edge, label %if.then191

if.end187.if.end192_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192

if.then191:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.85) #13
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.end187.if.end192_crit_edge
  %125 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and194 = and i32 %126, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.end192.if.end197_crit_edge, label %if.then196

if.end192.if.end197_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197

if.then196:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.86) #13
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %if.end192.if.end197_crit_edge
  %127 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and199 = and i32 %128, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end197.if.end202_crit_edge, label %if.then201

if.end197.if.end202_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end202

if.then201:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.87) #13
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.end197.if.end202_crit_edge
  %129 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and204 = and i32 %130, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end202.if.end207_crit_edge, label %if.then206

if.end202.if.end207_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.then206:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.88) #13
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.end202.if.end207_crit_edge
  %131 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and209 = and i32 %132, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end207.if.end212_crit_edge, label %if.then211

if.end207.if.end212_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end212

if.then211:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.89) #13
  br label %if.end212

if.end212:                                        ; preds = %if.then211, %if.end207.if.end212_crit_edge
  %133 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and214 = and i32 %134, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.end212.if.end217_crit_edge, label %if.then216

if.end212.if.end217_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217

if.then216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.90) #13
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %if.end212.if.end217_crit_edge
  %135 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and219 = and i32 %136, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %if.end217.if.end222_crit_edge, label %if.then221

if.end217.if.end222_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end222

if.then221:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.91) #13
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %if.end217.if.end222_crit_edge
  %137 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %d_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %138, i32 0, i32 10
  %139 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %s_flags, align 4
  %and224 = and i32 %140, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.end222.if.end227_crit_edge, label %if.then226

if.end222.if.end227_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227

if.then226:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.92) #13
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %if.end222.if.end227_crit_edge
  %141 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and229 = and i32 %142, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %if.end227.if.end232_crit_edge, label %if.then231

if.end227.if.end232_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end232

if.then231:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.93) #13
  br label %if.end232

if.end232:                                        ; preds = %if.then231, %if.end227.if.end232_crit_edge
  %143 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and234 = and i32 %144, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %if.end232.if.end237_crit_edge, label %if.then236

if.end232.if.end237_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then236:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.94) #13
  br label %if.end237

if.end237:                                        ; preds = %if.then236, %if.end232.if.end237_crit_edge
  %145 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and239 = and i32 %146, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %if.end237.if.end242_crit_edge, label %if.then241

if.end237.if.end242_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

if.then241:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.95) #13
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %if.end237.if.end242_crit_edge
  %147 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and244 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %if.end242.if.end247_crit_edge, label %if.then246

if.end242.if.end247_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end247

if.then246:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.96) #13
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %if.end242.if.end247_crit_edge
  %149 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and249 = and i32 %150, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end247.if.end255_crit_edge, label %if.then251

if.end247.if.end255_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end255

if.then251:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #15
  %151 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ctx, align 4
  %backupuid = getelementptr inbounds %struct.smb3_fs_context, ptr %152, i32 0, i32 25
  %153 = ptrtoint ptr %backupuid to i32
  call void @__asan_load4_noabort(i32 %153)
  %.unpack490 = load i32, ptr %backupuid, align 4
  %154 = insertvalue [1 x i32] undef, i32 %.unpack490, 0
  %call254 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %154) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.97, i32 noundef %call254) #13
  br label %if.end255

if.end255:                                        ; preds = %if.then251, %if.end247.if.end255_crit_edge
  %155 = ptrtoint ptr %mnt_cifs_flags.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mnt_cifs_flags.i, align 4
  %and257 = and i32 %156, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  br i1 %tobool258.not, label %if.end255.if.end263_crit_edge, label %if.then259

if.end255.if.end263_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end263

if.then259:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #15
  %157 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ctx, align 4
  %backupgid = getelementptr inbounds %struct.smb3_fs_context, ptr %158, i32 0, i32 26
  %159 = ptrtoint ptr %backupgid to i32
  call void @__asan_load4_noabort(i32 %159)
  %.unpack489 = load i32, ptr %backupgid, align 8
  %160 = insertvalue [1 x i32] undef, i32 %.unpack489, 0
  %call262 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %160) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.98, i32 noundef %call262) #13
  br label %if.end263

if.end263:                                        ; preds = %if.then259, %if.end255.if.end263_crit_edge
  %161 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ctx, align 4
  %rsize = getelementptr inbounds %struct.smb3_fs_context, ptr %162, i32 0, i32 39
  %163 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rsize, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, i32 noundef %164) #13
  %165 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ctx, align 4
  %wsize = getelementptr inbounds %struct.smb3_fs_context, ptr %166, i32 0, i32 40
  %167 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %wsize, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.100, i32 noundef %168) #13
  %169 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ctx, align 4
  %bsize = getelementptr inbounds %struct.smb3_fs_context, ptr %170, i32 0, i32 37
  %171 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %bsize, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.101, i32 noundef %172) #13
  %173 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ctx, align 4
  %rasize = getelementptr inbounds %struct.smb3_fs_context, ptr %174, i32 0, i32 38
  %175 = ptrtoint ptr %rasize to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rasize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool268.not = icmp eq i32 %176, 0
  br i1 %tobool268.not, label %if.end263.if.end272_crit_edge, label %if.then269

if.end263.if.end272_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end272

if.then269:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.102, i32 noundef %176) #13
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %if.end263.if.end272_crit_edge
  %177 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ses, align 8
  %server274 = getelementptr inbounds %struct.cifs_ses, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %server274 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %server274, align 8
  %min_offload = getelementptr inbounds %struct.TCP_Server_Info, ptr %180, i32 0, i32 74
  %181 = ptrtoint ptr %min_offload to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %min_offload, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool275.not = icmp eq i32 %182, 0
  br i1 %tobool275.not, label %if.end272.if.end280_crit_edge, label %if.then276

if.end272.if.end280_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end280

if.then276:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.103, i32 noundef %182) #13
  br label %if.end280

if.end280:                                        ; preds = %if.then276, %if.end272.if.end280_crit_edge
  %183 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ses, align 8
  %server282 = getelementptr inbounds %struct.cifs_ses, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %server282 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %server282, align 8
  %echo_interval = getelementptr inbounds %struct.TCP_Server_Info, ptr %186, i32 0, i32 83
  %187 = ptrtoint ptr %echo_interval to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %echo_interval, align 4
  %div = udiv i32 %188, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.104, i32 noundef %div) #13
  %189 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ses, align 8
  %server284 = getelementptr inbounds %struct.cifs_ses, ptr %190, i32 0, i32 5
  %191 = ptrtoint ptr %server284 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %server284, align 8
  %max_credits = getelementptr inbounds %struct.TCP_Server_Info, ptr %192, i32 0, i32 21
  %193 = ptrtoint ptr %max_credits to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %max_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %194)
  %cmp285.not = icmp eq i32 %194, 32000
  br i1 %cmp285.not, label %if.end280.if.end291_crit_edge, label %if.then287

if.end280.if.end291_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end291

if.then287:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.105, i32 noundef %194) #13
  br label %if.end291

if.end291:                                        ; preds = %if.then287, %if.end280.if.end291_crit_edge
  %snapshot_time = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 33
  %195 = ptrtoint ptr %snapshot_time to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %snapshot_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %196)
  %tobool292.not = icmp eq i64 %196, 0
  br i1 %tobool292.not, label %if.end291.if.end295_crit_edge, label %if.then293

if.end291.if.end295_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end295

if.then293:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.106, i64 noundef %196) #13
  br label %if.end295

if.end295:                                        ; preds = %if.then293, %if.end291.if.end295_crit_edge
  %handle_timeout = getelementptr inbounds %struct.cifs_tcon, ptr %call1, i32 0, i32 34
  %197 = ptrtoint ptr %handle_timeout to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %handle_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool296.not = icmp eq i32 %198, 0
  br i1 %tobool296.not, label %if.end295.if.end299_crit_edge, label %if.then297

if.end295.if.end299_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end299

if.then297:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.107, i32 noundef %198) #13
  br label %if.end299

if.end299:                                        ; preds = %if.then297, %if.end295.if.end299_crit_edge
  %199 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ctx, align 4
  %acdirmax = getelementptr inbounds %struct.smb3_fs_context, ptr %200, i32 0, i32 45
  %201 = ptrtoint ptr %acdirmax to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %acdirmax, align 4
  %acregmax = getelementptr inbounds %struct.smb3_fs_context, ptr %200, i32 0, i32 44
  %203 = ptrtoint ptr %acregmax to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %acregmax, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp302 = icmp eq i32 %202, %204
  %div307 = udiv i32 %202, 100
  br i1 %cmp302, label %if.then304, label %if.else308

if.then304:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.108, i32 noundef %div307) #13
  br label %if.end315

if.else308:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.109, i32 noundef %div307) #13
  %205 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ctx, align 4
  %acregmax313 = getelementptr inbounds %struct.smb3_fs_context, ptr %206, i32 0, i32 44
  %207 = ptrtoint ptr %acregmax313 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %acregmax313, align 8
  %div314 = udiv i32 %208, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.110, i32 noundef %div314) #13
  br label %if.end315

if.end315:                                        ; preds = %if.else308, %if.then304
  %209 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ses, align 8
  %chan_max = getelementptr inbounds %struct.cifs_ses, ptr %210, i32 0, i32 38
  %211 = ptrtoint ptr %chan_max to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %chan_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %212)
  %cmp317 = icmp ugt i32 %212, 1
  br i1 %cmp317, label %if.then319, label %if.end315.if.end322_crit_edge

if.end315.if.end322_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

if.then319:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.111, i32 noundef %212) #13
  br label %if.end322

if.end322:                                        ; preds = %if.then319, %if.end315.if.end322_crit_edge
  %213 = ptrtoint ptr %no_lease to i32
  call void @__asan_load1_noabort(i32 %213)
  %bf.load323 = load i8, ptr %no_lease, align 2
  %214 = and i8 %bf.load323, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %bf.cast326.not = icmp eq i8 %214, 0
  br i1 %bf.cast326.not, label %if.end322.if.end328_crit_edge, label %if.then327

if.end322.if.end328_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end328

if.then327:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.112) #13
  br label %if.end328

if.end328:                                        ; preds = %if.then327, %if.end322.if.end328_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cifs_show_devname(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ctx = getelementptr inbounds %struct.cifs_sb_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %source = getelementptr inbounds %struct.smb3_fs_context, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %source, align 8
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %7, i32 noundef 3264) #13
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.125) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %call1.i = tail call ptr @strchr(ptr noundef nonnull %call1, i32 noundef 92) #13
  %tobool.not2.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not2.i, label %if.else.convert_delimiter.exit_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.convert_delimiter.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %convert_delimiter.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call1.i, %if.else.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 47, ptr %call3.i, align 1
  %call.i = tail call ptr @strchr(ptr noundef nonnull %call3.i, i32 noundef 92) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.convert_delimiter.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.convert_delimiter.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %convert_delimiter.exit

convert_delimiter.exit:                           ; preds = %while.body.i.convert_delimiter.exit_crit_edge, %if.else.convert_delimiter.exit_crit_edge
  %call.i.i = tail call i32 @strlen(ptr noundef nonnull %call1) #18
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %call1, i32 noundef %call.i.i, i32 noundef 8, ptr noundef nonnull @.str.135) #13
  tail call void @kfree(ptr noundef nonnull %call1) #13
  br label %if.end

if.end:                                           ; preds = %convert_delimiter.exit, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cifs_show_stats(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %root) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_set_oplock_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_uuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_fscache_unuse_inode_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_fscache_release_inode_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_get_xid() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_enter(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 1), ptr blockaddress(@trace_smb3_enter, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !612

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !614

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !595) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !615
  %call42 = tail call i32 @__traceiter_smb3_enter(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !616
  %13 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !614

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !595) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !617
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_enter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_smb3_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 609, ptr noundef nonnull @.str.44) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !618
  %31 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_free_xid(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_smb3_exit_err(i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_err, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !612

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !614

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !595) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !619
  %call42 = tail call i32 @__traceiter_smb3_exit_err(ptr noundef null, i32 noundef %xid, ptr noundef %func_name, i32 noundef %rc) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !620
  %13 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !614

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !595) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !617
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_smb3_exit_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 558, ptr noundef nonnull @.str.44) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !618
  %31 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
define internal fastcc void @trace_smb3_exit_done(i32 noundef %xid, ptr noundef %func_name) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 1), ptr blockaddress(@trace_smb3_exit_done, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !612

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !614

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !595) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !621
  %call42 = tail call i32 @__traceiter_smb3_exit_done(ptr noundef null, i32 noundef %xid, ptr noundef %func_name) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !622
  %13 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !614

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !595) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !617
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smb3_exit_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_smb3_exit_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_smb3_exit_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 610, ptr noundef nonnull @.str.44) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !618
  %31 = tail call i32 @llvm.read_register.i32(metadata !595) #13
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cifs_build_path_to_root(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_revalidate_file_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_user_readv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_revalidate_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_user_writev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_zap_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_get_writer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_put_writer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_setlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_proc_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_init_mids() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.178, i32 noundef 96, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %call, ptr @cifs_mid_cachep, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mempool_create(i32 noundef 3, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call) #13
  store ptr %call.i, ptr @cifs_mid_poolp, align 4
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @cifs_mid_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_init_request_bufs() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @CIFSMaxBufSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %0)
  %cmp = icmp ult i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 130048, i32 %0)
  %cmp1 = icmp ugt i32 %0, 130048
  %and = and i32 %0, 130560
  %spec.select = select i1 %cmp1, i32 130048, i32 %and
  %.sink = select i1 %cmp, i32 8192, i32 %spec.select
  store i32 %.sink, ptr @CIFSMaxBufSize, align 4
  %add = or i32 %.sink, 204
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.179, i32 noundef %add, i32 noundef 0, i32 noundef 8192, i32 noundef 0, i32 noundef %add, ptr noundef null) #13
  store ptr %call, ptr @cifs_req_cachep, align 4
  %cmp6 = icmp eq ptr %call, null
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %entry
  %1 = load i32, ptr @cifs_min_rcv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp eq i32 %1, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  store i32 1, ptr @cifs_min_rcv, align 4
  br label %if.end25

if.else11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp12 = icmp ugt i32 %1, 64
  br i1 %cmp12, label %if.then13, label %if.else11.if.end25_crit_edge

if.else11.if.end25_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then13:                                        ; preds = %if.else11
  store i32 64, ptr @cifs_min_rcv, align 4
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_init_request_bufs._rs, ptr noundef nonnull @__func__.cifs_init_request_bufs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then13.if.end25_crit_edge, label %do.end

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180) #16
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then13.if.end25_crit_edge, %if.else11.if.end25_crit_edge, %if.then10
  %2 = load i32, ptr @cifs_min_rcv, align 4
  %3 = load ptr, ptr @cifs_req_cachep, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef %2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %3) #13
  store ptr %call.i, ptr @cifs_req_poolp, align 4
  %cmp27 = icmp eq ptr %call.i, null
  br i1 %cmp27, label %if.end25.cleanup.sink.split_crit_edge, label %if.end29

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end25
  %call30 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.181, i32 noundef 448, i32 noundef 0, i32 noundef 8192, i32 noundef 0, i32 noundef 448, ptr noundef null) #13
  store ptr %call30, ptr @cifs_sm_req_cachep, align 4
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %4 = load ptr, ptr @cifs_req_poolp, align 4
  tail call void @mempool_destroy(ptr noundef %4) #13
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end29
  %5 = load i32, ptr @cifs_min_small, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp34 = icmp ult i32 %5, 2
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  store i32 2, ptr @cifs_min_small, align 4
  br label %if.end63

if.else36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp37 = icmp ugt i32 %5, 256
  br i1 %cmp37, label %if.then38, label %if.else36.if.end63_crit_edge

if.else36.if.end63_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then38:                                        ; preds = %if.else36
  store i32 256, ptr @cifs_min_small, align 4
  %6 = load i32, ptr @cifsFYI, align 4
  %and41 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then38.if.end63_crit_edge, label %do.body44

if.then38.if.end63_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

do.body44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_init_request_bufs.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_init_request_bufs, %land.lhs.true)) #13
          to label %if.end63 [label %land.lhs.true], !srcloc !612

land.lhs.true:                                    ; preds = %do.body44
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_init_request_bufs._rs.182, ptr noundef nonnull @__func__.cifs_init_request_bufs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true.if.end63_crit_edge, label %if.then52

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_init_request_bufs.descriptor, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.3) #13
  br label %if.end63

if.end63:                                         ; preds = %if.then52, %land.lhs.true.if.end63_crit_edge, %do.body44, %if.then38.if.end63_crit_edge, %if.else36.if.end63_crit_edge, %if.then35
  %7 = load i32, ptr @cifs_min_small, align 4
  %8 = load ptr, ptr @cifs_sm_req_cachep, align 4
  %call.i71 = tail call ptr @mempool_create(i32 noundef %7, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %8) #13
  store ptr %call.i71, ptr @cifs_sm_req_poolp, align 4
  %cmp65 = icmp eq ptr %call.i71, null
  br i1 %cmp65, label %if.then66, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %9 = load ptr, ptr @cifs_req_poolp, align 4
  tail call void @mempool_destroy(ptr noundef %9) #13
  %10 = load ptr, ptr @cifs_req_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then66, %if.then32, %if.end25.cleanup.sink.split_crit_edge
  %cifs_sm_req_cachep.sink = phi ptr [ @cifs_sm_req_cachep, %if.then66 ], [ @cifs_req_cachep, %if.then32 ], [ @cifs_req_cachep, %if.end25.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %cifs_sm_req_cachep.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cifs_sm_req_cachep.sink, align 4
  tail call void @kmem_cache_destroy(ptr noundef %12) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end63.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ -12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfs_cache_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_cifs_spnego() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_genl_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_cifs_idmap() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cifs_init_once(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.cifsInodeInfo, ptr %inode, i32 0, i32 17
  tail call void @inode_init_once(ptr noundef %vfs_inode) #13
  %lock_sem = getelementptr inbounds %struct.cifsInodeInfo, ptr %inode, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %lock_sem, ptr noundef nonnull @.str.177, ptr noundef nonnull @cifs_init_once.__key) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 250)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 250)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !37, !39, !40, !42, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !154, !156, !157, !159, !161, !162, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264, !265, !266, !268, !270, !271, !273, !274, !276, !277, !279, !281, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !307, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !487, !488, !489, !491, !492, !493, !494, !496, !497, !498, !500, !501, !502, !503, !505, !506, !508, !509, !510, !511, !513, !514, !515, !517, !518, !519, !521, !522, !524, !525, !527, !528, !529, !530, !532, !534, !536, !538, !540, !542, !543, !544, !545, !547, !548, !549, !550, !552, !553, !555, !556, !558, !559, !560, !562, !563, !564, !566, !568, !570, !572, !574, !576, !578, !579, !581, !583, !585, !586, !587, !588, !589, !591, !593, !594}
!llvm.named.register.sp = !{!595}
!llvm.module.flags = !{!596, !597, !598, !599, !600, !601, !602, !603}
!llvm.ident = !{!604}

!0 = !{ptr @cifsFYI, !1, !"cifsFYI", i1 false, i1 false}
!1 = !{!"../fs/cifs/cifsfs.c", i32 59, i32 5}
!2 = !{ptr @enable_oplocks, !3, !"enable_oplocks", i1 false, i1 false}
!3 = !{!"../fs/cifs/cifsfs.c", i32 61, i32 6}
!4 = !{ptr @linuxExtEnabled, !5, !"linuxExtEnabled", i1 false, i1 false}
!5 = !{!"../fs/cifs/cifsfs.c", i32 62, i32 6}
!6 = !{ptr @lookupCacheEnabled, !7, !"lookupCacheEnabled", i1 false, i1 false}
!7 = !{!"../fs/cifs/cifsfs.c", i32 63, i32 6}
!8 = !{ptr @enable_gcm_256, !9, !"enable_gcm_256", i1 false, i1 false}
!9 = !{!"../fs/cifs/cifsfs.c", i32 65, i32 6}
!10 = !{ptr @global_secflags, !11, !"global_secflags", i1 false, i1 false}
!11 = !{!"../fs/cifs/cifsfs.c", i32 68, i32 14}
!12 = !{ptr @sign_CIFS_PDUs, !13, !"sign_CIFS_PDUs", i1 false, i1 false}
!13 = !{!"../fs/cifs/cifsfs.c", i32 70, i32 14}
!14 = !{ptr @CIFSMaxBufSize, !15, !"CIFSMaxBufSize", i1 false, i1 false}
!15 = !{!"../fs/cifs/cifsfs.c", i32 72, i32 14}
!16 = !{ptr @__param_CIFSMaxBufSize, !17, !"__param_CIFSMaxBufSize", i1 false, i1 false}
!17 = !{!"../fs/cifs/cifsfs.c", i32 73, i32 1}
!18 = !{ptr @__UNIQUE_ID_CIFSMaxBufSizetype661, !17, !"__UNIQUE_ID_CIFSMaxBufSizetype661", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_CIFSMaxBufSize662, !20, !"__UNIQUE_ID_CIFSMaxBufSize662", i1 false, i1 false}
!20 = !{!"../fs/cifs/cifsfs.c", i32 74, i32 1}
!21 = !{ptr @cifs_min_rcv, !22, !"cifs_min_rcv", i1 false, i1 false}
!22 = !{!"../fs/cifs/cifsfs.c", i32 77, i32 14}
!23 = !{ptr @__param_cifs_min_rcv, !24, !"__param_cifs_min_rcv", i1 false, i1 false}
!24 = !{!"../fs/cifs/cifsfs.c", i32 78, i32 1}
!25 = !{ptr @__UNIQUE_ID_cifs_min_rcvtype663, !24, !"__UNIQUE_ID_cifs_min_rcvtype663", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_cifs_min_rcv664, !27, !"__UNIQUE_ID_cifs_min_rcv664", i1 false, i1 false}
!27 = !{!"../fs/cifs/cifsfs.c", i32 79, i32 1}
!28 = !{ptr @cifs_min_small, !29, !"cifs_min_small", i1 false, i1 false}
!29 = !{!"../fs/cifs/cifsfs.c", i32 81, i32 14}
!30 = !{ptr @__param_cifs_min_small, !31, !"__param_cifs_min_small", i1 false, i1 false}
!31 = !{!"../fs/cifs/cifsfs.c", i32 82, i32 1}
!32 = !{ptr @__UNIQUE_ID_cifs_min_smalltype665, !31, !"__UNIQUE_ID_cifs_min_smalltype665", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_cifs_min_small666, !34, !"__UNIQUE_ID_cifs_min_small666", i1 false, i1 false}
!34 = !{!"../fs/cifs/cifsfs.c", i32 83, i32 1}
!35 = !{ptr @cifs_max_pending, !36, !"cifs_max_pending", i1 false, i1 false}
!36 = !{!"../fs/cifs/cifsfs.c", i32 85, i32 14}
!37 = !{ptr @__param_cifs_max_pending, !38, !"__param_cifs_max_pending", i1 false, i1 false}
!38 = !{!"../fs/cifs/cifsfs.c", i32 86, i32 1}
!39 = !{ptr @__UNIQUE_ID_cifs_max_pendingtype667, !38, !"__UNIQUE_ID_cifs_max_pendingtype667", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_cifs_max_pending668, !41, !"__UNIQUE_ID_cifs_max_pending668", i1 false, i1 false}
!41 = !{!"../fs/cifs/cifsfs.c", i32 87, i32 1}
!42 = !{ptr @slow_rsp_threshold, !43, !"slow_rsp_threshold", i1 false, i1 false}
!43 = !{!"../fs/cifs/cifsfs.c", i32 91, i32 14}
!44 = !{ptr @__param_slow_rsp_threshold, !45, !"__param_slow_rsp_threshold", i1 false, i1 false}
!45 = !{!"../fs/cifs/cifsfs.c", i32 92, i32 1}
!46 = !{ptr @__UNIQUE_ID_slow_rsp_thresholdtype669, !45, !"__UNIQUE_ID_slow_rsp_thresholdtype669", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_slow_rsp_threshold670, !48, !"__UNIQUE_ID_slow_rsp_threshold670", i1 false, i1 false}
!48 = !{!"../fs/cifs/cifsfs.c", i32 93, i32 1}
!49 = !{ptr @__param_enable_oplocks, !50, !"__param_enable_oplocks", i1 false, i1 false}
!50 = !{!"../fs/cifs/cifsfs.c", i32 98, i32 1}
!51 = !{ptr @__UNIQUE_ID_enable_oplockstype671, !50, !"__UNIQUE_ID_enable_oplockstype671", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_enable_oplocks672, !53, !"__UNIQUE_ID_enable_oplocks672", i1 false, i1 false}
!53 = !{!"../fs/cifs/cifsfs.c", i32 99, i32 1}
!54 = !{ptr @__param_enable_gcm_256, !55, !"__param_enable_gcm_256", i1 false, i1 false}
!55 = !{!"../fs/cifs/cifsfs.c", i32 101, i32 1}
!56 = !{ptr @__UNIQUE_ID_enable_gcm_256type673, !55, !"__UNIQUE_ID_enable_gcm_256type673", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_enable_gcm_256674, !58, !"__UNIQUE_ID_enable_gcm_256674", i1 false, i1 false}
!58 = !{!"../fs/cifs/cifsfs.c", i32 102, i32 1}
!59 = !{ptr @__param_require_gcm_256, !60, !"__param_require_gcm_256", i1 false, i1 false}
!60 = !{!"../fs/cifs/cifsfs.c", i32 104, i32 1}
!61 = !{ptr @__UNIQUE_ID_require_gcm_256type675, !60, !"__UNIQUE_ID_require_gcm_256type675", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_require_gcm_256676, !63, !"__UNIQUE_ID_require_gcm_256676", i1 false, i1 false}
!63 = !{!"../fs/cifs/cifsfs.c", i32 105, i32 1}
!64 = !{ptr @__param_enable_negotiate_signing, !65, !"__param_enable_negotiate_signing", i1 false, i1 false}
!65 = !{!"../fs/cifs/cifsfs.c", i32 107, i32 1}
!66 = !{ptr @__UNIQUE_ID_enable_negotiate_signingtype677, !65, !"__UNIQUE_ID_enable_negotiate_signingtype677", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_enable_negotiate_signing678, !68, !"__UNIQUE_ID_enable_negotiate_signing678", i1 false, i1 false}
!68 = !{!"../fs/cifs/cifsfs.c", i32 108, i32 1}
!69 = !{ptr @__param_disable_legacy_dialects, !70, !"__param_disable_legacy_dialects", i1 false, i1 false}
!70 = !{!"../fs/cifs/cifsfs.c", i32 110, i32 1}
!71 = !{ptr @__UNIQUE_ID_disable_legacy_dialectstype679, !70, !"__UNIQUE_ID_disable_legacy_dialectstype679", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_disable_legacy_dialects680, !73, !"__UNIQUE_ID_disable_legacy_dialects680", i1 false, i1 false}
!73 = !{!"../fs/cifs/cifsfs.c", i32 111, i32 1}
!74 = !{ptr @.str, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/cifs/cifsfs.c", i32 839, i32 3}
!76 = !{ptr @cifs_smb3_do_mount._rs, !75, !"_rs", i1 false, i1 false}
!77 = !{ptr @.str.1, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.2, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.3, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.4, !75, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cifs_smb3_do_mount.descriptor, !75, !"descriptor", i1 false, i1 false}
!82 = !{ptr @cifs_smb3_do_mount._rs.5, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../fs/cifs/cifsfs.c", i32 841, i32 3}
!84 = !{ptr @.str.6, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cifs_smb3_do_mount._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @cifs_smb3_do_mount._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @cifs_smb3_do_mount._rs.7, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../fs/cifs/cifsfs.c", i32 875, i32 4}
!89 = !{ptr @.str.9, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cifs_smb3_do_mount._entry.8, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @cifs_smb3_do_mount._entry_ptr.10, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @cifs_smb3_do_mount._rs.11, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../fs/cifs/cifsfs.c", i32 897, i32 3}
!94 = !{ptr @.str.13, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cifs_smb3_do_mount.descriptor.12, !93, !"descriptor", i1 false, i1 false}
!96 = !{ptr @cifs_smb3_do_mount._rs.14, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../fs/cifs/cifsfs.c", i32 917, i32 2}
!98 = !{ptr @.str.16, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cifs_smb3_do_mount.descriptor.15, !97, !"descriptor", i1 false, i1 false}
!100 = !{ptr @cifs_fs_type, !101, !"cifs_fs_type", i1 false, i1 false}
!101 = !{!"../fs/cifs/cifsfs.c", i32 1065, i32 25}
!102 = !{ptr @__UNIQUE_ID_alias681, !103, !"__UNIQUE_ID_alias681", i1 false, i1 false}
!103 = !{!"../fs/cifs/cifsfs.c", i32 1073, i32 1}
!104 = !{ptr @__UNIQUE_ID_alias682, !105, !"__UNIQUE_ID_alias682", i1 false, i1 false}
!105 = !{!"../fs/cifs/cifsfs.c", i32 1083, i32 1}
!106 = !{ptr @__UNIQUE_ID_alias683, !107, !"__UNIQUE_ID_alias683", i1 false, i1 false}
!107 = !{!"../fs/cifs/cifsfs.c", i32 1084, i32 1}
!108 = !{ptr @cifs_dir_inode_ops, !109, !"cifs_dir_inode_ops", i1 false, i1 false}
!109 = !{!"../fs/cifs/cifsfs.c", i32 1086, i32 31}
!110 = !{ptr @cifs_file_inode_ops, !111, !"cifs_file_inode_ops", i1 false, i1 false}
!111 = !{!"../fs/cifs/cifsfs.c", i32 1103, i32 31}
!112 = !{ptr @cifs_symlink_inode_ops, !113, !"cifs_symlink_inode_ops", i1 false, i1 false}
!113 = !{!"../fs/cifs/cifsfs.c", i32 1111, i32 31}
!114 = !{ptr @cifs_file_copychunk_range._rs, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../fs/cifs/cifsfs.c", i32 1190, i32 2}
!116 = !{ptr @.str.17, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.18, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @cifs_file_copychunk_range.descriptor, !115, !"descriptor", i1 false, i1 false}
!119 = !{ptr @cifs_file_copychunk_range._rs.19, !120, !"_rs", i1 false, i1 false}
!120 = !{!"../fs/cifs/cifsfs.c", i32 1194, i32 3}
!121 = !{ptr @.str.20, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cifs_file_copychunk_range._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @cifs_file_copychunk_range._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @cifs_file_copychunk_range._rs.21, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../fs/cifs/cifsfs.c", i32 1205, i32 3}
!126 = !{ptr @.str.23, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cifs_file_copychunk_range._entry.22, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @cifs_file_copychunk_range._entry_ptr.24, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @cifs_file_copychunk_range._rs.25, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../fs/cifs/cifsfs.c", i32 1220, i32 2}
!131 = !{ptr @.str.27, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cifs_file_copychunk_range.descriptor.26, !130, !"descriptor", i1 false, i1 false}
!133 = !{ptr @cifs_file_ops, !134, !"cifs_file_ops", i1 false, i1 false}
!134 = !{!"../fs/cifs/cifsfs.c", i32 1277, i32 30}
!135 = !{ptr @cifs_file_strict_ops, !136, !"cifs_file_strict_ops", i1 false, i1 false}
!136 = !{!"../fs/cifs/cifsfs.c", i32 1297, i32 30}
!137 = !{ptr @cifs_file_direct_ops, !138, !"cifs_file_direct_ops", i1 false, i1 false}
!138 = !{!"../fs/cifs/cifsfs.c", i32 1317, i32 30}
!139 = !{ptr @cifs_file_nobrl_ops, !140, !"cifs_file_nobrl_ops", i1 false, i1 false}
!140 = !{!"../fs/cifs/cifsfs.c", i32 1337, i32 30}
!141 = !{ptr @cifs_file_strict_nobrl_ops, !142, !"cifs_file_strict_nobrl_ops", i1 false, i1 false}
!142 = !{!"../fs/cifs/cifsfs.c", i32 1355, i32 30}
!143 = !{ptr @cifs_file_direct_nobrl_ops, !144, !"cifs_file_direct_nobrl_ops", i1 false, i1 false}
!144 = !{!"../fs/cifs/cifsfs.c", i32 1373, i32 30}
!145 = !{ptr @cifs_dir_ops, !146, !"cifs_dir_ops", i1 false, i1 false}
!146 = !{!"../fs/cifs/cifsfs.c", i32 1391, i32 30}
!147 = !{ptr @exit_cifs._rs, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../fs/cifs/cifsfs.c", i32 1721, i32 2}
!149 = !{ptr @.str.28, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.29, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @exit_cifs.descriptor, !148, !"descriptor", i1 false, i1 false}
!152 = !{ptr @__UNIQUE_ID_author684, !153, !"__UNIQUE_ID_author684", i1 false, i1 false}
!153 = !{!"../fs/cifs/cifsfs.c", i32 1746, i32 1}
!154 = !{ptr @__UNIQUE_ID_file685, !155, !"__UNIQUE_ID_file685", i1 false, i1 false}
!155 = !{!"../fs/cifs/cifsfs.c", i32 1747, i32 1}
!156 = !{ptr @__UNIQUE_ID_license686, !155, !"__UNIQUE_ID_license686", i1 false, i1 false}
!157 = !{ptr @__UNIQUE_ID_description687, !158, !"__UNIQUE_ID_description687", i1 false, i1 false}
!158 = !{!"../fs/cifs/cifsfs.c", i32 1748, i32 1}
!159 = !{ptr @__UNIQUE_ID_version688, !160, !"__UNIQUE_ID_version688", i1 false, i1 false}
!160 = !{!"../fs/cifs/cifsfs.c", i32 1751, i32 1}
!161 = !{ptr @.str.30, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.31, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__modver_attr, !160, !"__modver_attr", i1 false, i1 false}
!164 = !{ptr @__UNIQUE_ID_softdep689, !165, !"__UNIQUE_ID_softdep689", i1 false, i1 false}
!165 = !{!"../fs/cifs/cifsfs.c", i32 1752, i32 1}
!166 = !{ptr @__UNIQUE_ID_softdep690, !167, !"__UNIQUE_ID_softdep690", i1 false, i1 false}
!167 = !{!"../fs/cifs/cifsfs.c", i32 1753, i32 1}
!168 = !{ptr @__UNIQUE_ID_softdep691, !169, !"__UNIQUE_ID_softdep691", i1 false, i1 false}
!169 = !{!"../fs/cifs/cifsfs.c", i32 1754, i32 1}
!170 = !{ptr @__UNIQUE_ID_softdep692, !171, !"__UNIQUE_ID_softdep692", i1 false, i1 false}
!171 = !{!"../fs/cifs/cifsfs.c", i32 1755, i32 1}
!172 = !{ptr @__UNIQUE_ID_softdep693, !173, !"__UNIQUE_ID_softdep693", i1 false, i1 false}
!173 = !{!"../fs/cifs/cifsfs.c", i32 1756, i32 1}
!174 = !{ptr @__UNIQUE_ID_softdep694, !175, !"__UNIQUE_ID_softdep694", i1 false, i1 false}
!175 = !{!"../fs/cifs/cifsfs.c", i32 1757, i32 1}
!176 = !{ptr @__UNIQUE_ID_softdep695, !177, !"__UNIQUE_ID_softdep695", i1 false, i1 false}
!177 = !{!"../fs/cifs/cifsfs.c", i32 1758, i32 1}
!178 = !{ptr @__UNIQUE_ID_softdep696, !179, !"__UNIQUE_ID_softdep696", i1 false, i1 false}
!179 = !{!"../fs/cifs/cifsfs.c", i32 1759, i32 1}
!180 = !{ptr @__UNIQUE_ID_softdep697, !181, !"__UNIQUE_ID_softdep697", i1 false, i1 false}
!181 = !{!"../fs/cifs/cifsfs.c", i32 1760, i32 1}
!182 = !{ptr @__UNIQUE_ID_softdep698, !183, !"__UNIQUE_ID_softdep698", i1 false, i1 false}
!183 = !{!"../fs/cifs/cifsfs.c", i32 1761, i32 1}
!184 = !{ptr @__UNIQUE_ID_softdep699, !185, !"__UNIQUE_ID_softdep699", i1 false, i1 false}
!185 = !{!"../fs/cifs/cifsfs.c", i32 1762, i32 1}
!186 = !{ptr @__initcall__kmod_cifs__700_1763_init_cifs6, !187, !"__initcall__kmod_cifs__700_1763_init_cifs6", i1 false, i1 false}
!187 = !{!"../fs/cifs/cifsfs.c", i32 1763, i32 1}
!188 = !{ptr @__exitcall_exit_cifs, !189, !"__exitcall_exit_cifs", i1 false, i1 false}
!189 = !{!"../fs/cifs/cifsfs.c", i32 1764, i32 1}
!190 = !{ptr @cifs_tcp_ses_list, !191, !"cifs_tcp_ses_list", i1 false, i1 false}
!191 = !{!"../fs/cifs/cifsglob.h", i32 1836, i32 33}
!192 = !{ptr @cifs_tcp_ses_lock, !193, !"cifs_tcp_ses_lock", i1 false, i1 false}
!193 = !{!"../fs/cifs/cifsglob.h", i32 1848, i32 27}
!194 = !{ptr @GlobalCurrentXid, !195, !"GlobalCurrentXid", i1 false, i1 false}
!195 = !{!"../fs/cifs/cifsglob.h", i32 1853, i32 28}
!196 = !{ptr @GlobalTotalActiveXid, !197, !"GlobalTotalActiveXid", i1 false, i1 false}
!197 = !{!"../fs/cifs/cifsglob.h", i32 1854, i32 28}
!198 = !{ptr @GlobalMaxActiveXid, !199, !"GlobalMaxActiveXid", i1 false, i1 false}
!199 = !{!"../fs/cifs/cifsglob.h", i32 1855, i32 28}
!200 = !{ptr @GlobalMid_Lock, !201, !"GlobalMid_Lock", i1 false, i1 false}
!201 = !{!"../fs/cifs/cifsglob.h", i32 1856, i32 26}
!202 = !{ptr @sesInfoAllocCount, !203, !"sesInfoAllocCount", i1 false, i1 false}
!203 = !{!"../fs/cifs/cifsglob.h", i32 1861, i32 24}
!204 = !{ptr @tconInfoAllocCount, !205, !"tconInfoAllocCount", i1 false, i1 false}
!205 = !{!"../fs/cifs/cifsglob.h", i32 1862, i32 24}
!206 = !{ptr @tcpSesNextId, !207, !"tcpSesNextId", i1 false, i1 false}
!207 = !{!"../fs/cifs/cifsglob.h", i32 1863, i32 24}
!208 = !{ptr @tcpSesAllocCount, !209, !"tcpSesAllocCount", i1 false, i1 false}
!209 = !{!"../fs/cifs/cifsglob.h", i32 1864, i32 24}
!210 = !{ptr @tcpSesReconnectCount, !211, !"tcpSesReconnectCount", i1 false, i1 false}
!211 = !{!"../fs/cifs/cifsglob.h", i32 1865, i32 24}
!212 = !{ptr @tconInfoReconnectCount, !213, !"tconInfoReconnectCount", i1 false, i1 false}
!213 = !{!"../fs/cifs/cifsglob.h", i32 1866, i32 24}
!214 = !{ptr @bufAllocCount, !215, !"bufAllocCount", i1 false, i1 false}
!215 = !{!"../fs/cifs/cifsglob.h", i32 1869, i32 24}
!216 = !{ptr @totBufAllocCount, !217, !"totBufAllocCount", i1 false, i1 false}
!217 = !{!"../fs/cifs/cifsglob.h", i32 1871, i32 24}
!218 = !{ptr @totSmBufAllocCount, !219, !"totSmBufAllocCount", i1 false, i1 false}
!219 = !{!"../fs/cifs/cifsglob.h", i32 1872, i32 24}
!220 = !{ptr @smBufAllocCount, !221, !"smBufAllocCount", i1 false, i1 false}
!221 = !{!"../fs/cifs/cifsglob.h", i32 1875, i32 24}
!222 = !{ptr @midCount, !223, !"midCount", i1 false, i1 false}
!223 = !{!"../fs/cifs/cifsglob.h", i32 1876, i32 24}
!224 = !{ptr @traceSMB, !225, !"traceSMB", i1 false, i1 false}
!225 = !{!"../fs/cifs/cifsfs.c", i32 60, i32 6}
!226 = !{ptr @disable_legacy_dialects, !227, !"disable_legacy_dialects", i1 false, i1 false}
!227 = !{!"../fs/cifs/cifsfs.c", i32 64, i32 6}
!228 = !{ptr @require_gcm_256, !229, !"require_gcm_256", i1 false, i1 false}
!229 = !{!"../fs/cifs/cifsfs.c", i32 66, i32 6}
!230 = !{ptr @enable_negotiate_signing, !231, !"enable_negotiate_signing", i1 false, i1 false}
!231 = !{!"../fs/cifs/cifsfs.c", i32 67, i32 6}
!232 = !{ptr @cifsiod_wq, !233, !"cifsiod_wq", i1 false, i1 false}
!233 = !{!"../fs/cifs/cifsfs.c", i32 123, i32 26}
!234 = !{ptr @decrypt_wq, !235, !"decrypt_wq", i1 false, i1 false}
!235 = !{!"../fs/cifs/cifsfs.c", i32 124, i32 26}
!236 = !{ptr @fileinfo_put_wq, !237, !"fileinfo_put_wq", i1 false, i1 false}
!237 = !{!"../fs/cifs/cifsfs.c", i32 125, i32 26}
!238 = !{ptr @cifsoplockd_wq, !239, !"cifsoplockd_wq", i1 false, i1 false}
!239 = !{!"../fs/cifs/cifsfs.c", i32 126, i32 26}
!240 = !{ptr @deferredclose_wq, !241, !"deferredclose_wq", i1 false, i1 false}
!241 = !{!"../fs/cifs/cifsfs.c", i32 127, i32 26}
!242 = !{ptr @cifs_lock_secret, !243, !"cifs_lock_secret", i1 false, i1 false}
!243 = !{!"../fs/cifs/cifsfs.c", i32 128, i32 7}
!244 = !{ptr @cifs_sm_req_poolp, !245, !"cifs_sm_req_poolp", i1 false, i1 false}
!245 = !{!"../fs/cifs/cifsfs.c", i32 349, i32 12}
!246 = !{ptr @cifs_req_poolp, !247, !"cifs_req_poolp", i1 false, i1 false}
!247 = !{!"../fs/cifs/cifsfs.c", i32 350, i32 12}
!248 = !{ptr @cifs_mid_poolp, !249, !"cifs_mid_poolp", i1 false, i1 false}
!249 = !{!"../fs/cifs/cifsfs.c", i32 351, i32 12}
!250 = !{ptr @__param_str_CIFSMaxBufSize, !17, !"__param_str_CIFSMaxBufSize", i1 false, i1 false}
!251 = !{ptr @__param_str_cifs_min_rcv, !24, !"__param_str_cifs_min_rcv", i1 false, i1 false}
!252 = !{ptr @__param_str_cifs_min_small, !31, !"__param_str_cifs_min_small", i1 false, i1 false}
!253 = !{ptr @__param_str_cifs_max_pending, !38, !"__param_str_cifs_max_pending", i1 false, i1 false}
!254 = !{ptr @__param_str_slow_rsp_threshold, !45, !"__param_str_slow_rsp_threshold", i1 false, i1 false}
!255 = !{ptr @__param_str_enable_oplocks, !50, !"__param_str_enable_oplocks", i1 false, i1 false}
!256 = !{ptr @__param_str_enable_gcm_256, !55, !"__param_str_enable_gcm_256", i1 false, i1 false}
!257 = !{ptr @__param_str_require_gcm_256, !60, !"__param_str_require_gcm_256", i1 false, i1 false}
!258 = !{ptr @__param_str_enable_negotiate_signing, !65, !"__param_str_enable_negotiate_signing", i1 false, i1 false}
!259 = !{ptr @__param_str_disable_legacy_dialects, !70, !"__param_str_disable_legacy_dialects", i1 false, i1 false}
!260 = !{ptr @cifs_read_super._rs, !261, !"_rs", i1 false, i1 false}
!261 = !{!"../fs/cifs/cifsfs.c", i32 248, i32 2}
!262 = !{ptr @__func__.cifs_read_super, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.32, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @cifs_read_super._entry, !261, !"_entry", i1 false, i1 false}
!265 = !{ptr @cifs_read_super._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @cifs_super_ops, !267, !"cifs_super_ops", i1 false, i1 false}
!267 = !{!"../fs/cifs/cifsfs.c", i32 742, i32 38}
!268 = !{ptr @cifs_alloc_inode.__key, !269, !"__key", i1 false, i1 false}
!269 = !{!"../fs/cifs/cifsfs.c", i32 368, i32 2}
!270 = !{ptr @.str.33, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @cifs_alloc_inode.__key.34, !272, !"__key", i1 false, i1 false}
!272 = !{!"../fs/cifs/cifsfs.c", i32 375, i32 2}
!273 = !{ptr @.str.35, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @cifs_alloc_inode.__key.36, !275, !"__key", i1 false, i1 false}
!275 = !{!"../fs/cifs/cifsfs.c", i32 386, i32 2}
!276 = !{ptr @.str.37, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @cifs_inode_cachep, !278, !"cifs_inode_cachep", i1 false, i1 false}
!278 = !{!"../fs/cifs/cifsfs.c", i32 345, i32 27}
!279 = !{ptr @cifs_statfs._rs, !280, !"_rs", i1 false, i1 false}
!280 = !{!"../fs/cifs/cifsfs.c", i32 292, i32 8}
!281 = !{ptr @.str.38, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.39, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @cifs_statfs.descriptor, !280, !"descriptor", i1 false, i1 false}
!284 = distinct !{null, !280, !"__warned", i1 false, i1 false}
!285 = !{ptr @cifs_statfs._rs.40, !286, !"_rs", i1 false, i1 false}
!286 = !{!"../fs/cifs/cifsfs.c", i32 310, i32 2}
!287 = !{ptr @.str.42, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @cifs_statfs.descriptor.41, !286, !"descriptor", i1 false, i1 false}
!289 = distinct !{null, !290, !"__already_done", i1 false, i1 false}
!290 = !{!"../fs/cifs/trace.h", i32 609, i32 1}
!291 = !{ptr @.str.43, !290, !"<string literal>", i1 false, i1 false}
!292 = distinct !{null, !290, !"__warned", i1 false, i1 false}
!293 = !{ptr @.str.44, !290, !"<string literal>", i1 false, i1 false}
!294 = distinct !{null, !295, !"__already_done", i1 false, i1 false}
!295 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!296 = !{ptr @.str.45, !295, !"<string literal>", i1 false, i1 false}
!297 = distinct !{null, !298, !"__already_done", i1 false, i1 false}
!298 = !{!"../fs/cifs/trace.h", i32 558, i32 1}
!299 = distinct !{null, !298, !"__warned", i1 false, i1 false}
!300 = distinct !{null, !301, !"__already_done", i1 false, i1 false}
!301 = !{!"../fs/cifs/trace.h", i32 610, i32 1}
!302 = distinct !{null, !301, !"__warned", i1 false, i1 false}
!303 = !{ptr @cifs_umount_begin._rs, !304, !"_rs", i1 false, i1 false}
!304 = !{!"../fs/cifs/cifsfs.c", i32 707, i32 3}
!305 = !{ptr @.str.46, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.47, !304, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @cifs_umount_begin.descriptor, !304, !"descriptor", i1 false, i1 false}
!308 = !{ptr @.str.48, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/cifs/cifsfs.c", i32 515, i32 21}
!310 = !{ptr @.str.49, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/cifs/cifsfs.c", i32 520, i32 15}
!312 = !{ptr @.str.50, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/cifs/cifsfs.c", i32 522, i32 15}
!314 = !{ptr @.str.51, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/cifs/cifsfs.c", i32 524, i32 22}
!316 = !{ptr @.str.52, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../fs/cifs/cifsfs.c", i32 527, i32 22}
!318 = !{ptr @.str.53, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../fs/cifs/cifsfs.c", i32 535, i32 18}
!320 = !{ptr @.str.54, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/cifs/cifsfs.c", i32 538, i32 18}
!322 = !{ptr @.str.55, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/cifs/cifsfs.c", i32 541, i32 18}
!324 = !{ptr @.str.56, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/cifs/cifsfs.c", i32 545, i32 16}
!326 = !{ptr @.str.57, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/cifs/cifsfs.c", i32 548, i32 15}
!328 = !{ptr @.str.58, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../fs/cifs/cifsfs.c", i32 550, i32 15}
!330 = !{ptr @.str.59, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/cifs/cifsfs.c", i32 552, i32 16}
!332 = !{ptr @.str.60, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/cifs/cifsfs.c", i32 555, i32 15}
!334 = !{ptr @.str.61, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/cifs/cifsfs.c", i32 557, i32 15}
!336 = !{ptr @.str.62, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/cifs/cifsfs.c", i32 562, i32 17}
!338 = !{ptr @.str.63, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/cifs/cifsfs.c", i32 566, i32 17}
!340 = !{ptr @.str.64, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../fs/cifs/cifsfs.c", i32 568, i32 15}
!342 = !{ptr @.str.65, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/cifs/cifsfs.c", i32 570, i32 15}
!344 = !{ptr @.str.66, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../fs/cifs/cifsfs.c", i32 572, i32 15}
!346 = !{ptr @.str.67, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/cifs/cifsfs.c", i32 574, i32 15}
!348 = !{ptr @.str.68, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../fs/cifs/cifsfs.c", i32 576, i32 15}
!350 = !{ptr @.str.69, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/cifs/cifsfs.c", i32 578, i32 15}
!352 = !{ptr @.str.70, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../fs/cifs/cifsfs.c", i32 580, i32 15}
!354 = !{ptr @.str.71, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/cifs/cifsfs.c", i32 582, i32 15}
!356 = !{ptr @.str.72, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../fs/cifs/cifsfs.c", i32 584, i32 15}
!358 = !{ptr @.str.73, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../fs/cifs/cifsfs.c", i32 586, i32 15}
!360 = !{ptr @.str.74, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/cifs/cifsfs.c", i32 588, i32 15}
!362 = !{ptr @.str.75, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../fs/cifs/cifsfs.c", i32 590, i32 15}
!364 = !{ptr @.str.76, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../fs/cifs/cifsfs.c", i32 592, i32 15}
!366 = !{ptr @.str.77, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../fs/cifs/cifsfs.c", i32 594, i32 15}
!368 = !{ptr @.str.78, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/cifs/cifsfs.c", i32 596, i32 15}
!370 = !{ptr @.str.79, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../fs/cifs/cifsfs.c", i32 598, i32 15}
!372 = !{ptr @.str.80, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/cifs/cifsfs.c", i32 600, i32 15}
!374 = !{ptr @.str.81, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../fs/cifs/cifsfs.c", i32 602, i32 15}
!376 = !{ptr @.str.82, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../fs/cifs/cifsfs.c", i32 604, i32 15}
!378 = !{ptr @.str.83, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../fs/cifs/cifsfs.c", i32 606, i32 15}
!380 = !{ptr @.str.84, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../fs/cifs/cifsfs.c", i32 608, i32 15}
!382 = !{ptr @.str.85, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../fs/cifs/cifsfs.c", i32 610, i32 15}
!384 = !{ptr @.str.86, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../fs/cifs/cifsfs.c", i32 612, i32 15}
!386 = !{ptr @.str.87, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../fs/cifs/cifsfs.c", i32 614, i32 15}
!388 = !{ptr @.str.88, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../fs/cifs/cifsfs.c", i32 616, i32 15}
!390 = !{ptr @.str.89, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../fs/cifs/cifsfs.c", i32 618, i32 15}
!392 = !{ptr @.str.90, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../fs/cifs/cifsfs.c", i32 620, i32 15}
!394 = !{ptr @.str.91, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/cifs/cifsfs.c", i32 622, i32 15}
!396 = !{ptr @.str.92, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../fs/cifs/cifsfs.c", i32 624, i32 15}
!398 = !{ptr @.str.93, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../fs/cifs/cifsfs.c", i32 626, i32 15}
!400 = !{ptr @.str.94, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../fs/cifs/cifsfs.c", i32 628, i32 15}
!402 = !{ptr @.str.95, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/cifs/cifsfs.c", i32 630, i32 15}
!404 = !{ptr @.str.96, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../fs/cifs/cifsfs.c", i32 632, i32 15}
!406 = !{ptr @.str.97, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/cifs/cifsfs.c", i32 634, i32 17}
!408 = !{ptr @.str.98, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../fs/cifs/cifsfs.c", i32 638, i32 17}
!410 = !{ptr @.str.99, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../fs/cifs/cifsfs.c", i32 642, i32 16}
!412 = !{ptr @.str.100, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../fs/cifs/cifsfs.c", i32 643, i32 16}
!414 = !{ptr @.str.101, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../fs/cifs/cifsfs.c", i32 644, i32 16}
!416 = !{ptr @.str.102, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../fs/cifs/cifsfs.c", i32 646, i32 17}
!418 = !{ptr @.str.103, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../fs/cifs/cifsfs.c", i32 648, i32 17}
!420 = !{ptr @.str.104, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../fs/cifs/cifsfs.c", i32 649, i32 16}
!422 = !{ptr @.str.105, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../fs/cifs/cifsfs.c", i32 654, i32 17}
!424 = !{ptr @.str.106, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../fs/cifs/cifsfs.c", i32 657, i32 17}
!426 = !{ptr @.str.107, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../fs/cifs/cifsfs.c", i32 659, i32 17}
!428 = !{ptr @.str.108, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../fs/cifs/cifsfs.c", i32 667, i32 17}
!430 = !{ptr @.str.109, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../fs/cifs/cifsfs.c", i32 669, i32 17}
!432 = !{ptr @.str.110, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../fs/cifs/cifsfs.c", i32 670, i32 17}
!434 = !{ptr @.str.111, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../fs/cifs/cifsfs.c", i32 674, i32 17}
!436 = !{ptr @.str.112, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../fs/cifs/cifsfs.c", i32 678, i32 15}
!438 = !{ptr @.str.113, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!440 = !{ptr @.str.114, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!442 = !{ptr @.str.115, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../fs/cifs/cifsfs.c", i32 435, i32 16}
!444 = !{ptr @.str.116, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../fs/cifs/cifsfs.c", i32 439, i32 14}
!446 = !{ptr @.str.117, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../fs/cifs/cifsfs.c", i32 443, i32 15}
!448 = !{ptr @.str.118, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../fs/cifs/cifsfs.c", i32 446, i32 15}
!450 = !{ptr @.str.119, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../fs/cifs/cifsfs.c", i32 449, i32 15}
!452 = !{ptr @.str.120, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../fs/cifs/cifsfs.c", i32 453, i32 15}
!454 = !{ptr @.str.121, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../fs/cifs/cifsfs.c", i32 458, i32 15}
!456 = !{ptr @.str.122, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../fs/cifs/cifsfs.c", i32 461, i32 17}
!458 = !{ptr @.str.123, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../fs/cifs/cifsfs.c", i32 468, i32 14}
!460 = !{ptr @.str.124, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../fs/cifs/cifsfs.c", i32 471, i32 15}
!462 = !{ptr @.str.125, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../fs/cifs/cifsfs.c", i32 473, i32 15}
!464 = !{ptr @.str.126, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../fs/cifs/cifsfs.c", i32 475, i32 15}
!466 = !{ptr @.str.127, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../fs/cifs/cifsfs.c", i32 477, i32 15}
!468 = !{ptr @.str.128, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../fs/cifs/cifsfs.c", i32 479, i32 15}
!470 = !{ptr @.str.129, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../fs/cifs/cifsfs.c", i32 412, i32 14}
!472 = !{ptr @.str.130, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../fs/cifs/cifsfs.c", i32 416, i32 17}
!474 = !{ptr @.str.131, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../fs/cifs/cifsfs.c", i32 419, i32 17}
!476 = !{ptr @.str.132, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../fs/cifs/cifsfs.c", i32 421, i32 18}
!478 = !{ptr @.str.133, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../fs/cifs/cifsfs.c", i32 424, i32 15}
!480 = !{ptr @.str.134, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../fs/cifs/cifsfs.c", i32 427, i32 15}
!482 = !{ptr @.str.135, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../fs/cifs/cifsfs.c", i32 496, i32 26}
!484 = !{ptr @cifs_get_root._rs, !485, !"_rs", i1 false, i1 false}
!485 = !{!"../fs/cifs/cifsfs.c", i32 783, i32 2}
!486 = !{ptr @.str.136, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @.str.137, !485, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @cifs_get_root.descriptor, !485, !"descriptor", i1 false, i1 false}
!489 = !{ptr @cifs_file_write_iter._rs, !490, !"_rs", i1 false, i1 false}
!490 = !{!"../fs/cifs/cifsfs.c", i32 960, i32 4}
!491 = !{ptr @.str.138, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.139, !490, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @cifs_file_write_iter.descriptor, !490, !"descriptor", i1 false, i1 false}
!494 = !{ptr @cifs_file_write_iter._rs.140, !495, !"_rs", i1 false, i1 false}
!495 = !{!"../fs/cifs/cifsfs.c", i32 979, i32 3}
!496 = !{ptr @.str.142, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @cifs_file_write_iter.descriptor.141, !495, !"descriptor", i1 false, i1 false}
!498 = !{ptr @cifs_copy_file_range._rs, !499, !"_rs", i1 false, i1 false}
!499 = !{!"../fs/cifs/cifsfs.c", i32 1260, i32 21}
!500 = !{ptr @.str.143, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @cifs_copy_file_range.descriptor, !499, !"descriptor", i1 false, i1 false}
!502 = distinct !{null, !499, !"__warned", i1 false, i1 false}
!503 = !{ptr @cifs_copy_file_range._rs.144, !504, !"_rs", i1 false, i1 false}
!504 = !{!"../fs/cifs/cifsfs.c", i32 1269, i32 2}
!505 = !{ptr @cifs_copy_file_range.descriptor.145, !504, !"descriptor", i1 false, i1 false}
!506 = !{ptr @cifs_remap_file_range._rs, !507, !"_rs", i1 false, i1 false}
!507 = !{!"../fs/cifs/cifsfs.c", i32 1132, i32 2}
!508 = !{ptr @.str.146, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @.str.147, !507, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @cifs_remap_file_range.descriptor, !507, !"descriptor", i1 false, i1 false}
!511 = !{ptr @cifs_remap_file_range._rs.148, !512, !"_rs", i1 false, i1 false}
!512 = !{!"../fs/cifs/cifsfs.c", i32 1134, i32 8}
!513 = !{ptr @cifs_remap_file_range.descriptor.149, !512, !"descriptor", i1 false, i1 false}
!514 = distinct !{null, !512, !"__warned", i1 false, i1 false}
!515 = !{ptr @cifs_remap_file_range._rs.150, !516, !"_rs", i1 false, i1 false}
!516 = !{!"../fs/cifs/cifsfs.c", i32 1138, i32 3}
!517 = !{ptr @cifs_remap_file_range._entry, !516, !"_entry", i1 false, i1 false}
!518 = !{ptr @cifs_remap_file_range._entry_ptr, !516, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @cifs_remap_file_range._rs.151, !520, !"_rs", i1 false, i1 false}
!520 = !{!"../fs/cifs/cifsfs.c", i32 1155, i32 2}
!521 = !{ptr @cifs_remap_file_range.descriptor.152, !520, !"descriptor", i1 false, i1 false}
!522 = !{ptr @cifs_remap_file_range._rs.153, !523, !"_rs", i1 false, i1 false}
!523 = !{!"../fs/cifs/cifsfs.c", i32 1173, i32 2}
!524 = !{ptr @cifs_remap_file_range.descriptor.154, !523, !"descriptor", i1 false, i1 false}
!525 = !{ptr @cifs_dir_fsync._rs, !526, !"_rs", i1 false, i1 false}
!526 = !{!"../fs/cifs/cifsfs.c", i32 1250, i32 2}
!527 = !{ptr @.str.155, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @.str.156, !526, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @cifs_dir_fsync.descriptor, !526, !"descriptor", i1 false, i1 false}
!530 = !{ptr @.str.157, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../fs/cifs/cifsfs.c", i32 1077, i32 10}
!532 = !{ptr @smb3_fs_type, !533, !"smb3_fs_type", i1 false, i1 false}
!533 = !{!"../fs/cifs/cifsfs.c", i32 1075, i32 32}
!534 = !{ptr @cifs_req_cachep, !535, !"cifs_req_cachep", i1 false, i1 false}
!535 = !{!"../fs/cifs/cifsfs.c", i32 346, i32 27}
!536 = !{ptr @cifs_sm_req_cachep, !537, !"cifs_sm_req_cachep", i1 false, i1 false}
!537 = !{!"../fs/cifs/cifsfs.c", i32 348, i32 27}
!538 = !{ptr @cifs_mid_cachep, !539, !"cifs_mid_cachep", i1 false, i1 false}
!539 = !{!"../fs/cifs/cifsfs.c", i32 347, i32 27}
!540 = !{ptr @init_cifs._rs, !541, !"_rs", i1 false, i1 false}
!541 = !{!"../fs/cifs/cifsfs.c", i32 1574, i32 3}
!542 = !{ptr @.str.158, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @.str.159, !541, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @init_cifs.descriptor, !541, !"descriptor", i1 false, i1 false}
!545 = !{ptr @init_cifs._rs.160, !546, !"_rs", i1 false, i1 false}
!546 = !{!"../fs/cifs/cifsfs.c", i32 1576, i32 3}
!547 = !{ptr @.str.161, !546, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @init_cifs._entry, !546, !"_entry", i1 false, i1 false}
!549 = !{ptr @init_cifs._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @init_cifs.__key, !551, !"__key", i1 false, i1 false}
!551 = !{!"../fs/cifs/cifsfs.c", i32 1584, i32 2}
!552 = !{ptr @.str.162, !551, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @init_cifs.__key.163, !554, !"__key", i1 false, i1 false}
!554 = !{!"../fs/cifs/cifsfs.c", i32 1585, i32 2}
!555 = !{ptr @.str.164, !554, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @init_cifs._rs.165, !557, !"_rs", i1 false, i1 false}
!557 = !{!"../fs/cifs/cifsfs.c", i32 1591, i32 3}
!558 = !{ptr @.str.167, !557, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @init_cifs.descriptor.166, !557, !"descriptor", i1 false, i1 false}
!560 = !{ptr @init_cifs._rs.168, !561, !"_rs", i1 false, i1 false}
!561 = !{!"../fs/cifs/cifsfs.c", i32 1594, i32 3}
!562 = !{ptr @.str.170, !561, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @init_cifs.descriptor.169, !561, !"descriptor", i1 false, i1 false}
!564 = !{ptr @.str.171, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../fs/cifs/cifsfs.c", i32 1598, i32 31}
!566 = !{ptr @.str.172, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../fs/cifs/cifsfs.c", i32 1611, i32 31}
!568 = !{ptr @.str.173, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../fs/cifs/cifsfs.c", i32 1618, i32 36}
!570 = !{ptr @.str.174, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../fs/cifs/cifsfs.c", i32 1625, i32 35}
!572 = !{ptr @.str.175, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../fs/cifs/cifsfs.c", i32 1632, i32 37}
!574 = !{ptr @.str.176, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../fs/cifs/cifsfs.c", i32 1414, i32 40}
!576 = !{ptr @cifs_init_once.__key, !577, !"__key", i1 false, i1 false}
!577 = !{!"../fs/cifs/cifsfs.c", i32 1408, i32 2}
!578 = !{ptr @.str.177, !577, !"<string literal>", i1 false, i1 false}
!579 = !{ptr @.str.178, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../fs/cifs/cifsfs.c", i32 1529, i32 38}
!581 = !{ptr @.str.179, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../fs/cifs/cifsfs.c", i32 1458, i32 47}
!583 = !{ptr @cifs_init_request_bufs._rs, !584, !"_rs", i1 false, i1 false}
!584 = !{!"../fs/cifs/cifsfs.c", i32 1470, i32 3}
!585 = !{ptr @__func__.cifs_init_request_bufs, !584, !"<string literal>", i1 false, i1 false}
!586 = !{ptr @.str.180, !584, !"<string literal>", i1 false, i1 false}
!587 = !{ptr @cifs_init_request_bufs._entry, !584, !"_entry", i1 false, i1 false}
!588 = !{ptr @cifs_init_request_bufs._entry_ptr, !584, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.181, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../fs/cifs/cifsfs.c", i32 1488, i32 50}
!591 = !{ptr @cifs_init_request_bufs._rs.182, !592, !"_rs", i1 false, i1 false}
!592 = !{!"../fs/cifs/cifsfs.c", i32 1501, i32 3}
!593 = !{ptr @.str.183, !592, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @cifs_init_request_bufs.descriptor, !592, !"descriptor", i1 false, i1 false}
!595 = !{!"sp"}
!596 = !{i32 1, !"wchar_size", i32 2}
!597 = !{i32 1, !"min_enum_size", i32 4}
!598 = !{i32 8, !"branch-target-enforcement", i32 0}
!599 = !{i32 8, !"sign-return-address", i32 0}
!600 = !{i32 8, !"sign-return-address-all", i32 0}
!601 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!602 = !{i32 7, !"uwtable", i32 1}
!603 = !{i32 7, !"frame-pointer", i32 2}
!604 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!605 = !{i64 2148471887}
!606 = !{i64 2148387172, i64 2148387204, i64 2148387233, i64 2148387267, i64 2148387298, i64 2148387321}
!607 = !{i64 2148472116}
!608 = !{i64 2148386452, i64 2148386478, i64 2148386507, i64 2148386541, i64 2148386572, i64 2148386595}
!609 = !{i64 2148474928}
!610 = !{i64 2148389637, i64 2148389669, i64 2148389698, i64 2148389732, i64 2148389763, i64 2148389786}
!611 = !{i64 2148475157}
!612 = !{i64 2148999829, i64 2148999834, i64 2148999847, i64 2148999891, i64 2148999925, i64 2148999946}
!613 = !{i8 0, i8 2}
!614 = !{!"branch_weights", i32 2000, i32 1}
!615 = !{i64 2158926923}
!616 = !{i64 2158927134}
!617 = !{i64 2149411170}
!618 = !{i64 2149412206}
!619 = !{i64 2158873920}
!620 = !{i64 2158874145}
!621 = !{i64 2158943315}
!622 = !{i64 2158943534}
