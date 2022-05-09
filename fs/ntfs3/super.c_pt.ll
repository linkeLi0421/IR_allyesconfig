; ModuleID = '/llk/IR_all_yes/fs/ntfs3/super.c_pt.bc'
source_filename = "../fs/ntfs3/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.92 = type { ptr, i32, i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cpu_str = type { i8, i8, [10 x i16] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.37 }
%union.anon.37 = type { i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.82, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.89, %struct.anon.90, %struct.anon.91, ptr, %struct.ratelimit_state }
%struct.anon.82 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.86 = type { %struct.wnd_bitmap, i32 }
%struct.anon.87 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.88 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.89 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.90 = type { %struct.ntfs_index, ptr }
%struct.anon.91 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.72 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.ntfs_mount_options = type { ptr, ptr, %struct.kuid_t, %struct.kgid_t, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.34 = type { %struct.callback_head }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.77 }
%union.anon.77 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.83, %struct.anon.85, i32, %struct.inode }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%union.anon.83 = type { %struct.ntfs_index }
%struct.anon.85 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.NTFS_BOOT = type { [3 x i8], [8 x i8], [2 x i8], i8, [7 x i8], i8, [2 x i8], i16, i16, i32, [4 x i8], i8, i8, i8, i8, i64, i64, i64, i8, [3 x i8], i8, [3 x i8], i64, i32, [426 x i8], [2 x i8] }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.MFT_REC = type { %struct.NTFS_RECORD_HEADER, i16, i16, i16, i16, i32, i32, %struct.MFT_REF, i16, i16, i32, [0 x i16] }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.93 }
%union.anon.93 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.VOLUME_INFO = type { i64, i8, i8, i16 }
%struct.ATTR_DEF_ENTRY = type { [64 x i16], i32, i32, i32, i32, i64, i64 }
%struct.page = type { i32, %union.anon.6, %union.anon.61, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ntfs3\00", [26 x i8] zeroinitializer }, align 32
@ntfs_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%c%cntfs3: %s: %pV\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ntfs_printk\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ntfs3/super.c\00", [47 x i8] zeroinitializer }, align 32
@ntfs_printk._entry_ptr = internal global ptr @ntfs_printk._entry, section ".printk_index", align 4
@s_name_buf_cnt = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 1 }, [28 x i8] zeroinitializer }, align 32
@s_name_buf = internal global { [512 x i8], [128 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" \22%s\22\00", [26 x i8] zeroinitializer }, align 32
@ntfs_inode_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%c%cntfs3: %s: ino=%lx,%s %pV\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ntfs_inode_printk\00", [46 x i8] zeroinitializer }, align 32
@ntfs_inode_printk._entry_ptr = internal global ptr @ntfs_inode_printk._entry, section ".printk_index", align 4
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@s_shared_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@s_shared = internal global { [8 x %struct.anon.92], [32 x i8] } zeroinitializer, align 32
@ntfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ntfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 33, ptr @ntfs_init_fs_context, ptr @ntfs_fs_parameters, ptr null, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file273 = internal constant [26 x i8] c"ntfs3.file=fs/ntfs3/ntfs3\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [18 x i8] c"ntfs3.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description275 = internal constant [46 x i8] c"ntfs3.description=ntfs3 read/write filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_behaviour276 = internal constant [49 x i8] c"ntfs3.behaviour=Enabled Linux POSIX ACLs support\00", section ".modinfo", align 1
@__UNIQUE_ID_compression277 = internal constant [60 x i8] c"ntfs3.compression=Read-only lzx/xpress compression included\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [32 x i8] c"ntfs3.author=Konstantin Komarov\00", section ".modinfo", align 1
@__UNIQUE_ID_alias279 = internal constant [21 x i8] c"ntfs3.alias=fs-ntfs3\00", section ".modinfo", align 1
@__initcall__kmod_ntfs3__280_1506_init_ntfs_fs6 = internal global ptr @init_ntfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_ntfs_fs = internal global ptr @exit_ntfs_fs, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s_shared_lock\00", [18 x i8] zeroinitializer }, align 32
@vm_zone_stat = external dso_local global [11 x %struct.atomic_t], align 4
@ntfs_fs_parameters = internal constant { [16 x %struct.fs_parameter_spec], [64 x i8] } { [16 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.66, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.67, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.68, ptr @fs_param_is_u32, i8 2, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.69, ptr @fs_param_is_u32, i8 3, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.70, ptr @fs_param_is_u32, i8 4, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.71, ptr null, i8 5, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.72, ptr null, i8 6, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.73, ptr null, i8 7, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.74, ptr null, i8 8, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.75, ptr null, i8 9, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.76, ptr null, i8 11, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.77, ptr null, i8 10, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.78, ptr null, i8 13, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.79, ptr null, i8 14, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.80, ptr @fs_param_is_string, i8 12, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [64 x i8] zeroinitializer }, align 32
@ntfs_init_fs_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&sbi->compress.mtx_lznt\00", [40 x i8] zeroinitializer }, align 32
@ntfs_init_fs_context.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&sbi->compress.mtx_xpress\00", [38 x i8] zeroinitializer }, align 32
@ntfs_init_fs_context.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&sbi->compress.mtx_lzx\00", [41 x i8] zeroinitializer }, align 32
@ntfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @ntfs_fs_free, ptr null, ptr @ntfs_fs_parse_param, ptr null, ptr @ntfs_fs_get_tree, ptr @ntfs_fs_reconfigure }, [40 x i8] zeroinitializer }, align 32
@ratelimit_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rs->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ntfs3: Invalid value for uid.\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ntfs3: Invalid value for gid.\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ntfs3: Invalid value for umask.\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ntfs3: Invalid value for dmask.\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ntfs3: Invalid value for fmask.\00", [32 x i8] zeroinitializer }, align 32
@ntfs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @ntfs_alloc_inode, ptr @ntfs_destroy_inode, ptr null, ptr null, ptr @ntfs3_write_inode, ptr null, ptr @ntfs_evict_inode, ptr @ntfs_put_super, ptr @ntfs_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_statfs, ptr null, ptr null, ptr @ntfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ntfs_export_ops = internal constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @ntfs_fh_to_dentry, ptr @ntfs_fh_to_parent, ptr null, ptr @ntfs3_get_parent, ptr @ntfs_nfs_commit_metadata, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@ntfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot load nls %s\00", [45 x i8] zeroinitializer }, align 32
@NAME_VOLUME = external dso_local constant %struct.cpu_str, align 2
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Failed to load $Volume.\00", [38 x i8] zeroinitializer }, align 32
@NAME_MIRROR = external dso_local constant %struct.cpu_str, align 2
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to load $MFTMirr.\00", [37 x i8] zeroinitializer }, align 32
@NAME_LOGFILE = external dso_local constant %struct.cpu_str, align 2
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to load $LogFile.\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014failed to replay log file. Can't mount rw!\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014volume is dirty and \22force\22 flag is not set!\00", [49 x i8] zeroinitializer }, align 32
@NAME_MFT = external dso_local constant %struct.cpu_str, align 2
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Failed to load $MFT.\00", [41 x i8] zeroinitializer }, align 32
@NAME_BADCLUS = external dso_local constant %struct.cpu_str, align 2
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to load $BadClus.\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015Volume contains bad blocks\00", [35 x i8] zeroinitializer }, align 32
@NAME_BITMAP = external dso_local constant %struct.cpu_str, align 2
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Failed to load $Bitmap.\00", [38 x i8] zeroinitializer }, align 32
@NAME_ATTRDEF = external dso_local constant %struct.cpu_str, align 2
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to load $AttrDef -> %d\00", [32 x i8] zeroinitializer }, align 32
@NAME_UPCASE = external dso_local constant %struct.cpu_str, align 2
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Failed to load $UpCase.\00", [38 x i8] zeroinitializer }, align 32
@NAME_ROOT = external dso_local constant %struct.cpu_str, align 2
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Failed to load root.\00", [41 x i8] zeroinitializer }, align 32
@ntfs_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ni->ni_lock\00", [19 x i8] zeroinitializer }, align 32
@__func__.ntfs_sync_fs = private unnamed_addr constant [13 x i8] c"ntfs_sync_fs\00", align 1
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",fmask=%04o\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",dmask=%04o\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",iocharset=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",iocharset=utf8\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",sys_immutable\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",discard\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",sparse\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",showmeta\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",nohidden\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",force\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",noacsrules\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",prealloc\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",acl\00", [27 x i8] zeroinitializer }, align 32
@__func__.ntfs_nfs_commit_metadata = private unnamed_addr constant [25 x i8] c"ntfs_nfs_commit_metadata\00", align 1
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iso8859-1\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NTFS    \00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014Different NTFS' sector size (%u) and media sector size (%u)\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013Failed to mount 'cause NTFS's cluster size (%u) is less than media sector size (%u)\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014RAW NTFS volume: Filesystem size %u.%02u Gb > volume size %u.%02u Gb. Mount in read-only\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015NTFS %u.%02u Gb is too big to use 32 bits per cluster\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013failed to read volume at offset 0x%llx\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.60 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.62 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"ntfs3: Couldn't remount rw because journal is not replayed. Please umount/remount instead\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ntfs3: Cannot load iocharset %s\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ntfs3: Cannot use different iocharset when remounting!\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ntfs3: Volume is dirty and \22force\22 flag is not set!\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"umask\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmask\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fmask\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_immutable\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"discard\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"force\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sparse\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hidden\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"showmeta\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prealloc\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acsrules\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iocharset\00", [22 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016ntfs3: Max link count %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_ntfs_fs\00", [19 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr = internal global ptr @init_ntfs_fs._entry, section ".printk_index", align 4
@init_ntfs_fs._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ntfs3: Enabled Linux POSIX ACLs support\0A\00", [53 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.85 = internal global ptr @init_ntfs_fs._entry.83, section ".printk_index", align 4
@init_ntfs_fs._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.3, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016ntfs3: Read-only LZX/Xpress compression included\0A\00", [44 x i8] zeroinitializer }, align 32
@init_ntfs_fs._entry_ptr.88 = internal global ptr @init_ntfs_fs._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntfs_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.90 = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.91 = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.92 = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@__sancov_gen_cov_switch_values.93 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 3221225472, i64 3758096384]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 59, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 67, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"s_name_buf_cnt\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 73, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"s_name_buf\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 72, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 103, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 118, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"s_shared_lock\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [9 x i8] c"s_shared\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 145, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"ntfs_inode_cachep\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 398, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"ntfs_fs_type\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1432, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 139, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c"ntfs_fs_parameters\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 233, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1411, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1413, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1414, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"ntfs_context_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1369, i32 43 }
@___asan_gen_.176 = private unnamed_addr constant [29 x i8] c"../include/linux/ratelimit.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 14, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 290, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 295, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 299, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 307, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 313, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant [10 x i8] c"ntfs_sops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 592, i32 38 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"ntfs_export_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 646, i32 39 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 910, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 936, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 984, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 999, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1014, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1021, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1035, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1061, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1073, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1085, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1122, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1185, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1252, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 409, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 516, i32 16 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 518, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 521, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 523, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 525, i32 17 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 527, i32 15 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 529, i32 15 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 531, i32 15 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 533, i32 15 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 535, i32 15 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 537, i32 15 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 539, i32 15 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 541, i32 15 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 543, i32 15 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 545, i32 15 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 260, i32 9 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 262, i32 18 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 700, i32 30 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 753, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 773, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 809, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 820, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [22 x i8] c"../fs/ntfs3/ntfs_fs.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 1018, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 44, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 416, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 717, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 372, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 379, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 383, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 389, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 234, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 235, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 236, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 237, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 238, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 239, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 240, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 241, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 242, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 243, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 244, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 245, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 246, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 247, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 248, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1446, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1449, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1453, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.401 = private constant [20 x i8] c"../fs/ntfs3/super.c\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 1460, i32 3 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_alias279, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_behaviour276, ptr @__UNIQUE_ID_compression277, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__exitcall_exit_ntfs_fs, ptr @__initcall__kmod_ntfs3__280_1506_init_ntfs_fs6, ptr @exit_ntfs_fs, ptr @init_ntfs_fs._entry, ptr @init_ntfs_fs._entry.83, ptr @init_ntfs_fs._entry.86, ptr @init_ntfs_fs._entry_ptr, ptr @init_ntfs_fs._entry_ptr.85, ptr @init_ntfs_fs._entry_ptr.88, ptr @ntfs_inode_printk._entry, ptr @ntfs_inode_printk._entry_ptr, ptr @ntfs_printk._entry, ptr @ntfs_printk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @s_name_buf_cnt, ptr @s_name_buf, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @s_shared_lock, ptr @s_shared, ptr @ntfs_inode_cachep, ptr @ntfs_fs_type, ptr @.str.8, ptr @ntfs_fs_parameters, ptr @ntfs_init_fs_context.__key, ptr @.str.10, ptr @ntfs_init_fs_context.__key.11, ptr @.str.12, ptr @ntfs_init_fs_context.__key.13, ptr @.str.14, ptr @ntfs_context_ops, ptr @ratelimit_state_init.__key, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ntfs_sops, ptr @ntfs_export_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ntfs_alloc_inode.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_name_buf_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_name_buf to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_inode_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_shared_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_shared to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_fs_parameters to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_init_fs_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_init_fs_context.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_init_fs_context.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ntfs_fs._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_printk(ptr noundef %sb, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #17
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #17
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !232
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %msg_ratelimit = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 35
  %call = tail call i32 @___ratelimit(ptr noundef %msg_ratelimit, ptr noundef nonnull @.str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.printk_skip_level.exit_crit_edge

if.end.printk_skip_level.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_skip_level.exit

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr i8, ptr %fmt, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %land.lhs.true.i.land.lhs.true.i.i_crit_edge [
    i8 55, label %land.lhs.true.i.sw.bb6.i_crit_edge
    i8 99, label %land.lhs.true.i.sw.bb6.i_crit_edge13
    i8 48, label %land.lhs.true.i.sw.bb6.i_crit_edge14
    i8 49, label %land.lhs.true.i.sw.bb6.i_crit_edge15
    i8 50, label %land.lhs.true.i.sw.bb6.i_crit_edge16
    i8 51, label %land.lhs.true.i.sw.bb6.i_crit_edge17
    i8 52, label %land.lhs.true.i.sw.bb6.i_crit_edge18
    i8 53, label %land.lhs.true.i.sw.bb6.i_crit_edge19
    i8 54, label %land.lhs.true.i.sw.bb6.i_crit_edge20
  ]

land.lhs.true.i.sw.bb6.i_crit_edge20:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge19:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge18:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge17:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge16:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge15:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge14:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge13:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.land.lhs.true.i.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i.i

sw.bb6.i:                                         ; preds = %land.lhs.true.i.sw.bb6.i_crit_edge, %land.lhs.true.i.sw.bb6.i_crit_edge13, %land.lhs.true.i.sw.bb6.i_crit_edge14, %land.lhs.true.i.sw.bb6.i_crit_edge15, %land.lhs.true.i.sw.bb6.i_crit_edge16, %land.lhs.true.i.sw.bb6.i_crit_edge17, %land.lhs.true.i.sw.bb6.i_crit_edge18, %land.lhs.true.i.sw.bb6.i_crit_edge19, %land.lhs.true.i.sw.bb6.i_crit_edge20
  %conv8.i = zext i8 %7 to i32
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %arrayidx2.i, align 1
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb6.i, %land.lhs.true.i.land.lhs.true.i.i_crit_edge
  %10 = phi i8 [ %7, %land.lhs.true.i.land.lhs.true.i.i_crit_edge ], [ %.pr, %sw.bb6.i ]
  %retval.0.i.ph = phi i32 [ 0, %land.lhs.true.i.land.lhs.true.i.i_crit_edge ], [ %conv8.i, %sw.bb6.i ]
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %10, label %land.lhs.true.i.i.printk_skip_level.exit_crit_edge [
    i8 55, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge
    i8 99, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge21
    i8 48, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge22
    i8 49, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge23
    i8 50, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge24
    i8 51, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge25
    i8 52, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge26
    i8 53, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge27
    i8 54, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge28
  ]

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge28: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge27: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge26: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge25: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge24: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge23: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge22: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge21: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_skip_level.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_skip_level.exit

printk_get_level.exit.i:                          ; preds = %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge21, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge22, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge23, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge24, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge25, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge26, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge27, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge28
  %add.ptr.i = getelementptr i8, ptr %fmt, i32 2
  br label %printk_skip_level.exit

printk_skip_level.exit:                           ; preds = %printk_get_level.exit.i, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge, %if.end.printk_skip_level.exit_crit_edge
  %retval.0.i11 = phi i32 [ %retval.0.i.ph, %printk_get_level.exit.i ], [ %retval.0.i.ph, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge ], [ 0, %if.end.printk_skip_level.exit_crit_edge ]
  %12 = phi ptr [ %add.ptr.i, %printk_get_level.exit.i ], [ %fmt, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge ], [ %fmt, %if.end.printk_skip_level.exit_crit_edge ]
  %13 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %vaf, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %retval.0.i11, ptr noundef %s_id, ptr noundef nonnull %vaf) #20
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %printk_skip_level.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_inode_printk(ptr noundef %inode, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #17
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #17
  %5 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %msg_ratelimit = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 35
  %call = tail call i32 @___ratelimit(ptr noundef %msg_ratelimit, ptr noundef nonnull @.str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @s_name_buf_cnt, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !233
  tail call void @llvm.prefetch.p0(ptr nonnull @s_name_buf_cnt, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @s_name_buf_cnt, ptr nonnull @s_name_buf_cnt, i32 1, ptr nonnull elementtype(i32) @s_name_buf_cnt) #17, !srcloc !234
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.if.then4_crit_edge, label %cond.end

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

cond.end:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3136, i32 noundef 512) #21
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %cond.end.if.end14_crit_edge, label %cond.end.if.then4_crit_edge

cond.end.if.then4_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

cond.end.if.end14_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then4:                                         ; preds = %cond.end.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %cond50 = phi ptr [ %call7.i, %cond.end.if.then4_crit_edge ], [ @s_name_buf, %if.end.if.then4_crit_edge ]
  %call5 = tail call ptr @d_find_alias(ptr noundef %inode) #17
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then4.if.end13_crit_edge, label %if.then7

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #17
  %name8 = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name8, align 8
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %cond50, i32 noundef 511, ptr noundef nonnull @.str.4, ptr noundef %9)
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #17
  %arrayidx = getelementptr i8, ptr %cond50, i32 511
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.then4.if.end13_crit_edge
  %cond50.sink = phi ptr [ %arrayidx, %if.then7 ], [ %cond50, %if.then4.if.end13_crit_edge ]
  %10 = ptrtoint ptr %cond50.sink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cond50.sink, align 1
  tail call void @dput(ptr noundef %call5) #17
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %cond.end.if.end14_crit_edge
  %tobool3.not53 = phi ptr [ %cond50, %if.end13 ], [ @.str.7, %cond.end.if.end14_crit_edge ]
  %cond51 = phi ptr [ %cond50, %if.end13 ], [ null, %cond.end.if.end14_crit_edge ]
  call void @llvm.va_start(ptr nonnull %args)
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end14.printk_skip_level.exit_crit_edge

if.end14.printk_skip_level.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_skip_level.exit

land.lhs.true.i:                                  ; preds = %if.end14
  %arrayidx2.i = getelementptr i8, ptr %fmt, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %14, label %land.lhs.true.i.land.lhs.true.i.i_crit_edge [
    i8 55, label %land.lhs.true.i.sw.bb6.i_crit_edge
    i8 99, label %land.lhs.true.i.sw.bb6.i_crit_edge57
    i8 48, label %land.lhs.true.i.sw.bb6.i_crit_edge58
    i8 49, label %land.lhs.true.i.sw.bb6.i_crit_edge59
    i8 50, label %land.lhs.true.i.sw.bb6.i_crit_edge60
    i8 51, label %land.lhs.true.i.sw.bb6.i_crit_edge61
    i8 52, label %land.lhs.true.i.sw.bb6.i_crit_edge62
    i8 53, label %land.lhs.true.i.sw.bb6.i_crit_edge63
    i8 54, label %land.lhs.true.i.sw.bb6.i_crit_edge64
  ]

land.lhs.true.i.sw.bb6.i_crit_edge64:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge63:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge62:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge61:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge60:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge59:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge58:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge57:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.sw.bb6.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb6.i

land.lhs.true.i.land.lhs.true.i.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i.i

sw.bb6.i:                                         ; preds = %land.lhs.true.i.sw.bb6.i_crit_edge, %land.lhs.true.i.sw.bb6.i_crit_edge57, %land.lhs.true.i.sw.bb6.i_crit_edge58, %land.lhs.true.i.sw.bb6.i_crit_edge59, %land.lhs.true.i.sw.bb6.i_crit_edge60, %land.lhs.true.i.sw.bb6.i_crit_edge61, %land.lhs.true.i.sw.bb6.i_crit_edge62, %land.lhs.true.i.sw.bb6.i_crit_edge63, %land.lhs.true.i.sw.bb6.i_crit_edge64
  %conv8.i = zext i8 %14 to i32
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %arrayidx2.i, align 1
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb6.i, %land.lhs.true.i.land.lhs.true.i.i_crit_edge
  %17 = phi i8 [ %14, %land.lhs.true.i.land.lhs.true.i.i_crit_edge ], [ %.pr, %sw.bb6.i ]
  %retval.0.i.ph = phi i32 [ 0, %land.lhs.true.i.land.lhs.true.i.i_crit_edge ], [ %conv8.i, %sw.bb6.i ]
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %17, label %land.lhs.true.i.i.printk_skip_level.exit_crit_edge [
    i8 55, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge
    i8 99, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge65
    i8 48, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge66
    i8 49, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge67
    i8 50, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge68
    i8 51, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge69
    i8 52, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge70
    i8 53, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge71
    i8 54, label %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge72
  ]

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge72: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge71: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge70: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge69: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge68: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge67: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge66: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge65: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_get_level.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_get_level.exit.i

land.lhs.true.i.i.printk_skip_level.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %printk_skip_level.exit

printk_get_level.exit.i:                          ; preds = %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge65, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge66, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge67, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge68, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge69, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge70, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge71, %land.lhs.true.i.i.printk_get_level.exit.i_crit_edge72
  %add.ptr.i = getelementptr i8, ptr %fmt, i32 2
  br label %printk_skip_level.exit

printk_skip_level.exit:                           ; preds = %printk_get_level.exit.i, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge, %if.end14.printk_skip_level.exit_crit_edge
  %retval.0.i55 = phi i32 [ %retval.0.i.ph, %printk_get_level.exit.i ], [ %retval.0.i.ph, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge ], [ 0, %if.end14.printk_skip_level.exit_crit_edge ]
  %19 = phi ptr [ %add.ptr.i, %printk_get_level.exit.i ], [ %fmt, %land.lhs.true.i.i.printk_skip_level.exit_crit_edge ], [ %fmt, %if.end14.printk_skip_level.exit_crit_edge ]
  %20 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %vaf, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %args, ptr %5, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino, align 8
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %retval.0.i55, ptr noundef %s_id, i32 noundef %23, ptr noundef nonnull %tobool3.not53, ptr noundef nonnull %vaf) #20
  call void @llvm.va_end(ptr nonnull %args)
  %call.i.i46 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @s_name_buf_cnt, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr nonnull @s_name_buf_cnt, i32 1, i32 3, i32 1) #17
  %24 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @s_name_buf_cnt, ptr nonnull @s_name_buf_cnt, i32 1, ptr nonnull elementtype(i32) @s_name_buf_cnt) #17, !srcloc !236
  %cmp.not = icmp eq ptr %cond51, @s_name_buf
  br i1 %cmp.not, label %printk_skip_level.exit.cleanup_crit_edge, label %if.then24

printk_skip_level.exit.cleanup_crit_edge:         ; preds = %printk_skip_level.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then24:                                        ; preds = %printk_skip_level.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef %cond51) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %printk_skip_level.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_set_shared(ptr noundef %ptr, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @s_shared_lock) #17
  %0 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.else

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.else:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bytes)
  %cmp2 = icmp eq i32 %1, %bytes
  br i1 %cmp2, label %land.lhs.true, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %2 = load ptr, ptr @s_shared, align 4
  %bcmp = tail call i32 @bcmp(ptr %2, ptr %ptr, i32 %bytes) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.else.for.inc_crit_edge, %entry.for.inc_crit_edge
  %j.1 = phi i32 [ -1, %land.lhs.true.for.inc_crit_edge ], [ -1, %if.else.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %3 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.else.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  %4 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bytes)
  %cmp2.1 = icmp eq i32 %4, %bytes
  br i1 %cmp2.1, label %land.lhs.true.1, label %if.else.1.for.inc.1_crit_edge

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.else.1
  %5 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 1), align 4
  %bcmp.1 = tail call i32 @bcmp(ptr %5, ptr %ptr, i32 %bytes) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool5.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool5.not.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.else.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %j.1.1 = phi i32 [ %j.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %j.1, %if.else.1.for.inc.1_crit_edge ], [ 1, %for.inc.for.inc.1_crit_edge ]
  %6 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.2 = icmp eq i32 %6, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.else.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  %7 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %bytes)
  %cmp2.2 = icmp eq i32 %7, %bytes
  br i1 %cmp2.2, label %land.lhs.true.2, label %if.else.2.for.inc.2_crit_edge

if.else.2.for.inc.2_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.else.2
  %8 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 2), align 4
  %bcmp.2 = tail call i32 @bcmp(ptr %8, ptr %ptr, i32 %bytes) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool5.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool5.not.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.else.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %j.1.2 = phi i32 [ %j.1.1, %land.lhs.true.2.for.inc.2_crit_edge ], [ %j.1.1, %if.else.2.for.inc.2_crit_edge ], [ 2, %for.inc.1.for.inc.2_crit_edge ]
  %9 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.3 = icmp eq i32 %9, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.else.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  %10 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %bytes)
  %cmp2.3 = icmp eq i32 %10, %bytes
  br i1 %cmp2.3, label %land.lhs.true.3, label %if.else.3.for.inc.3_crit_edge

if.else.3.for.inc.3_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.else.3
  %11 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 3), align 4
  %bcmp.3 = tail call i32 @bcmp(ptr %11, ptr %ptr, i32 %bytes) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool5.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %tobool5.not.3, label %land.lhs.true.3.for.end_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.else.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %j.1.3 = phi i32 [ %j.1.2, %land.lhs.true.3.for.inc.3_crit_edge ], [ %j.1.2, %if.else.3.for.inc.3_crit_edge ], [ 3, %for.inc.2.for.inc.3_crit_edge ]
  %12 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.4 = icmp eq i32 %12, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.else.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.else.4:                                        ; preds = %for.inc.3
  %13 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %bytes)
  %cmp2.4 = icmp eq i32 %13, %bytes
  br i1 %cmp2.4, label %land.lhs.true.4, label %if.else.4.for.inc.4_crit_edge

if.else.4.for.inc.4_crit_edge:                    ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.else.4
  %14 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 4), align 4
  %bcmp.4 = tail call i32 @bcmp(ptr %14, ptr %ptr, i32 %bytes) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %tobool5.not.4 = icmp eq i32 %bcmp.4, 0
  br i1 %tobool5.not.4, label %land.lhs.true.4.for.end_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %if.else.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %j.1.4 = phi i32 [ %j.1.3, %land.lhs.true.4.for.inc.4_crit_edge ], [ %j.1.3, %if.else.4.for.inc.4_crit_edge ], [ 4, %for.inc.3.for.inc.4_crit_edge ]
  %15 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.5 = icmp eq i32 %15, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.else.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

if.else.5:                                        ; preds = %for.inc.4
  %16 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %bytes)
  %cmp2.5 = icmp eq i32 %16, %bytes
  br i1 %cmp2.5, label %land.lhs.true.5, label %if.else.5.for.inc.5_crit_edge

if.else.5.for.inc.5_crit_edge:                    ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.else.5
  %17 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 5), align 4
  %bcmp.5 = tail call i32 @bcmp(ptr %17, ptr %ptr, i32 %bytes) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5)
  %tobool5.not.5 = icmp eq i32 %bcmp.5, 0
  br i1 %tobool5.not.5, label %land.lhs.true.5.for.end_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %if.else.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %j.1.5 = phi i32 [ %j.1.4, %land.lhs.true.5.for.inc.5_crit_edge ], [ %j.1.4, %if.else.5.for.inc.5_crit_edge ], [ 5, %for.inc.4.for.inc.5_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.6 = icmp eq i32 %18, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.else.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

if.else.6:                                        ; preds = %for.inc.5
  %19 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %bytes)
  %cmp2.6 = icmp eq i32 %19, %bytes
  br i1 %cmp2.6, label %land.lhs.true.6, label %if.else.6.for.inc.6_crit_edge

if.else.6.for.inc.6_crit_edge:                    ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.else.6
  %20 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 6), align 4
  %bcmp.6 = tail call i32 @bcmp(ptr %20, ptr %ptr, i32 %bytes) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.6)
  %tobool5.not.6 = icmp eq i32 %bcmp.6, 0
  br i1 %tobool5.not.6, label %land.lhs.true.6.for.end_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %if.else.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %j.1.6 = phi i32 [ %j.1.5, %land.lhs.true.6.for.inc.6_crit_edge ], [ %j.1.5, %if.else.6.for.inc.6_crit_edge ], [ 6, %for.inc.5.for.inc.6_crit_edge ]
  %21 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.7 = icmp eq i32 %21, 0
  br i1 %tobool.not.7, label %for.inc.6.if.then15_crit_edge, label %if.else.7

for.inc.6.if.then15_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15

if.else.7:                                        ; preds = %for.inc.6
  %22 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %bytes)
  %cmp2.7 = icmp eq i32 %22, %bytes
  br i1 %cmp2.7, label %land.lhs.true.7, label %if.else.7.land.lhs.true13_crit_edge

if.else.7.land.lhs.true13_crit_edge:              ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true13

land.lhs.true.7:                                  ; preds = %if.else.7
  %23 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 7), align 4
  %bcmp.7 = tail call i32 @bcmp(ptr %23, ptr %ptr, i32 %bytes) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.7)
  %tobool5.not.7 = icmp eq i32 %bcmp.7, 0
  br i1 %tobool5.not.7, label %land.lhs.true.7.for.end_crit_edge, label %land.lhs.true.7.land.lhs.true13_crit_edge

land.lhs.true.7.land.lhs.true13_crit_edge:        ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true13

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %land.lhs.true.6.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %j.045.lcssa = phi i32 [ -1, %land.lhs.true.for.end_crit_edge ], [ %j.1, %land.lhs.true.1.for.end_crit_edge ], [ %j.1.1, %land.lhs.true.2.for.end_crit_edge ], [ %j.1.2, %land.lhs.true.3.for.end_crit_edge ], [ %j.1.3, %land.lhs.true.4.for.end_crit_edge ], [ %j.1.4, %land.lhs.true.5.for.end_crit_edge ], [ %j.1.5, %land.lhs.true.6.for.end_crit_edge ], [ %j.1.6, %land.lhs.true.7.for.end_crit_edge ]
  %cnt.lcssa = phi ptr [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 0, i32 2), %land.lhs.true.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 1, i32 2), %land.lhs.true.1.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 2, i32 2), %land.lhs.true.2.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 3, i32 2), %land.lhs.true.3.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 4, i32 2), %land.lhs.true.4.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 5, i32 2), %land.lhs.true.5.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 6, i32 2), %land.lhs.true.6.for.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 7, i32 2), %land.lhs.true.7.for.end_crit_edge ]
  %.lcssa46 = phi i32 [ %0, %land.lhs.true.for.end_crit_edge ], [ %3, %land.lhs.true.1.for.end_crit_edge ], [ %6, %land.lhs.true.2.for.end_crit_edge ], [ %9, %land.lhs.true.3.for.end_crit_edge ], [ %12, %land.lhs.true.4.for.end_crit_edge ], [ %15, %land.lhs.true.5.for.end_crit_edge ], [ %18, %land.lhs.true.6.for.end_crit_edge ], [ %21, %land.lhs.true.7.for.end_crit_edge ]
  %.lcssa = phi ptr [ %2, %land.lhs.true.for.end_crit_edge ], [ %5, %land.lhs.true.1.for.end_crit_edge ], [ %8, %land.lhs.true.2.for.end_crit_edge ], [ %11, %land.lhs.true.3.for.end_crit_edge ], [ %14, %land.lhs.true.4.for.end_crit_edge ], [ %17, %land.lhs.true.5.for.end_crit_edge ], [ %20, %land.lhs.true.6.for.end_crit_edge ], [ %23, %land.lhs.true.7.for.end_crit_edge ]
  %add = add i32 %.lcssa46, 1
  %24 = ptrtoint ptr %cnt.lcssa to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %cnt.lcssa, align 4
  %tobool12.not = icmp eq ptr %.lcssa, null
  br i1 %tobool12.not, label %for.end.land.lhs.true13_crit_edge, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

for.end.land.lhs.true13_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true13

land.lhs.true13:                                  ; preds = %for.end.land.lhs.true13_crit_edge, %land.lhs.true.7.land.lhs.true13_crit_edge, %if.else.7.land.lhs.true13_crit_edge
  %j.041 = phi i32 [ %j.045.lcssa, %for.end.land.lhs.true13_crit_edge ], [ %j.1.6, %land.lhs.true.7.land.lhs.true13_crit_edge ], [ %j.1.6, %if.else.7.land.lhs.true13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.041)
  %cmp14.not = icmp eq i32 %j.041, -1
  br i1 %cmp14.not, label %land.lhs.true13.if.end22_crit_edge, label %land.lhs.true13.if.then15_crit_edge

land.lhs.true13.if.then15_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then15

land.lhs.true13.if.end22_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then15:                                        ; preds = %land.lhs.true13.if.then15_crit_edge, %for.inc.6.if.then15_crit_edge
  %j.04152 = phi i32 [ %j.041, %land.lhs.true13.if.then15_crit_edge ], [ 7, %for.inc.6.if.then15_crit_edge ]
  %arrayidx16 = getelementptr [8 x %struct.anon.92], ptr @s_shared, i32 0, i32 %j.04152
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ptr, ptr %arrayidx16, align 4
  %len19 = getelementptr [8 x %struct.anon.92], ptr @s_shared, i32 0, i32 %j.04152, i32 1
  %26 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %bytes, ptr %len19, align 4
  %cnt21 = getelementptr [8 x %struct.anon.92], ptr @s_shared, i32 0, i32 %j.04152, i32 2
  %27 = ptrtoint ptr %cnt21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cnt21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %land.lhs.true13.if.end22_crit_edge, %for.end.if.end22_crit_edge
  %ret.1 = phi ptr [ %.lcssa, %for.end.if.end22_crit_edge ], [ %ptr, %if.then15 ], [ null, %land.lhs.true13.if.end22_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @s_shared_lock) #17
  ret ptr %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_put_shared(ptr noundef readnone %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @s_shared_lock) #17
  %0 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @s_shared, align 4
  %cmp3 = icmp eq ptr %1, %ptr
  br i1 %cmp3, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.7.if.then_crit_edge, %land.lhs.true.6.if.then_crit_edge, %land.lhs.true.5.if.then_crit_edge, %land.lhs.true.4.if.then_crit_edge, %land.lhs.true.3.if.then_crit_edge, %land.lhs.true.2.if.then_crit_edge, %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %cnt.lcssa = phi ptr [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 0, i32 2), %land.lhs.true.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 1, i32 2), %land.lhs.true.1.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 2, i32 2), %land.lhs.true.2.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 3, i32 2), %land.lhs.true.3.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 4, i32 2), %land.lhs.true.4.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 5, i32 2), %land.lhs.true.5.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 6, i32 2), %land.lhs.true.6.if.then_crit_edge ], [ getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 7, i32 2), %land.lhs.true.7.if.then_crit_edge ]
  %.lcssa = phi i32 [ %0, %land.lhs.true.if.then_crit_edge ], [ %3, %land.lhs.true.1.if.then_crit_edge ], [ %5, %land.lhs.true.2.if.then_crit_edge ], [ %7, %land.lhs.true.3.if.then_crit_edge ], [ %9, %land.lhs.true.4.if.then_crit_edge ], [ %11, %land.lhs.true.5.if.then_crit_edge ], [ %13, %land.lhs.true.6.if.then_crit_edge ], [ %15, %land.lhs.true.7.if.then_crit_edge ]
  %dec = add i32 %.lcssa, -1
  %2 = ptrtoint ptr %cnt.lcssa to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %cnt.lcssa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool6.not = icmp eq i32 %dec, 0
  %spec.select = select i1 %tobool6.not, ptr %ptr, ptr null
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %3 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %4 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 1), align 4
  %cmp3.1 = icmp eq ptr %4, %ptr
  br i1 %cmp3.1, label %land.lhs.true.1.if.then_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %5 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.2 = icmp eq i32 %5, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %6 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 2), align 4
  %cmp3.2 = icmp eq ptr %6, %ptr
  br i1 %cmp3.2, label %land.lhs.true.2.if.then_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %7 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.3 = icmp eq i32 %7, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %8 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 3), align 4
  %cmp3.3 = icmp eq ptr %8, %ptr
  br i1 %cmp3.3, label %land.lhs.true.3.if.then_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

land.lhs.true.3.if.then_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %9 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.4 = icmp eq i32 %9, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %10 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 4), align 4
  %cmp3.4 = icmp eq ptr %10, %ptr
  br i1 %cmp3.4, label %land.lhs.true.4.if.then_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

land.lhs.true.4.if.then_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %11 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.5 = icmp eq i32 %11, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %12 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 5), align 4
  %cmp3.5 = icmp eq ptr %12, %ptr
  br i1 %cmp3.5, label %land.lhs.true.5.if.then_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

land.lhs.true.5.if.then_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %13 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.6 = icmp eq i32 %13, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %14 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 6), align 4
  %cmp3.6 = icmp eq ptr %14, %ptr
  br i1 %cmp3.6, label %land.lhs.true.6.if.then_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

land.lhs.true.6.if.then_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %15 = load i32, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.7 = icmp eq i32 %15, 0
  br i1 %tobool.not.7, label %for.inc.6.for.end_crit_edge, label %land.lhs.true.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

land.lhs.true.7:                                  ; preds = %for.inc.6
  %16 = load ptr, ptr getelementptr inbounds ([8 x %struct.anon.92], ptr @s_shared, i32 0, i32 7), align 4
  %cmp3.7 = icmp eq ptr %16, %ptr
  br i1 %cmp3.7, label %land.lhs.true.7.if.then_crit_edge, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

land.lhs.true.7.if.then_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

for.end:                                          ; preds = %land.lhs.true.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %if.then
  %ret.0 = phi ptr [ %spec.select, %if.then ], [ %ptr, %land.lhs.true.7.for.end_crit_edge ], [ %ptr, %for.inc.6.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @s_shared_lock) #17
  ret ptr %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_unmap_meta(ptr nocapture noundef readonly %sb, i32 noundef %lcn, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %blocks_per_cluster = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blocks_per_cluster, align 4
  %mul5 = mul i32 %5, %len
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %6 = load volatile i32, ptr @vm_zone_stat, align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #17
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits, align 4
  %conv7 = zext i8 %9 to i32
  %sub = sub nsw i32 12, %conv7
  %shl = shl i32 %7, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %shl)
  %cmp = icmp ugt i32 %shl, 8191
  %sub9 = add i32 %shl, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shl)
  %cmp10 = icmp ult i32 %shl, 32
  %shr = lshr i32 %shl, 1
  %spec.select = select i1 %cmp10, i32 32, i32 %shr
  %limit.0 = select i1 %cmp, i32 %sub9, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul5)
  %tobool.not30 = icmp eq i32 %mul5, 0
  br i1 %tobool.not30, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %conv1 = zext i32 %5 to i64
  %conv = zext i32 %lcn to i64
  %mul = mul nuw i64 %conv1, %conv
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.preheader
  %dec33.in = phi i32 [ %dec33, %if.end20.while.body_crit_edge ], [ %mul5, %while.body.preheader ]
  %cnt.032 = phi i32 [ %cnt.1, %if.end20.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %devblock.031 = phi i64 [ %inc, %if.end20.while.body_crit_edge ], [ %mul, %while.body.preheader ]
  %dec33 = add i32 %dec33.in, -1
  %inc = add nuw i64 %devblock.031, 1
  tail call void @clean_bdev_aliases(ptr noundef %3, i64 noundef %devblock.031, i64 noundef 1) #17
  %inc15 = add i32 %cnt.032, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.032, i32 %limit.0)
  %cmp16.not = icmp ult i32 %cnt.032, %limit.0
  br i1 %cmp16.not, label %while.body.if.end20_crit_edge, label %if.then18

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %call19 = tail call i32 @sync_blockdev(ptr noundef %3) #17
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.body.if.end20_crit_edge
  %cnt.1 = phi i32 [ 0, %if.then18 ], [ %inc15, %while.body.if.end20_crit_edge ]
  %tobool.not = icmp eq i32 %dec33, 0
  br i1 %tobool.not, label %if.end20.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_discard(ptr nocapture noundef %sbi, i32 noundef %lcn, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %next_free_lcn = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %next_free_lcn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_free_lcn, align 8
  %add = add i32 %len, %lcn
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp = icmp eq i32 %1, %add
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %next_free_lcn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %lcn, ptr %next_free_lcn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 34
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %options, align 4
  %discard = getelementptr inbounds %struct.ntfs_mount_options, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %discard to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %discard, align 4
  %8 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not = icmp eq i16 %8, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %conv = zext i32 %lcn to i64
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %9 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %10 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv9 = zext i32 %len to i64
  %discard_granularity = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 1
  %11 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %discard_granularity, align 4
  %conv14 = zext i32 %12 to i64
  %add15 = add nsw i64 %conv14, -1
  %sub = add i64 %add15, %shl
  %discard_granularity_mask_inv = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 2
  %13 = ptrtoint ptr %discard_granularity_mask_inv to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %discard_granularity_mask_inv, align 8
  %and16 = and i64 %sub, %14
  %15 = add nuw nsw i64 %conv9, %conv
  %add17 = shl i64 %15, %sh_prom
  %and19 = and i64 %add17, %14
  call void @__sanitizer_cov_trace_cmp8(i64 %and19, i64 %and16)
  %cmp21.not = icmp ugt i64 %and19, %and16
  br i1 %cmp21.not, label %if.end24, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %if.end7
  %16 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sbi, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_bdev, align 4
  %shr = lshr i64 %and16, 9
  %sub25 = sub i64 %and19, %and16
  %shr26 = lshr i64 %sub25, 9
  %call = tail call i32 @blkdev_issue_discard(ptr noundef %19, i64 noundef %shr, i64 noundef %shr26, i32 noundef 3136, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp27 = icmp eq i32 %call, -95
  br i1 %cmp27, label %if.then29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %or = or i32 %21, 1
  store i32 %or, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end24.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -95, %if.then29 ], [ %call, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ntfs_fs() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = load ptr, ptr @ntfs_inode_cachep, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rcu_barrier() #17
  %1 = load ptr, ptr @ntfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @ntfs_fs_type) #17
  tail call void @ntfs3_exit_bitmap() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs3_exit_bitmap() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ntfs_fs() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef 4000) #20
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #20
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #20
  %call11 = tail call i32 @ntfs3_init_bitmap() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.89, i32 noundef 1144, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #17
  store ptr %call12, ptr @ntfs_inode_cachep, align 4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end.out1_crit_edge, label %if.end15

if.end.out1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out1

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @register_filesystem(ptr noundef nonnull @ntfs_fs_type) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %out

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out:                                              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %0 = load ptr, ptr @ntfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #17
  br label %out1

out1:                                             ; preds = %out, %if.end.out1_crit_edge
  %err.0 = phi i32 [ %call16, %out ], [ -12, %if.end.out1_crit_edge ]
  tail call void @ntfs3_exit_bitmap() #17
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out1 ], [ %call11, %entry.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 24) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %fs_uid = getelementptr inbounds %struct.ntfs_mount_options, ptr %call7.i.i, i32 0, i32 2
  %1 = tail call i32 @llvm.read_register.i32(metadata !222) #17
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
  %uid = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uid, align 4
  %9 = ptrtoint ptr %fs_uid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fs_uid, align 8
  %fs_gid = getelementptr inbounds %struct.ntfs_mount_options, ptr %call7.i.i, i32 0, i32 3
  %10 = load ptr, ptr %task, align 8
  %cred8 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred8, align 16
  %gid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gid, align 4
  %15 = ptrtoint ptr %fs_gid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %fs_gid, align 4
  %call9 = tail call i32 @current_umask() #17
  %16 = trunc i32 %call9 to i16
  %conv = xor i16 %16, -1
  %fs_fmask_inv = getelementptr inbounds %struct.ntfs_mount_options, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %fs_fmask_inv to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %fs_fmask_inv, align 8
  %call10 = tail call i32 @current_umask() #17
  %18 = trunc i32 %call10 to i16
  %conv12 = xor i16 %18, -1
  %fs_dmask_inv = getelementptr inbounds %struct.ntfs_mount_options, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %fs_dmask_inv to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv12, ptr %fs_dmask_inv, align 2
  %purpose = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 17
  %20 = ptrtoint ptr %purpose to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %purpose, align 4
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 33554432
  br i1 %cmp, label %if.end.ok_crit_edge, label %if.end15

if.end.ok_crit_edge:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %ok

if.end15:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3392, i32 noundef 1528) #21
  %tobool17.not = icmp eq ptr %call7.i.i56, null
  br i1 %tobool17.not, label %if.end15.free_opts_crit_edge, label %if.end19

if.end15.free_opts_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_opts

if.end19:                                         ; preds = %if.end15
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 131072, i32 noundef 3264, i32 noundef -1) #23
  %upcase = getelementptr inbounds %struct.ntfs_sb_info, ptr %call7.i.i56, i32 0, i32 26
  %22 = ptrtoint ptr %upcase to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %upcase, align 4
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %free_sbi, label %if.end24

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %msg_ratelimit = getelementptr inbounds %struct.ntfs_sb_info, ptr %call7.i.i56, i32 0, i32 35
  %23 = call ptr @memset(ptr %msg_ratelimit, i32 0, i32 68)
  tail call void @__raw_spin_lock_init(ptr noundef %msg_ratelimit, ptr noundef nonnull @.str.15, ptr noundef nonnull @ratelimit_state_init.__key, i16 noundef signext 2) #17
  %interval1.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %call7.i.i56, i32 0, i32 35, i32 1
  %24 = ptrtoint ptr %interval1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 500, ptr %interval1.i, align 4
  %burst2.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %call7.i.i56, i32 0, i32 35, i32 2
  %25 = ptrtoint ptr %burst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %burst2.i, align 8
  %compress = getelementptr inbounds %struct.ntfs_sb_info, ptr %call7.i.i56, i32 0, i32 33
  tail call void @__mutex_init(ptr noundef %compress, ptr noundef nonnull @.str.10, ptr noundef nonnull @ntfs_init_fs_context.__key) #17
  %mtx_xpress = getelementptr inbounds %struct.ntfs_sb_info, ptr %call7.i.i56, i32 0, i32 33, i32 2
  tail call void @__mutex_init(ptr noundef %mtx_xpress, ptr noundef nonnull @.str.12, ptr noundef nonnull @ntfs_init_fs_context.__key.11) #17
  %mtx_lzx = getelementptr inbounds %struct.ntfs_sb_info, ptr %call7.i.i56, i32 0, i32 33, i32 4
  tail call void @__mutex_init(ptr noundef %mtx_lzx, ptr noundef nonnull @.str.14, ptr noundef nonnull @ntfs_init_fs_context.__key.13) #17
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %call7.i.i56, i32 0, i32 34
  %26 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %options, align 4
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %27 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i56, ptr %s_fs_info, align 4
  br label %ok

ok:                                               ; preds = %if.end24, %if.end.ok_crit_edge
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %28 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %29 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ntfs_context_ops, ptr %fc, align 4
  br label %cleanup

free_sbi:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i56) #17
  br label %free_opts

free_opts:                                        ; preds = %free_sbi, %if.end15.free_opts_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %free_opts, %ok, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ok ], [ -12, %free_opts ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntfs_fs_free(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @put_ntfs(ptr noundef nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %5) #17
  %nls.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nls.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nls.i, align 4
  tail call void @unload_nls(ptr noundef %7) #17
  tail call void @kfree(ptr noundef nonnull %1) #17
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_fs_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #17
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @ntfs_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb31
    i32 3, label %sw.bb41
    i32 4, label %sw.bb55
    i32 5, label %sw.bb69
    i32 6, label %sw.bb75
    i32 7, label %sw.bb86
    i32 8, label %sw.bb97
    i32 9, label %sw.bb108
    i32 11, label %sw.bb119
    i32 10, label %sw.bb126
    i32 12, label %sw.bb137
    i32 13, label %sw.bb139
    i32 14, label %sw.bb150
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %fs_uid = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 2
  %4 = call i32 @llvm.read_register.i32(metadata !222) #17
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
  %user_ns = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  %12 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %call4 = call i32 @make_kuid(ptr noundef %11, i32 noundef %14) #17
  %15 = ptrtoint ptr %fs_uid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call4, ptr %fs_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -1
  br i1 %cmp.i.not, label %if.then8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %log9 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %log9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log9, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %17, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.16) #17
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %fs_gid = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 3
  %18 = call i32 @llvm.read_register.i32(metadata !222) #17
  %and.i196 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i196 to ptr
  %task19 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task19, align 8
  %cred20 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred20, align 16
  %user_ns21 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %user_ns21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_ns21, align 4
  %26 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %call22 = call i32 @make_kgid(ptr noundef %25, i32 noundef %28) #17
  %29 = ptrtoint ptr %fs_gid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call22, ptr %fs_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp.i197.not = icmp eq i32 %call22, -1
  br i1 %cmp.i197.not, label %if.then27, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then27:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #19
  %log29 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %log29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %log29, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %31, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.18) #17
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %32 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %34)
  %tobool.not = icmp ult i32 %34, 4096
  br i1 %tobool.not, label %if.end35, label %if.then32

if.then32:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #19
  %log34 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %log34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %log34, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %36, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.19) #17
  br label %cleanup

if.end35:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #19
  %37 = trunc i32 %34 to i16
  %conv = xor i16 %37, -1
  %fs_fmask_inv = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %fs_fmask_inv to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv, ptr %fs_fmask_inv, align 4
  %fs_dmask_inv = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %fs_dmask_inv to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv, ptr %fs_dmask_inv, align 2
  %fmask = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %fmask, align 4
  %bf.set40 = or i16 %bf.load, -16384
  store i16 %bf.set40, ptr %fmask, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  %41 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %43)
  %tobool43.not = icmp ult i32 %43, 4096
  br i1 %tobool43.not, label %if.end47, label %if.then44

if.then44:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #19
  %log46 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %log46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %log46, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %45, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.20) #17
  br label %cleanup

if.end47:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #19
  %46 = trunc i32 %43 to i16
  %conv49 = xor i16 %46, -1
  %fs_dmask_inv50 = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %fs_dmask_inv50 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv49, ptr %fs_dmask_inv50, align 2
  %dmask51 = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %dmask51 to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load52 = load i16, ptr %dmask51, align 4
  %bf.set54 = or i16 %bf.load52, 16384
  store i16 %bf.set54, ptr %dmask51, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %if.end
  %49 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %51)
  %tobool57.not = icmp ult i32 %51, 4096
  br i1 %tobool57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #19
  %log60 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %log60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %log60, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %53, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.21) #17
  br label %cleanup

if.end61:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #19
  %54 = trunc i32 %51 to i16
  %conv63 = xor i16 %54, -1
  %fs_fmask_inv64 = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %fs_fmask_inv64 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv63, ptr %fs_fmask_inv64, align 4
  %fmask65 = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %fmask65 to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load66 = load i16, ptr %fmask65, align 4
  %bf.set68 = or i16 %bf.load66, -32768
  store i16 %bf.set68, ptr %fmask65, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %57 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %result, align 8, !range !237
  %sys_immutable = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %sys_immutable to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load72 = load i16, ptr %sys_immutable, align 4
  %60 = xor i8 %58, 1
  %bf.value = zext i8 %60 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 13
  %bf.clear73 = and i16 %bf.load72, -8193
  %bf.set74 = or i16 %bf.shl, %bf.clear73
  store i16 %bf.set74, ptr %sys_immutable, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %61 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %result, align 8, !range !237
  %discard = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %discard to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load80 = load i16, ptr %discard, align 4
  %64 = xor i8 %62, 1
  %bf.value81 = zext i8 %64 to i16
  %bf.shl82 = shl nuw nsw i16 %bf.value81, 12
  %bf.clear83 = and i16 %bf.load80, -4097
  %bf.set84 = or i16 %bf.shl82, %bf.clear83
  store i16 %bf.set84, ptr %discard, align 4
  br label %cleanup

sw.bb86:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %65 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %result, align 8, !range !237
  %force = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %force to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load91 = load i16, ptr %force, align 4
  %68 = xor i8 %66, 1
  %bf.value92 = zext i8 %68 to i16
  %bf.shl93 = shl nuw nsw i16 %bf.value92, 8
  %bf.clear94 = and i16 %bf.load91, -257
  %bf.set95 = or i16 %bf.shl93, %bf.clear94
  store i16 %bf.set95, ptr %force, align 4
  br label %cleanup

sw.bb97:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %result, align 8, !range !237
  %sparse = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %71 = ptrtoint ptr %sparse to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load102 = load i16, ptr %sparse, align 4
  %72 = xor i8 %70, 1
  %bf.value103 = zext i8 %72 to i16
  %bf.shl104 = shl nuw nsw i16 %bf.value103, 11
  %bf.clear105 = and i16 %bf.load102, -2049
  %bf.set106 = or i16 %bf.shl104, %bf.clear105
  store i16 %bf.set106, ptr %sparse, align 4
  br label %cleanup

sw.bb108:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %73 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %result, align 8, !range !237
  %nohidden = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %75 = zext i8 %74 to i16
  %76 = ptrtoint ptr %nohidden to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load113 = load i16, ptr %nohidden, align 4
  %bf.shl115 = shl nuw nsw i16 %75, 9
  %bf.clear116 = and i16 %bf.load113, -513
  %bf.set117 = or i16 %bf.clear116, %bf.shl115
  store i16 %bf.set117, ptr %nohidden, align 4
  br label %cleanup

sw.bb119:                                         ; preds = %if.end
  %77 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %result, align 8, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool121.not = icmp eq i8 %78, 0
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %79 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sb_flags, align 4
  br i1 %tobool121.not, label %if.then122, label %if.else

if.then122:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %80, 65536
  %81 = ptrtoint ptr %sb_flags to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or, ptr %sb_flags, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #19
  %and124 = and i32 %80, -65537
  %82 = ptrtoint ptr %sb_flags to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and124, ptr %sb_flags, align 4
  br label %cleanup

sw.bb126:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %83 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %result, align 8, !range !237
  %showmeta = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %85 = ptrtoint ptr %showmeta to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load131 = load i16, ptr %showmeta, align 4
  %86 = xor i8 %84, 1
  %bf.value132 = zext i8 %86 to i16
  %bf.shl133 = shl nuw nsw i16 %bf.value132, 10
  %bf.clear134 = and i16 %bf.load131, -1025
  %bf.set135 = or i16 %bf.shl133, %bf.clear134
  store i16 %bf.set135, ptr %showmeta, align 4
  br label %cleanup

sw.bb137:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  call void @kfree(ptr noundef %88) #17
  %89 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %1, align 4
  store ptr null, ptr %89, align 4
  br label %cleanup

sw.bb139:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %93 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %result, align 8, !range !237
  %prealloc = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %95 = ptrtoint ptr %prealloc to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load144 = load i16, ptr %prealloc, align 4
  %96 = shl nuw nsw i8 %94, 6
  %97 = xor i8 %96, 64
  %bf.shl146 = zext i8 %97 to i16
  %bf.clear147 = and i16 %bf.load144, -65
  %bf.set148 = or i16 %bf.clear147, %bf.shl146
  store i16 %bf.set148, ptr %prealloc, align 4
  br label %cleanup

sw.bb150:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %98 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %result, align 8, !range !237
  %noacsrules = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 6
  %100 = ptrtoint ptr %noacsrules to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load155 = load i16, ptr %noacsrules, align 4
  %101 = shl nuw i8 %99, 7
  %bf.shl157 = zext i8 %101 to i16
  %bf.clear158 = and i16 %bf.load155, -129
  %bf.set159 = or i16 %bf.clear158, %bf.shl157
  store i16 %bf.set159, ptr %noacsrules, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb150, %sw.bb139, %sw.bb137, %sw.bb126, %if.else, %if.then122, %sw.bb108, %sw.bb97, %sw.bb86, %sw.bb75, %sw.bb69, %if.end61, %if.then58, %if.end47, %if.then44, %if.end35, %if.then32, %if.then27, %sw.bb11.cleanup_crit_edge, %if.then8, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then58 ], [ -22, %if.then44 ], [ -22, %if.then32 ], [ -22, %if.then27 ], [ -22, %if.then8 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then122 ], [ 0, %if.else ], [ 0, %sw.bb11.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb150 ], [ 0, %sw.bb139 ], [ 0, %sw.bb137 ], [ 0, %sw.bb126 ], [ 0, %sw.bb108 ], [ 0, %sw.bb97 ], [ 0, %sw.bb86 ], [ 0, %sw.bb75 ], [ 0, %sw.bb69 ], [ 0, %if.end61 ], [ 0, %if.end47 ], [ 0, %if.end35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_fs_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_bdev(ptr noundef %fc, ptr noundef nonnull @ntfs_fill_super) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_fs_reconfigure(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_private, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.end:                                         ; preds = %entry
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %10 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %land.end
  %flags = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and2 = and i32 %13, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %log4 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %log4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log4, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %15, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.62) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.end.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = phi i1 [ true, %land.lhs.true.if.end_crit_edge ], [ false, %land.end.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %18, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr @.str.51, ptr %18
  %call.i = tail call i32 @strcmp(ptr noundef %spec.store.select.i, ptr noundef nonnull dereferenceable(5) @.str.52) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %ntfs_load_nls.exit.thread60, label %if.end2.i

ntfs_load_nls.exit.thread60:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %nls62 = getelementptr inbounds %struct.ntfs_mount_options, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %nls62 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %nls62, align 4
  br label %if.end13

if.end2.i:                                        ; preds = %if.end
  %call3.i = tail call i32 @strcmp(ptr noundef %spec.store.select.i, ptr noundef nonnull dereferenceable(10) @.str.51) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  %call6.i = tail call ptr @load_nls_default() #17
  br label %ntfs_load_nls.exit

if.end7.i:                                        ; preds = %if.end2.i
  %call8.i = tail call ptr @load_nls(ptr noundef %spec.store.select.i) #17
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %ntfs_load_nls.exit.thread, label %if.end7.i.ntfs_load_nls.exit_crit_edge

if.end7.i.ntfs_load_nls.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_load_nls.exit

ntfs_load_nls.exit.thread:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %nls57 = getelementptr inbounds %struct.ntfs_mount_options, ptr %7, i32 0, i32 1
  br label %if.then8

ntfs_load_nls.exit:                               ; preds = %if.end7.i.ntfs_load_nls.exit_crit_edge, %if.then5.i
  %retval.0.i = phi ptr [ %call6.i, %if.then5.i ], [ %call8.i, %if.end7.i.ntfs_load_nls.exit_crit_edge ]
  %nls = getelementptr inbounds %struct.ntfs_mount_options, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %nls to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %nls, align 4
  %cmp.i55 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %ntfs_load_nls.exit.if.then8_crit_edge, label %ntfs_load_nls.exit.if.end13_crit_edge

ntfs_load_nls.exit.if.end13_crit_edge:            ; preds = %ntfs_load_nls.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

ntfs_load_nls.exit.if.then8_crit_edge:            ; preds = %ntfs_load_nls.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.then8:                                         ; preds = %ntfs_load_nls.exit.if.then8_crit_edge, %ntfs_load_nls.exit.thread
  %nls59 = phi ptr [ %nls57, %ntfs_load_nls.exit.thread ], [ %nls, %ntfs_load_nls.exit.if.then8_crit_edge ]
  %21 = ptrtoint ptr %nls59 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %nls59, align 4
  %log11 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %log11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %log11, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %23, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.63, ptr noundef %25) #17
  br label %cleanup

if.end13:                                         ; preds = %ntfs_load_nls.exit.if.end13_crit_edge, %ntfs_load_nls.exit.thread60
  %retval.0.i64 = phi ptr [ null, %ntfs_load_nls.exit.thread60 ], [ %retval.0.i, %ntfs_load_nls.exit.if.end13_crit_edge ]
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 34
  %26 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %options, align 4
  %nls15 = getelementptr inbounds %struct.ntfs_mount_options, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %nls15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nls15, align 4
  %cmp.not = icmp eq ptr %retval.0.i64, %29
  br i1 %cmp.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %log18 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %log18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %log18, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %31, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.64) #17
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call20 = tail call i32 @sync_filesystem(ptr noundef %3) #17
  br i1 %16, label %land.lhs.true22, label %if.end19.if.end31_crit_edge

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true22:                                  ; preds = %if.end19
  %flags23 = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 29, i32 4
  %32 = ptrtoint ptr %flags23 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags23, align 4
  %34 = and i16 %33, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool25.not = icmp eq i16 %34, 0
  br i1 %tobool25.not, label %land.lhs.true22.if.end31_crit_edge, label %land.lhs.true26

land.lhs.true22.if.end31_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true26:                                  ; preds = %land.lhs.true22
  %force = getelementptr inbounds %struct.ntfs_mount_options, ptr %7, i32 0, i32 6
  %35 = ptrtoint ptr %force to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %force, align 4
  %36 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool27.not = icmp eq i16 %36, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true26.if.end31_crit_edge

land.lhs.true26.if.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  %log30 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %log30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %log30, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %38, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.65) #17
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true26.if.end31_crit_edge, %land.lhs.true22.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %39 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %options, align 4
  %41 = call ptr @memcpy(ptr %40, ptr %7, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then28, %if.then16, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then8 ], [ -22, %if.then16 ], [ 0, %if.end31 ], [ -22, %if.then28 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ntfs(ptr noundef %sbi) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %new_rec = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 25
  %0 = ptrtoint ptr %new_rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %new_rec, align 8
  tail call void @kfree(ptr noundef %1) #17
  %upcase = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 26
  %2 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upcase, align 4
  %call = tail call ptr @ntfs_put_shared(ptr noundef %3)
  tail call void @kvfree(ptr noundef %call) #17
  %def_table = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 22
  %4 = ptrtoint ptr %def_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %def_table, align 4
  tail call void @kfree(ptr noundef %5) #17
  %bitmap = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 3
  tail call void @wnd_close(ptr noundef %bitmap) #17
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28
  tail call void @wnd_close(ptr noundef %used) #17
  %ni = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 27, i32 2
  %6 = ptrtoint ptr %ni to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ni, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %7, i32 0, i32 11
  tail call void @iput(ptr noundef %vfs_inode) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ni5 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 2
  %8 = ptrtoint ptr %ni5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ni5, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %vfs_inode10 = getelementptr inbounds %struct.ntfs_inode, ptr %9, i32 0, i32 11
  tail call void @iput(ptr noundef %vfs_inode10) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %ni12 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31, i32 1
  %10 = ptrtoint ptr %ni12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ni12, align 8
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %if.then14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %vfs_inode17 = getelementptr inbounds %struct.ntfs_inode, ptr %11, i32 0, i32 11
  tail call void @iput(ptr noundef %vfs_inode17) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  %ni19 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 32, i32 1
  %12 = ptrtoint ptr %ni19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ni19, align 8
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.end18.if.end25_crit_edge, label %if.then21

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %vfs_inode24 = getelementptr inbounds %struct.ntfs_inode, ptr %13, i32 0, i32 11
  tail call void @iput(ptr noundef %vfs_inode24) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18.if.end25_crit_edge
  %ni26 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 29, i32 3
  %14 = ptrtoint ptr %ni26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ni26, align 8
  %tobool27.not = icmp eq ptr %15, null
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %vfs_inode31 = getelementptr inbounds %struct.ntfs_inode, ptr %15, i32 0, i32 11
  tail call void @iput(ptr noundef %vfs_inode31) #17
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end25.if.end32_crit_edge
  %objid = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 32
  %reparse = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31
  %security = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30
  %call33 = tail call i32 @ntfs_update_mftmirr(ptr noundef %sbi, i32 noundef 0) #17
  tail call void @indx_clear(ptr noundef %security) #17
  %index_sdh = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 30, i32 1
  tail call void @indx_clear(ptr noundef %index_sdh) #17
  tail call void @indx_clear(ptr noundef %reparse) #17
  tail call void @indx_clear(ptr noundef %objid) #17
  %lznt = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 33, i32 1
  %16 = ptrtoint ptr %lznt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lznt, align 4
  tail call void @kfree(ptr noundef %17) #17
  %xpress = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 33, i32 3
  %18 = ptrtoint ptr %xpress to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xpress, align 4
  tail call void @xpress_free_decompressor(ptr noundef %19) #17
  %lzx = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 33, i32 5
  %20 = ptrtoint ptr %lzx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lzx, align 4
  tail call void @lzx_free_decompressor(ptr noundef %21) #17
  tail call void @kfree(ptr noundef %sbi) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wnd_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_update_mftmirr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @indx_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xpress_free_decompressor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lzx_free_decompressor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_fill_super(ptr noundef %sb, ptr nocapture noundef %fc) #0 align 64 {
entry:
  %vcn = alloca i32, align 4
  %lcn = alloca i32, align 4
  %len = alloca i32, align 4
  %ref = alloca %struct.MFT_REF, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #17
  %4 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vcn, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #17
  %5 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %lcn, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #17
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %len, align 4, !annotation !232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #17
  %7 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %8 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %9 = ptrtoint ptr %ref to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %ref, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %7, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sb, ptr %1, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %or = or i32 %13, 2048
  store i32 %or, ptr %s_flags, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %14 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1936094318, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %15 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ntfs_sops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %16 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ntfs_export_ops, ptr %s_export_op, align 16
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %17 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %s_time_gran, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %18 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ntfs_xattr_handlers, ptr %s_xattr, align 16
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 34
  %19 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %options, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i = icmp eq ptr %22, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr @.str.51, ptr %22
  %call.i = tail call i32 @strcmp(ptr noundef %spec.store.select.i, ptr noundef nonnull dereferenceable(5) @.str.52) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i586 = icmp eq i32 %call.i, 0
  br i1 %cmp.i586, label %entry.ntfs_load_nls.exit_crit_edge, label %if.end2.i

entry.ntfs_load_nls.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_load_nls.exit

if.end2.i:                                        ; preds = %entry
  %call3.i = tail call i32 @strcmp(ptr noundef %spec.store.select.i, ptr noundef nonnull dereferenceable(10) @.str.51) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  %call6.i = tail call ptr @load_nls_default() #17
  br label %ntfs_load_nls.exit

if.end7.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i = tail call ptr @load_nls(ptr noundef %spec.store.select.i) #17
  %tobool9.not.i = icmp eq ptr %call8.i, null
  %spec.select.i = select i1 %tobool9.not.i, ptr inttoptr (i32 -22 to ptr), ptr %call8.i
  br label %ntfs_load_nls.exit

ntfs_load_nls.exit:                               ; preds = %if.end7.i, %if.then5.i, %entry.ntfs_load_nls.exit_crit_edge
  %retval.0.i = phi ptr [ %call6.i, %if.then5.i ], [ null, %entry.ntfs_load_nls.exit_crit_edge ], [ %spec.select.i, %if.end7.i ]
  %23 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %options, align 4
  %nls = getelementptr inbounds %struct.ntfs_mount_options, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %nls to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i, ptr %nls, align 4
  %26 = load ptr, ptr %options, align 4
  %nls4 = getelementptr inbounds %struct.ntfs_mount_options, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %nls4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nls4, align 4
  %cmp.i587 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i587, label %if.then, label %if.end

if.then:                                          ; preds = %ntfs_load_nls.exit
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %nls4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %nls4, align 4
  %log8 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %log8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %log8, align 4
  %32 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %options, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %31, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.22, ptr noundef %35) #17
  br label %out

if.end:                                           ; preds = %ntfs_load_nls.exit
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %36 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %queue_flags, align 4
  %40 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not = icmp eq i32 %40, 0
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %37, i32 0, i32 37, i32 18
  %41 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %discard_granularity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool13.not = icmp eq i32 %42, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end19_crit_edge, label %if.then14

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %discard_granularity17 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %discard_granularity17 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %discard_granularity17, align 4
  %sub = add i32 %42, -1
  %conv = zext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %discard_granularity_mask_inv = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %discard_granularity_mask_inv to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %neg, ptr %discard_granularity_mask_inv, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %37, null
  br i1 %tobool20.not, label %if.end19.cond.end_crit_edge, label %queue_logical_block_size.exit

if.end19.cond.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

queue_logical_block_size.exit:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %logical_block_size.i = getelementptr inbounds %struct.request_queue, ptr %37, i32 0, i32 37, i32 9
  %45 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %logical_block_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool2.not.i = icmp eq i32 %46, 0
  %spec.select.i589 = select i1 %tobool2.not.i, i32 512, i32 %46
  br label %cond.end

cond.end:                                         ; preds = %queue_logical_block_size.exit, %if.end19.cond.end_crit_edge
  %cond = phi i32 [ %spec.select.i589, %queue_logical_block_size.exit ], [ 512, %if.end19.cond.end_crit_edge ]
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %48, 9
  %49 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info, align 16
  %shr.i591 = lshr i64 %shl.i, 12
  %volume.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 29
  %blocks.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 29, i32 1
  %51 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shr.i591, ptr %blocks.i, align 8
  %52 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_bdev, align 4
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %54 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = tail call ptr @__bread_gfp(ptr noundef %53, i64 noundef 0, i32 noundef %55, i32 noundef 8) #17
  %tobool.not.i.i592 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i592, label %ntfs_init_from_boot.exit.thread, label %if.end.i594

ntfs_init_from_boot.exit.thread:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.58, i64 noundef 0) #17
  br label %out

if.end.i594:                                      ; preds = %cond.end
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data.i, align 4
  %system_id.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %system_id.i, ptr noundef nonnull dereferenceable(8) @.str.53, i32 8) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool2.not.i593 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool2.not.i593, label %if.end4.i597, label %if.end.i594.ntfs_init_from_boot.exit.thread648_crit_edge

if.end.i594.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %if.end.i594
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

if.end4.i597:                                     ; preds = %if.end.i594
  %bytes_per_sector.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.NTFS_BOOT, ptr %57, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %59 to i32
  %shl.i595 = shl nuw nsw i32 %conv.i, 8
  %60 = ptrtoint ptr %bytes_per_sector.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bytes_per_sector.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool8.not.i = icmp eq i8 %61, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.i596 = icmp ugt i8 %59, 1
  %or.cond.i = select i1 %tobool8.not.i, i1 %cmp.i596, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.not.i.i = icmp ne i8 %59, 0
  %or.cond420.i = select i1 %or.cond.i, i1 %cmp.not.i.i, i1 false
  %62 = tail call i32 @llvm.ctpop.i32(i32 %shl.i595) #17, !range !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp1.i.i = icmp ult i32 %62, 2
  %or.cond421.i = select i1 %or.cond420.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond421.i, label %if.end13.i, label %if.end4.i597.ntfs_init_from_boot.exit.thread648_crit_edge

if.end4.i597.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %if.end4.i597
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

if.end13.i:                                       ; preds = %if.end4.i597
  %sectors_per_clusters.i.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 3
  %63 = ptrtoint ptr %sectors_per_clusters.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sectors_per_clusters.i.i, align 1
  %conv.i.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %64)
  %cmp.i.i598 = icmp ult i8 %64, -127
  %sub.i.i = sub nsw i32 0, %conv.i.i
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  %cond.i.i = select i1 %cmp.i.i598, i32 %conv.i.i, i32 %shl.i.i
  %65 = tail call i32 @llvm.ctpop.i32(i32 %cond.i.i) #17, !range !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %if.end17.i, label %if.end13.i.ntfs_init_from_boot.exit.thread648_crit_edge

if.end13.i.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

if.end17.i:                                       ; preds = %if.end13.i
  %mft_clst.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 16
  %67 = ptrtoint ptr %mft_clst.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %mft_clst.i, align 8
  %69 = tail call i64 @llvm.bswap.i64(i64 %68) #17
  %mft2_clst.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 17
  %70 = ptrtoint ptr %mft2_clst.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %mft2_clst.i, align 8
  %72 = tail call i64 @llvm.bswap.i64(i64 %71) #17
  %sectors_per_volume.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 15
  %73 = ptrtoint ptr %sectors_per_volume.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %sectors_per_volume.i, align 8
  %75 = tail call i64 @llvm.bswap.i64(i64 %74) #17
  %conv18.i = zext i32 %cond.i.i to i64
  %mul.i = mul i64 %69, %conv18.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %75)
  %cmp19.not.i = icmp ult i64 %mul.i, %75
  %mul24.i = mul i64 %72, %conv18.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul24.i, i64 %75)
  %cmp25.not.i = icmp ult i64 %mul24.i, %75
  %or.cond372.i = select i1 %cmp19.not.i, i1 %cmp25.not.i, i1 false
  br i1 %or.cond372.i, label %if.end28.i, label %if.end17.i.ntfs_init_from_boot.exit.thread648_crit_edge

if.end17.i.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

if.end28.i:                                       ; preds = %if.end17.i
  %record_size29.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 18
  %76 = ptrtoint ptr %record_size29.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %record_size29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp31.i = icmp slt i8 %77, 0
  br i1 %cmp31.i, label %land.lhs.true.i599, label %land.lhs.true43.i

land.lhs.true.i599:                               ; preds = %if.end28.i
  %conv30.i = sext i8 %77 to i32
  %sub.i = sub nsw i32 0, %conv30.i
  %shl35.i = shl i32 2, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %shl35.i)
  %cmp36.i = icmp ult i32 %shl35.i, 512
  br i1 %cmp36.i, label %land.lhs.true.i599.ntfs_init_from_boot.exit.thread648_crit_edge, label %land.lhs.true.i599.if.end48.i_crit_edge

land.lhs.true.i599.if.end48.i_crit_edge:          ; preds = %land.lhs.true.i599
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48.i

land.lhs.true.i599.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %land.lhs.true.i599
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

land.lhs.true43.i:                                ; preds = %if.end28.i
  %78 = tail call i8 @llvm.ctpop.i8(i8 %77) #17, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %79 = icmp eq i8 %78, 1
  br i1 %79, label %land.lhs.true43.i.if.end48.i_crit_edge, label %land.lhs.true43.i.ntfs_init_from_boot.exit.thread648_crit_edge

land.lhs.true43.i.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

land.lhs.true43.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48.i

if.end48.i:                                       ; preds = %land.lhs.true43.i.if.end48.i_crit_edge, %land.lhs.true.i599.if.end48.i_crit_edge
  %index_size.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 20
  %80 = ptrtoint ptr %index_size.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %index_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp50.i = icmp slt i8 %81, 0
  br i1 %cmp50.i, label %land.lhs.true52.i, label %land.lhs.true64.i

land.lhs.true52.i:                                ; preds = %if.end48.i
  %conv49.i = sext i8 %81 to i32
  %sub55.i = sub nsw i32 0, %conv49.i
  %shl56.i = shl i32 2, %sub55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %shl56.i)
  %cmp57.i = icmp ult i32 %shl56.i, 512
  br i1 %cmp57.i, label %land.lhs.true52.i.ntfs_init_from_boot.exit.thread648_crit_edge, label %land.lhs.true52.i.if.end69.i_crit_edge

land.lhs.true52.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69.i

land.lhs.true52.i.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

land.lhs.true64.i:                                ; preds = %if.end48.i
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81) #17, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %83 = icmp eq i8 %82, 1
  br i1 %83, label %land.lhs.true64.i.if.end69.i_crit_edge, label %land.lhs.true64.i.ntfs_init_from_boot.exit.thread648_crit_edge

land.lhs.true64.i.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

land.lhs.true64.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69.i

if.end69.i:                                       ; preds = %land.lhs.true64.i.if.end69.i_crit_edge, %land.lhs.true52.i.if.end69.i_crit_edge
  %conv70.i = zext i32 %shl.i595 to i64
  %mul71.i = mul i64 %75, %conv70.i
  %84 = ptrtoint ptr %volume.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %mul71.i, ptr %volume.i, align 8
  %add.i = add i64 %mul71.i, %conv70.i
  %shr.i.i = lshr i64 %add.i, 10
  %conv.i385.i = trunc i64 %shr.i.i to i32
  %and.i.i = and i32 %conv.i385.i, 1048575
  %mul.i.i = mul nuw nsw i32 %and.i.i, 100
  %add.i.i = add nuw nsw i32 %mul.i.i, 524287
  %shr1.i.i = lshr i32 %add.i.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 104333312, i32 %mul.i.i)
  %cmp.i386.i = icmp ugt i32 %mul.i.i, 104333312
  %spec.select.i.i600 = select i1 %cmp.i386.i, i32 99, i32 %shr1.i.i
  %shr3.i.i = lshr i32 %conv.i385.i, 20
  %sh.diff.i.i = lshr i64 %add.i, 30
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %shl.i387.i = and i32 %tr.sh.diff.i.i, -4096
  %or.i.i = or i32 %shr3.i.i, %shl.i387.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i595, i32 %cond)
  %cmp77.not.i = icmp eq i32 %shl.i595, %cond
  br i1 %cmp77.not.i, label %if.end69.i.if.end83.i_crit_edge, label %if.then79.i

if.end69.i.if.end83.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83.i

if.then79.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.54, i32 noundef %shl.i595, i32 noundef %cond) #17
  %sub80.i = add i32 %cond, -1
  %conv81.i = zext i32 %sub80.i to i64
  %add82.i = add i64 %shl.i, %conv81.i
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then79.i, %if.end69.i.if.end83.i_crit_edge
  %dev_size.addr.0.i = phi i64 [ %add82.i, %if.then79.i ], [ %shl.i, %if.end69.i.if.end83.i_crit_edge ]
  %mul84.i = mul i32 %cond.i.i, %shl.i595
  %cluster_size.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 3
  %85 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %mul84.i, ptr %cluster_size.i, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end83.i
  %size.addr.0.i.i = phi i32 [ %mul84.i, %if.end83.i ], [ %shr.i388.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %bits.0.i.i = phi i32 [ 8, %if.end83.i ], [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %bits.0.i.i, 1
  %shr.i388.i = lshr i32 %size.addr.0.i.i, 1
  %cmp.i389.i = icmp ugt i32 %size.addr.0.i.i, 513
  br i1 %cmp.i389.i, label %do.body.i.i.do.body.i.i_crit_edge, label %blksize_bits.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i

blksize_bits.exit.i:                              ; preds = %do.body.i.i
  %conv87.i = trunc i32 %inc.i.i to i8
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 10
  %86 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv87.i, ptr %cluster_bits.i, align 8
  %conv89.i = and i32 %inc.i.i, 255
  %sh_prom.i = zext i32 %conv89.i to i64
  %shl90.i = shl i64 %69, %sh_prom.i
  %mft.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 27
  %87 = ptrtoint ptr %mft.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %shl90.i, ptr %mft.i, align 8
  %shl94.i = shl i64 %72, %sh_prom.i
  %lbo2.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 27, i32 1
  %88 = ptrtoint ptr %lbo2.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %shl94.i, ptr %lbo2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul84.i, i32 %shl.i595)
  %cmp97.i = icmp ult i32 %mul84.i, %shl.i595
  br i1 %cmp97.i, label %blksize_bits.exit.i.ntfs_init_from_boot.exit.thread648_crit_edge, label %if.end100.i

blksize_bits.exit.i.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %blksize_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

if.end100.i:                                      ; preds = %blksize_bits.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul84.i, i32 %cond)
  %cmp102.i = icmp ult i32 %mul84.i, %cond
  br i1 %cmp102.i, label %if.then104.i, label %if.end106.i

if.then104.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.55, i32 noundef %mul84.i, i32 noundef %cond) #17
  br label %ntfs_init_from_boot.exit.thread648

if.end106.i:                                      ; preds = %if.end100.i
  %sub108.i = add i32 %mul84.i, -1
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 4
  %89 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub108.i, ptr %cluster_mask.i, align 4
  %conv110.i = zext i32 %sub108.i to i64
  %neg.i = xor i64 %conv110.i, -1
  %cluster_mask_inv.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 5
  %90 = ptrtoint ptr %cluster_mask_inv.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %neg.i, ptr %cluster_mask_inv.i, align 8
  %91 = ptrtoint ptr %record_size29.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %record_size29.i, align 8
  %conv112.i = sext i8 %92 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp113.i = icmp slt i8 %92, 0
  %sub117.i = sub nsw i32 0, %conv112.i
  %shl118.i = shl nuw i32 1, %sub117.i
  %shl123.i = shl i32 %conv112.i, %conv89.i
  %cond.i = select i1 %cmp113.i, i32 %shl118.i, i32 %shl123.i
  %record_size124.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 8
  %93 = ptrtoint ptr %record_size124.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %cond.i, ptr %record_size124.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cond.i)
  %cmp125.i = icmp ugt i32 %cond.i, 4096
  br i1 %cmp125.i, label %if.end106.i.ntfs_init_from_boot.exit.thread648_crit_edge, label %if.end106.i.do.body.i395.i_crit_edge

if.end106.i.do.body.i395.i_crit_edge:             ; preds = %if.end106.i
  br label %do.body.i395.i

if.end106.i.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

do.body.i395.i:                                   ; preds = %do.body.i395.i.do.body.i395.i_crit_edge, %if.end106.i.do.body.i395.i_crit_edge
  %size.addr.0.i390.i = phi i32 [ %shr.i393.i, %do.body.i395.i.do.body.i395.i_crit_edge ], [ %cond.i, %if.end106.i.do.body.i395.i_crit_edge ]
  %bits.0.i391.i = phi i32 [ %inc.i392.i, %do.body.i395.i.do.body.i395.i_crit_edge ], [ 8, %if.end106.i.do.body.i395.i_crit_edge ]
  %inc.i392.i = add nuw nsw i32 %bits.0.i391.i, 1
  %shr.i393.i = lshr i32 %size.addr.0.i390.i, 1
  %cmp.i394.i = icmp ugt i32 %size.addr.0.i390.i, 513
  br i1 %cmp.i394.i, label %do.body.i395.i.do.body.i395.i_crit_edge, label %blksize_bits.exit396.i

do.body.i395.i.do.body.i395.i_crit_edge:          ; preds = %do.body.i395.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i395.i

blksize_bits.exit396.i:                           ; preds = %do.body.i395.i
  %conv130.i = trunc i32 %inc.i392.i to i8
  %record_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 11
  %94 = ptrtoint ptr %record_bits.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv130.i, ptr %record_bits.i, align 1
  %mul131.i = mul i32 %cond.i, 5
  %shr132.i = lshr i32 %mul131.i, 4
  %conv133.i = trunc i32 %shr132.i to i16
  %attr_size_tr.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 17
  %95 = ptrtoint ptr %attr_size_tr.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv133.i, ptr %attr_size_tr.i, align 2
  %sub134.i = add i32 %cond.i, 65488
  %96 = lshr i32 %cond.i, 8
  %mul136.i = and i32 %96, 65534
  %add137.i = add nuw nsw i32 %mul136.i, 7
  %and.i = and i32 %add137.i, 65528
  %sub138.i = sub i32 %sub134.i, %and.i
  %97 = trunc i32 %sub138.i to i16
  %conv140.i = add i16 %97, -8
  %max_bytes_per_attr.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 16
  %98 = ptrtoint ptr %max_bytes_per_attr.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv140.i, ptr %max_bytes_per_attr.i, align 8
  %99 = ptrtoint ptr %index_size.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %index_size.i, align 4
  %conv142.i = sext i8 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp143.i = icmp slt i8 %100, 0
  %sub148.i = sub nsw i32 0, %conv142.i
  %shl149.i = shl nuw i32 1, %sub148.i
  %shl155.i = shl i32 %conv142.i, %conv89.i
  %cond157.i = select i1 %cmp143.i, i32 %shl149.i, i32 %shl155.i
  %index_size158.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 9
  %101 = ptrtoint ptr %index_size158.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %cond157.i, ptr %index_size158.i, align 4
  %serial_num.i = getelementptr inbounds %struct.NTFS_BOOT, ptr %57, i32 0, i32 22
  %102 = ptrtoint ptr %serial_num.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %serial_num.i, align 8
  %104 = tail call i64 @llvm.bswap.i64(i64 %103) #17
  %ser_num.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 29, i32 2
  %105 = ptrtoint ptr %ser_num.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %ser_num.i, align 8
  %106 = ptrtoint ptr %volume.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %volume.i, align 8
  %add163.i = add i64 %107, %conv70.i
  call void @__sanitizer_cov_trace_cmp8(i64 %dev_size.addr.0.i, i64 %add163.i)
  %cmp164.i = icmp ult i64 %dev_size.addr.0.i, %add163.i
  br i1 %cmp164.i, label %if.then166.i, label %blksize_bits.exit396.i.if.end168.i_crit_edge

blksize_bits.exit396.i.if.end168.i_crit_edge:     ; preds = %blksize_bits.exit396.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end168.i

if.then166.i:                                     ; preds = %blksize_bits.exit396.i
  call void @__sanitizer_cov_trace_pc() #19
  %shr.i397.i = lshr i64 %dev_size.addr.0.i, 10
  %conv.i398.i = trunc i64 %shr.i397.i to i32
  %and.i399.i = and i32 %conv.i398.i, 1048575
  %mul.i400.i = mul nuw nsw i32 %and.i399.i, 100
  %add.i401.i = add nuw nsw i32 %mul.i400.i, 524287
  %shr1.i402.i = lshr i32 %add.i401.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 104333312, i32 %mul.i400.i)
  %cmp.i403.i = icmp ugt i32 %mul.i400.i, 104333312
  %spec.select.i404.i = select i1 %cmp.i403.i, i32 99, i32 %shr1.i402.i
  %shr3.i405.i = lshr i32 %conv.i398.i, 20
  %sh.diff.i406.i = lshr i64 %dev_size.addr.0.i, 30
  %tr.sh.diff.i407.i = trunc i64 %sh.diff.i406.i to i32
  %shl.i408.i = and i32 %tr.sh.diff.i407.i, -4096
  %or.i409.i = or i32 %shr3.i405.i, %shl.i408.i
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.56, i32 noundef %or.i.i, i32 noundef %spec.select.i.i600, i32 noundef %or.i409.i, i32 noundef %spec.select.i404.i) #17
  %108 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_flags, align 4
  %or.i = or i32 %109, 1
  store i32 %or.i, ptr %s_flags, align 4
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.then166.i, %blksize_bits.exit396.i.if.end168.i_crit_edge
  %110 = ptrtoint ptr %volume.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %volume.i, align 8
  %112 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom173.i = zext i8 %113 to i64
  %shr174.i = lshr i64 %111, %sh_prom173.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr174.i)
  %tobool176.not.i = icmp ult i64 %shr174.i, 4294967296
  br i1 %tobool176.not.i, label %if.end178.i, label %if.then177.i

if.then177.i:                                     ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.57, i32 noundef %or.i.i, i32 noundef %spec.select.i.i600) #17
  br label %ntfs_init_from_boot.exit.thread648

if.end178.i:                                      ; preds = %if.end168.i
  %conv179.i = trunc i64 %shr174.i to i32
  %nbits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 28, i32 0, i32 3
  %114 = ptrtoint ptr %nbits.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv179.i, ptr %nbits.i, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond.i, i32 noundef 3392) #23
  %tobool181.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool181.not.i, label %if.end178.i.ntfs_init_from_boot.exit.thread648_crit_edge, label %if.end26

if.end178.i.ntfs_init_from_boot.exit.thread648_crit_edge: ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ntfs_init_from_boot.exit.thread648

ntfs_init_from_boot.exit.thread648:               ; preds = %if.end178.i.ntfs_init_from_boot.exit.thread648_crit_edge, %if.then177.i, %if.end106.i.ntfs_init_from_boot.exit.thread648_crit_edge, %if.then104.i, %blksize_bits.exit.i.ntfs_init_from_boot.exit.thread648_crit_edge, %land.lhs.true64.i.ntfs_init_from_boot.exit.thread648_crit_edge, %land.lhs.true52.i.ntfs_init_from_boot.exit.thread648_crit_edge, %land.lhs.true43.i.ntfs_init_from_boot.exit.thread648_crit_edge, %land.lhs.true.i599.ntfs_init_from_boot.exit.thread648_crit_edge, %if.end17.i.ntfs_init_from_boot.exit.thread648_crit_edge, %if.end13.i.ntfs_init_from_boot.exit.thread648_crit_edge, %if.end4.i597.ntfs_init_from_boot.exit.thread648_crit_edge, %if.end.i594.ntfs_init_from_boot.exit.thread648_crit_edge
  %err.0.i.ph = phi i32 [ -22, %land.lhs.true64.i.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %land.lhs.true43.i.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %if.end13.i.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -12, %if.end178.i.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %if.then177.i ], [ -22, %if.end106.i.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %if.then104.i ], [ -22, %blksize_bits.exit.i.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %land.lhs.true52.i.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %land.lhs.true.i599.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %if.end17.i.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %if.end4.i597.ntfs_init_from_boot.exit.thread648_crit_edge ], [ -22, %if.end.i594.ntfs_init_from_boot.exit.thread648_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i.i.i) #17
  br label %out

if.end26:                                         ; preds = %if.end178.i
  %new_rec.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 25
  %115 = ptrtoint ptr %new_rec.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call9.i.i.i, ptr %new_rec.i, align 8
  %116 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1179208773, ptr %call9.i.i.i, align 128
  %fix_off.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %call9.i.i.i, i32 0, i32 1
  %117 = ptrtoint ptr %fix_off.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 10752, ptr %fix_off.i, align 4
  %118 = ptrtoint ptr %record_size124.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %record_size124.i, align 8
  %shr186.i = lshr i32 %119, 9
  %120 = trunc i32 %shr186.i to i16
  %conv188.i = add i16 %120, 1
  %121 = tail call i16 @llvm.bswap.i16(i16 %conv188.i) #17
  %fix_num.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %call9.i.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %fix_num.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %fix_num.i, align 2
  %mul191.i = shl i16 %conv188.i, 1
  %add193.i = add i16 %mul191.i, 49
  %and194.i = and i16 %add193.i, -8
  %123 = tail call i16 @llvm.bswap.i16(i16 %and194.i) #17
  %attr_off.i = getelementptr inbounds %struct.MFT_REC, ptr %call9.i.i.i, i32 0, i32 3
  %124 = ptrtoint ptr %attr_off.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %attr_off.i, align 4
  %conv196.i = zext i16 %and194.i to i32
  %add197.i = add nuw nsw i32 %conv196.i, 8
  %125 = tail call i32 @llvm.bswap.i32(i32 %add197.i) #17
  %used198.i = getelementptr inbounds %struct.MFT_REC, ptr %call9.i.i.i, i32 0, i32 5
  %126 = ptrtoint ptr %used198.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %used198.i, align 8
  %127 = ptrtoint ptr %record_size124.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %record_size124.i, align 8
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #17
  %total.i = getelementptr inbounds %struct.MFT_REC, ptr %call9.i.i.i, i32 0, i32 6
  %130 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %total.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 %conv196.i
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %add.ptr.i, align 8
  %132 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cluster_size.i, align 8
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 4096) #17
  %call208.i = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %134) #17
  %135 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_blocksize.i.i.i, align 16
  %sub209.i = add i32 %136, -1
  %block_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 6
  %137 = ptrtoint ptr %block_mask.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub209.i, ptr %block_mask.i, align 8
  %138 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cluster_size.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %140 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv211.i = zext i8 %141 to i32
  %shr212.i = lshr i32 %139, %conv211.i
  %blocks_per_cluster.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 7
  %142 = ptrtoint ptr %blocks_per_cluster.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %shr212.i, ptr %blocks_per_cluster.i, align 4
  %143 = ptrtoint ptr %volume.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %volume.i, align 8
  %145 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom217.i = zext i8 %145 to i64
  %shr218.i = lshr i64 %144, %sh_prom217.i
  %146 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %shr218.i, ptr %blocks.i, align 8
  %147 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom223.i = zext i8 %148 to i64
  %shl224.i = shl i64 %shr174.i, %sh_prom223.i
  %sub225.i = add i64 %shl224.i, -1
  %maxbytes.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 12
  %149 = ptrtoint ptr %maxbytes.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %sub225.i, ptr %maxbytes.i, align 8
  %conv227.i = zext i8 %148 to i32
  %add228.i = add nuw nsw i32 %conv227.i, 32
  %sh_prom229.i = zext i32 %add228.i to i64
  %notmask.i = shl nsw i64 -1, %sh_prom229.i
  %sub231.i = xor i64 %notmask.i, -1
  %maxbytes_sparse.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %50, i32 0, i32 13
  %150 = ptrtoint ptr %maxbytes_sparse.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %sub231.i, ptr %maxbytes_sparse.i, align 8
  %shl235.i = shl i64 4294967295, %sh_prom223.i
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %151 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %shl235.i, ptr %s_maxbytes.i, align 8
  tail call void @__brelse(ptr noundef nonnull %call.i.i.i) #17
  %152 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 50331648, ptr %ref, align 8
  %153 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 768, ptr %8, align 2
  %call27 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_VOLUME) #17
  %cmp.i602 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i602, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.23)
  %154 = ptrtoint ptr %call27 to i32
  br label %out

if.end31:                                         ; preds = %if.end26
  %add.ptr.i603 = getelementptr i8, ptr %call27, i32 -360
  %call33 = call ptr @ni_find_attr(ptr noundef %add.ptr.i603, ptr noundef null, ptr noundef null, i32 noundef 1610612736, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #17
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end31.if.end49_crit_edge, label %if.else

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.else:                                          ; preds = %if.end31
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call33, i32 0, i32 2
  %155 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool36.not = icmp eq i8 %156, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true37:                                  ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.ATTRIB, ptr %call33, i32 0, i32 5
  %157 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %flags.i, align 4
  %159 = and i16 %158, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %tobool.i.not = icmp eq i16 %159, 0
  br i1 %tobool.i.not, label %if.then39, label %land.lhs.true37.if.end49_crit_edge

land.lhs.true37.if.end49_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then39:                                        ; preds = %land.lhs.true37
  %160 = getelementptr inbounds %struct.ATTRIB, ptr %call33, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %data_off.i, align 4
  %163 = call i16 @llvm.bswap.i16(i16 %162) #17
  %conv.i604 = zext i16 %163 to i32
  %add.ptr.i605 = getelementptr i8, ptr %call33, i32 %conv.i604
  %164 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %160, align 8
  %166 = call i32 @llvm.bswap.i32(i32 %165)
  %shr = lshr i32 %166, 1
  %label = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 29, i32 7
  %call41 = call i32 @utf16s_to_utf8s(ptr noundef %add.ptr.i605, i32 noundef %shr, i32 noundef 1, ptr noundef %label, i32 noundef 65) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.then43, label %if.then39.if.end49_crit_edge

if.then39.if.end49_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  %167 = ptrtoint ptr %label to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %label, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.then39.if.end49_crit_edge, %land.lhs.true37.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.end31.if.end49_crit_edge
  %call50 = call ptr @ni_find_attr(ptr noundef %add.ptr.i603, ptr noundef %call33, ptr noundef null, i32 noundef 1879048192, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #17
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end49.put_inode_out_crit_edge, label %lor.lhs.false

if.end49.put_inode_out_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

lor.lhs.false:                                    ; preds = %if.end49
  %flags.i606 = getelementptr inbounds %struct.ATTRIB, ptr %call50, i32 0, i32 5
  %168 = ptrtoint ptr %flags.i606 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %flags.i606, align 4
  %170 = and i16 %169, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %170)
  %tobool.i607.not = icmp eq i16 %170, 0
  br i1 %tobool.i607.not, label %if.end55, label %lor.lhs.false.put_inode_out_crit_edge

lor.lhs.false.put_inode_out_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end55:                                         ; preds = %lor.lhs.false
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call50, i32 0, i32 2
  %171 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i608 = icmp eq i8 %172, 0
  br i1 %tobool.not.i608, label %if.end.i613, label %if.end55.put_inode_out_crit_edge

if.end55.put_inode_out_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end.i613:                                      ; preds = %if.end55
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call50, i32 0, i32 1
  %173 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %size.i, align 4
  %175 = call i32 @llvm.bswap.i32(i32 %174) #17
  %176 = getelementptr inbounds %struct.ATTRIB, ptr %call50, i32 0, i32 7
  %data_off.i609 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %data_off.i609 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %data_off.i609, align 4
  %179 = call i16 @llvm.bswap.i16(i16 %178) #17
  %conv.i610 = zext i16 %179 to i32
  %add.i611 = add nuw nsw i32 %conv.i610, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %add.i611)
  %cmp.i612 = icmp ult i32 %175, %add.i611
  br i1 %cmp.i612, label %if.end.i613.put_inode_out_crit_edge, label %if.end3.i

if.end.i613.put_inode_out_crit_edge:              ; preds = %if.end.i613
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end3.i:                                        ; preds = %if.end.i613
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %176, align 8
  %182 = call i32 @llvm.bswap.i32(i32 %181) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %182)
  %cmp4.i614 = icmp ult i32 %182, 12
  %add.ptr.i615 = getelementptr i8, ptr %call50, i32 %conv.i610
  %tobool57.not = icmp eq ptr %add.ptr.i615, null
  %or.cond = select i1 %cmp4.i614, i1 true, i1 %tobool57.not
  br i1 %or.cond, label %if.end3.i.put_inode_out_crit_edge, label %if.end59

if.end3.i.put_inode_out_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end59:                                         ; preds = %if.end3.i
  %major_ver = getelementptr inbounds %struct.VOLUME_INFO, ptr %add.ptr.i615, i32 0, i32 1
  %183 = ptrtoint ptr %major_ver to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %major_ver, align 8
  %major_ver61 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 29, i32 5
  %185 = ptrtoint ptr %major_ver61 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %major_ver61, align 2
  %minor_ver = getelementptr inbounds %struct.VOLUME_INFO, ptr %add.ptr.i615, i32 0, i32 2
  %186 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %minor_ver, align 1
  %minor_ver63 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 29, i32 6
  %188 = ptrtoint ptr %minor_ver63 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %minor_ver63, align 1
  %flags = getelementptr inbounds %struct.VOLUME_INFO, ptr %add.ptr.i615, i32 0, i32 3
  %189 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %flags, align 2
  %flags65 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 29, i32 4
  %191 = ptrtoint ptr %flags65 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %flags65, align 4
  %ni67 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 29, i32 3
  %192 = ptrtoint ptr %ni67 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %add.ptr.i603, ptr %ni67, align 8
  %193 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 16777216, ptr %ref, align 8
  %194 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 256, ptr %8, align 2
  %call70 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_MIRROR) #17
  %cmp.i618 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i618, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.24)
  %195 = ptrtoint ptr %call70 to i32
  br label %out

if.end74:                                         ; preds = %if.end59
  %i_size = getelementptr inbounds %struct.inode, ptr %call70, i32 0, i32 14
  %196 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %i_size, align 8
  %cluster_mask.i619 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 4
  %198 = ptrtoint ptr %cluster_mask.i619 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cluster_mask.i619, align 4
  %conv.i620 = zext i32 %199 to i64
  %add.i621 = add i64 %197, %conv.i620
  %cluster_mask_inv.i622 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 5
  %200 = ptrtoint ptr %cluster_mask_inv.i622 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %cluster_mask_inv.i622, align 8
  %and.i623 = and i64 %add.i621, %201
  %record_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 11
  %202 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %record_bits, align 1
  %sh_prom = zext i8 %203 to i64
  %shr77 = lshr i64 %and.i623, %sh_prom
  %conv78 = trunc i64 %shr77 to i32
  %recs_mirr = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 27, i32 7
  %204 = ptrtoint ptr %recs_mirr to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %conv78, ptr %recs_mirr, align 8
  call void @iput(ptr noundef %call70) #17
  %205 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 33554432, ptr %ref, align 8
  %206 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 512, ptr %8, align 2
  %call81 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_LOGFILE) #17
  %cmp.i624 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i624, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.25)
  %207 = ptrtoint ptr %call81 to i32
  br label %out

if.end85:                                         ; preds = %if.end74
  %add.ptr.i625 = getelementptr i8, ptr %call81, i32 -360
  %call87 = call i32 @ntfs_loadlog_and_replay(ptr noundef %add.ptr.i625, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end85.put_inode_out_crit_edge

if.end85.put_inode_out_crit_edge:                 ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end90:                                         ; preds = %if.end85
  call void @iput(ptr noundef %call81) #17
  %flags91 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 14
  %208 = ptrtoint ptr %flags91 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %flags91, align 8
  %and = and i32 %209, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %if.else97, label %if.then93

if.then93:                                        ; preds = %if.end90
  %210 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %s_flags, align 4
  %and.i627 = and i32 %211, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i627)
  %tobool.i628.not = icmp eq i32 %and.i627, 0
  br i1 %tobool.i628.not, label %if.then95, label %if.then93.if.end111_crit_edge

if.then93.if.end111_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

if.then95:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.26)
  br label %out

if.else97:                                        ; preds = %if.end90
  %212 = ptrtoint ptr %flags65 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %flags65, align 4
  %214 = and i16 %213, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool102.not = icmp eq i16 %214, 0
  br i1 %tobool102.not, label %if.else97.if.end111_crit_edge, label %if.then103

if.else97.if.end111_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

if.then103:                                       ; preds = %if.else97
  %215 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %s_flags, align 4
  %and.i630 = and i32 %216, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i630)
  %tobool.i631.not = icmp eq i32 %and.i630, 0
  br i1 %tobool.i631.not, label %land.lhs.true105, label %if.then103.if.end111_crit_edge

if.then103.if.end111_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

land.lhs.true105:                                 ; preds = %if.then103
  %217 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %options, align 4
  %force = getelementptr inbounds %struct.ntfs_mount_options, ptr %218, i32 0, i32 6
  %219 = ptrtoint ptr %force to i32
  call void @__asan_load2_noabort(i32 %219)
  %bf.load = load i16, ptr %force, align 4
  %220 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %220)
  %tobool107.not = icmp eq i16 %220, 0
  br i1 %tobool107.not, label %if.then108, label %land.lhs.true105.if.end111_crit_edge

land.lhs.true105.if.end111_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end111

if.then108:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.27)
  br label %out

if.end111:                                        ; preds = %land.lhs.true105.if.end111_crit_edge, %if.then103.if.end111_crit_edge, %if.else97.if.end111_crit_edge, %if.then93.if.end111_crit_edge
  %221 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %ref, align 8
  %222 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 256, ptr %8, align 2
  %call114 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_MFT) #17
  %cmp.i632 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i632, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.28)
  %223 = ptrtoint ptr %call114 to i32
  br label %out

if.end118:                                        ; preds = %if.end111
  %add.ptr.i633 = getelementptr i8, ptr %call114, i32 -360
  %i_valid = getelementptr i8, ptr %call114, i32 -288
  %224 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %i_valid, align 8
  %226 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %record_bits, align 1
  %sh_prom122 = zext i8 %227 to i64
  %shr123 = lshr i64 %225, %sh_prom122
  %conv124 = trunc i64 %shr123 to i32
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 27, i32 6
  %228 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %conv124, ptr %used, align 4
  %i_size126 = getelementptr inbounds %struct.inode, ptr %call114, i32 0, i32 14
  %229 = ptrtoint ptr %i_size126 to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %i_size126, align 8
  %shr130 = ashr i64 %230, %sh_prom122
  %conv131 = trunc i64 %shr130 to i32
  %next_free = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 27, i32 5
  %231 = ptrtoint ptr %next_free to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 24, ptr %next_free, align 8
  %bitmap = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 27, i32 3
  %call134 = call i32 @wnd_init(ptr noundef %bitmap, ptr noundef %sb, i32 noundef %conv131) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end118.put_inode_out_crit_edge

if.end118.put_inode_out_crit_edge:                ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end137:                                        ; preds = %if.end118
  %call138 = call i32 @ni_load_all_mi(ptr noundef %add.ptr.i633) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end137.put_inode_out_crit_edge

if.end137.put_inode_out_crit_edge:                ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end141:                                        ; preds = %if.end137
  %ni143 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 27, i32 2
  %232 = ptrtoint ptr %ni143 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %add.ptr.i633, ptr %ni143, align 8
  %233 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 134217728, ptr %ref, align 8
  %234 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 2048, ptr %8, align 2
  %call146 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_BADCLUS) #17
  %cmp.i634 = icmp ugt ptr %call146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i634, label %if.then148, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end141
  %run = getelementptr i8, ptr %call146, i32 -60
  %call152663 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef 0, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %len) #17
  br i1 %call152663, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bad_clusters = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 15
  br label %for.body

if.then148:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.29)
  %235 = ptrtoint ptr %call146 to i32
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0664 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %236 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %237)
  %cmp153 = icmp eq i32 %237, -1
  br i1 %cmp153, label %for.body.for.inc_crit_edge, label %if.end156

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end156:                                        ; preds = %for.body
  %238 = ptrtoint ptr %bad_clusters to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %bad_clusters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool157.not = icmp eq i32 %239, 0
  br i1 %tobool157.not, label %if.then158, label %if.end156.if.end159_crit_edge

if.end156.if.end159_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

if.then158:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.30)
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.end156.if.end159_crit_edge
  %240 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %len, align 4
  %242 = ptrtoint ptr %bad_clusters to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %bad_clusters, align 4
  %add = add i32 %243, %241
  store i32 %add, ptr %bad_clusters, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end159, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0664, 1
  %call152 = call zeroext i1 @run_get_entry(ptr noundef %run, i32 noundef %inc, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %len) #17
  br i1 %call152, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @iput(ptr noundef %call146) #17
  %244 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 100663296, ptr %ref, align 8
  %245 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 1536, ptr %8, align 2
  %call163 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_BITMAP) #17
  %cmp.i636 = icmp ugt ptr %call163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i636, label %if.then165, label %if.end167

if.then165:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.31)
  %246 = ptrtoint ptr %call163 to i32
  br label %out

if.end167:                                        ; preds = %for.end
  %i_size168 = getelementptr inbounds %struct.inode, ptr %call163, i32 0, i32 14
  %247 = ptrtoint ptr %i_size168 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %i_size168, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %248)
  %tobool170.not = icmp ult i64 %248, 4294967296
  br i1 %tobool170.not, label %if.end172, label %if.end167.put_inode_out_crit_edge

if.end167.put_inode_out_crit_edge:                ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end172:                                        ; preds = %if.end167
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 28, i32 0, i32 3
  %249 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %nbits, align 8
  %add.i637 = add i32 %250, 7
  %shr.i638 = lshr i32 %add.i637, 3
  %add1.i = add nuw nsw i32 %shr.i638, 7
  %and.i639 = and i32 %add1.i, 1073741816
  %conv177 = zext i32 %and.i639 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %248, i64 %conv177)
  %cmp178 = icmp ult i64 %248, %conv177
  br i1 %cmp178, label %if.end172.put_inode_out_crit_edge, label %if.end181

if.end172.put_inode_out_crit_edge:                ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end181:                                        ; preds = %if.end172
  %used173 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 28
  %set_tail = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 28, i32 0, i32 16
  %251 = ptrtoint ptr %set_tail to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 1, ptr %set_tail, align 4
  %call186 = call i32 @wnd_init(ptr noundef %used173, ptr noundef %sb, i32 noundef %250) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end189, label %if.end181.put_inode_out_crit_edge

if.end181.put_inode_out_crit_edge:                ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end189:                                        ; preds = %if.end181
  call void @iput(ptr noundef %call163) #17
  %call190 = call i32 @ntfs_refresh_zone(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.end189.out_crit_edge

if.end189.out_crit_edge:                          ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end193:                                        ; preds = %if.end189
  %252 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 67108864, ptr %ref, align 8
  %253 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 1024, ptr %8, align 2
  %call196 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_ATTRDEF) #17
  %cmp.i640 = icmp ugt ptr %call196, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i640, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.32, i32 noundef 0)
  %254 = ptrtoint ptr %call196 to i32
  br label %out

if.end200:                                        ; preds = %if.end193
  %i_size201 = getelementptr inbounds %struct.inode, ptr %call196, i32 0, i32 14
  %255 = ptrtoint ptr %i_size201 to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %i_size201, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 160, i64 %256)
  %cmp202 = icmp slt i64 %256, 160
  br i1 %cmp202, label %if.end200.put_inode_out_crit_edge, label %if.end205

if.end200.put_inode_out_crit_edge:                ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end205:                                        ; preds = %if.end200
  %conv207 = trunc i64 %256 to i32
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv207, i32 noundef 3136) #23
  %def_table = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 22
  %257 = ptrtoint ptr %def_table to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %call9.i, ptr %def_table, align 4
  %tobool209.not = icmp eq ptr %call9.i, null
  br i1 %tobool209.not, label %if.end205.put_inode_out_crit_edge, label %for.cond212.preheader

if.end205.put_inode_out_crit_edge:                ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

for.cond212.preheader:                            ; preds = %if.end205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv207)
  %cmp213665.not = icmp eq i32 %conv207, 0
  br i1 %cmp213665.not, label %for.end239.thread, label %for.body215.lr.ph

for.body215.lr.ph:                                ; preds = %for.cond212.preheader
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call196, i32 0, i32 9
  %type = getelementptr inbounds %struct.ATTR_DEF_ENTRY, ptr %call9.i, i32 0, i32 1
  br label %for.body215

for.body215:                                      ; preds = %for.inc236.for.body215_crit_edge, %for.body215.lr.ph
  %done.0667 = phi i32 [ 0, %for.body215.lr.ph ], [ %add237, %for.inc236.for.body215_crit_edge ]
  %idx.0666 = phi i32 [ 0, %for.body215.lr.ph ], [ %inc238, %for.inc236.for.body215_crit_edge ]
  %258 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %i_mapping, align 8
  %call217 = call fastcc ptr @ntfs_map_page(ptr noundef %259, i32 noundef %idx.0666)
  %cmp.i641 = icmp ugt ptr %call217, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i641, label %if.then219, label %if.end221

if.then219:                                       ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #19
  %260 = ptrtoint ptr %call217 to i32
  br label %put_inode_out

if.end221:                                        ; preds = %for.body215
  %sub216 = sub i32 %conv207, %done.0667
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %done.0667
  %call222 = call ptr @page_address(ptr noundef %call217) #17
  %261 = call i32 @llvm.umin.i32(i32 %sub216, i32 4096)
  %262 = call ptr @memcpy(ptr %add.ptr, ptr %call222, i32 %261)
  call fastcc void @ntfs_unmap_page(ptr noundef %call217)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0666)
  %tobool229.not = icmp eq i32 %idx.0666, 0
  br i1 %tobool229.not, label %land.lhs.true230, label %if.end221.for.inc236_crit_edge

if.end221.for.inc236_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc236

land.lhs.true230:                                 ; preds = %if.end221
  %263 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %type, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %264)
  %cmp231.not = icmp eq i32 %264, 268435456
  br i1 %cmp231.not, label %land.lhs.true230.for.inc236_crit_edge, label %land.lhs.true230.put_inode_out_crit_edge

land.lhs.true230.put_inode_out_crit_edge:         ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

land.lhs.true230.for.inc236_crit_edge:            ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc236

for.inc236:                                       ; preds = %land.lhs.true230.for.inc236_crit_edge, %if.end221.for.inc236_crit_edge
  %add237 = add i32 %done.0667, 4096
  %inc238 = add i32 %idx.0666, 1
  %cmp213 = icmp ult i32 %add237, %conv207
  br i1 %cmp213, label %for.inc236.for.body215_crit_edge, label %for.end239

for.inc236.for.body215_crit_edge:                 ; preds = %for.inc236
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body215

for.end239.thread:                                ; preds = %for.cond212.preheader
  call void @__sanitizer_cov_trace_pc() #19
  %def_entries689 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 23
  %265 = ptrtoint ptr %def_entries689 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 1, ptr %def_entries689, align 8
  %max_size690 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 31, i32 2
  %266 = ptrtoint ptr %max_size690 to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 16384, ptr %max_size690, align 8
  %ea_max_size691 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 24
  %267 = ptrtoint ptr %ea_max_size691 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 65536, ptr %ea_max_size691, align 4
  br label %while.end

for.end239:                                       ; preds = %for.inc236
  %def_entries = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 23
  %268 = ptrtoint ptr %def_entries to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 1, ptr %def_entries, align 8
  %max_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 31, i32 2
  %269 = ptrtoint ptr %max_size to i32
  call void @__asan_store8_noabort(i32 %269)
  store i64 16384, ptr %max_size, align 8
  %ea_max_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 24
  %270 = ptrtoint ptr %ea_max_size to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 65536, ptr %ea_max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %conv207)
  %cmp242.not669 = icmp ult i32 %conv207, 320
  br i1 %cmp242.not669, label %for.end239.while.end_crit_edge, label %for.end239.while.body_crit_edge

for.end239.while.body_crit_edge:                  ; preds = %for.end239
  br label %while.body

for.end239.while.end_crit_edge:                   ; preds = %for.end239
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %cleanup273.while.body_crit_edge, %for.end239.while.body_crit_edge
  %add241672 = phi i32 [ %add241, %cleanup273.while.body_crit_edge ], [ 320, %for.end239.while.body_crit_edge ]
  %retval.1.i.pn670 = phi ptr [ %t.0671, %cleanup273.while.body_crit_edge ], [ %call9.i, %for.end239.while.body_crit_edge ]
  %t.0671 = getelementptr %struct.ATTR_DEF_ENTRY, ptr %retval.1.i.pn670, i32 1
  %type244 = getelementptr %struct.ATTR_DEF_ENTRY, ptr %retval.1.i.pn670, i32 1, i32 1
  %271 = ptrtoint ptr %type244 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %type244, align 8
  %273 = call i32 @llvm.bswap.i32(i32 %272)
  %max_sz = getelementptr %struct.ATTR_DEF_ENTRY, ptr %retval.1.i.pn670, i32 1, i32 6
  %274 = ptrtoint ptr %max_sz to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %max_sz, align 8
  %276 = call i64 @llvm.bswap.i64(i64 %275)
  %and245 = and i32 %273, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %lor.lhs.false247, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

lor.lhs.false247:                                 ; preds = %while.body
  %type249 = getelementptr %struct.ATTR_DEF_ENTRY, ptr %retval.1.i.pn670, i32 0, i32 1
  %277 = ptrtoint ptr %type249 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %type249, align 8
  %279 = call i32 @llvm.bswap.i32(i32 %278)
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %273)
  %cmp250.not = icmp ult i32 %279, %273
  br i1 %cmp250.not, label %if.end253, label %lor.lhs.false247.while.end_crit_edge

lor.lhs.false247.while.end_crit_edge:             ; preds = %lor.lhs.false247
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end253:                                        ; preds = %lor.lhs.false247
  %280 = zext i32 %272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %280, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %272, label %if.end253.cleanup273_crit_edge [
    i32 -1073741824, label %if.then257
    i32 -536870912, label %if.then264
  ]

if.end253.cleanup273_crit_edge:                   ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup273

if.then257:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #19
  %281 = ptrtoint ptr %max_size to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %276, ptr %max_size, align 8
  br label %cleanup273

if.then264:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #19
  %conv265 = trunc i64 %276 to i32
  %282 = ptrtoint ptr %ea_max_size to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %conv265, ptr %ea_max_size, align 4
  br label %cleanup273

cleanup273:                                       ; preds = %if.then264, %if.then257, %if.end253.cleanup273_crit_edge
  %283 = ptrtoint ptr %def_entries to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %def_entries, align 8
  %add272 = add i32 %284, 1
  store i32 %add272, ptr %def_entries, align 8
  %add241 = add i32 %add241672, 160
  %cmp242.not = icmp ugt i32 %add241, %conv207
  br i1 %cmp242.not, label %cleanup273.while.end_crit_edge, label %cleanup273.while.body_crit_edge

cleanup273.while.body_crit_edge:                  ; preds = %cleanup273
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

cleanup273.while.end_crit_edge:                   ; preds = %cleanup273
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %cleanup273.while.end_crit_edge, %lor.lhs.false247.while.end_crit_edge, %while.body.while.end_crit_edge, %for.end239.while.end_crit_edge, %for.end239.thread
  call void @iput(ptr noundef %call196) #17
  %285 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 167772160, ptr %ref, align 8
  %286 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 2560, ptr %8, align 2
  %call279 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_UPCASE) #17
  %cmp.i642 = icmp ugt ptr %call279, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i642, label %if.then281, label %if.end283

if.then281:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.33)
  %287 = ptrtoint ptr %call279 to i32
  br label %out

if.end283:                                        ; preds = %while.end
  %i_size284 = getelementptr inbounds %struct.inode, ptr %call279, i32 0, i32 14
  %288 = ptrtoint ptr %i_size284 to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %i_size284, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 131072, i64 %289)
  %cmp285.not = icmp eq i64 %289, 131072
  br i1 %cmp285.not, label %for.cond289.preheader, label %if.end283.put_inode_out_crit_edge

if.end283.put_inode_out_crit_edge:                ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

for.cond289.preheader:                            ; preds = %if.end283
  %upcase = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 26
  %i_mapping295 = getelementptr inbounds %struct.inode, ptr %call279, i32 0, i32 9
  br label %for.body292

for.body292:                                      ; preds = %for.inc315.for.body292_crit_edge, %for.cond289.preheader
  %idx.1676 = phi i32 [ 0, %for.cond289.preheader ], [ %inc316, %for.inc315.for.body292_crit_edge ]
  %290 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %upcase, align 4
  %292 = ptrtoint ptr %i_mapping295 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %i_mapping295, align 8
  %call296 = call fastcc ptr @ntfs_map_page(ptr noundef %293, i32 noundef %idx.1676)
  %cmp.i643 = icmp ugt ptr %call296, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i643, label %cleanup310, label %if.end300

if.end300:                                        ; preds = %for.body292
  %shl = shl nuw nsw i32 %idx.1676, 12
  %add.ptr293 = getelementptr i8, ptr %291, i32 %shl
  %call301 = call ptr @page_address(ptr noundef %call296) #17
  br label %for.body305

for.body305:                                      ; preds = %for.body305.for.body305_crit_edge, %if.end300
  %dst.0675 = phi ptr [ %add.ptr293, %if.end300 ], [ %incdec.ptr306, %for.body305.for.body305_crit_edge ]
  %src.0674 = phi ptr [ %call301, %if.end300 ], [ %incdec.ptr, %for.body305.for.body305_crit_edge ]
  %i.1673 = phi i32 [ 0, %if.end300 ], [ %inc308, %for.body305.for.body305_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %src.0674, i32 1
  %294 = ptrtoint ptr %src.0674 to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %src.0674, align 2
  %296 = call i16 @llvm.bswap.i16(i16 %295)
  %incdec.ptr306 = getelementptr i16, ptr %dst.0675, i32 1
  %297 = ptrtoint ptr %dst.0675 to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %296, ptr %dst.0675, align 2
  %inc308 = add nuw nsw i32 %i.1673, 1
  %exitcond.not = icmp eq i32 %inc308, 2048
  br i1 %exitcond.not, label %for.inc315, label %for.body305.for.body305_crit_edge

for.body305.for.body305_crit_edge:                ; preds = %for.body305
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body305

cleanup310:                                       ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #19
  %298 = ptrtoint ptr %call296 to i32
  br label %put_inode_out

for.inc315:                                       ; preds = %for.body305
  call fastcc void @ntfs_unmap_page(ptr noundef %call296)
  %inc316 = add nuw nsw i32 %idx.1676, 1
  %exitcond680.not = icmp eq i32 %inc316, 32
  br i1 %exitcond680.not, label %for.end317, label %for.inc315.for.body292_crit_edge

for.inc315.for.body292_crit_edge:                 ; preds = %for.inc315
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body292

for.end317:                                       ; preds = %for.inc315
  %299 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %upcase, align 4
  %call319 = call ptr @ntfs_set_shared(ptr noundef %300, i32 noundef 131072)
  %tobool320.not = icmp eq ptr %call319, null
  br i1 %tobool320.not, label %for.end317.if.end328_crit_edge, label %land.lhs.true321

for.end317.if.end328_crit_edge:                   ; preds = %for.end317
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end328

land.lhs.true321:                                 ; preds = %for.end317
  %301 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %upcase, align 4
  %cmp323.not = icmp eq ptr %302, %call319
  br i1 %cmp323.not, label %land.lhs.true321.if.end328_crit_edge, label %if.then325

land.lhs.true321.if.end328_crit_edge:             ; preds = %land.lhs.true321
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end328

if.then325:                                       ; preds = %land.lhs.true321
  call void @__sanitizer_cov_trace_pc() #19
  call void @kvfree(ptr noundef %302) #17
  %303 = ptrtoint ptr %upcase to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call319, ptr %upcase, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.then325, %land.lhs.true321.if.end328_crit_edge, %for.end317.if.end328_crit_edge
  call void @iput(ptr noundef %call279) #17
  %304 = ptrtoint ptr %major_ver61 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %major_ver61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %305)
  %cmp.i644 = icmp ugt i8 %305, 2
  br i1 %cmp.i644, label %if.then330, label %if.end328.load_root_crit_edge

if.end328.load_root_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #19
  br label %load_root

if.then330:                                       ; preds = %if.end328
  %call331 = call i32 @ntfs_security_init(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %if.end334, label %if.then330.out_crit_edge

if.then330.out_crit_edge:                         ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end334:                                        ; preds = %if.then330
  %call335 = call i32 @ntfs_extend_init(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.end338, label %if.end334.load_root_crit_edge

if.end334.load_root_crit_edge:                    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #19
  br label %load_root

if.end338:                                        ; preds = %if.end334
  %call339 = call i32 @ntfs_reparse_init(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call339)
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %if.end342, label %if.end338.load_root_crit_edge

if.end338.load_root_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #19
  br label %load_root

if.end342:                                        ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #19
  %call343 = call i32 @ntfs_objid_init(ptr noundef %1) #17
  br label %load_root

load_root:                                        ; preds = %if.end342, %if.end338.load_root_crit_edge, %if.end334.load_root_crit_edge, %if.end328.load_root_crit_edge
  %306 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 83886080, ptr %ref, align 8
  %307 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 1280, ptr %8, align 2
  %call350 = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef nonnull @NAME_ROOT) #17
  %cmp.i645 = icmp ugt ptr %call350, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i645, label %if.then352, label %if.end354

if.then352:                                       ; preds = %load_root
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %sb, ptr noundef nonnull @.str.34)
  %308 = ptrtoint ptr %call350 to i32
  br label %out

if.end354:                                        ; preds = %load_root
  %call355 = call ptr @d_make_root(ptr noundef %call350) #17
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %309 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %call355, ptr %s_root, align 64
  %tobool357.not = icmp eq ptr %call355, null
  br i1 %tobool357.not, label %if.end354.put_inode_out_crit_edge, label %if.end359

if.end354.put_inode_out_crit_edge:                ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_inode_out

if.end359:                                        ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #19
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %310 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr null, ptr %fs_private, align 4
  br label %cleanup361

put_inode_out:                                    ; preds = %if.end354.put_inode_out_crit_edge, %cleanup310, %if.end283.put_inode_out_crit_edge, %land.lhs.true230.put_inode_out_crit_edge, %if.then219, %if.end205.put_inode_out_crit_edge, %if.end200.put_inode_out_crit_edge, %if.end181.put_inode_out_crit_edge, %if.end172.put_inode_out_crit_edge, %if.end167.put_inode_out_crit_edge, %if.end137.put_inode_out_crit_edge, %if.end118.put_inode_out_crit_edge, %if.end85.put_inode_out_crit_edge, %if.end3.i.put_inode_out_crit_edge, %if.end.i613.put_inode_out_crit_edge, %if.end55.put_inode_out_crit_edge, %lor.lhs.false.put_inode_out_crit_edge, %if.end49.put_inode_out_crit_edge
  %err.4 = phi i32 [ %call87, %if.end85.put_inode_out_crit_edge ], [ %call134, %if.end118.put_inode_out_crit_edge ], [ %call138, %if.end137.put_inode_out_crit_edge ], [ %call186, %if.end181.put_inode_out_crit_edge ], [ %298, %cleanup310 ], [ -22, %lor.lhs.false.put_inode_out_crit_edge ], [ -22, %if.end49.put_inode_out_crit_edge ], [ -22, %if.end167.put_inode_out_crit_edge ], [ -22, %if.end172.put_inode_out_crit_edge ], [ -22, %if.end200.put_inode_out_crit_edge ], [ -12, %if.end205.put_inode_out_crit_edge ], [ -22, %if.end283.put_inode_out_crit_edge ], [ -12, %if.end354.put_inode_out_crit_edge ], [ -22, %if.end55.put_inode_out_crit_edge ], [ -22, %if.end.i613.put_inode_out_crit_edge ], [ -22, %if.end3.i.put_inode_out_crit_edge ], [ %260, %if.then219 ], [ -22, %land.lhs.true230.put_inode_out_crit_edge ]
  %inode.0 = phi ptr [ %call81, %if.end85.put_inode_out_crit_edge ], [ %call114, %if.end118.put_inode_out_crit_edge ], [ %call114, %if.end137.put_inode_out_crit_edge ], [ %call163, %if.end181.put_inode_out_crit_edge ], [ %call279, %cleanup310 ], [ %call27, %lor.lhs.false.put_inode_out_crit_edge ], [ %call27, %if.end49.put_inode_out_crit_edge ], [ %call163, %if.end167.put_inode_out_crit_edge ], [ %call163, %if.end172.put_inode_out_crit_edge ], [ %call196, %if.end200.put_inode_out_crit_edge ], [ %call196, %if.end205.put_inode_out_crit_edge ], [ %call279, %if.end283.put_inode_out_crit_edge ], [ %call350, %if.end354.put_inode_out_crit_edge ], [ %call27, %if.end55.put_inode_out_crit_edge ], [ %call27, %if.end.i613.put_inode_out_crit_edge ], [ %call27, %if.end3.i.put_inode_out_crit_edge ], [ %call196, %if.then219 ], [ %call196, %land.lhs.true230.put_inode_out_crit_edge ]
  call void @iput(ptr noundef %inode.0) #17
  br label %out

out:                                              ; preds = %put_inode_out, %if.then352, %if.then330.out_crit_edge, %if.then281, %if.then198, %if.end189.out_crit_edge, %if.then165, %if.then148, %if.then116, %if.then108, %if.then95, %if.then83, %if.then72, %if.then29, %ntfs_init_from_boot.exit.thread648, %ntfs_init_from_boot.exit.thread, %if.then
  %err.5 = phi i32 [ -22, %if.then ], [ %154, %if.then29 ], [ %err.4, %put_inode_out ], [ %195, %if.then72 ], [ %207, %if.then83 ], [ %223, %if.then116 ], [ %235, %if.then148 ], [ %246, %if.then165 ], [ %call190, %if.end189.out_crit_edge ], [ %254, %if.then198 ], [ %287, %if.then281 ], [ %call331, %if.then330.out_crit_edge ], [ %308, %if.then352 ], [ -22, %if.then95 ], [ -22, %if.then108 ], [ -5, %ntfs_init_from_boot.exit.thread ], [ %err.0.i.ph, %ntfs_init_from_boot.exit.thread648 ]
  call fastcc void @put_ntfs(ptr noundef %1)
  %311 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup361

cleanup361:                                       ; preds = %out, %if.end359
  %retval.0 = phi i32 [ %err.5, %out ], [ 0, %if.end359 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget5(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_loadlog_and_replay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wnd_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_load_all_mi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_get_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_refresh_zone(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_map_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call ptr @read_cache_page(ptr noundef %mapping, i32 noundef %index, ptr noundef null, ptr noundef null) #17
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.59, i32 noundef 44) #17
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %shr.i.i12 = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %shr.i.i12, label %if.then.if.then.i13_crit_edge [
    i32 2, label %if.then.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then.if.then.i13_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i13

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i13_crit_edge

is_highmem_idx.exit.i.if.then.i13_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i13

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then.i13:                                      ; preds = %is_highmem_idx.exit.i.if.then.i13_crit_edge, %if.then.if.then.i13_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #17
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #17
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i13
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !241

if.then.i.i:                                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !242

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !241

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %13, %if.end.i20.i ]
  %14 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.60) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #17, !srcloc !243
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !241

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i25.i = add i32 %12, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %15, %if.end.i27.i ]
  %16 = inttoptr i32 %retval.0.i28.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %PageError.exit.cleanup_crit_edge, label %if.end

PageError.exit.cleanup_crit_edge:                 ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %PageError.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.end ], [ %call.i, %PageError.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__might_sleep(ptr noundef nonnull @.str.59, i32 noundef 55) #17
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #17
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !241

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #17
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !242

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.61) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #17, !srcloc !244
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !233
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #17
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #17, !srcloc !234
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #17
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !245

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #17
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__put_page(ptr noundef %8) #17
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_security_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_extend_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_reparse_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_objid_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ntfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = call ptr @memset(ptr %call, i32 0, i32 360)
  %ni_lock = getelementptr inbounds %struct.ntfs_inode, ptr %call, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %ni_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @ntfs_alloc_inode.__key) #17
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %call, i32 0, i32 11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntfs_destroy_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 37
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @ntfs_i_callback) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs3_write_inode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_evict_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntfs_put_super(ptr nocapture noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @ntfs_set_state(ptr noundef %1, i32 noundef 0) #17
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %options, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #17
  %nls.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %nls.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nls.i, align 4
  tail call void @unload_nls(ptr noundef %7) #17
  tail call void @kfree(ptr noundef %3) #17
  tail call fastcc void @put_ntfs(ptr noundef %1)
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %s_fs_info, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %9 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bdev, align 4
  %call2 = tail call i32 @sync_blockdev(ptr noundef %10) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_sync_fs(ptr nocapture noundef readonly %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %ni1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 30, i32 2
  %2 = ptrtoint ptr %ni1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ni1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %3, i32 0, i32 11
  %call = tail call i32 @ni_write_inode(ptr noundef %vfs_inode, i32 noundef %wait, ptr noundef nonnull @__func__.ntfs_sync_fs) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end5_crit_edge ], [ %call, %if.then ]
  %ni6 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 32, i32 1
  %4 = ptrtoint ptr %ni6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ni6, align 8
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end5.if.end16_crit_edge, label %if.then8

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %vfs_inode9 = getelementptr inbounds %struct.ntfs_inode, ptr %5, i32 0, i32 11
  %call10 = tail call i32 @ni_write_inode(ptr noundef %vfs_inode9, i32 noundef %wait, ptr noundef nonnull @__func__.ntfs_sync_fs) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp ne i32 %call10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool13.not = icmp eq i32 %err.0, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool13.not, i1 false
  %spec.select59 = select i1 %or.cond, i32 %call10, i32 %err.0
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.end5.if.end16_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end5.if.end16_crit_edge ], [ %spec.select59, %if.then8 ]
  %ni17 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 31, i32 1
  %6 = ptrtoint ptr %ni17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ni17, align 8
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %if.end16.if.end27_crit_edge, label %if.then19

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %vfs_inode20 = getelementptr inbounds %struct.ntfs_inode, ptr %7, i32 0, i32 11
  %call21 = tail call i32 @ni_write_inode(ptr noundef %vfs_inode20, i32 noundef %wait, ptr noundef nonnull @__func__.ntfs_sync_fs) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp ne i32 %call21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool24.not = icmp eq i32 %err.1, 0
  %or.cond58 = select i1 %tobool22.not, i1 %tobool24.not, i1 false
  %spec.select60 = select i1 %or.cond58, i32 %call21, i32 %err.1
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end16.if.end27_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end16.if.end27_crit_edge ], [ %spec.select60, %if.then19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool28.not = icmp eq i32 %err.2, 0
  br i1 %tobool28.not, label %if.then29, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %call30 = tail call i32 @ntfs_set_state(ptr noundef %1, i32 noundef 0) #17
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %call32 = tail call i32 @ntfs_update_mftmirr(ptr noundef %1, i32 noundef %wait) #17
  ret i32 %err.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_magic, align 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %buf, align 8
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cluster_size, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %f_bsize, align 4
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 28, i32 0, i32 3
  %10 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbits, align 4
  %conv = zext i32 %11 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %12 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %f_blocks, align 8
  %total_zeroes.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 28, i32 0, i32 4
  %13 = ptrtoint ptr %total_zeroes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_zeroes.i, align 4
  %conv1 = zext i32 %14 to i64
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %15 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv1, ptr %f_bavail, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %16 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv1, ptr %f_bfree, align 8
  %ser_num = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 29, i32 2
  %17 = ptrtoint ptr %ser_num to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ser_num, align 8
  %conv2 = trunc i64 %18 to i32
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %19 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv2, ptr %f_fsid, align 8
  %20 = load i64, ptr %ser_num, align 8
  %shr = lshr i64 %20, 32
  %conv5 = trunc i64 %shr to i32
  %arrayidx8 = getelementptr %struct.kstatfs, ptr %buf, i32 0, i32 7, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv5, ptr %arrayidx8, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %22 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 255, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %options, align 4
  %file.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %6 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %fs_uid = getelementptr inbounds %struct.ntfs_mount_options, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fs_uid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %fs_uid, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call1 = tail call i32 @from_kuid_munged(ptr noundef %11, [1 x i32] %13) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %call1) #17
  %fs_gid = getelementptr inbounds %struct.ntfs_mount_options, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %fs_gid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack107 = load i32, ptr %fs_gid, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack107, 0
  %call3 = tail call i32 @from_kgid_munged(ptr noundef %11, [1 x i32] %15) #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %call3) #17
  %fmask = getelementptr inbounds %struct.ntfs_mount_options, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %fmask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %fs_fmask_inv = getelementptr inbounds %struct.ntfs_mount_options, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %fs_fmask_inv to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fs_fmask_inv, align 4
  %conv = zext i16 %18 to i32
  %neg = xor i32 %conv, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %neg) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load4 = load i16, ptr %fmask, align 4
  %20 = and i16 %bf.load4, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool7.not = icmp eq i16 %20, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %fs_dmask_inv = getelementptr inbounds %struct.ntfs_mount_options, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %fs_dmask_inv to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fs_dmask_inv, align 2
  %conv9 = zext i16 %22 to i32
  %neg10 = xor i32 %conv9, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %neg10) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %nls = getelementptr inbounds %struct.ntfs_mount_options, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %nls to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nls, align 4
  %tobool12.not = icmp eq ptr %24, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, ptr noundef %26) #17
  br label %if.end15

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.41) #17
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %27 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load16 = load i16, ptr %fmask, align 4
  %28 = and i16 %bf.load16, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool20.not = icmp eq i16 %28, 0
  br i1 %tobool20.not, label %if.end15.if.end22_crit_edge, label %if.then21

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.42) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end15.if.end22_crit_edge
  %29 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load23 = load i16, ptr %fmask, align 4
  %30 = and i16 %bf.load23, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool27.not = icmp eq i16 %30, 0
  br i1 %tobool27.not, label %if.end22.if.end29_crit_edge, label %if.then28

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.43) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end22.if.end29_crit_edge
  %31 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load30 = load i16, ptr %fmask, align 4
  %32 = and i16 %bf.load30, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool34.not = icmp eq i16 %32, 0
  br i1 %tobool34.not, label %if.end29.if.end36_crit_edge, label %if.then35

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.44) #17
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end29.if.end36_crit_edge
  %33 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load37 = load i16, ptr %fmask, align 4
  %34 = and i16 %bf.load37, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool41.not = icmp eq i16 %34, 0
  br i1 %tobool41.not, label %if.end36.if.end43_crit_edge, label %if.then42

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.45) #17
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end36.if.end43_crit_edge
  %35 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load44 = load i16, ptr %fmask, align 4
  %36 = and i16 %bf.load44, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool48.not = icmp eq i16 %36, 0
  br i1 %tobool48.not, label %if.end43.if.end50_crit_edge, label %if.then49

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.46) #17
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end43.if.end50_crit_edge
  %37 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load51 = load i16, ptr %fmask, align 4
  %38 = and i16 %bf.load51, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool55.not = icmp eq i16 %38, 0
  br i1 %tobool55.not, label %if.end50.if.end57_crit_edge, label %if.then56

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.47) #17
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end50.if.end57_crit_edge
  %39 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load58 = load i16, ptr %fmask, align 4
  %40 = and i16 %bf.load58, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool62.not = icmp eq i16 %40, 0
  br i1 %tobool62.not, label %if.end57.if.end64_crit_edge, label %if.then63

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.48) #17
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end57.if.end64_crit_edge
  %41 = ptrtoint ptr %fmask to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load65 = load i16, ptr %fmask, align 4
  %42 = and i16 %bf.load65, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool69.not = icmp eq i16 %42, 0
  br i1 %tobool69.not, label %if.end64.if.end71_crit_edge, label %if.then70

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.49) #17
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end64.if.end71_crit_edge
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %43 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_flags, align 4
  %and = and i32 %44, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.then73

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.50) #17
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71.if.end74_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntfs_i_callback(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %head, i32 -720
  %ni_lock = getelementptr i8, ptr %head, i32 -624
  tail call void @mutex_destroy(ptr noundef %ni_lock) #17
  %0 = load ptr, ptr @ntfs_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_write_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_dentry(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @ntfs_export_get_inode) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @generic_fh_to_parent(ptr noundef %sb, ptr noundef %fid, i32 noundef %fh_len, i32 noundef %fh_type, ptr noundef nonnull @ntfs_export_get_inode) #17
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs3_get_parent(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_nfs_commit_metadata(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ni_write_inode(ptr noundef %inode, i32 noundef 1, ptr noundef nonnull @__func__.ntfs_nfs_commit_metadata) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_dentry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_export_get_inode(ptr noundef %sb, i64 noundef %ino, i32 noundef %generation) #0 align 64 {
entry:
  %ref = alloca %struct.MFT_REF, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref) #17
  %0 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 1
  %1 = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %conv = trunc i64 %ino to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ref, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %0, align 4
  %conv1 = trunc i32 %generation to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 2
  %call = call ptr @ntfs_iget5(ptr noundef %sb, ptr noundef nonnull %ref, ptr noundef null) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call3 = call zeroext i1 @is_bad_inode(ptr noundef %call) #17
  br i1 %call3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @iput(ptr noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %inode.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then ], [ %call, %land.lhs.true.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref) #17
  ret ptr %inode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_fh_to_parent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ntfs3_init_bitmap() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %foo, i32 0, i32 11
  tail call void @inode_init_once(ptr noundef %vfs_inode) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220}
!llvm.named.register.sp = !{!222}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/super.c", i32 59, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/super.c", i32 67, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ntfs_printk._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ntfs_printk._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs3/super.c", i32 103, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs3/super.c", i32 118, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ntfs_inode_printk._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ntfs_inode_printk._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_file273, !17, !"__UNIQUE_ID_file273", i1 false, i1 false}
!17 = !{!"../fs/ntfs3/super.c", i32 1491, i32 1}
!18 = !{ptr @__UNIQUE_ID_license274, !17, !"__UNIQUE_ID_license274", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description275, !20, !"__UNIQUE_ID_description275", i1 false, i1 false}
!20 = !{!"../fs/ntfs3/super.c", i32 1492, i32 1}
!21 = !{ptr @__UNIQUE_ID_behaviour276, !22, !"__UNIQUE_ID_behaviour276", i1 false, i1 false}
!22 = !{!"../fs/ntfs3/super.c", i32 1494, i32 1}
!23 = !{ptr @__UNIQUE_ID_compression277, !24, !"__UNIQUE_ID_compression277", i1 false, i1 false}
!24 = !{!"../fs/ntfs3/super.c", i32 1500, i32 1}
!25 = !{ptr @__UNIQUE_ID_author278, !26, !"__UNIQUE_ID_author278", i1 false, i1 false}
!26 = !{!"../fs/ntfs3/super.c", i32 1503, i32 1}
!27 = !{ptr @__UNIQUE_ID_alias279, !28, !"__UNIQUE_ID_alias279", i1 false, i1 false}
!28 = !{!"../fs/ntfs3/super.c", i32 1504, i32 1}
!29 = !{ptr @__initcall__kmod_ntfs3__280_1506_init_ntfs_fs6, !30, !"__initcall__kmod_ntfs3__280_1506_init_ntfs_fs6", i1 false, i1 false}
!30 = !{!"../fs/ntfs3/super.c", i32 1506, i32 1}
!31 = !{ptr @__exitcall_exit_ntfs_fs, !32, !"__exitcall_exit_ntfs_fs", i1 false, i1 false}
!32 = !{!"../fs/ntfs3/super.c", i32 1507, i32 1}
!33 = !{ptr @s_name_buf, !34, !"s_name_buf", i1 false, i1 false}
!34 = !{!"../fs/ntfs3/super.c", i32 72, i32 13}
!35 = !{ptr @s_shared, !36, !"s_shared", i1 false, i1 false}
!36 = !{!"../fs/ntfs3/super.c", i32 145, i32 3}
!37 = !{ptr @ntfs_inode_cachep, !38, !"ntfs_inode_cachep", i1 false, i1 false}
!38 = !{!"../fs/ntfs3/super.c", i32 398, i32 27}
!39 = !{ptr @s_name_buf_cnt, !40, !"s_name_buf_cnt", i1 false, i1 false}
!40 = !{!"../fs/ntfs3/super.c", i32 73, i32 17}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ntfs3/super.c", i32 139, i32 8}
!43 = !{ptr @s_shared_lock, !42, !"s_shared_lock", i1 false, i1 false}
!44 = !{ptr @ntfs_fs_type, !45, !"ntfs_fs_type", i1 false, i1 false}
!45 = !{!"../fs/ntfs3/super.c", i32 1432, i32 32}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../fs/ntfs3/super.c", i32 1392, i32 17}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../fs/ntfs3/super.c", i32 1393, i32 17}
!50 = !{ptr @ntfs_init_fs_context.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../fs/ntfs3/super.c", i32 1411, i32 2}
!52 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ntfs_init_fs_context.__key.11, !54, !"__key", i1 false, i1 false}
!54 = !{!"../fs/ntfs3/super.c", i32 1413, i32 2}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ntfs_init_fs_context.__key.13, !57, !"__key", i1 false, i1 false}
!57 = !{!"../fs/ntfs3/super.c", i32 1414, i32 2}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ratelimit_state_init.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/ratelimit.h", i32 14, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ntfs_context_ops, !63, !"ntfs_context_ops", i1 false, i1 false}
!63 = !{!"../fs/ntfs3/super.c", i32 1369, i32 43}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../fs/ntfs3/super.c", i32 288, i32 28}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ntfs3/super.c", i32 290, i32 11}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../fs/ntfs3/super.c", i32 293, i32 28}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ntfs3/super.c", i32 295, i32 11}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ntfs3/super.c", i32 299, i32 11}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ntfs3/super.c", i32 307, i32 11}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ntfs3/super.c", i32 313, i32 11}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ntfs3/super.c", i32 910, i32 3}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ntfs3/super.c", i32 936, i32 3}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ntfs3/super.c", i32 984, i32 3}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ntfs3/super.c", i32 999, i32 3}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ntfs3/super.c", i32 1014, i32 4}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ntfs3/super.c", i32 1021, i32 4}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ntfs3/super.c", i32 1035, i32 3}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ntfs3/super.c", i32 1061, i32 3}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ntfs3/super.c", i32 1073, i32 4}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ntfs3/super.c", i32 1085, i32 3}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ntfs3/super.c", i32 1122, i32 3}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ntfs3/super.c", i32 1185, i32 3}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ntfs3/super.c", i32 1252, i32 3}
!104 = !{ptr @ntfs_sops, !105, !"ntfs_sops", i1 false, i1 false}
!105 = !{!"../fs/ntfs3/super.c", i32 592, i32 38}
!106 = !{ptr @ntfs_alloc_inode.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../fs/ntfs3/super.c", i32 409, i32 2}
!108 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__func__.ntfs_sync_fs, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ntfs3/super.c", i32 563, i32 10}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ntfs3/super.c", i32 516, i32 16}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ntfs3/super.c", i32 518, i32 16}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ntfs3/super.c", i32 521, i32 17}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ntfs3/super.c", i32 523, i32 17}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ntfs3/super.c", i32 525, i32 17}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ntfs3/super.c", i32 527, i32 15}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ntfs3/super.c", i32 529, i32 15}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ntfs3/super.c", i32 531, i32 15}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ntfs3/super.c", i32 533, i32 15}
!129 = !{ptr @.str.45, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ntfs3/super.c", i32 535, i32 15}
!131 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ntfs3/super.c", i32 537, i32 15}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ntfs3/super.c", i32 539, i32 15}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ntfs3/super.c", i32 541, i32 15}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ntfs3/super.c", i32 543, i32 15}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ntfs3/super.c", i32 545, i32 15}
!141 = !{ptr @ntfs_export_ops, !142, !"ntfs_export_ops", i1 false, i1 false}
!142 = !{!"../fs/ntfs3/super.c", i32 646, i32 39}
!143 = !{ptr @__func__.ntfs_nfs_commit_metadata, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/ntfs3/super.c", i32 643, i32 9}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ntfs3/super.c", i32 260, i32 9}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ntfs3/super.c", i32 262, i32 18}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ntfs3/super.c", i32 700, i32 30}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ntfs3/super.c", i32 753, i32 3}
!153 = !{ptr @.str.55, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ntfs3/super.c", i32 773, i32 3}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/ntfs3/super.c", i32 809, i32 3}
!157 = !{ptr @.str.57, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ntfs3/super.c", i32 820, i32 3}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ntfs3/ntfs_fs.h", i32 1018, i32 2}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/mm.h", i32 717, i32 2}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ntfs3/super.c", i32 372, i32 3}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/ntfs3/super.c", i32 379, i32 3}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ntfs3/super.c", i32 383, i32 10}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/ntfs3/super.c", i32 389, i32 3}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ntfs3/super.c", i32 234, i32 2}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/ntfs3/super.c", i32 235, i32 2}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/ntfs3/super.c", i32 236, i32 2}
!181 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/ntfs3/super.c", i32 237, i32 2}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/ntfs3/super.c", i32 238, i32 2}
!185 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/ntfs3/super.c", i32 239, i32 2}
!187 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/ntfs3/super.c", i32 240, i32 2}
!189 = !{ptr @.str.73, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/ntfs3/super.c", i32 241, i32 2}
!191 = !{ptr @.str.74, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ntfs3/super.c", i32 242, i32 2}
!193 = !{ptr @.str.75, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ntfs3/super.c", i32 243, i32 2}
!195 = !{ptr @.str.76, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ntfs3/super.c", i32 244, i32 2}
!197 = !{ptr @.str.77, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/ntfs3/super.c", i32 245, i32 2}
!199 = !{ptr @.str.78, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/ntfs3/super.c", i32 246, i32 2}
!201 = !{ptr @.str.79, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/ntfs3/super.c", i32 247, i32 2}
!203 = !{ptr @.str.80, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/ntfs3/super.c", i32 248, i32 2}
!205 = !{ptr @ntfs_fs_parameters, !206, !"ntfs_fs_parameters", i1 false, i1 false}
!206 = !{!"../fs/ntfs3/super.c", i32 233, i32 39}
!207 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ntfs3/super.c", i32 1446, i32 2}
!209 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @init_ntfs_fs._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @init_ntfs_fs._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/ntfs3/super.c", i32 1449, i32 3}
!214 = !{ptr @init_ntfs_fs._entry.83, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @init_ntfs_fs._entry_ptr.85, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.87, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/ntfs3/super.c", i32 1453, i32 3}
!218 = !{ptr @init_ntfs_fs._entry.86, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @init_ntfs_fs._entry_ptr.88, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.89, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ntfs3/super.c", i32 1460, i32 3}
!222 = !{!"sp"}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{!"auto-init"}
!233 = !{i64 2148581589}
!234 = !{i64 2148496322, i64 2148496354, i64 2148496383, i64 2148496417, i64 2148496448, i64 2148496471}
!235 = !{i64 2148581818}
!236 = !{i64 2148493137, i64 2148493163, i64 2148493192, i64 2148493226, i64 2148493257, i64 2148493280}
!237 = !{i8 0, i8 2}
!238 = !{i32 0, i32 9}
!239 = !{i32 0, i32 33}
!240 = !{i8 0, i8 9}
!241 = !{!"branch_weights", i32 2000, i32 1}
!242 = !{!"branch_weights", i32 1, i32 2000}
!243 = !{i64 2151090416, i64 2151090907, i64 2151090453, i64 2151090509, i64 2151090543, i64 2151090567, i64 2151090608, i64 2151090629, i64 2151090657, i64 2151090691}
!244 = !{i64 2153243381, i64 2153243864, i64 2153243418, i64 2153243474, i64 2153243508, i64 2153243532, i64 2153243573, i64 2153243594, i64 2153243622, i64 2153243656}
!245 = !{i64 2148306530, i64 2148306535, i64 2148306548, i64 2148306592, i64 2148306626, i64 2148306647}
